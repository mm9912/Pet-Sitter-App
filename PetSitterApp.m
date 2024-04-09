% Final Project ITEC 2600 Section M %

%Part 1 | User Inputs
%Initalizing an cell array to store User prompts
userPrompt = {};

%Welcoming user to our application
disp('Welcome user to WoofMatch! Where Connecting Paws, Creating Bonds are formed!')
%img = imread('/Users/johnsondang/Downloads/woofmatch.png');
%imshow(img);
disp('To start, we need to get information about you to make sure we find the best sitters for your convience!')

%Asking user to input their own data, if responded with 'done' it would stop the loop

%Revised user information
%Asking user to input data that would fit their ideal sitter
while true
    prompt_type = input('\n Please fill in all these categories(name/age/gender/dogweight/dogbreed) or type "done" when done: ', 's');
    if strcmp(prompt_type, 'done')
        break;
    end

    %When typed either of the sub-categories, it will ask the user for more specific information
    switch lower(prompt_type)
        case 'age'
            %Use a while loop to make sure it's between the age groups
           while true
    prompt = input('Input your age: ', 's');
    ageInput = str2double(prompt);
    if ~isnan(ageInput) && ageInput >= 18
        %Accepts values 18 and above
        break;
    else
        %Rejects values 17 and below, as well as non-numeric inputs
        disp('Invalid input. You must be 18 or older. Please enter a valid age.');
     end
           end
        case 'gender'
            %Make sure the code runs where if over they can't move on (while loop)
            while true
                prompt = input('Input your gender (1: Male, 2: Female, 3: Non-binary, 4: Prefer not to say, 5: Other): ', 's');
                if any(strcmp(prompt, {'1', '2', '3', '4', '5'}))
                    break;
                else
                    disp('Invalid input. Please try again.');
                end
            end
        case 'dogweight'
            %Use a while loop to make sure it's above 0
            while true
    prompt = input('Input the weight of your dog (in lbs): ', 's');
    ageInput = str2double(prompt);
    if ~isnan(ageInput) && ageInput >= 0
        %Accepts values 0 and above
        break;
    else
        %Rejects values 0 and below, as well as non-numeric inputs
        disp('Invalid input. Please enter a value above 0.');
     end
           end
        case 'dogbreed'
            % No restrictions on traits, directly take input
            prompt = input('Input your dogbreed (Golden Retriever, Husky, etc.): ', 's');
        case 'name'
            % No restrictions on traits, directly take input
            prompt = input('Input your name: ', 's');
        otherwise
            disp('Invalid prompt type. Please try again.');
            continue;
    end

    %Concatenating the prompts and inputting them into a string and storing it inside a cell array
    storeInput = {prompt_type, prompt};
    userPrompt{end + 1} = storeInput;
end

%Displaying all inputs from the sitterPrompt cell array
disp('User Information:');
for i = 1:numel(userPrompt)
    promptType = userPrompt{i}{1};
    prompt = userPrompt{i}{2};
    fprintf('%s: %s\n', promptType, prompt);
end

%Revised End

    %Moving from user information to ideal sitter information
    fprintf('\nThank you for inputting information about you! Before we setup matches, we need to ask you for some information about your ideal sitter.')
    pause(3);

    %%Initalizing an cell array to store User prompts
    sitterPrompt = {};
    
