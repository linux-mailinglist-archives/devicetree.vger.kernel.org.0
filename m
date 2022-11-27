Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B64C3639953
	for <lists+devicetree@lfdr.de>; Sun, 27 Nov 2022 05:48:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229493AbiK0EsO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 26 Nov 2022 23:48:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56662 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229612AbiK0EsM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 26 Nov 2022 23:48:12 -0500
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com [IPv6:2607:f8b0:4864:20::741])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CCDE0FD0A
        for <devicetree@vger.kernel.org>; Sat, 26 Nov 2022 20:48:11 -0800 (PST)
Received: by mail-qk1-x741.google.com with SMTP id j26so5131653qki.10
        for <devicetree@vger.kernel.org>; Sat, 26 Nov 2022 20:48:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:sender:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2A5Zw4wTof6wwwRVMT2EklD6tpS33zcb3kC2X1CkRqg=;
        b=hj+mAa+TO4eDVDi5+owsPtx1NKvQ7/1JPFGChiQRrYWgvtvUF6vxscd40EuTkcvlbu
         nqmsl3g7qNBaxQ0+hzI77ACwezwgDCmJ0f5ndQ7GCYPzO9TZzvcmXNqBvqHG0D3L5V/x
         1wB2S5wn+QTz02dlh9+P97jgcbrmIOI2ImRVnw5i/CnH25HgORSw0zBe5T0yk48sNrPF
         tbzRYFCNkOxKRD2JfU5g7B3mtzUGEVOmzuxkC+IQmQIj/Pb71Ae+72ha8PzZAgKtzDz6
         r7wWyWqxtfr0WJQ/29ofeNhrSE4sG98oaEmtywsgggQOzNLXuHlXIL1QmZAV3WeuDDAB
         Jrfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:sender:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2A5Zw4wTof6wwwRVMT2EklD6tpS33zcb3kC2X1CkRqg=;
        b=i8sZ/OuI4jXK7zz3AD7nQmzAakQNj3W5DYfd0O01U6br4eJKsO3mdTf33pPuEpaT9h
         /uC/JGYixX+pxMr2ywBEEm7Ko77AHpGY2W6xY0fyOlwegzaaewFVOK4Om2KK+VCpO7QP
         a8kS/PXpYB9mOrfZeFmC9STZ7KzOZ9SJfpit7fZHt4sKf3YaR/eNv+pf3ARDMdvGx0cP
         k8IubTjaPKCGFiUeIEHU2g3osvhUiuZiNRhi3JQmUD9cG+sjOVy2qQG23c+uX3BXuXzc
         2A0nlZiHReYEHvFPMhANOXckJ9Hbsi2cAUNlXjyK27h2OpQm+UHE2BhsEgTWvjFVzE/U
         T3vQ==
X-Gm-Message-State: ANoB5pkPQz/etMGgOEsXmp1NX4sUhYbdQnB1PHD8HoDpV/7Ocmcv8aQ+
        Zhvzc4CCidbNSesSAMc3zwSwDOly0SSTpwf8Ox4=
X-Google-Smtp-Source: AA0mqf6YHCuhsbpQtM/T7erbKeHG4pS7KkIjuSrrDWJMwrbItmsvT2xHRewXD+0YCLWxWgWlSSkaXhov7DxvRsI9ra8=
X-Received: by 2002:a37:ad13:0:b0:6fa:4af5:7020 with SMTP id
 f19-20020a37ad13000000b006fa4af57020mr41638428qkm.455.1669524490641; Sat, 26
 Nov 2022 20:48:10 -0800 (PST)
MIME-Version: 1.0
Sender: abusalam777667@gmail.com
Received: by 2002:a05:6214:10e5:b0:4c6:9217:b4ce with HTTP; Sat, 26 Nov 2022
 20:48:10 -0800 (PST)
From:   "Mrs.Yu  Ging" <yuging9567@gmail.com>
Date:   Sun, 27 Nov 2022 04:48:10 +0000
X-Google-Sender-Auth: Tw8kAqexCY1xZ-i02VDZqvHMDo0
Message-ID: <CALikq9hwMVwr1kYZP2ROPzv=kTmsXh_SxCav9TBESfuKnT+rdw@mail.gmail.com>
Subject: Hello
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=5.5 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,LOTS_OF_MONEY,MILLION_USD,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_HK_NAME_FM_MR_MRS,UNDISC_MONEY autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2607:f8b0:4864:20:0:0:0:741 listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5000]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [yuging9567[at]gmail.com]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [abusalam777667[at]gmail.com]
        *  1.5 MILLION_USD BODY: Talks about millions of dollars
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        *  0.0 LOTS_OF_MONEY Huge... sums of money
        *  0.0 T_HK_NAME_FM_MR_MRS No description available.
        *  3.2 UNDISC_MONEY Undisclosed recipients + money/fraud signs
X-Spam-Level: *****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

I am Mrs Yu. Ging Yunnan, and i have Covid-19 and the doctor said I
will not survive it because all vaccines has been given to me but to
no avian, am a China

woman but I base here in France because am married here and I have no
child for my late husband and now am a widow.

My reason of communicating you is that i have $9.2million USD which
was deposited in BNP Paribas Bank here in France by my late husband
which am the next of

kin to and I want you to stand as the beneficiary for the claim now
that am about to end my race according to my doctor.

I will want you to use the fund to build an orphanage home in my name
there in your country, please kindly reply to this message urgently if
willing to handle this project.

Mrs Yu. Ging Yunnan.
