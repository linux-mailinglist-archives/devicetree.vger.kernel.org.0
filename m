Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BC060471B11
	for <lists+devicetree@lfdr.de>; Sun, 12 Dec 2021 16:07:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230230AbhLLPHL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 12 Dec 2021 10:07:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50316 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229759AbhLLPHK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 12 Dec 2021 10:07:10 -0500
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 42BD5C061751
        for <devicetree@vger.kernel.org>; Sun, 12 Dec 2021 07:07:10 -0800 (PST)
Received: by mail-ed1-x532.google.com with SMTP id e3so45201105edu.4
        for <devicetree@vger.kernel.org>; Sun, 12 Dec 2021 07:07:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=DT3qejXVFGVl8gdB1EVDFFuuTJW4/k6knaprF11HPJA=;
        b=XDOu46ZZ+MQaOhQJ+jd+bUYmMnbuLrKmnt2cDdCwwG6A9zxph3dOqLl+17YwD9H2/W
         ZkQyEKcfjNbXEPa9zRkQJh8RExW9M0cwR6nHBqt9VYssPFEPL4DoJB13gv94TdUBiI8T
         s5TcSKLF6S+f9z9VOQa0fz18vZx7ZSXvOdN1k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=DT3qejXVFGVl8gdB1EVDFFuuTJW4/k6knaprF11HPJA=;
        b=vsoVB+Atk97Zt361f62HlRopp/Hgmh9VuAEldXjMfz130OLahxmGoydL1rPlIM84Jy
         weNKHpzX0QXFV5cL/VO2Y2XrplHkQAmVS63nZTxrGgGa+Uou3fPVRBw1QplWOgtFCjKN
         iz6STcAyr5GBjgP1+ddOGuvdD8lmh2xwXWrOPsB3PHMGjTjkomBa8XSB0xuzVgIhjbeY
         wn0X7CnGY3DkcHwxy7HaGVa+vkukmL0miGtPeNTGc128URGDFlIbFh6QMbDZ+H99cQg1
         t6tBqdy3/2P1vnx3dem5hyjVL7hx/4Iz6s9qtIPSyOqozCrDGVFa09zQtUcTx6I82Z6v
         F7Lg==
X-Gm-Message-State: AOAM532bpY3xj2JaZO15MytBOarZFNkNuArkZHgiONHcJ0byu13NAdbN
        xs9MMVAC47bqHvGZtXTETsZn/w==
X-Google-Smtp-Source: ABdhPJwSIX6D9xOWoRIBLIW8ptECxM7FuTLqGWIEzcMPXV7Bmc5eSAFqey2JJ37ny0BSh22lEQC2mg==
X-Received: by 2002:a05:6402:516c:: with SMTP id d12mr55163788ede.391.1639321628650;
        Sun, 12 Dec 2021 07:07:08 -0800 (PST)
Received: from panicking.amarulasolutions.com ([2.196.208.11])
        by smtp.gmail.com with ESMTPSA id z1sm4799732edq.54.2021.12.12.07.07.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Dec 2021 07:07:08 -0800 (PST)
From:   Michael Trimarchi <michael@amarulasolutions.com>
To:     Jagan Teki <jagan@amarulasolutions.com>
Cc:     tharvey@gateworks.com, Marek Vasut <marex@denx.de>,
        Abel Vesa <abel.vesa@nxp.com>,
        Dong Aisheng <aisheng.dong@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
        Jaehoon Chung <jh80.chung@samsung.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
        Rob Herring <robh@kernel.org>
Subject: [PATCH 06/10] phy: exynos-mipi-video: Add support for NXP i.MX8MM
Date:   Sun, 12 Dec 2021 16:06:52 +0100
Message-Id: <20211212150656.375538-6-michael@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211212150656.375538-1-michael@amarulasolutions.com>
References: <20211212150656.375538-1-michael@amarulasolutions.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Marek Vasut <marex@denx.de>

This patch adds support for MIPI DPHY found in NXP i.MX8MM.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Abel Vesa <abel.vesa@nxp.com>
Cc: Dong Aisheng <aisheng.dong@nxp.com>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Guido Günther <agx@sigxcpu.org>
Cc: Jaehoon Chung <jh80.chung@samsung.com>
Cc: Lucas Stach <l.stach@pengutronix.de>
Cc: Marek Szyprowski <m.szyprowski@samsung.com>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: linux-samsung-soc@vger.kernel.org
Cc: devicetree@vger.kernel.org
Acked-by: Marek Szyprowski <m.szyprowski@samsung.com>
Acked-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/phy/samsung-phy.txt   |  7 ++++---
 drivers/phy/samsung/Kconfig                   |  6 +++---
 drivers/phy/samsung/phy-exynos-mipi-video.c   | 21 +++++++++++++++++++
 3 files changed, 28 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/samsung-phy.txt b/Documentation/devicetree/bindings/phy/samsung-phy.txt
