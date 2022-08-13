Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 86F7B591B89
	for <lists+devicetree@lfdr.de>; Sat, 13 Aug 2022 17:39:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239793AbiHMPjc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 13 Aug 2022 11:39:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52238 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239621AbiHMPjb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 13 Aug 2022 11:39:31 -0400
Received: from mail-vs1-xe42.google.com (mail-vs1-xe42.google.com [IPv6:2607:f8b0:4864:20::e42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 261E625C5E
        for <devicetree@vger.kernel.org>; Sat, 13 Aug 2022 08:39:31 -0700 (PDT)
Received: by mail-vs1-xe42.google.com with SMTP id 125so3475129vsd.5
        for <devicetree@vger.kernel.org>; Sat, 13 Aug 2022 08:39:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc;
        bh=t6OYJHm7dEyPfeg2YDBcfa2L/+S6vBgF8Q5R1bDfTgo=;
        b=ZqGiPwNQpWNllR/iYlF/iMT7sbnAtsSeOBMnzMEgCDTqxmV9USAqcjTIK9x6hd9k4E
         OyCUsnMzAth+AINaW/fPUc/aomBXtaW7TIPhw8Dr7jTH8ixpPRV8WN2fbuyRiif9HaZH
         cdE0vnCxYdXBg6khRVvSdEOs7Vof5FW5/wmkSMyFJyKirbSSEuXXPbFjZQEnbUGqg0Hl
         lpKSu+D5H4nrQaQdygwkBNs5y7OkuwIP9bZVZFkb+nuWCb1B0wa/p3MGNrvQwr9O66Z5
         S9/gLC/HwQxzEj+hx2vUB7dWQiWyy6t54yC8ZrJvQrq42n8ImGREEbGcxBaEkSMEP6Hx
         JSCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc;
        bh=t6OYJHm7dEyPfeg2YDBcfa2L/+S6vBgF8Q5R1bDfTgo=;
        b=qSHNKKYDcLFg86yksrnOfldU9HE054uIvBiBVf9Y13lcF6vipIqKMda8rlstzUb+JA
         NtUa0C3f9lNqmbBsQe2Qg/porrwKxcnnsDCO64r5KyhaVdMFApmgl/b8j5ui4HcxDJ9R
         2TDXWqc7Akv7J2NkHQsbq5yISwW5Mm6I+BuIP3KQ5WYje4VLN93UOnaXzW4hIB5WmYtk
         2eKLuoqLVd4tlP2rcvPvpYRtHXcOAri4Iy0K9261KiNqE/RYo9ARBo4JEfq/9yL0Aeo5
         rAk7WRsAuyrI395sAfMleZGbtqZy6KWKa3sLhkD9M0/isXTxEKWvwkjnDGQSwAAd3N9B
         RUxA==
X-Gm-Message-State: ACgBeo2nObrsSCcs/cfqAufn6p2WJzmxRPU6Vo4Oa59DJcpyxqk2CvoA
        VQbGAyQuY/avsOEdpaCbv2QquWTbfoD/mtj7VQ==
X-Google-Smtp-Source: AA6agR7mOj+vsxykS/VCi0drWG+scDe7OeIX9xYivxb7xTp72MqTgf9HgBHg/c/wORQ7uk68/SlEZBzBIK19fQ6eUMM=
X-Received: by 2002:a05:6102:3ecd:b0:358:57a1:d8a with SMTP id
 n13-20020a0561023ecd00b0035857a10d8amr3584710vsv.2.1660405169881; Sat, 13 Aug
 2022 08:39:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a59:c9f2:0:b0:2de:b801:480d with HTTP; Sat, 13 Aug 2022
 08:39:29 -0700 (PDT)
From:   Rashdat Opeyemi <rashbella2001@gmail.com>
Date:   Sat, 13 Aug 2022 17:39:29 +0200
Message-ID: <CACpYiZ_=i-XcDowk5ELz6WytHNOfXHB5xUoORGry2OhyBXmfmw@mail.gmail.com>
Subject: Hello
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=7.5 required=5.0 tests=ADVANCE_FEE_2_NEW_MONEY,
        BAYES_50,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FROM,FREEMAIL_REPLY,HK_SCAM,
        LOTS_OF_MONEY,LOTTO_DEPT,MONEY_FRAUD_3,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,UNDISC_MONEY autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2607:f8b0:4864:20:0:0:0:e42 listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5001]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [rashbella2001[at]gmail.com]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [rashbella2001[at]gmail.com]
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
        *  0.0 HK_SCAM No description available.
        *  1.0 FREEMAIL_REPLY From and body contain different freemails
        *  0.0 LOTTO_DEPT Claims Department
        *  3.0 UNDISC_MONEY Undisclosed recipients + money/fraud signs
        *  2.7 MONEY_FRAUD_3 Lots of money and several fraud phrases
        *  0.0 ADVANCE_FEE_2_NEW_MONEY Advance Fee fraud and lots of money
X-Spam-Level: *******
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

SANTANDER BANK COMPENSATION UNIT, IN AFFILIATION WITH THE UNITED NATION.
Your compensation fund of 1.1 million dollars is ready for payment
contact me on my private email for more details. (
david.harden.chantal@gmail.com ) Thanks
