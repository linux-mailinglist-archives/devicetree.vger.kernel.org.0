Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6826275E105
	for <lists+devicetree@lfdr.de>; Sun, 23 Jul 2023 11:47:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229884AbjGWJrg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 23 Jul 2023 05:47:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42606 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229614AbjGWJre (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 23 Jul 2023 05:47:34 -0400
Received: from mail-yw1-x112d.google.com (mail-yw1-x112d.google.com [IPv6:2607:f8b0:4864:20::112d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 85616E6E
        for <devicetree@vger.kernel.org>; Sun, 23 Jul 2023 02:47:33 -0700 (PDT)
Received: by mail-yw1-x112d.google.com with SMTP id 00721157ae682-583c48a9aa1so6485847b3.1
        for <devicetree@vger.kernel.org>; Sun, 23 Jul 2023 02:47:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=plu-edu.20221208.gappssmtp.com; s=20221208; t=1690105652; x=1690710452;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Tw50ljkf/McGf24gQO6ryHlnxMv+pgNUd5iIU5i5t0I=;
        b=z07OiU4euN0C2yaDHbVHPrlPIRCrl8vBH1wqBL6tiMbnZWnSN7OTaoZgasm12xQQdu
         5DNBWVQ5FwLCL4VQOVgVpzE75Zjj7jI+Zyy8NdxDRw7/6ePpI8SkTUxJHkqezDwufbr2
         VnvmeRQ57TiNCdRZsGooZkUjlChadPsTfh6JHVg5lXLrk0XFlAki1vR9idgsa/4rsQzC
         BCQAwenyROsI46lVE8EwVenjxXPUQDjZ3RIZUP0XMCLq2WK/ybCUL1yuJfIUpA+irTy5
         wK7jDd5YIntmKrUrnzf5nqT8G5+YuHtWLmaV/3H757octWWhxOfGgmJsd/IAbR2DdlNw
         Az3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690105652; x=1690710452;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Tw50ljkf/McGf24gQO6ryHlnxMv+pgNUd5iIU5i5t0I=;
        b=O9kVD72jtezWJnBwiN8eNlzj8piJB+baBbH/j9nV8rEnV8S8D9OZJOTUUl1cpox5A5
         P+1RbcbfQ4lGtPanPtT3BsIHGzNY+7rCywqQtJ2PMDctsVC5tvj1Z1NwmWW6nCTBfqc0
         F9oKySPnYUMEpO3Y2QltdHaaCJF/X9ap/HoSHpHg4qUkF71poVdUm1QY+OLHcyfkFJSR
         ne2LS4Zkbs/CsaEyRBuih2X5/SgFrfRAYpYFtDGp0VCY+TGZa60m2cK2Yzs0DDg4GDXk
         jBVhp8GocPH652V6UV3rA435jR4xZDN5uxkJDCPGQOFd29U9xCBPnWGd6TgQuap7aA/0
         v3xg==
X-Gm-Message-State: ABy/qLYPdMTmtF9Lm31p27Mo4JtyUGWTQsG7nlYm6gwB9hJpTDKE6jbY
        SNLnbHeDkHF1Na5Is+DP2zdJtL3cEbLcABUQJKEspQ==
X-Google-Smtp-Source: APBJJlG9EaOFpTLpu9kRjOBOpYStzryBx73lv7FLhVCT5reBojLGTHvnDryrMMAVnc1p4JNjR0PM33Y6oCskfYi8tDk=
X-Received: by 2002:a81:6dc3:0:b0:583:9fa1:e86d with SMTP id
 i186-20020a816dc3000000b005839fa1e86dmr3774709ywc.24.1690105652729; Sun, 23
 Jul 2023 02:47:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7000:9509:b0:4f3:89f2:4dfe with HTTP; Sun, 23 Jul 2023
 02:47:32 -0700 (PDT)
Reply-To: crypto.trustinvestmenttrading@gmail.com
From:   "@RONNY SIEGL _CRYPTO" <danielrl@plu.edu>
Date:   Sun, 23 Jul 2023 02:47:32 -0700
Message-ID: <CAJQDWQ_D8JPUZK95Atfi6ptYv=-DrOPpNGsz2dXO48XZFA61tg@mail.gmail.com>
Subject: 
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: Yes, score=7.0 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,FREEMAIL_FORGED_REPLYTO,LOTS_OF_MONEY,MONEY_FREEMAIL_REPTO,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        UNDISC_MONEY autolearn=no autolearn_force=no version=3.4.6
X-Spam-Report: *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5000]
        *  0.0 RCVD_IN_DNSWL_BLOCKED RBL: ADMINISTRATOR NOTICE: The query to
        *      DNSWL was blocked.  See
        *      http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
        *      for more information.
        *      [2607:f8b0:4864:20:0:0:0:112d listed in]
        [list.dnswl.org]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        * -0.0 T_SCC_BODY_TEXT_LINE No description available.
        *  0.0 LOTS_OF_MONEY Huge... sums of money
        *  1.2 MONEY_FREEMAIL_REPTO Lots of money from someone using free
        *      email?
        *  2.1 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
        *  2.9 UNDISC_MONEY Undisclosed recipients + money/fraud signs
X-Spam-Level: *******
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

--=20
Do you have Crypto Wallet?
How about i tell you how to get one and how you can earn $260,000 from
Crypto trading within a week. ASK ME HOW? For more information contact
us for a direct conversation on WhatsApp Messenger: +1 (507) 209=E2=80=9106=
12=E2=80=AC

Regards,
SIEGL CRYPTO.
