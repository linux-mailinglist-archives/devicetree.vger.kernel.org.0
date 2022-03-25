Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 80FCB4E7BB4
	for <lists+devicetree@lfdr.de>; Sat, 26 Mar 2022 01:21:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229595AbiCYT1a (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Mar 2022 15:27:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58600 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229591AbiCYT0y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Mar 2022 15:26:54 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 532CF2A9127
        for <devicetree@vger.kernel.org>; Fri, 25 Mar 2022 12:00:07 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id l7-20020a05600c1d0700b0038c99618859so9523268wms.2
        for <devicetree@vger.kernel.org>; Fri, 25 Mar 2022 12:00:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:reply-to:content-language
         :from:subject:to:content-transfer-encoding;
        bh=K/nr+QQRdsVf9ua9IBdWL5viBqMPKcy7T57XqP2vuso=;
        b=M1bKP9XP/cRGN3sGLgiedCNYBiftaNJIRDOT2BZ1wgsdPYrRqWRMxpqD4upPOQrvHp
         bG+pmUiw5yrzRQc3SJkJNLR4fd4LHCdcf/pHBn7UjfAnG0LEkRZ255qyBOtj/Q1FAJGp
         KOdJ12f4t9TUCb7HFgwWxDQdeO5qWjIblK+hvN25bXMhWNQ6yccY4A1vdSxr+7chlT+v
         fNGCwKDsg58WR79nXznqrCFph6KOxk66xUcgw5TORf+JnSjEO32ygk2IAG9AuR9Uc6kS
         S6PyBQ3a8Cc7Q+kTmDztb+hVnFdpdvApg8DeU87pa0eA6XzQpkcwlWCEPOWC+48S83WD
         lUnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:reply-to
         :content-language:from:subject:to:content-transfer-encoding;
        bh=K/nr+QQRdsVf9ua9IBdWL5viBqMPKcy7T57XqP2vuso=;
        b=qyj1PBXYd9GZ7i5o+z8bnf9MSNeFaVCpjujaQ+Q3Vipt7ibD22XtCP0dnWfsKYSHXm
         2RoCdwu8haEYOJKLpGBqypOhp6RVz9I081AZ+Ve62QpFMwHG0/zuiExEQVvpH5hhxn5R
         9p9oRdDN6qdhT5/Mih9ledtGEVIBM1Zs9mw9nYeVHtI0sjZIqPw7i6OESe7KNt3MwW2Z
         ENNvPW/gOu/kFdnB4L9fozhOLiKgojLHHZrdemaaAmA1uQO6Ps5yzpNUkZLbseCQgnF5
         n/P18Iw+vMXboc843LS8+q2CF0aDCKKXnnIJ9xV+aE6NHYcNSwrSIpdYyQ0WTqa1Js1b
         PTgg==
X-Gm-Message-State: AOAM533WZQCGDlaibzRi93NrZb0A+zbL5/R3MHZKG3RfsgtghW+81pe2
        5rUt8Seak2/CcfMyET+62F8=
X-Google-Smtp-Source: ABdhPJwIYlQTnr6OaxGkz6M+tt1sDahF0TfS+o/Bou4tbFA/n4UG4t4CXov0G1yf2fSQCf0Yq3oJfA==
X-Received: by 2002:a1c:7517:0:b0:38c:8722:9bc6 with SMTP id o23-20020a1c7517000000b0038c87229bc6mr21126952wmc.2.1648234805845;
        Fri, 25 Mar 2022 12:00:05 -0700 (PDT)
Received: from [192.168.43.21] ([197.234.221.192])
        by smtp.gmail.com with ESMTPSA id v124-20020a1cac82000000b0037c3d08e0e7sm9116737wme.29.2022.03.25.11.59.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Mar 2022 12:00:04 -0700 (PDT)
Message-ID: <efcd3ec2-2132-e1c8-e980-f0e813b790fc@gmail.com>
Date:   Fri, 25 Mar 2022 19:59:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 6.2; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Reply-To: domleblancbiz@gmail.com
Content-Language: fr
From:   invest infot <investinfot84@gmail.com>
Subject: donation
To:     destinataires inconnus:;
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: Yes, score=5.8 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,RCVD_IN_DNSWL_NONE,RCVD_IN_SBL,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,UNDISC_FREEM autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Report: *  0.1 RCVD_IN_SBL RBL: Received via a relay in Spamhaus SBL
        *      [197.234.221.192 listed in zen.spamhaus.org]
        * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2a00:1450:4864:20:0:0:0:32e listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5000]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [investinfot84[at]gmail.com]
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [investinfot84[at]gmail.com]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.0 T_SCC_BODY_TEXT_LINE No description available.
        *  3.8 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
X-Spam-Level: *****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Obrigado por me responder, me deixou muito feliz. É de fato uma doação de 152.000 €. E eu faço isso porque meu pai espiritual me aconselhou a ter mais esperança eu já sei minha data de validade (fim da minha existência nesta terra) claro que sou um crente cristão mas a ciência é mais avançada .
  Agora eu quero que você me fale sobre você em poucas linhas: Eu faço esta doação porque meu pai espiritual me aconselhou, eu sou um cristão sem filhos, então por que então morrer com tudo o que tenho?
Foi por isso que comecei a procurar a pessoa certa que pudesse administrar bem meus bens mesmo depois da minha morte.
Então me diga uma vez se você receber este presente, o que você vai fazer primeiro? Você gosta de crianças? O que o próximo amor significa para você? Por favor, responda-me para que eu possa colocá-lo em contato com meu cartório para estabelecer os documentos para permitir que você cuide do herdeiro legal do meu imóvel.



Obrigado pela compreensão e esperando para ler de você



Cordialmente.

Thank you for answering me, it made me very happy. It is indeed a donation of 152,000 €. And I do it because my spiritual father advised me to have more hope I already know my expiry date (end of my existence on this earth) of course I am a Christian believer but science is more advanced .
  Now I want you to tell me about yourself in a few lines: I make this donation because my spiritual father advised me, I am a childless Christian so why then die with everything I have?
That's why I started looking for the right person who could manage my assets well even after my death.
So tell me once if you receive this gift, what are you going to do first? Do you like children? What does next love mean to you? Please answer me so that I can put you in contact with my notary to establish the documents to allow you to take care of the legal heir of my property.



Thank you for understanding and waiting to read from you



Cordially.

