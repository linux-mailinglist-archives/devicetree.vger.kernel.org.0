Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AA403561AE6
	for <lists+devicetree@lfdr.de>; Thu, 30 Jun 2022 15:04:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235110AbiF3NEu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Jun 2022 09:04:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42866 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234774AbiF3NEu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Jun 2022 09:04:50 -0400
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com [IPv6:2607:f8b0:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 929471C92F
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 06:04:49 -0700 (PDT)
Received: by mail-pf1-x436.google.com with SMTP id n12so18171880pfq.0
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 06:04:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:sender:from:date:message-id:subject:to;
        bh=ZwzSWKe8aJcF2q7NRCCrMkrvQ9eS4Q9joDzntgIKPec=;
        b=jgcDz7f8mGmOAxbEgQrTMjpv/A3RosDN75/sF+MsSNxqRUyhJ2iRdPRz0rp87/zWJ3
         n1E/Z0NprRu10AFcDN4t2DzPaiPLAjuoanN9sCMZwvUCCxhxquXvSUv5rSu7/xJuU0B8
         J6SXlh7fROCyh0DNCWUpRVdv7Y3yyB//D7nuCbvcxSpFKtGE1dvTgI3RqkqVpznpj2sy
         QvzHmd3tufSqofHirwQ9FldOE6fQj72AcQd/CkfcFLGfGYgbHojGiOalOMtJZ8eL0euc
         d5R4C4PNmpK3drqag2fNL9HUKTPSyeJkbxhy0KPsdv8Fld3mFh+42eZs+F/J2pKprTtl
         TdjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
         :to;
        bh=ZwzSWKe8aJcF2q7NRCCrMkrvQ9eS4Q9joDzntgIKPec=;
        b=3pey+9pJ/CI2yp8/mbK7KSie207toDvIJY9chYwt7qgek6U7v6S7nlgcYouH3RcuR5
         2US7PTs1fae+ZlYkZVxU8A/4Bw6Hb5Y9UcUcPSlxPNVfFfv/PEhMaaPfp4EyWdX5CIg9
         EI2Jy2TqGGOu9P7kF8BhZYtsme22J4DeRb7tTWrYWP1bh0dJy8Rt1/rVwfc44n9i5E3n
         XaXVPMsrIeY+VO1uua9+fRNV8H5TLdIYw7L5kRukwAB/YOLbWBPwtjH0iEcWosX0GyKi
         dVfxDQGt1jI4d8tsbrmr4hg3Zc3MUF2QrcSzJeWlbeGnbZKkd7nRQlyxC8dBJmrcByeo
         qh9w==
X-Gm-Message-State: AJIora8Qxl5GBYnMG0msMnwqzvjfYS5Lt4wfUU11Ggy7xoqMYh5MeGRn
        AZHOBFAubCO4CU8oppM9AiyI62x5cFTWpT5L8Mg=
X-Google-Smtp-Source: AGRyM1shVNpR0CA6g2T+mWUYPWlag4ssszs7d/gCr9YzlGeiyLLd6/3+/eujSbSNYrWghuCY/seoYxGo4HfpN8XCubg=
X-Received: by 2002:a05:6a00:1a91:b0:525:a57c:25f3 with SMTP id
 e17-20020a056a001a9100b00525a57c25f3mr15683940pfv.75.1656594288704; Thu, 30
 Jun 2022 06:04:48 -0700 (PDT)
MIME-Version: 1.0
Sender: jw888502@gmail.com
Received: by 2002:a05:7300:76c1:b0:69:821f:f553 with HTTP; Thu, 30 Jun 2022
 06:04:47 -0700 (PDT)
From:   "Doris.David" <mrs.doris.david02@gmail.com>
Date:   Thu, 30 Jun 2022 06:04:47 -0700
X-Google-Sender-Auth: AxgJ6MafaDv04RtaY_zbH6d55lU
Message-ID: <CA+hfTynLSUqc8_tCMqug24ZcVa1=Njw5fYtxRLMj3gZ_EU-2gA@mail.gmail.com>
Subject: Re: Greetings My Dear,
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=6.1 required=5.0 tests=ADVANCE_FEE_5_NEW_MONEY,
        BAYES_50,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FROM,LOTS_OF_MONEY,MONEY_FRAUD_8,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        UNDISC_MONEY autolearn=no autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2607:f8b0:4864:20:0:0:0:436 listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5000]
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [jw888502[at]gmail.com]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [jw888502[at]gmail.com]
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        * -0.0 T_SCC_BODY_TEXT_LINE No description available.
        *  0.0 LOTS_OF_MONEY Huge... sums of money
        *  0.0 MONEY_FRAUD_8 Lots of money and very many fraud phrases
        *  3.0 ADVANCE_FEE_5_NEW_MONEY Advance Fee fraud and lots of money
        *  2.2 UNDISC_MONEY Undisclosed recipients + money/fraud signs
X-Spam-Level: ******
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Greetings,

I sent this mail praying it will find you in a good condition, since I
myself am in a very critical health condition in which I sleep every
night  without knowing if I may be alive to see the next day. I am
Mrs.Doris David, a widow suffering from a long time illness. I have
some funds I  inherited from my late husband, the sum of
($11,000,000.00) my Doctor told me recently that I have serious
sickness which is a cancer problem. What disturbs me most is my stroke
sickness. Having known my condition, I decided to donate this fund to
a good person that will utilize it the way I am going to instruct
herein. I need a very honest God.

fearing a person who can claim this money and use it for Charity
works, for orphanages, widows and also build schools for less
privileges that will be named after my late husband if possible and to
promote the word of God and the effort that the house of God is
maintained. I do not want a situation where this money will be used in
an ungodly manner. That's why I' making this decision. I'm not afraid
of death so I know where I'm going. I accept this decision because I
do not have any child who will inherit this money after I die. Please
I want your sincere and urgent answer to know if you will be able to
execute this project, and I will give you more information on how
thunder will be transferred to your bank account. I am waiting for
your reply.

May God Bless you,
Mrs.Doris David,
