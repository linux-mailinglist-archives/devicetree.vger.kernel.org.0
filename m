Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8F96367169D
	for <lists+devicetree@lfdr.de>; Wed, 18 Jan 2023 09:53:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229553AbjARIxA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Jan 2023 03:53:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54036 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229635AbjARIw3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Jan 2023 03:52:29 -0500
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 947E55DC0B
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 00:05:02 -0800 (PST)
Received: by mail-pj1-x1035.google.com with SMTP id v10-20020a17090abb8a00b00229c517a6eeso1507300pjr.5
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 00:05:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=K7FNf3cY1zZ/AJ4VVIAB6BnVQ7mGdN3Wmm9LVsYAJeM=;
        b=Gh8xAivpogDa/io3OxMECljq874hzlfAuBqXesz35uF7axqbKJaSpmorFQm041JV5F
         duC0T9IWk2/bsKRu5gC7sGgFNZw3G+4KpQimXDn6EJZbZFjSxJDepE+sJt/EX0d0iKLm
         U/NGK3bCOeBh7JVco1VASVgtrb+gbrkwrOGrM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=K7FNf3cY1zZ/AJ4VVIAB6BnVQ7mGdN3Wmm9LVsYAJeM=;
        b=7qrnolTXzFgC3ApFdKqeEfIr55S2jYDxdfMj9RfbxejUd/KhZE9pe2UbfY4vp9eMCW
         EhM5qeClY/v3zPoZGR8y45EjGWco1NqNYVJN3ylou7DVZUgx9O8ruvGi/tB043dtcmEl
         y6rp8uQMwl2s/lHQ0iiJZcZ0/aNVCOFevkSBFHdEKyjTry/HgvgO2I3zdtwIvcEol0YS
         AE6v/nd72xen1s+omf2utL/2xSSrWh3e76AACmoizN86Y3WBhbTL7RtbAzbv1eUYbnMn
         yEJ+zrLIkLkE/jMax/ty7dK9cX9fKRNNXiy5PCZqcOWGXuQWdtE5lyaF9jrVy5IUaWFH
         kDFw==
X-Gm-Message-State: AFqh2kqFgTSWExqzvwJs51vu3NzYj6zEyIyTjj2TkTJrbALa31HlAvhC
        urfYfeBLVmY9svfYSfwia1aR8A==
X-Google-Smtp-Source: AMrXdXtYQ5CeIC95aaPg6AvDUyjo8yurJ6WGgW+zdlAJeavRBTynpPiBeK908Y0hHtEk63FsAOSp5Q==
X-Received: by 2002:a05:6a20:2a0a:b0:b3:87f8:8386 with SMTP id e10-20020a056a202a0a00b000b387f88386mr6214009pzh.24.1674029101974;
        Wed, 18 Jan 2023 00:05:01 -0800 (PST)
Received: from localhost.localdomain ([45.249.78.214])
        by smtp.gmail.com with ESMTPSA id u14-20020a170902e5ce00b0018958a913a2sm22403511plf.223.2023.01.18.00.04.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Jan 2023 00:05:01 -0800 (PST)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Jagan Teki <jagan@amarulasolutions.com>,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v2 1/2] arm64: dts: rockchip: Update eMMC, SD aliases for Radxa SoM boards
Date:   Wed, 18 Jan 2023 13:34:53 +0530
Message-Id: <20230118080454.11643-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
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
Changes for v2:
- none

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
index fb96019b0e87..0372dd97c392 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
@@ -8,8 +8,7 @@ / {
 	compatible = "radxa,e25", "rockchip,rk3568";
 
 	aliases {
-		mmc0 = &sdmmc0;
-		mmc1 = &sdhci;
+		mmc1 = &sdmmc0;
 	};
 
 	pwm-leds {
-- 
2.25.1

