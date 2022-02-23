Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E114B4C1557
	for <lists+devicetree@lfdr.de>; Wed, 23 Feb 2022 15:23:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241523AbiBWOYK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Feb 2022 09:24:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41328 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239615AbiBWOYJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Feb 2022 09:24:09 -0500
Received: from mail-il1-x134.google.com (mail-il1-x134.google.com [IPv6:2607:f8b0:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C747B1892
        for <devicetree@vger.kernel.org>; Wed, 23 Feb 2022 06:23:42 -0800 (PST)
Received: by mail-il1-x134.google.com with SMTP id w4so4300241ilj.5
        for <devicetree@vger.kernel.org>; Wed, 23 Feb 2022 06:23:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:sender:from:date:message-id:subject:to;
        bh=y8L6D09oyDfYgwjLd8NNF83N1gzGF1wUPPtkfx3XZVI=;
        b=W2RCL/30KncQz0kW0oGg09PsbQFJE+3Dc07tZRBUGOzH7RN7OrjV71c6IFo1MXSgJe
         8GAyb0zQyu9IWSBaYsrQTHEVTPt/SrlrWqWk06vBOwhzIwPxvUHtIDhaX4yjj9sTRYUw
         KgSww0+E+JyGlpPVcBYtixAOnPd4Tw6ZpXzpDzCqO+gdNaSREC5wAJr+Rij9h6I46EnK
         3kXSzzsn9IqU5HOkUFrzQpvtDwwum1tPE48X6SkPtXb/anBtxORK1m4gT8x32autYl0w
         vVvWs602ifgWs+kyJ+2MfBMCGv5pAsSSy9DSZ5HIdF2ee+pdj8gq5OFm5Q9o0aVs9dH4
         RSUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
         :to;
        bh=y8L6D09oyDfYgwjLd8NNF83N1gzGF1wUPPtkfx3XZVI=;
        b=ZGsTtkCuBvbrNJ0CePq9oHFaXBg9D/tA/AWz6VZ688Piz3GbAHhlSlX3oXhpjl0PRf
         1V/zI8Q8IdkybqbDLs7OhVXjCx4aYHRY4WE5YpF9uWNjNkO6uYDkKWvf+jzXtqwLl337
         ZthpDzj42EnFdFF8iaBBEriyoAiE7eJWAxsVMNM5wjS/Kafs9xsAx0DYRTJqs8Ewpr5T
         yc0cG8/Y5Jq/L9i6bHo6L7oyL76L14eJvf/in7rQ5A39IU8ptWsocxHVyIoDWUrRf88P
         1uCEl3yPHRr7qe2mraniuZh8DaYEW9LI9eJmZU01BWdqDEnsggBO7vBt6WvAHyqypjad
         dQpA==
X-Gm-Message-State: AOAM531coKjDWmVRWveYJQQG0o4vULDz1hdGO7tHnuPHRQ8u6rkzYtYd
        Gjm26ib8ZMs7NllMNim6Loj71TzzTIVkSJQjiiw=
X-Google-Smtp-Source: ABdhPJzITn4X/TvHREvjPQN+BHVFe3FSYWqw4SaqAVA1IaxN2lXkPU9iv+NDcT/L+OrAG9GjgcPaimJZB9l3SiZmR3o=
X-Received: by 2002:a05:6e02:1c07:b0:2c1:ec09:2ad4 with SMTP id
 l7-20020a056e021c0700b002c1ec092ad4mr18568077ilh.53.1645626221123; Wed, 23
 Feb 2022 06:23:41 -0800 (PST)
MIME-Version: 1.0
Sender: frankbillion112@gmail.com
Received: by 2002:a4f:cd3:0:0:0:0:0 with HTTP; Wed, 23 Feb 2022 06:23:40 -0800 (PST)
From:   Sophia Erick <sdltdkggl3455@gmail.com>
Date:   Wed, 23 Feb 2022 15:23:40 +0100
X-Google-Sender-Auth: X4OJVk0Z47QO2_3c1Pb5RdTWqeI
Message-ID: <CANHURE7an8cUsA1vOacN=caQMPv+ZFJJ+gy_M9FXFQXeLSX5Ag@mail.gmail.com>
Subject: HELLO
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=5.8 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FROM_LOCAL_NOVOWEL,HK_RANDOM_FROM,LOTS_OF_MONEY,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_MONEY_PERCENT,
        T_SCC_BODY_TEXT_LINE,UNDISC_MONEY autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2607:f8b0:4864:20:0:0:0:134 listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5000]
        *  0.5 FROM_LOCAL_NOVOWEL From: localpart has series of non-vowel
        *      letters
        *  1.0 HK_RANDOM_FROM From username looks random
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [frankbillion112[at]gmail.com]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [sdltdkggl3455[at]gmail.com]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        * -0.0 T_SCC_BODY_TEXT_LINE No description available.
        *  0.0 LOTS_OF_MONEY Huge... sums of money
        *  0.0 T_MONEY_PERCENT X% of a lot of money for you
        *  3.5 UNDISC_MONEY Undisclosed recipients + money/fraud signs
X-Spam-Level: *****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello My Dear,

It is my pleasure to communicate with you, I know that this message
will be a surprise to you my name is Mrs. Sophia Erick, I am diagnosed
with ovarian cancer which my doctor have confirmed that I have only
some weeks to live so I have decided you handover the sum of($
11,000,000.00, Eleven Million Dollars) through I decided handover the
money in my account to you for help of the orphanage homes and the
needy once

Please   kindly reply me here as soon as possible to enable me give
you more information but before handing over my details to you please
assure me that you will only take 30%  of the money and share the rest
to the poor orphanage home and the needy once, thank you am waiting to
hear from you

Mrs Sophia Erick.