%Asking user to input data that would fit their ideal sitter
while true
    sitter_prompt_type = input('\nEnter the information that you want your ideal sitter to be based on these categories(sitter_gender/sitter_trait/sitter_rating/sitter_experience/) or type "done" when done: ', 's');
    if strcmp(sitter_prompt_type, 'done')
        break;
    end

    %When typed either of the sub-categories, it will ask the user for more specific information
    switch lower(sitter_prompt_type)
        case 'sitter_gender'
            %Make sure the code runs where if over they can't move on (while loop)
            while true
                promptSitter = input('Input your gender of preference (1: Male, 2: Female, 3: Non-binary, 4: Prefer not to say, 5: Other): ', 's');
                if any(strcmp(promptSitter, {'1', '2', '3', '4', '5'}))
                    break;
                else
                    disp('Invalid input. Please try again.');
                end
            end
        case 'sitter_rating'
            %Use a while loop to make sure it's between 1-5
            while true
                promptSitter = input('Input rating that your ideal sitter should have (1 - 5 stars): ', 's');
                if str2double(promptSitter) >= 1 && str2double(promptSitter) <= 5
                    break;
                else
                    disp('Invalid input. Please try again.');
                end
            end
        case 'sitter_experience'
            %Use a while loop to make sure it's between each experience level
            while true
                promptSitter = input('Input what that your ideal sitter experince should be (Beginner, Intermediate, Expert): ', 's');
                if any(strcmpi(promptSitter, {'Beginner', 'Intermediate', 'Expert'}))
                    break;
                else
                    disp('Invalid input. Please try again.');
                end
            end
         case 'sitter_trait'
            % No restrictions on traits, directly take input
            promptSitter = input('Input a trait that you value in a sitter: ', 's');
        otherwise
            disp('Invalid prompt type. Please try again.');
            continue;
    end

    %Concatenating the prompts and inputting them into a string and storing it inside a cell array
    sitterStoreInput = {sitter_prompt_type, promptSitter};
    sitterPrompt{end + 1} = sitterStoreInput;
end

%Displaying all inputs from the sitterPrompt cell array
disp('User Preferences:');
for i = 1:numel(sitterPrompt)
    promptType = sitterPrompt{i}{1};
    sitterInput = sitterPrompt{i}{2};
    fprintf('%s: %s\n', promptType, sitterInput);
end

%Part 2 | Sitter Data Inputs
    %Displaying few messages before the matches appear
    disp('Thank you for inputting information about you and your ideal sitter! Please wait for a few seconds as we find the best owners for you!');
    pause(3);

    %Switch over control to the petsitters
    petsitter1 = {};
    petsitter2 = {};
    petsitter3 = {};
    petsitter4 = {};
    petsitter5 = {};
    petsitter6 = {};
    petsitter7 = {};
    petsitter8 = {};
    petsitter9 = {};
    petsitter10 = {};

    %Display message to sitters to input their characteristics
disp('Welcome to WoofMatch (Employment). To start, you need to input characteristics that match with a customer. Please wait as we prepeare employee registration..');
pause(5);

%Employee 1
while true
    employee1_prompt = input('\nSitter 1 | Enter the information to match with a user based on these categories (sitter_gender/sitter_trait/sitter_rating/sitter_experience) or type "done" when done: ', 's');
    if strcmp(employee1_prompt, 'done')
        break;
    end

    %When typed either of the sub-categories, it will ask the user for more specific information
    switch lower(employee1_prompt)
        case 'sitter_gender'
            %Make sure the code runs where if over they can't move on (while loop)
            while true
                emp1 = input('Input your gender (1: Male, 2: Female, 3: Non-binary, 4: Prefer not to say, 5: Other): ', 's');
                if any(strcmp(emp1, {'1', '2', '3', '4', '5'}))
                    break;
                else
                    disp('Invalid input. Please try again.');
                end
            end
        case 'sitter_rating'
            %Use a while loop to make sure it's between 1-5
            while true
                emp1 = input('Input rating based on your reviews and experience (1-5): ', 's');
                if str2double(emp1) >= 1 && str2double(emp1) <= 5
                    break;
                else
                    disp('Invalid input. Please try again.');
                end
            end
        case 'sitter_experience'
            %Use a while loop to make sure it's between each experience level
            while true
                emp1 = input('Input your experience (Beginner, Intermediate, Expert): ', 's');
                if any(strcmpi(emp1, {'Beginner', 'Intermediate', 'Expert'}))
                    break;
                else
                    disp('Invalid input. Please try again.');
                end
            end
         case 'sitter_trait'
            % No restrictions on traits, directly take input
            emp1 = input('Input a trait that makes you unique: ', 's');
        otherwise
            disp('Invalid prompt type. Please try again.');
            continue;
    end

    %Concatenating the prompts and inputting them into a string and storing it inside a cell array
    emp1StoreInput = {employee1_prompt, emp1};
    petsitter1{end + 1} = emp1StoreInput;
end

%Displaying all inputs from the sitterPrompt cell array
disp('Sitter 1 Information:');
for i = 1:numel(petsitter1)
    promptType = petsitter1{i}{1};
    emp1Input = petsitter1{i}{2};
    fprintf('%s: %s\n', promptType, emp1Input);
end

pause(5);

