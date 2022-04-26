Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 77B4E50EF2D
	for <lists+devicetree@lfdr.de>; Tue, 26 Apr 2022 05:26:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235208AbiDZDaC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Apr 2022 23:30:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43488 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232958AbiDZD36 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Apr 2022 23:29:58 -0400
Received: from mail-qk1-x732.google.com (mail-qk1-x732.google.com [IPv6:2607:f8b0:4864:20::732])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3AF812018A
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 20:26:52 -0700 (PDT)
Received: by mail-qk1-x732.google.com with SMTP id s70so12312841qke.8
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 20:26:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:sender:from:date:message-id:subject:to;
        bh=dKcUIpiaOihT4R5jeXs4xTqFm8l6J3OzRyPekvqQPa8=;
        b=H0v46YcWDUk9cjHr5S21H5RfzY0mXoxCcQlN8wRu05KyL/joOl4OiMUdtnkl/1EMaV
         b/IaVRGeUhNnA8xv6Aoo/5P11fkel9xRRryMexHDKvvII9Ai/jmu+0ZMixMi/j96BA8p
         umy4gLcEkjjAzZaU/O6uEekgzJjJ8BpmgcW+UOlM9cYhqXU3IFtuQO0BlCVItM5BySEj
         hXAZbU1nLpbBlc1tLm0BStj/iU5rrTWbwK9ODwLiABoC/EWIT88+hQ5D1ZTsZENvo4tL
         bpWyq/pEv36gjoeePUk6Z7260839G9F4t2L12rZbqyOB7d2slt0ZLz/9rxRQQMmddiG8
         KyBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
         :to;
        bh=dKcUIpiaOihT4R5jeXs4xTqFm8l6J3OzRyPekvqQPa8=;
        b=GB/4d9aSpQBf3545p95SBJ9df+0XuophaFEoHDozKYv7/K1IVWK59fCOvT+H2ubjZO
         0/bcnES+ZLU7q6vwRwaPOKPkVaVW1B34p7oTYjc6YTTHJ8f0HYVBUJRRPKzcx8M9Hne3
         QxL5R6p/Ba8e+Xw2bmhd1zBtW+HF7xG/KoAHa5S9W6Zg8oMU9UeRjlkKghjb2gvXXids
         +gzjWee3ebI4DChYEq/EQzrV3ODOR4aga2tz2Av93fb1Dd4JLwPgkpt0nqGwOKJ2k7Y+
         MuBOis8btvm2I/+0c+eBkbVA08F6SL/JmHwQgHKIhn34PrAJXUflrENTGEUS5yjwe5vY
         FyUQ==
X-Gm-Message-State: AOAM5310BTsjGPf878jy1nP6bc3LwEfxSYxnC1LaeXNE4DZAx7kvFdor
        8K3IeUx+sar7B8Wtywz34gTcL2IA5MI7nC/Ob/8=
X-Google-Smtp-Source: ABdhPJzMwBr2q/+OaboevHrwyXdd5NgmQBU9A1QKtdZambUsbltonGLF5R7XL83by3TzT7cle0OhZC2hG+aw4wJ5ctw=
X-Received: by 2002:a05:620a:e06:b0:69e:e402:477d with SMTP id
 y6-20020a05620a0e0600b0069ee402477dmr11961144qkm.716.1650943611276; Mon, 25
 Apr 2022 20:26:51 -0700 (PDT)
MIME-Version: 1.0
Sender: mrsmelaniat@gmail.com
Received: by 2002:a05:620a:12cf:0:0:0:0 with HTTP; Mon, 25 Apr 2022 20:26:49
 -0700 (PDT)
From:   Aisha Al-Qaddafi <aishaqaddafi633@gmail.com>
Date:   Tue, 26 Apr 2022 03:26:49 +0000
X-Google-Sender-Auth: C8-rZmo_BJhNQn_mOZ2MkNz47_0
Message-ID: <CANL8XDs3QHr+Dx3XW1GhRKsV2ydZ_83QhDiAJ1UoWyUbV5ir6A@mail.gmail.com>
Subject: Investment Proposal
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=7.0 required=5.0 tests=BAYES_99,BAYES_999,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        LOTS_OF_MONEY,MILLION_HUNDRED,MILLION_USD,MONEY_FRAUD_5,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,UNDISC_MONEY,US_DOLLARS_3
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2607:f8b0:4864:20:0:0:0:732 listed in]
        [list.dnswl.org]
        *  0.2 BAYES_999 BODY: Bayes spam probability is 99.9 to 100%
        *      [score: 1.0000]
        *  3.5 BAYES_99 BODY: Bayes spam probability is 99 to 100%
        *      [score: 1.0000]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [aishaqaddafi633[at]gmail.com]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.0 MILLION_USD BODY: Talks about millions of dollars
        *  0.9 MILLION_HUNDRED BODY: Million "One to Nine" Hundred
        *  0.0 US_DOLLARS_3 BODY: Mentions millions of $ ($NN,NNN,NNN.NN)
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        *  0.0 LOTS_OF_MONEY Huge... sums of money
        *  2.2 UNDISC_MONEY Undisclosed recipients + money/fraud signs
        *  0.4 MONEY_FRAUD_5 Lots of money and many fraud phrases
X-Spam-Level: *******
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

  Investment Proposal,

With sincerity of purpose I wish to communicate with you seeking your
acceptance towards investing in your country under your Management as
my foreign investor/business partner.
I'm Mrs. Aisha Gaddafi-Al, the only biological Daughter of the late
Libyan President (Late Colonel Muammar Gaddafi) I'm a single Mother
and a widow with three Children, presently residing herein Oman the
Southeastern coast of the Arabian Peninsula in Western Asia. I have
investment funds worth Twenty Seven Million Five Hundred Thousand
United State Dollars ($27.500.000.00 ) which I want to entrust to you
for the investment project in your country.

I am willing to negotiate an investment/business profit sharing ratio
with you based on the future investment earning profits. If you are
willing to handle this project kindly reply urgently to enable me to
provide you more information about the investment funds.


Best Regards

Mrs. Aisha Gaddafi-Al.
