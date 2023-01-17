Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E0FFC66DB9F
	for <lists+devicetree@lfdr.de>; Tue, 17 Jan 2023 11:55:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236115AbjAQKzp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Jan 2023 05:55:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54414 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236501AbjAQKzi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Jan 2023 05:55:38 -0500
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com [IPv6:2607:f8b0:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0FE931E3B
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 02:55:37 -0800 (PST)
Received: by mail-pg1-x52b.google.com with SMTP id s67so21644107pgs.3
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 02:55:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aA0h7+i/e4ORQDizV97KwrYpiHUD9zotB5aOejEPv+o=;
        b=TGeGqDsE7RJMSKyavjjZsVLWS7cJC0p1TproYR6qdyB9B8dP9zdXqOFoCeAfbENO6/
         UAgRysLBEnDK/T1dgEKv6e2zDqUKZjneiR1xmSY7EaNX9cqp7HD/k22g3nNgFc5PNGOC
         LtN9Vjw0VJGD0No/UiKxyGodKDPARYYgaaJsc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aA0h7+i/e4ORQDizV97KwrYpiHUD9zotB5aOejEPv+o=;
        b=xD7vpVyfV40v0fRgskGo0ZeTHtR+rXFlHdCFkf0DP3cqfVUkBLS9qK2X8lmYs8SI7E
         sBQiNvkZ/U+JDaQg0OxYpV3L13oioM+16c0tObeLfBPOhAhsZNQpHDvg/MC+Wfrw0BWd
         95ZMC2AxD5yVyNaXyt4Qql2g0Ku83CjUOQfUmYGVzytSIHhDx+aETFxl3q1kB0o8e7T6
         ARHE1xVp40C61mor5kII59MvO4K8Q3rG2Q3bvK98k6ivlDuHBDLO9naYOzO/BJaTm0R4
         11fUD3Xdo6oEsMkM/wb1oIp10JUJiWpnXP8jwdosx+WsdzgGsLRBjomxsktieIcvKUwI
         sPpg==
X-Gm-Message-State: AFqh2krSd0AIrnSYRQxzNVUbfMhrNjddZCtGs0dJqggyAKii219Vgu5s
        6ADSJDokOq9DhqMgPJq8gf6W1A==
X-Google-Smtp-Source: AMrXdXuKP2deY2p66/oJaTqLcAzmY7HEDbyW2X9tUITOO82QbsRl5nQtIw6DvjtB96recgFkfs4Ftg==
X-Received: by 2002:a05:6a00:190e:b0:58b:c1a1:4006 with SMTP id y14-20020a056a00190e00b0058bc1a14006mr2439021pfi.18.1673952937304;
        Tue, 17 Jan 2023 02:55:37 -0800 (PST)
Received: from localhost.localdomain ([45.249.78.214])
        by smtp.gmail.com with ESMTPSA id w65-20020a623044000000b0056c349f5c70sm19837413pfw.79.2023.01.17.02.55.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 02:55:36 -0800 (PST)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Jagan Teki <jagan@amarulasolutions.com>,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 6/7] arm64: dts: rockchip: Update eMMC, SD aliases for Radxa SoM boards
Date:   Tue, 17 Jan 2023 16:25:03 +0530
Message-Id: <20230117105504.18296-6-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230117105504.18296-1-jagan@amarulasolutions.com>
References: <20230117105504.18296-1-jagan@amarulasolutions.com>
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

Radxa has produced Compute Modules like RK3399pro VMARC and CM3i with
onboarding eMMC flash, so the eMMC is the primary MMC device.

On the other hand, Rockchip boot orders start from eMMC from an MMC
device perspective.

Mark, the eMMC has mmc0 to satisfy the above two conditions.

Reported-by: FUKAUMI Naoki <naoki@radxa.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi | 4 ++--
 arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts     | 3 +--
 2 files changed, 3 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi b/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
index bf9eb0405b62..8b8992a8e9c0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
@@ -13,8 +13,8 @@ / {
 	compatible = "vamrs,rk3399pro-vmarc-som", "rockchip,rk3399pro";
 
 	aliases {
-		mmc0 = &sdmmc;
-		mmc1 = &sdhci;
+		mmc0 = &sdhci;
+		mmc1 = &sdmmc;
 	};
 
 	vcc3v3_pcie: vcc-pcie-regulator {
diff --git a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
index 8ca15b723799..6a3d964f6207 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
@@ -8,8 +8,7 @@ / {
 	compatible = "radxa,radxa-e25", "radxa,radxa-cm3i", "rockchip,rk3568";
 
 	aliases {
-		mmc0 = &sdmmc0;
-		mmc1 = &sdhci;
+		mmc1 = &sdmmc0;
 	};
 
 	pwm-leds {
-- 
2.25.1