%Employee 2
while true
    employee2_prompt = input('\nSitter 2 | Enter the information to match with a user based on these categories (sitter_gender/sitter_trait/sitter_rating/sitter_experience) or type "done" when done: ', 's');
    if strcmp(employee2_prompt, 'done')
        break;
    end

    %When typed either of the sub-categories, it will ask the user for more specific information
    switch lower(employee2_prompt)
        case 'sitter_gender'
            %Make sure the code runs where if over they can't move on (while loop)
            while true
                emp2 = input('Input your gender (1: Male, 2: Female, 3: Non-binary, 4: Prefer not to say, 5: Other): ', 's');
                if any(strcmp(emp2, {'1', '2', '3', '4', '5'}))
                    break;
                else
                    disp('Invalid input. Please try again.');
                end
            end
        case 'sitter_rating'
            %Use a while loop to make sure it's between 1-5
            while true
                emp2 = input('Input rating based on your reviews and experience (1-5): ', 's');
                if str2double(emp2) >= 1 && str2double(emp2) <= 5
                    break;
                else
                    disp('Invalid input. Please try again.');
                end
            end
        case 'sitter_experience'
            %Use a while loop to make sure it's between each experience level
            while true
                emp2 = input('Input your experience (Beginner, Intermediate, Expert): ', 's');
                if any(strcmpi(emp2, {'Beginner', 'Intermediate', 'Expert'}))
                    break;
                else
                    disp('Invalid input. Please try again.');
                end
            end
         case 'sitter_trait'
            % No restrictions on traits, directly take input
            emp2 = input('Input a trait that makes you unique: ', 's');
        otherwise
            disp('Invalid prompt type. Please try again.');
            continue;
    end

    %Concatenating the prompts and inputting them into a string and storing it inside a cell array
    emp2StoreInput = {employee2_prompt, emp2};
    petsitter2{end + 1} = emp2StoreInput;
end

%Displaying all inputs from the sitterPrompt cell array
disp('Sitter 2 Information:');
for i = 1:numel(petsitter2)
    promptType = petsitter2{i}{1};
    emp2Input = petsitter2{i}{2};
    fprintf('%s: %s\n', promptType, emp2Input);
end

pause(5);

%Employee 3
while true
    employee3_prompt = input('\nSitter 3 | Enter the information to match with a user based on these categories (sitter_gender/sitter_trait/sitter_rating/sitter_experience) or type "done" when done: ', 's');
    if strcmp(employee3_prompt, 'done')
        break;
    end

    %When typed either of the sub-categories, it will ask the user for more specific information
    switch lower(employee3_prompt)
        case 'sitter_gender'
            %Make sure the code runs where if over they can't move on (while loop)
            while true
                emp3 = input('Input your gender (1: Male, 2: Female, 3: Non-binary, 4: Prefer not to say, 5: Other): ', 's');
                if any(strcmp(emp3, {'1', '2', '3', '4', '5'}))
                    break;
                else
                    disp('Invalid input. Please try again.');
                end
            end
        case 'sitter_rating'
            %Use a while loop to make sure it's between 1-5
            while true
                emp3 = input('Input rating based on your reviews and experience (1-5): ', 's');
                if str2double(emp3) >= 1 && str2double(emp3) <= 5
                    break;
                else
                    disp('Invalid input. Please try again.');
                end
            end
        case 'sitter_experience'
            %Use a while loop to make sure it's between each experience level
            while true
                emp3 = input('Input your experience (Beginner, Intermediate, Expert): ', 's');
                if any(strcmpi(emp3, {'Beginner', 'Intermediate', 'Expert'}))
                    break;
                else
                    disp('Invalid input. Please try again.');
                end
            end
         case 'sitter_trait'
            % No restrictions on traits, directly take input
            emp3 = input('Input a trait that makes you unique: ', 's');
        otherwise
            disp('Invalid prompt type. Please try again.');
            continue;
    end

    %Concatenating the prompts and inputting them into a string and storing it inside a cell array
    emp3StoreInput = {employee3_prompt, emp3};
    petsitter3{end + 1} = emp3StoreInput;
end

% Displaying all inputs from the sitterPrompt cell array
disp('Sitter 3 Information:');
for i = 1:numel(petsitter3)
    promptType = petsitter3{i}{1};
    emp3Input = petsitter3{i}{2};
    fprintf('%s: %s\n', promptType, emp3Input);
