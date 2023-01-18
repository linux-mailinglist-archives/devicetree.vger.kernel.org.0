Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 61A64672071
	for <lists+devicetree@lfdr.de>; Wed, 18 Jan 2023 16:02:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230145AbjARPCn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Jan 2023 10:02:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35060 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229895AbjARPC1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Jan 2023 10:02:27 -0500
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com [IPv6:2607:f8b0:4864:20::b49])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E73DD42DDE
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 07:00:39 -0800 (PST)
Received: by mail-yb1-xb49.google.com with SMTP id x188-20020a2531c5000000b00716de19d76bso37598519ybx.19
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 07:00:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=LyLfN4Mi1/PXpiir6MvuChlkwaHrtK328hAazNCRUWM=;
        b=lvY1l95mtOX1zPjOduSsS1/6e+L7oILtmQromeN396Bzr2XI2LSAjV9ANA0g1/grex
         SrOMRCWIPq64bbTQccHWbXTipNbs/LX5cYWqUM22+qU8+xDhg3UPXQ6e66s7ogYSkfKa
         VeTPY7D0/evXvT6OfsfhCLDNWlqRuB7sjlZQF5/YaTlu6CN7YcMuEAmLPV4mk3uR2luY
         fw14CNFEwJTHbS6cT+6fHWVQDqSHunzp0VUxenUYy9quYkuJ7ngyMhfpxh6u/TSs/LTb
         HjBuf3aRQwZx1NgFbuhBDWi+Gl2INpRekpLRDOGJi6aP8pgOoxuTHSrmh0CUrMTFHlRj
         Fohg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LyLfN4Mi1/PXpiir6MvuChlkwaHrtK328hAazNCRUWM=;
        b=qOcFedb/NfCUk89RLWJf3t98l1CIKvj8CGoD3UNkqpkqHq0Fn3UXf8RUy69HzXRB8f
         TPjVpaKiAoGMLeiF9bEVaXBALDxvmy0OncpDIe1mzFGjM9vHOdIip+DfZwOZ7pTj+Eil
         D26d4AG4P28pPmhInO43P1VJDiaQa/D1QPM78f8fCDM8yo437716CNjRB0BlNpgYFrJL
         8qheFUx60eqLHei0gUntbEotCei4b/bxIq708w+ctJZLl1yprzgQoXyT2YazAkAEU/rs
         HySIAXXWaDNUQgzT3gltcVoe6leIdkBjr9ZN/sh9sQ1BmGPXrOnxPcVAeXrxPd9HYd1o
         9euw==
X-Gm-Message-State: AFqh2krUJQjwpGOxmTkKk/EefSVgE3f+t0tUBdtcGXh3aCDe7QulZr/3
        tC18fb8XcMrBjaP72+VAAaPHtRctgke2
X-Google-Smtp-Source: AMrXdXsHf3zFoA2FXf6XVZ/0Vm8PsQPJzCSEQ911YS5cm4bZMzNTvAEM4Katw8ZuMuJZd9JeS7fNPQRTW5uO
X-Received: from aaelhaj2.cam.corp.google.com ([2620:15c:93:a:627e:ad17:ff9a:fd16])
 (user=aaelhaj job=sendgmr) by 2002:a81:cc2:0:b0:4db:3866:6fa6 with SMTP id
 185-20020a810cc2000000b004db38666fa6mr855980ywm.44.1674054039221; Wed, 18 Jan
 2023 07:00:39 -0800 (PST)
Date:   Wed, 18 Jan 2023 10:00:30 -0500
Mime-Version: 1.0
X-Mailer: git-send-email 2.39.0.314.g84b9a713c41-goog
Message-ID: <20230118150030.2079226-1-aaelhaj@google.com>
Subject: [PATCH] arm: dts: aspeed: tyan s8036: enable kcs interrupts.
From:   Ali El-Haj-Mahmoud <aaelhaj@google.com>
To:     Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
        Andrew Jeffery <andrew@aj.id.au>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
Cc:     aaelhaj@google.com, osk@google.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-9.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,USER_IN_DEF_DKIM_WL autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

When the BIOS is built with kcs interrupts enabled, not enabling
interrupts on the BMC results in very poor IPMI performance.
The other way around (BIOS with interrupts disabled, BMC with
interrupts enabled) doesn't suffer degraded IPMI performance.
Enabling interrupts on the BMC covers both scenarios, and should
be the default.

TESTED: manually verified IPMI performance when BIOS is built with and
without KCS interrupts.

Signed-off-by: Ali El-Haj-Mahmoud <aaelhaj@google.com>
---
 arch/arm/boot/dts/aspeed-bmc-tyan-s8036.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/aspeed-bmc-tyan-s8036.dts b/arch/arm/boot/dts/aspeed-bmc-tyan-s8036.dts
index 708ee78e4b83..f6c4549c0ac4 100644
--- a/arch/arm/boot/dts/aspeed-bmc-tyan-s8036.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-tyan-s8036.dts
@@ -364,6 +364,7 @@ &kcs1 {
 &kcs3 {
 	status = "okay";
 	aspeed,lpc-io-reg = <0xca2>;
+	aspeed,lpc-interrupts = <1 IRQ_TYPE_LEVEL_HIGH>;
 };
 
 /* Enable BMC VGA output to show an early (pre-BIOS) boot screen */
-- 
2.39.0.314.g84b9a713c41-goog

