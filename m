Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5BD8874D590
	for <lists+devicetree@lfdr.de>; Mon, 10 Jul 2023 14:34:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229925AbjGJMek (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Jul 2023 08:34:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38306 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229774AbjGJMek (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Jul 2023 08:34:40 -0400
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com [IPv6:2607:f8b0:4864:20::642])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7271FDB
        for <devicetree@vger.kernel.org>; Mon, 10 Jul 2023 05:34:39 -0700 (PDT)
Received: by mail-pl1-x642.google.com with SMTP id d9443c01a7336-1b9e9765f2cso1933075ad.3
        for <devicetree@vger.kernel.org>; Mon, 10 Jul 2023 05:34:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688992479; x=1691584479;
        h=to:subject:message-id:date:from:sender:reply-to:mime-version:from
         :to:cc:subject:date:message-id:reply-to;
        bh=jvhbKHPRKfMEJS6inHuIrpCpyOh87s7quIhd+QJ98f4=;
        b=IjsTXkboVQq5aR2eiwfTjfU9cO/jl2coVka2iRB7wcI9FBu904fLknW+7oVvwpl+90
         iUmnl0hQ06nUbNYDHtR01v9wy6a/CbAMdIwkWHND+Q+gr7C3snGnda4aE0IRBjATniy9
         aRZSr+p3yXWyV1VgvvKAGPWOxJyyw2k9oxTdYS87hJvUp40STLfUVZ45Q7qT9dj7d9R5
         SORri9jKshPQ1Ot70NHY5vh7ukqPOYd4BjxBJshRZyoPWn35kajjP8or6YGsZZAGodcW
         c3uesR+6WT6dBqFpUcmd1ZBJuY/hcPbl8965opNuKFRdQ5SejPGKY34h42gr+fjYoJwM
         HbZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688992479; x=1691584479;
        h=to:subject:message-id:date:from:sender:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jvhbKHPRKfMEJS6inHuIrpCpyOh87s7quIhd+QJ98f4=;
        b=RcV/uqbf2mBOzOIqeh9WAY7qILZIgwm8Lx9bR6s5gAnaMJ5V5vdRvvaA1U/+5A09ii
         R8zNA1jdqyFeE66dZuyiBx5T0t2qlLEDN7pEfptEB3T07hDfniCbop6oL9t1JE/dFQB3
         FSCLE8L7WCM/07ELVChNLB69be3nTJ/h/U6T518hxzO2uplNorjqWZP04KXLxouiXixs
         Y2Oa+9UymCbnOrCXwRjp2Vvj2y2CXzKy6co1zl1JFnUqFM/SAkxut8V8ORwY2hnt/SiG
         umo4cY0LHEPhJP+dFuvUkQ/VFqnhvyUYM2PuEIn3t1NhngQu9EOe6vhEbsp9p9Bp8xxz
         0DBA==
X-Gm-Message-State: ABy/qLYweZc48sk44xUFWihrj7WwxE0yEPcV1Cwm/yVegVRHr7I1BmB2
        UdtzQevHESWVqd5hyjC5cZ4l7IdBBKb5GVRUKU4=
X-Google-Smtp-Source: APBJJlHknCCCSs8oL6W2K/RxaYloGgg71iyocEIQRRiC2XssBLZVdTOzqNH/iZ3RtxPsKQlSj9p6izJrD9dNY3pCeEg=
X-Received: by 2002:a17:903:228d:b0:1b8:a3a6:df9c with SMTP id
 b13-20020a170903228d00b001b8a3a6df9cmr11541467plh.60.1688992478742; Mon, 10
 Jul 2023 05:34:38 -0700 (PDT)
MIME-Version: 1.0
Reply-To: salkavar2@gmail.com
Sender: mrs.suzaramalingwan100@gmail.com
Received: by 2002:a05:6a10:a685:b0:4d9:6642:b75b with HTTP; Mon, 10 Jul 2023
 05:34:38 -0700 (PDT)
From:   "Mr. Sal Kavar" <salkavar2@gmail.com>
Date:   Mon, 10 Jul 2023 05:34:38 -0700
X-Google-Sender-Auth: RZN_K6pAAMFCgWY0cvuZq4eV_h4
Message-ID: <CA+j35sB12GV7irDwrpq51rQ8sKMpvw5raVK2VKmUw_+-4ETTxg@mail.gmail.com>
Subject: Yours Faithful,
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=7.6 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO_END_DIGIT,LOTS_OF_MONEY,MILLION_HUNDRED,
        MONEY_FRAUD_5,MONEY_FREEMAIL_REPTO,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS,T_HK_NAME_FM_MR_MRS,T_MONEY_PERCENT,T_SCC_BODY_TEXT_LINE,
        UNDISC_MONEY autolearn=no autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2607:f8b0:4864:20:0:0:0:642 listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5191]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [mrs.suzaramalingwan100[at]gmail.com]
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [salkavar2[at]gmail.com]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [salkavar2[at]gmail.com]
        *  0.0 MILLION_HUNDRED BODY: Million "One to Nine" Hundred
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.0 T_SCC_BODY_TEXT_LINE No description available.
        *  0.0 T_HK_NAME_FM_MR_MRS No description available.
        *  0.0 LOTS_OF_MONEY Huge... sums of money
        *  1.6 MONEY_FREEMAIL_REPTO Lots of money from someone using free
        *      email?
        *  0.0 T_MONEY_PERCENT X% of a lot of money for you
        *  3.2 UNDISC_MONEY Undisclosed recipients + money/fraud signs
        *  1.7 MONEY_FRAUD_5 Lots of money and many fraud phrases
X-Spam-Level: *******
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

I assume you and your family are in good health.

Overdue and unclaimed sum of $15.5m, (Fifteen Million Five Hundred
Thousand Dollars Only) when the account holder suddenly passed on, he
left no beneficiary who would be entitled to the receipt of this fund.
For this reason, I have found it expedient to transfer this fund to a
trustworthy individual with capacity to act as foreign business
partner.

You will take 45% 10% will be shared to Charity in both countries and
45% will be for me.

Yours Faithful,
Mr.Sal Kavar.
