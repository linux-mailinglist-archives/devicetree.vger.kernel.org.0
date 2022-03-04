Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BA7364CD70D
	for <lists+devicetree@lfdr.de>; Fri,  4 Mar 2022 16:02:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233497AbiCDPDk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Mar 2022 10:03:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37466 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240008AbiCDPDh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Mar 2022 10:03:37 -0500
Received: from mail-yw1-x1135.google.com (mail-yw1-x1135.google.com [IPv6:2607:f8b0:4864:20::1135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CFAF94D252
        for <devicetree@vger.kernel.org>; Fri,  4 Mar 2022 07:02:49 -0800 (PST)
Received: by mail-yw1-x1135.google.com with SMTP id 00721157ae682-2dc0364d2ceso94497287b3.7
        for <devicetree@vger.kernel.org>; Fri, 04 Mar 2022 07:02:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:sender:from:date:message-id:subject:to;
        bh=+e6DxsGRSH2mhsXI7GeLvIZXX1m4MD4Ab6z6xzst2ho=;
        b=ZqRGxdv3+NdYvntS4m85auAJDzH/jGA6Xf6QEjWYKwZV0RG7nuGrnK+1VBj/C6xVNN
         hVRO1x4TqzsAQGxumsPgCdvDZ76RGVvwxFYaW/W0KEy5s3pEoAl1DkN2ds1lP2GbYG8r
         KobiCi9ZhQjHYTybRcwIxBiFeLp0pVNokR/KRe2NTWfhnk34b1OpjUghkss88g3vnY5O
         BevqkuoSEeCxHtu6KG3FjF75vxi9KuDqh0kcXR+b6BVk341EiarIdmNrKdII84BxBmkQ
         Lvx6Y3ewCwtEsSwzlrTSR1+v5k3LDynqAcqeTeQCkJJR9W+re2WIaNXAHZTSiQWjgIKi
         K9vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
         :to;
        bh=+e6DxsGRSH2mhsXI7GeLvIZXX1m4MD4Ab6z6xzst2ho=;
        b=ltRQtLs1C6BITRzPODwJv9fDOiHPVkuF7F5ccaandg0P/+aEbSuWCfgnA4kn1wziBd
         eLkhP4HBG/lZzJe2DOExDrJ6xk0Vc9tqVJpTEtvtyM1UvyUD/NBkqRR0S9YSuj94sfHf
         29aZ5iUuZH/8zvr8VCGDkPrxsfbxFZcaN9MObgVlUJjLizJStCSWIfuG1He1QQ4JGLHP
         qW0D0lBBFZ817oA0qZ8IkyJ0H7s0vAJagvkYxFY8Pq/FpbxXvwCsADbY7Pghz6bUcYxR
         WVDfkgSqaKjU1sQZc6gEG1+N8NG9p7fPx7gasoyEzZrHGk9xiOREA5RnbZ1NDPPB4Uor
         ZlEQ==
X-Gm-Message-State: AOAM532DOlafnGdF6V0pKSrhH8sMOihHTFW7XWZ86dozUtPehey85Gb0
        1k+hiPb152TOqIz+3ToMm96fL3EheY1R0UZJKTM=
X-Google-Smtp-Source: ABdhPJw7zqx2rcGGQKLoGvGAtD3tVi++W+lxXZyHMlN03lqxLUF+qbT9YFgNrFJRIA6StmO5ZOCoQM++ragOFLobWv8=
X-Received: by 2002:a81:9806:0:b0:2dc:5953:4d13 with SMTP id
 p6-20020a819806000000b002dc59534d13mr4091142ywg.233.1646406168096; Fri, 04
 Mar 2022 07:02:48 -0800 (PST)
MIME-Version: 1.0
Sender: miss.glorykipkalyakones25@gmail.com
Received: by 2002:a05:7108:7894:0:0:0:0 with HTTP; Fri, 4 Mar 2022 07:02:47
 -0800 (PST)
From:   Aisha Al-Qaddafi <aisha.gdaff21@gmail.com>
Date:   Fri, 4 Mar 2022 07:02:47 -0800
X-Google-Sender-Auth: IIaMX7v3g4Ju_fpLTa0Z1Bu7LS8
Message-ID: <CAK87b62ubr_92uqo_YQ3CeaTEsnxEjjpSUNy=RzSwFPbYpH0dg@mail.gmail.com>
Subject: Your Urgent Reply Will Be Appreciated
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=5.6 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,LOTS_OF_MONEY,MILLION_HUNDRED,MONEY_FRAUD_5,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        UNDISC_MONEY,URG_BIZ autolearn=no autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2607:f8b0:4864:20:0:0:0:1135 listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5002]
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [miss.glorykipkalyakones25[at]gmail.com]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [miss.glorykipkalyakones25[at]gmail.com]
        *  0.0 MILLION_HUNDRED BODY: Million "One to Nine" Hundred
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        *  0.6 URG_BIZ Contains urgent matter
        *  0.0 LOTS_OF_MONEY Huge... sums of money
        * -0.0 T_SCC_BODY_TEXT_LINE No description available.
        *  3.6 UNDISC_MONEY Undisclosed recipients + money/fraud signs
        *  0.6 MONEY_FRAUD_5 Lots of money and many fraud phrases
X-Spam-Level: *****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Assalamu Alaikum Wa Rahmatullahi Wa Barakatuh
I came across your e-mail contact prior a private search while in need
of your assistance. I am Aisha Al-Qaddafi, the only biological
Daughter of Former President of Libya Col. Muammar Al-Qaddafi. Am a
single Mother and a Widow with three Children.
I have investment funds worth Twenty Seven Million Five Hundred
Thousand United State Dollar ($27.500.000.00 ) and i need a trusted
investment Manager/Partner because of my current refugee status,
however, I am interested in you for investment project assistance in
your country, may be from there, we can build business relationship in
the nearest future. I am willing to negotiate investment/business
profit sharing ratio
with you base on the future investment earning profits.
If you are willing to handle this project on my behalf kindly reply
urgent to enable me provide you more information about the investment
funds.
