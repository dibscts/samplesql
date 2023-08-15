--create loanaccount table  
CREATE TABLE loanaccount (
    loanaccount_id INT NOT NULL AUTO_INCREMENT,
    loanaccount_name VARCHAR(45) NOT NULL,
    loanaccount_balance DECIMAL(10,2) NOT NULL,
    loanaccount_interest DECIMAL(10,2) NOT NULL,
    loanaccount_date DATE NOT NULL,
    loanaccount_type VARCHAR(45) NOT NULL,
    loanaccount_status VARCHAR(45) NOT NULL,
    loanaccount_customer_id INT NOT NULL,
    PRIMARY KEY (loanaccount_id),
    INDEX fk_loanaccount_customer1_idx (loanaccount_customer_id ASC),
    CONSTRAINT fk_loanaccount_customer1
        FOREIGN KEY (loanaccount_customer_id)
        REFERENCES customer (customer_id)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION)
        )