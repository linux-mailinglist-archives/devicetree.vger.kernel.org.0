Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9924153DD48
	for <lists+devicetree@lfdr.de>; Sun,  5 Jun 2022 19:03:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233454AbiFERDk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 5 Jun 2022 13:03:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54692 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351371AbiFERDh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 5 Jun 2022 13:03:37 -0400
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com [IPv6:2607:f8b0:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5C4E3393E5
        for <devicetree@vger.kernel.org>; Sun,  5 Jun 2022 10:03:35 -0700 (PDT)
Received: by mail-pf1-x442.google.com with SMTP id b135so10974580pfb.12
        for <devicetree@vger.kernel.org>; Sun, 05 Jun 2022 10:03:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=f/UilSAxG+uYZGr2O0WgxBidGfjIL+/pLfI/yMfN0No=;
        b=bXwxrI0ssH12cDH+H1T5cB5Z5FLajoLD3gqazsVOaHXv0MLhHrIOps7dopyRrq8MLV
         4aaKg6GTgfLmb8QagGZYn+fUOyQyf2Z5oEatgo2112CVL61Csso65XYO8LK4LHD9ZT8x
         PyCNve7+VpKZqY+Rymo3wNl8yILe4f524D6n22wkZVzrmD/8ICSV68daU7ENQP0DyNI3
         8lF2wXRSYE6gHz9HDqaPiB1hmUiN0lnCPjBa0E4NtFTAM5psnSKmXDagDiYVLnL9yx6X
         oZhetkul6j3pwxF0viPPyEs647JrdRMz1Yl1c8ZSkmj6SBRsFqcsbGS/ICCCPMrHfxRF
         gcdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=f/UilSAxG+uYZGr2O0WgxBidGfjIL+/pLfI/yMfN0No=;
        b=ndxz1Ldb0Wq+4Aoyk4HH5DjSj2AagRqe6icG03FqQOBKG1uMsYjgz3KJUwHdwYBMTv
         Rpaq9v0NMlcrxD0/66Xmvsb7QU2udrfcfvgV167UsnZcnkvPNY88rYbGoBQLk0Gvkboa
         TgYgmVs2V5+JdaViR2aqPFhyo4yLt6MFPM0+cU5zgLov64Yc0H18Q1rALJAmQKhwTmIw
         7iZzaX8+r4b5Bz0ei9QiTEfSpb9xtWpGNQ15WobI4D2r1ULyqdX+24+1KSAHrjvjRsrM
         406gt9ClubM9j4y87wf1a8r6TuU/f+QVEdBlOwHkA5z22Ta77JZNWby2KM/+n3gwnUGU
         nVHA==
X-Gm-Message-State: AOAM532jlFfG/iGpQ7gArzT306oTVZ5Wak4FGbGlTxFt6BupIu6OP9hu
        JBWrVY6EVZVD5ntrGrgTMQxzGWta25KyPdn5NvI=
X-Google-Smtp-Source: ABdhPJyuxqnDjaHHowDD7T1xsS3Mq2di4pvxh3mWGjJBn7xB4tkJbpQ1Ml/NJ42vh9iv1N8qFMzGkzB1vM2yuWFOYKQ=
X-Received: by 2002:a65:6552:0:b0:3db:772a:2465 with SMTP id
 a18-20020a656552000000b003db772a2465mr17686114pgw.225.1654448615136; Sun, 05
 Jun 2022 10:03:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:90a:a082:0:0:0:0 with HTTP; Sun, 5 Jun 2022 10:03:34
 -0700 (PDT)
Reply-To: profdorothyinvestment@gmail.com
From:   "Hon. Francisco " <franciscojinvestmentss@gmail.com>
Date:   Sun, 5 Jun 2022 10:03:34 -0700
Message-ID: <CALMQtE_gy_Ns7fq5o3Q-neD9LSUfgS5vRy-p0cNZNBRHXV6Pbg@mail.gmail.com>
Subject: HELLO
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=6.6 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLYTO,
        LOTS_OF_MONEY,MONEY_FREEMAIL_REPTO,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,UNDISC_FREEM,UNDISC_MONEY autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2607:f8b0:4864:20:0:0:0:442 listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5000]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [franciscojinvestmentss[at]gmail.com]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        *  0.0 LOTS_OF_MONEY Huge... sums of money
        * -0.0 T_SCC_BODY_TEXT_LINE No description available.
        *  2.3 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
        *  2.0 MONEY_FREEMAIL_REPTO Lots of money from someone using free
        *      email?
        *  0.6 UNDISC_MONEY Undisclosed recipients + money/fraud signs
X-Spam-Level: ******
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

-- 
URGENT LOAN IS NOW AVAILABLE

Hello, I'm here to testify of how i got my real estate business loan
from PROF. MRS.DOROTHY JEAN INVESTMENTS
(profdorothyinvestment@gmail.com) I don't know if you are in need of
an urgent loan to pay bills, start business or build a house, they
offer all kinds of loan Ranging from $5,000.00USD to $2,000,000.00USD
with a low interest rate of 2% and loan duration of 1 to 33 years to
pay back the loan secure and unsecured. Are you losing sleep at nights
worrying how to get a Legit Loan Lender?
MRS.DOROTHY JEAN holds all of the information about how to obtain
money quickly and painlessly without cost/stress via Contacts
Call/Text +1(315)256-0479
Email profdorothyinvestment@gmail.com
