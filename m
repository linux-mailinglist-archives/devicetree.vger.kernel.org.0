Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E9F3151679E
	for <lists+devicetree@lfdr.de>; Sun,  1 May 2022 22:02:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1354255AbiEAUFc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 1 May 2022 16:05:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34136 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1353607AbiEAUFc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 1 May 2022 16:05:32 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9431720BF7
        for <devicetree@vger.kernel.org>; Sun,  1 May 2022 13:02:05 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id j4so22294872lfh.8
        for <devicetree@vger.kernel.org>; Sun, 01 May 2022 13:02:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:sender:from:date:message-id:subject:to;
        bh=MofLrtV+m/gPE0/RlRoV+9PO7Jsf+lJHZ1pHNkVLNE4=;
        b=bJJL2hUe718FfQc0g9YUwYiikQMGRZMaa45xTU73eqmerII/eDVwpfh++hfKCozoA5
         JTzLZx29wsEfBGEgTAqnWIFXi6gKLc6aIx5WpNDUXBG3ygEk1w8Q5R2r/3+5JjcLEDAr
         BV8yHPoUyWBFEUUJTWE8zzWjqK7qwmctScYE8w3uP4kqFh/u2ZspagcZaDn2HnT2GELK
         LIzUsBctcMWSUI03j8KuQkvIc53pB4x0/G06/aH48z1+aON44+IfTydai1VsfVno6IFV
         dYfzcXZcTYk3xXjs3pPhhyNritV5j3Em/KjE+dbp43elPi7c2jBdjOXdzjyZ4JyzDGzM
         Emxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:sender:from:date
         :message-id:subject:to;
        bh=MofLrtV+m/gPE0/RlRoV+9PO7Jsf+lJHZ1pHNkVLNE4=;
        b=JNsQGP9CfJZkDB3dM+Hx/sgU9X7AVs//2khDHTn36GFZeNmvKwElrOvK7SS0VVkc3u
         b2tid+ZOEzTh0RPRPMliMd2X0oYKWu0dEr2bjNMzTJeSNDvuOSVPdFXVqopEff/UpLZS
         zeqqELYSGpnh+1NLVlSsu1l/7HhOviowZ7MOJDTdDg89158kKXrY/2hIaF6Q5iXa0SiR
         ZNI/E9V58oSzMAepOj4iYU+y1NcdVwg4M1VusTQIY+pzZrNjY9c/bGbzHANLKlz/H9i8
         9TKaBGKl9gPe/iJCdrrbxtP6o5JjzdVsarF0I/7VFE3C82BhHoguePMkxHSM2mBpNGpa
         v66w==
X-Gm-Message-State: AOAM530hyMV4//KUog0h6HhAYNYtPVcHXO66Z8P3ILOgHBLp6n22NTGM
        r3LzFV8kyR2GXY2kLAuX0+y+OukSDbT1Kl4pTJs=
X-Google-Smtp-Source: ABdhPJygEb0Os++zZ5johbWeBZlPTKS48a/o7gY0dDoOUZ82wcCKx9oic6xTJ3brZp3jHqABkPPE7RZb5bWJKIq1990=
X-Received: by 2002:a05:6512:228a:b0:473:a160:7a58 with SMTP id
 f10-20020a056512228a00b00473a1607a58mr588977lfu.101.1651435323611; Sun, 01
 May 2022 13:02:03 -0700 (PDT)
MIME-Version: 1.0
Reply-To: martinafrancis022@gmail.com
Sender: godfreynwauzor@gmail.com
Received: by 2002:a05:6512:3094:0:0:0:0 with HTTP; Sun, 1 May 2022 13:02:03
 -0700 (PDT)
From:   Martina Francis <martinafrancis61@gmail.com>
Date:   Sun, 1 May 2022 13:02:03 -0700
X-Google-Sender-Auth: vcU4LQ7nQtNnZPLHqqi4cFrT0wk
Message-ID: <CAFTYJ_oadi6JmKiRv_J6kwNDEUNKdLMcArwFT93FQOu7hzorJw@mail.gmail.com>
Subject: Greetings my dear
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=7.5 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLYTO,
        FREEMAIL_REPLYTO_END_DIGIT,LOTS_OF_MONEY,MONEY_FREEMAIL_REPTO,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        UNDISC_FREEM,UNDISC_MONEY autolearn=no autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2a00:1450:4864:20:0:0:0:129 listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5010]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [godfreynwauzor[at]gmail.com]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [martinafrancis022[at]gmail.com]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        *  0.0 LOTS_OF_MONEY Huge... sums of money
        * -0.0 T_SCC_BODY_TEXT_LINE No description available.
        *  3.5 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
        *  0.3 MONEY_FREEMAIL_REPTO Lots of money from someone using free
        *      email?
        *  1.8 UNDISC_MONEY Undisclosed recipients + money/fraud signs
X-Spam-Level: *******
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

-- 
Hello dear,
How are you?, my name is Mrs. Martina Francis a sick widow suffering
from cancer disease. I have a donation fund of ($2,700,000.00 USD)
MILLION which i want to donate through you to help the orphans,
widows, handicap people and charity home.

Please get back to me immediately after reading this message for more
details regarding this humanitarian agenda.

God bless you while I'm waiting for your answer.

Mrs. Martina Francis