end

pause(5);

%Employee 4
while true
    employee4_prompt = input('\nSitter 4 | Enter the information to match with a user based on these categories (sitter_gender/sitter_trait/sitter_rating/sitter_experience) or type "done" when done: ', 's');
    if strcmp(employee4_prompt, 'done')
        break;
    end

    %When typed either of the sub-categories, it will ask the user for more specific information
    switch lower(employee4_prompt)
        case 'sitter_gender'
            %Make sure the code runs where if over they can't move on (while loop)
            while true
                emp4 = input('Input your gender (1: Male, 2: Female, 3: Non-binary, 4: Prefer not to say, 5: Other): ', 's');
                if any(strcmp(emp4, {'1', '2', '3', '4', '5'}))
                    break;
                else
                    disp('Invalid input. Please try again.');
                end
            end
        case 'sitter_rating'
            %Use a while loop to make sure it's between 1-5
            while true
                emp4 = input('Input rating based on your reviews and experience (1-5): ', 's');
                if str2double(emp4) >= 1 && str2double(emp4) <= 5
                    break;
                else
                    disp('Invalid input. Please try again.');
                end
            end
        case 'sitter_experience'
            %Use a while loop to make sure it's between each experience level
            while true
                emp4 = input('Input your experience (Beginner, Intermediate, Expert): ', 's');
                if any(strcmpi(emp4, {'Beginner', 'Intermediate', 'Expert'}))
                    break;
                else
                    disp('Invalid input. Please try again.');
                end
            end
         case 'sitter_trait'
            % No restrictions on traits, directly take input
            emp4 = input('Input a trait that makes you unique: ', 's');
        otherwise
            disp('Invalid prompt type. Please try again.');
            continue;
    end

    %Concatenating the prompts and inputting them into a string and storing it inside a cell array
    emp4StoreInput = {employee4_prompt, emp4};
    petsitter4{end + 1} = emp4StoreInput;
end

% Displaying all inputs from the sitterPrompt cell array
disp('Sitter 4 Information:');
for i = 1:numel(petsitter4)
    promptType = petsitter4{i}{1};
    emp4Input = petsitter4{i}{2};
    fprintf('%s: %s\n', promptType, emp4Input);
end

pause(5);

%Employee 5
while true
    employee5_prompt = input('\nSitter 5 | Enter the information to match with a user based on these categories (sitter_gender/sitter_trait/sitter_rating/sitter_experience) or type "done" when done: ', 's');
    if strcmp(employee5_prompt, 'done')
        break;
    end

    %When typed either of the sub-categories, it will ask the user for more specific information
    switch lower(employee5_prompt)
        case 'sitter_gender'
            %Make sure the code runs where if over they can't move on (while loop)
            while true
                emp5 = input('Input your gender (1: Male, 2: Female, 3: Non-binary, 4: Prefer not to say, 5: Other): ', 's');
                if any(strcmp(emp5, {'1', '2', '3', '4', '5'}))
                    break;
                else
                    disp('Invalid input. Please try again.');
                end
            end
        case 'sitter_rating'
            %Use a while loop to make sure it's between 1-5
            while true
                emp5 = input('Input rating based on your reviews and experience (1-5): ', 's');
                if str2double(emp5) >= 1 && str2double(emp5) <= 5
                    break;
                else
                    disp('Invalid input. Please try again.');
                end
            end
        case 'sitter_experience'
            %Use a while loop to make sure it's between each experience level
            while true
                emp5 = input('Input your experience (Beginner, Intermediate, Expert): ', 's');
                if any(strcmpi(emp5, {'Beginner', 'Intermediate', 'Expert'}))
                    break;
                else
                    disp('Invalid input. Please try again.');
                end
            end
         case 'sitter_trait'
            % No restrictions on traits, directly take input
            emp5 = input('Input a trait that makes you unique: ', 's');
        otherwise
            disp('Invalid prompt type. Please try again.');
            continue;
    end

    %Concatenating the prompts and inputting them into a string and storing it inside a cell array
    emp5StoreInput = {employee5_prompt, emp5};
    petsitter5{end + 1} = emp5StoreInput;
end

