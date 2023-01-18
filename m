Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 41BB3671698
	for <lists+devicetree@lfdr.de>; Wed, 18 Jan 2023 09:53:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229485AbjARIwz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Jan 2023 03:52:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54034 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229568AbjARIw3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Jan 2023 03:52:29 -0500
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DB6C05DC0F
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 00:05:05 -0800 (PST)
Received: by mail-pj1-x102b.google.com with SMTP id z4-20020a17090a170400b00226d331390cso1360808pjd.5
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 00:05:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lIoR0K2nD9tduWKzfzbB6LQE1NJ1KepAUnYgmYC1vTs=;
        b=ZM+85AyLj6yZlk8HHeGl4RmKwuuN+e02kJjo7q4EmMr1Pdy8h+Mb6xrfOEQp4BpbXI
         T8XlvFz7+2luLFHyqxELNWmUVSNRh3IvON4d5cwwVNGXpHn20JvNXv1j5z/Ch/e1xviA
         hOuDTpJHBgEknJyIojbKEOWtHR0MXjDUSzSwk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lIoR0K2nD9tduWKzfzbB6LQE1NJ1KepAUnYgmYC1vTs=;
        b=mF55WQGV1PZDYSJt/Ix17pvke9fKGD+uljsDmQcZlIuII/VBRUilStCS7IR+b4iFF5
         qVS4tb2Q/AF/+7P0Cq2rYV5GnhgxOlov30FKQMNxUzme8rL87ApYQOz5FVAFyqxPvYoA
         nEourFAtlQDQxahBVf2QRdyY8t7bwe50R4d745EIz40u4By/Eu0uxaJIAq2qYUS34Qhj
         fBdd8Pzc3Qvg/y28+/lG41MAgg8kv36WV9+3czsNOnTzzrqoCLIeSqPG/Np8zjHCggRv
         WYpWZk4bH9K+Uxljh0noehvP8fLnJbWrDpqwHm/NZ466Lkv1CseZX8dEHc87h0wGOXTs
         uhAg==
X-Gm-Message-State: AFqh2krc78an2VnMAITddGnIS6xBH0dtlJTFbuE3u0KXib3ajd6XiPLu
        7SmXVdKV1ZYf1EaoJ3XYKMPbNQ==
X-Google-Smtp-Source: AMrXdXt6mhtRxaboJ+MQJbeDaCuPCrUVGHYxOx6dP9fkGdmLAXXDOLKN7QEXh3wylLLOfCxa7S339w==
X-Received: by 2002:a17:903:50f:b0:194:7d6d:10bb with SMTP id jn15-20020a170903050f00b001947d6d10bbmr6588406plb.4.1674029105362;
        Wed, 18 Jan 2023 00:05:05 -0800 (PST)
Received: from localhost.localdomain ([45.249.78.214])
        by smtp.gmail.com with ESMTPSA id u14-20020a170902e5ce00b0018958a913a2sm22403511plf.223.2023.01.18.00.05.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Jan 2023 00:05:04 -0800 (PST)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Jagan Teki <jagan@amarulasolutions.com>,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v2 2/2] arm64: dts: rockchip: Update eMMC, SD aliases for Radxa SBC boards
Date:   Wed, 18 Jan 2023 13:34:54 +0530
Message-Id: <20230118080454.11643-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230118080454.11643-1-jagan@amarulasolutions.com>
References: <20230118080454.11643-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Radxa SBC boards like ROCK 3A/4 models do support eMMC and SDcard
via external connector slots.

Mark, the eMMC has mmc0 by considering the Rockchip boot order priority
as both MMC devices are connected externally.

Reported-by: FUKAUMI Naoki <naoki@radxa.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- none

 arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts | 4 ++--
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi   | 4 ++--
 arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts      | 4 ++--
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
index 309c35d7fca8..028eb508ae30 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
@@ -15,8 +15,8 @@ / {
 	compatible = "radxa,rock-4c-plus", "rockchip,rk3399";
 
 	aliases {
-		mmc0 = &sdmmc;
-		mmc1 = &sdhci;
+		mmc0 = &sdhci;
+		mmc1 = &sdmmc;
 	};
 
 	chosen {
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
index 1f76d3501bda..907071d4fe80 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
@@ -13,8 +13,8 @@
 
 / {
 	aliases {
-		mmc0 = &sdmmc;
-		mmc1 = &sdhci;
+		mmc0 = &sdhci;
+		mmc1 = &sdmmc;
 	};
 
 	chosen {
diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
index cd1e1d8e1244..77ba37ce6d6c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
@@ -13,8 +13,8 @@ / {
 
 	aliases {
 		ethernet0 = &gmac1;
-		mmc0 = &sdmmc0;
-		mmc1 = &sdhci;
+		mmc0 = &sdhci;
+		mmc1 = &sdmmc0;
 	};
 
 	chosen: chosen {
-- 
2.25.1

