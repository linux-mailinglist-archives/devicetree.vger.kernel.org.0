Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 82C7166DBA0
	for <lists+devicetree@lfdr.de>; Tue, 17 Jan 2023 11:55:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236501AbjAQKzs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Jan 2023 05:55:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54104 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236527AbjAQKzl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Jan 2023 05:55:41 -0500
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com [IPv6:2607:f8b0:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D123301A2
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 02:55:41 -0800 (PST)
Received: by mail-pg1-x531.google.com with SMTP id r18so21623463pgr.12
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 02:55:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rntfRZnff+n5lbhzJZ4A2rcNW7HidbhUCoXTa14UKAc=;
        b=SnQ+hjWEox1G5YrR4AQn7aHZmdA/ONYA//zFLJArkoZxXZCUpUssTTqz96FvIzoNDh
         p0q4hJyV/G2t4ks9mesRxmQ5wl2zaqSf68B2mZmH8H5kJxSTJSjFcEqNVhskYYdpMFJ+
         U/qxP3WmXlvOTFTBzSs+bV1WTBcaWKy9pHgTA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rntfRZnff+n5lbhzJZ4A2rcNW7HidbhUCoXTa14UKAc=;
        b=PdjoR1BOjwCD45rbOhq7rZqjTrUIlezrdqnv+FnT7oAqJDuY6jd92Lkc7x+QbZ/yMU
         vJm9vmVdyrBLttKSygeR3syQz9SiPps/NmKuZMYIeMr4pp5GwY5yQGCYK2o6Xrsn6ukW
         czyZNKVWu5Pb48wc9PPnth/4pPIrdNWE1JoYTpOXV68Ab1w5HP+KX9+EnIaTLLK6Sz5O
         0YfDVESEtXw7zS0ofrPqHTGC9FlJfx1Lys+mPHsUc3ZUG72iAugCk8kCF1HrAKmiDMGt
         O6w8/sCA1JLZxqCF1n+hK/Rj0wu/hzdbWhDezfPpg3QmoOrEDFlkoLPZESlDvXGRuJ7C
         JeLg==
X-Gm-Message-State: AFqh2krh0/7ENNttU5WU2QG/hPKES1rDOX350BDMa9TxSgPgq33mEIjc
        0LZ9fiYOtD4A3ELwIr68QWiUsw==
X-Google-Smtp-Source: AMrXdXvV6zuZ2hXmO+gpQebDvUeI4P7sWLhlUX5aBmzVEj6XfkP2Wcs/QSQ80SSR/kRv20F7ZDRLgQ==
X-Received: by 2002:a62:790d:0:b0:58a:fccd:9eb5 with SMTP id u13-20020a62790d000000b0058afccd9eb5mr25431472pfc.23.1673952940718;
        Tue, 17 Jan 2023 02:55:40 -0800 (PST)
Received: from localhost.localdomain ([45.249.78.214])
        by smtp.gmail.com with ESMTPSA id w65-20020a623044000000b0056c349f5c70sm19837413pfw.79.2023.01.17.02.55.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 02:55:40 -0800 (PST)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Jagan Teki <jagan@amarulasolutions.com>,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 7/7] arm64: dts: rockchip: Update eMMC, SD aliases for Radxa SBC boards
Date:   Tue, 17 Jan 2023 16:25:04 +0530
Message-Id: <20230117105504.18296-7-jagan@amarulasolutions.com>
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

Radxa SBC boards like ROCK 3A/4 models do support eMMC and SDcard
via external connector slots.

Mark, the eMMC has mmc0 by considering the Rockchip boot order priority
as both MMC devices are connected externally.

Reported-by: FUKAUMI Naoki <naoki@radxa.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
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