% Displaying all inputs from the sitterPrompt cell array
disp('Sitter 5 Information:');
for i = 1:numel(petsitter5)
    promptType = petsitter5{i}{1};
    emp5Input = petsitter5{i}{2};
    fprintf('%s: %s\n', promptType, emp5Input);
end

pause(5);

%Employee 6
while true
    employee6_prompt = input('\nSitter 6 | Enter the information to match with a user based on these categories (sitter_gender/sitter_trait/sitter_rating/sitter_experience) or type "done" when done: ', 's');
    if strcmp(employee6_prompt, 'done')
        break;
    end

    %When typed either of the sub-categories, it will ask the user for more specific information
    switch lower(employee6_prompt)
        case 'sitter_gender'
            %Make sure the code runs where if over they can't move on (while loop)
            while true
                emp6 = input('Input your gender (1: Male, 2: Female, 3: Non-binary, 4: Prefer not to say, 5: Other): ', 's');
                if any(strcmp(emp6, {'1', '2', '3', '4', '5'}))
                    break;
                else
                    disp('Invalid input. Please try again.');
                end
            end
        case 'sitter_rating'
            %Use a while loop to make sure it's between 1-5
            while true
                emp6 = input('Input rating based on your reviews and experience (1-5): ', 's');
                if str2double(emp6) >= 1 && str2double(emp6) <= 5
                    break;
                else
                    disp('Invalid input. Please try again.');
                end
            end
        case 'sitter_experience'
            %Use a while loop to make sure it's between each experience level
            while true
                emp6 = input('Input your experience (Beginner, Intermediate, Expert): ', 's');
                if any(strcmpi(emp6, {'Beginner', 'Intermediate', 'Expert'}))
                    break;
                else
                    disp('Invalid input. Please try again.');
                end
            end
         case 'sitter_trait'
            % No restrictions on traits, directly take input
            emp6 = input('Input a trait that makes you unique: ', 's');
        otherwise
            disp('Invalid prompt type. Please try again.');
            continue;
    end

    %Concatenating the prompts and inputting them into a string and storing it inside a cell array
    emp6StoreInput = {employee6_prompt, emp6};
    petsitter6{end + 1} = emp6StoreInput;
end

% Displaying all inputs from the sitterPrompt cell array
disp('Sitter 6 Information:');
for i = 1:numel(petsitter6)
    promptType = petsitter6{i}{1};
    emp6Input = petsitter6{i}{2};
    fprintf('%s: %s\n', promptType, emp6Input);
end

pause(5);

%Employee 7
while true
    employee7_prompt = input('\nSitter 7 | Enter the information to match with a user based on these categories (sitter_gender/sitter_trait/sitter_rating/sitter_experience) or type "done" when done: ', 's');
    if strcmp(employee7_prompt, 'done')
        break;
    end

    %When typed either of the sub-categories, it will ask the user for more specific information
    switch lower(employee7_prompt)
        case 'sitter_gender'
            %Make sure the code runs where if over they can't move on (while loop)
            while true
                emp7 = input('Input your gender (1: Male, 2: Female, 3: Non-binary, 4: Prefer not to say, 5: Other): ', 's');
                if any(strcmp(emp7, {'1', '2', '3', '4', '5'}))
                    break;
                else
                    disp('Invalid input. Please try again.');
                end
            end
        case 'sitter_rating'
            %Use a while loop to make sure it's between 1-5
            while true
                emp7 = input('Input rating based on your reviews and experience (1-5): ', 's');
                if str2double(emp7) >= 1 && str2double(emp7) <= 5
                    break;
                else
                    disp('Invalid input. Please try again.');
                end
            end
        case 'sitter_experience'
            %Use a while loop to make sure it's between each experience level
            while true
                emp7 = input('Input your experience (Beginner, Intermediate, Expert): ', 's');
                if any(strcmpi(emp7, {'Beginner', 'Intermediate', 'Expert'}))
                    break;
                else
                    disp('Invalid input. Please try again.');
                end
            end
         case 'sitter_trait'
            % No restrictions on traits, directly take input
            emp7 = input('Input a trait that makes you unique: ', 's');
        otherwise
            disp('Invalid prompt type. Please try again.');
            continue;
    end

    %Concatenating the prompts and inputting them into a string and storing it inside a cell array
    emp7StoreInput = {employee7_prompt, emp7};
    petsitter7{end + 1} = emp7StoreInput;