index 8f51aee91101..6071ce6f036c 100644
--- a/Documentation/devicetree/bindings/phy/samsung-phy.txt
+++ b/Documentation/devicetree/bindings/phy/samsung-phy.txt
@@ -1,14 +1,15 @@
-Samsung S5P/Exynos SoC series MIPI CSIS/DSIM DPHY
--------------------------------------------------
+Samsung S5P/Exynos and NXP i.MX8MM SoC series MIPI CSIS/DSIM DPHY
+-----------------------------------------------------------------
 
 Required properties:
 - compatible : should be one of the listed compatibles:
 	- "samsung,s5pv210-mipi-video-phy"
 	- "samsung,exynos5420-mipi-video-phy"
 	- "samsung,exynos5433-mipi-video-phy"
+	- "fsl,imx8mm-mipi-video-phy"
 - #phy-cells : from the generic phy bindings, must be 1;
 
-In case of s5pv210 and exynos5420 compatible PHYs:
+In case of s5pv210, exynos5420, imx8mm compatible PHYs:
 - syscon - phandle to the PMU system controller
 
 In case of exynos5433 compatible PHY:
diff --git a/drivers/phy/samsung/Kconfig b/drivers/phy/samsung/Kconfig
index 3ccaabf2850a..8d4f84879180 100644
--- a/drivers/phy/samsung/Kconfig
+++ b/drivers/phy/samsung/Kconfig
@@ -12,14 +12,14 @@ config PHY_EXYNOS_DP_VIDEO
 	  Support for Display Port PHY found on Samsung Exynos SoCs.
 
 config PHY_EXYNOS_MIPI_VIDEO
-	tristate "S5P/Exynos SoC series MIPI CSI-2/DSI PHY driver"
+	tristate "S5P/Exynos/i.MX8MM SoC series MIPI CSI-2/DSI PHY driver"
 	depends on HAS_IOMEM
-	depends on ARCH_S5PV210 || ARCH_EXYNOS || COMPILE_TEST
+	depends on ARCH_S5PV210 || ARCH_EXYNOS || ARCH_MXC || COMPILE_TEST
 	select GENERIC_PHY
 	default y if ARCH_S5PV210 || ARCH_EXYNOS
 	help
 	  Support for MIPI CSI-2 and MIPI DSI DPHY found on Samsung S5P
-	  and Exynos SoCs.
+	  and Exynos SoCs, and on NXP i.MX8MM SoCs.
 
 config PHY_EXYNOS_PCIE
 	bool "Exynos PCIe PHY driver"
diff --git a/drivers/phy/samsung/phy-exynos-mipi-video.c b/drivers/phy/samsung/phy-exynos-mipi-video.c
index c1df1ef3ee3c..b735b8089cd7 100644
--- a/drivers/phy/samsung/phy-exynos-mipi-video.c
+++ b/drivers/phy/samsung/phy-exynos-mipi-video.c
@@ -214,6 +214,24 @@ static const struct mipi_phy_device_desc exynos5433_mipi_phy = {
 	},
 };
 
+static const struct mipi_phy_device_desc imx8mm_mipi_phy = {
+	.num_regmaps = 1,
+	.regmap_names = {"syscon"},
+	.num_phys = 1,
+	.phys = {
+		{
+			/* EXYNOS_MIPI_PHY_ID_DSIM0 */
+			.coupled_phy_id = EXYNOS_MIPI_PHY_ID_NONE,
+			.enable_val = BIT(17),
+			.enable_reg = 8,
+			.enable_map = EXYNOS_MIPI_REGMAP_PMU,
+			.resetn_val = BIT(5),
+			.resetn_reg = 0,
+			.resetn_map = EXYNOS_MIPI_REGMAP_PMU,
+		},
+	},
+};
+
 struct exynos_mipi_video_phy {
 	struct regmap *regmaps[EXYNOS_MIPI_REGMAPS_NUM];
 	int num_phys;
@@ -349,6 +367,9 @@ static const struct of_device_id exynos_mipi_video_phy_of_match[] = {
 	}, {
 		.compatible = "samsung,exynos5433-mipi-video-phy",
 		.data = &exynos5433_mipi_phy,
+	}, {
+		.compatible = "fsl,imx8mm-mipi-video-phy",
+		.data = &imx8mm_mipi_phy,
 	},
 	{ /* sentinel */ },
 };
-- 
2.25.1