end

% Displaying all inputs from the sitterPrompt cell array
disp('Sitter 7 Information:');
for i = 1:numel(petsitter7)
    promptType = petsitter7{i}{1};
    emp7Input = petsitter7{i}{2};
    fprintf('%s: %s\n', promptType, emp7Input);
end

pause(5);

%Employee 8
while true
    employee8_prompt = input('\nSitter 8 | Enter the information to match with a user based on these categories (sitter_gender/sitter_trait/sitter_rating/sitter_experience) or type "done" when done: ', 's');
    if strcmp(employee8_prompt, 'done')
        break;
    end

    %When typed either of the sub-categories, it will ask the user for more specific information
    switch lower(employee8_prompt)
        case 'sitter_gender'
            %Make sure the code runs where if over they can't move on (while loop)
            while true
                emp8 = input('Input your gender (1: Male, 2: Female, 3: Non-binary, 4: Prefer not to say, 5: Other): ', 's');
                if any(strcmp(emp8, {'1', '2', '3', '4', '5'}))
                    break;
                else
                    disp('Invalid input. Please try again.');
                end
            end
        case 'sitter_rating'
            %Use a while loop to make sure it's between 1-5
            while true
                emp8 = input('Input rating based on your reviews and experience (1-5): ', 's');
                if str2double(emp8) >= 1 && str2double(emp8) <= 5
                    break;
                else
                    disp('Invalid input. Please try again.');
                end
            end
        case 'sitter_experience'
            %Use a while loop to make sure it's between each experience level
            while true
                emp8 = input('Input your experience (Beginner, Intermediate, Expert): ', 's');
                if any(strcmpi(emp8, {'Beginner', 'Intermediate', 'Expert'}))
                    break;
                else
                    disp('Invalid input. Please try again.');
                end
            end
         case 'sitter_trait'
            % No restrictions on traits, directly take input
            emp8 = input('Input a trait that makes you unique: ', 's');
        otherwise
            disp('Invalid prompt type. Please try again.');
            continue;
    end

    %Concatenating the prompts and inputting them into a string and storing it inside a cell array
    emp8StoreInput = {employee8_prompt, emp8};
    petsitter8{end + 1} = emp8StoreInput;
end

% Displaying all inputs from the sitterPrompt cell array
disp('Sitter 8 Information:');
for i = 1:numel(petsitter8)
    promptType = petsitter8{i}{1};
    emp8Input = petsitter8{i}{2};
    fprintf('%s: %s\n', promptType, emp8Input);
end

pause(5);

%Employee 9
while true
    employee9_prompt = input('\nSitter 9 | Enter the information to match with a user based on these categories (sitter_gender/sitter_trait/sitter_rating/sitter_experience) or type "done" when done: ', 's');
    if strcmp(employee9_prompt, 'done')
        break;
    end

    %When typed either of the sub-categories, it will ask the user for more specific information
    switch lower(employee9_prompt)
        case 'sitter_gender'
            %Make sure the code runs where if over they can't move on (while loop)
            while true
                emp9 = input('Input your gender (1: Male, 2: Female, 3: Non-binary, 4: Prefer not to say, 5: Other): ', 's');
                if any(strcmp(emp9, {'1', '2', '3', '4', '5'}))
                    break;
                else
                    disp('Invalid input. Please try again.');
                end
            end
        case 'sitter_rating'
            %Use a while loop to make sure it's between 1-5
            while true
                emp9 = input('Input rating based on your reviews and experience (1-5): ', 's');
                if str2double(emp9) >= 1 && str2double(emp9) <= 5
                    break;
                else
                    disp('Invalid input. Please try again.');
                end
            end
        case 'sitter_experience'
            %Use a while loop to make sure it's between each experience level
            while true
                emp9 = input('Input your experience (Beginner, Intermediate, Expert): ', 's');
                if any(strcmpi(emp9, {'Beginner', 'Intermediate', 'Expert'}))
                    break;
                else
                    disp('Invalid input. Please try again.');
                end
            end
         case 'sitter_trait'
            % No restrictions on traits, directly take input
            emp9 = input('Input a trait that makes you unique: ', 's');
        otherwise
            disp('Invalid prompt type. Please try again.');
            continue;
    end

    %Concatenating the prompts and inputting them into a string and storing it inside a cell array
    emp9StoreInput = {employee9_prompt, emp9};
    petsitter9{end + 1} = emp9StoreInput;
end

% Displaying all inputs from the sitterPrompt cell array
disp('Sitter 9 Information:');
for i = 1:numel(petsitter9)
    promptType = petsitter9{i}{1};
    emp9Input = petsitter9{i}{2};
    fprintf('%s: %s\n', promptType, emp9Input);
end

pause(5);

%Employee 10
while true
    employee10_prompt = input('\nSitter 10 | Enter the information to match with a user based on these categories (sitter_gender/sitter_trait/sitter_rating/sitter_experience) or type "done" when done: ', 's');
    if strcmp(employee10_prompt, 'done')
        break;
    end

    %When typed either of the sub-categories, it will ask the user for more specific information
    switch lower(employee10_prompt)
        case 'sitter_gender'
            %Make sure the code runs where if over they can't move on (while loop)
            while true
                emp10 = input('Input your gender (1: Male, 2: Female, 3: Non-binary, 4: Prefer not to say, 5: Other): ', 's');
                if any(strcmp(emp10, {'1', '2', '3', '4', '5'}))
                    break;
                else
                    disp('Invalid input. Please try again.');
                end
            end
        case 'sitter_rating'
            %Use a while loop to make sure it's between 1-5
            while true
                emp10 = input('Input rating based on your reviews and experience (1-5): ', 's');
                if str2double(emp10) >= 1 && str2double(emp10) <= 5
                    break;
                else
                    disp('Invalid input. Please try again.');
                end
            end
        case 'sitter_experience'
            %Use a while loop to make sure it's between each experience level
            while true
                emp10 = input('Input your experience (Beginner, Intermediate, Expert): ', 's');
                if any(strcmpi(emp10, {'Beginner', 'Intermediate', 'Expert'}))
                    break;
                else
                    disp('Invalid input. Please try again.');
                end
            end
         case 'sitter_trait'
            % No restrictions on traits, directly take input
            emp10 = input('Input a trait that makes you unique: ', 's');
        otherwise
            disp('Invalid prompt type. Please try again.');
            continue;
    end

    %Concatenating the prompts and inputting them into a string and storing it inside a cell array
    emp10StoreInput = {employee10_prompt, emp10};
    petsitter10{end + 1} = emp10StoreInput;
end

% Displaying all inputs from the sitterPrompt cell array
disp('Sitter 10 Information:');
for i = 1:numel(petsitter10)
    promptType = petsitter10{i}{1};
    emp10Input = petsitter10{i}{2};
    fprintf('%s: %s\n', promptType, emp10Input);
end

pause(5);

%Part 3 | Data Matching Score
%Calculate using string comparison alongside a scorecounter
% Initialize a cell array to store sitter data
sitterData = {petsitter1, petsitter2, petsitter3, petsitter4, petsitter5, petsitter6, petsitter7, petsitter8, petsitter9, petsitter10};

% Initialize variables to keep track of best match and its similarity score
bestMatchIndex = -1;
bestMatchScore = 0;

% Loop through each sitter's data and compare against user's preferences
for i = 1:numel(sitterData)
    sitter = sitterData{i};
    similarityScore = 0;
    
    % Loop through user's preferences and check for similarity with sitter's data
    for j = 1:numel(sitterPrompt)
        userPreference = sitterPrompt{j}{2};
        sitterPreference = '';
        
        % Find the corresponding sitter preference based on prompt type
        for k = 1:numel(sitter)
            if strcmpi(sitter{k}{1}, sitterPrompt{j}{1})
                sitterPreference = sitter{k}{2};
                break;
            end
        end
        
        % Compare user's preference with sitter's preference
        if strcmpi(userPreference, sitterPreference)
            similarityScore = similarityScore + 1;
        end
    end
    
    % Update best match if similarity score is higher
    if similarityScore > bestMatchScore
        bestMatchIndex = i;
        bestMatchScore = similarityScore;
    end
end

% Display the best match, if any
if bestMatchIndex ~= -1
    fprintf('\nBest Match Found!\n');
    fprintf('Sitter %d is a match with %d similar preferences.\n', bestMatchIndex, bestMatchScore);
else
    fprintf('\nNo suitable match found.\n');
end

disp('Thank you for choosing WoofMatch!');