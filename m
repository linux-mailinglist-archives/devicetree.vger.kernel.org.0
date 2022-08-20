Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 52BFB59B02F
	for <lists+devicetree@lfdr.de>; Sat, 20 Aug 2022 22:00:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233708AbiHTT7C (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 20 Aug 2022 15:59:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47116 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232648AbiHTT6t (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 20 Aug 2022 15:58:49 -0400
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7F3FA31DC4
        for <devicetree@vger.kernel.org>; Sat, 20 Aug 2022 12:58:45 -0700 (PDT)
Received: by mail-pj1-x102b.google.com with SMTP id s36-20020a17090a69a700b001faad0a7a34so10428508pjj.4
        for <devicetree@vger.kernel.org>; Sat, 20 Aug 2022 12:58:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pensando.io; s=google;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc;
        bh=QEv/uHric1e3HRAJnfhfMt3L6vkUM+PkMKQG6mAbLXU=;
        b=1oJM9XCmpE1/WL/MDvVdAQ1P+MNr3+GJa+IaNzNGsHW/kPt91F119KXksUinQ8mDcQ
         ilVJg2PMxhvaHot80wyDv/2OMkzKYGUVzuhEsQQ0b+8DITCykxbcK3tzKqe03V9+8Egb
         FBAZunO2e20vSlfRaPwpH1XTVd2rm1xVRgIdUmuXjByhWSQVjhOExdTv6H5XeaEXQ4ic
         ymlp+cpfrm9AVz33V8Dew2QiAcsvaOIMG7tcAa6O2s56QYkzpyNI/WXliT9F/oV3ITNu
         gTHNeBDsZPzUk9WCSxgvVTVysz1Ydya+mIitQ3GNrXujNjWS/TZ0v9PfXtPo1bWq3kPw
         5EHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc;
        bh=QEv/uHric1e3HRAJnfhfMt3L6vkUM+PkMKQG6mAbLXU=;
        b=3AD4Zz1nrv6pvWDxfg3SG5TzpjuQhsXsIk/qYTW7X8jGYYBynZ1szr+gEkJQvS3JXG
         RQMlZ8/3vfap+tF2Hk8d0yfHYw47M9sFHJAkCN00CK5olqUK/aq5GnvE+clRrwNqaIoZ
         Ry5fYR/yt6jVebbPPSJz8+Ov2rPeU9v9+ylEWDSO7jqx7gtzkeWN+H+wlvOb98zQUqfR
         ya8iliDZYtpmstDatZXgkPL885RGWIvVuX1xcVppHOXNPstSsKZa/ps1gCs7qgPxEGwg
         aE9djv96bvKylTT3vF3WDAq+pR8fcJQGHR2wvyHU4D4XwNNBhcd2csqji7B25BYt96GU
         KQCA==
X-Gm-Message-State: ACgBeo0dSUanuLKym6wcZEO4rjO2yd0evRqFLU1qvKgQWxOWgfczs8GK
        qTRd1WN3waU6WyrKlFOUXk0Nxw==
X-Google-Smtp-Source: AA6agR49HGO4HDdHFsRa+yopa0vFpMTXKbksBACq1mLjCWen6UwbrgPQvlcpf5CXkJ6u3JLyhqgFjw==
X-Received: by 2002:a17:902:f548:b0:172:655d:97ad with SMTP id h8-20020a170902f54800b00172655d97admr13027530plf.37.1661025525074;
        Sat, 20 Aug 2022 12:58:45 -0700 (PDT)
Received: from platform-dev1.pensando.io ([12.226.153.42])
        by smtp.gmail.com with ESMTPSA id u66-20020a626045000000b005363bc65bb1sm2316794pfb.91.2022.08.20.12.58.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Aug 2022 12:58:44 -0700 (PDT)
From:   Brad Larson <brad@pensando.io>
To:     linux-arm-kernel@lists.infradead.org
Cc:     linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org,
        adrian.hunter@intel.com, alcooperx@gmail.com,
        andy.shevchenko@gmail.com, arnd@arndb.de, brad@pensando.io,
        blarson@amd.com, brijeshkumar.singh@amd.com,
        catalin.marinas@arm.com, gsomlo@gmail.com, gerg@linux-m68k.org,
        krzk@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        lee.jones@linaro.org, broonie@kernel.org,
        yamada.masahiro@socionext.com, p.zabel@pengutronix.de,
        piotrs@cadence.com, p.yadav@ti.com, rdunlap@infradead.org,
        robh+dt@kernel.org, samuel@sholland.org, fancer.lancer@gmail.com,
        suravee.suthikulpanit@amd.com, thomas.lendacky@amd.com,
        ulf.hansson@linaro.org, will@kernel.org, devicetree@vger.kernel.org
Subject: [PATCH v6 12/17] spi: dw: Add support for AMD Pensando Elba SoC
Date:   Sat, 20 Aug 2022 12:57:45 -0700
Message-Id: <20220820195750.70861-13-brad@pensando.io>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220820195750.70861-1-brad@pensando.io>
References: <20220820195750.70861-1-brad@pensando.io>
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
        DKIM_SIGNED,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Brad Larson <blarson@amd.com>

The AMD Pensando Elba SoC includes a DW apb_ssi v4 controller
with device specific chip-select control.  The Elba SoC
provides four chip-selects where the native DW IP supports
two chip-selects.  The Elba DW_SPI instance has two native
CS signals that are always overridden.

Signed-off-by: Brad Larson <blarson@amd.com>
---
 drivers/spi/spi-dw-mmio.c | 77 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 77 insertions(+)

diff --git a/drivers/spi/spi-dw-mmio.c b/drivers/spi/spi-dw-mmio.c
index 26c40ea6dd12..36b8c5e10bb3 100644
--- a/drivers/spi/spi-dw-mmio.c
+++ b/drivers/spi/spi-dw-mmio.c
@@ -53,6 +53,24 @@ struct dw_spi_mscc {
 	void __iomem        *spi_mst; /* Not sparx5 */
 };
 
+struct dw_spi_elba {
+	struct regmap *syscon;
+};
+
+/*
+ * Elba SoC does not use ssi, pin override is used for cs 0,1 and
+ * gpios for cs 2,3 as defined in the device tree.
+ *
+ * cs:  |       1               0
+ * bit: |---3-------2-------1-------0
+ *      |  cs1   cs1_ovr   cs0   cs0_ovr
+ */
+#define ELBA_SPICS_REG			0x2468
+#define ELBA_SPICS_SHIFT(cs)		(2 * (cs))
+#define ELBA_SPICS_MASK(cs)		(0x3 << ELBA_SPICS_SHIFT(cs))
+#define ELBA_SPICS_SET(cs, val)	\
+			((((val) << 1) | 0x1) << ELBA_SPICS_SHIFT(cs))
+
 /*
  * The Designware SPI controller (referred to as master in the documentation)
  * automatically deasserts chip select when the tx fifo is empty. The chip
@@ -237,6 +255,64 @@ static int dw_spi_canaan_k210_init(struct platform_device *pdev,
 	return 0;
 }
 
+static void dw_spi_elba_override_cs(struct dw_spi_elba *dwselba, int cs, int enable)
+{
+	regmap_update_bits(dwselba->syscon, ELBA_SPICS_REG, ELBA_SPICS_MASK(cs),
+			   ELBA_SPICS_SET(cs, enable));
+}
+
+static void dw_spi_elba_set_cs(struct spi_device *spi, bool enable)
+{
+	struct dw_spi *dws = spi_master_get_devdata(spi->master);
+	struct dw_spi_mmio *dwsmmio = container_of(dws, struct dw_spi_mmio, dws);
+	struct dw_spi_elba *dwselba = dwsmmio->priv;
+	u8 cs;
+
+	cs = spi->chip_select;
+	if (cs < 2)
+		dw_spi_elba_override_cs(dwselba, spi->chip_select, enable);
+
+	/*
+	 * The DW SPI controller needs a native CS bit selected to start
+	 * the serial engine.
+	 */
+	spi->chip_select = 0;
+	dw_spi_set_cs(spi, enable);
+	spi->chip_select = cs;
+}
+
+static int dw_spi_elba_init(struct platform_device *pdev,
+			    struct dw_spi_mmio *dwsmmio)
+{
+	const char *syscon_name = "amd,pensando-elba-syscon";
+	struct device_node *np = pdev->dev.of_node;
+	struct device_node *node;
+	struct dw_spi_elba *dwselba;
+	struct regmap *regmap;
+
+	node = of_parse_phandle(np, syscon_name, 0);
+	if (!node) {
+		dev_err(&pdev->dev, "failed to find %s\n", syscon_name);
+		return -ENODEV;
+	}
+
+	regmap = syscon_node_to_regmap(node);
+	if (IS_ERR(regmap)) {
+		dev_err(&pdev->dev, "syscon regmap lookup failed\n");
+		return PTR_ERR(regmap);
+	}
+
+	dwselba = devm_kzalloc(&pdev->dev, sizeof(*dwselba), GFP_KERNEL);
+	if (!dwselba)
+		return -ENOMEM;
+
+	dwselba->syscon = regmap;
+	dwsmmio->priv = dwselba;
+	dwsmmio->dws.set_cs = dw_spi_elba_set_cs;
+
+	return 0;
+}
+
 static int dw_spi_mmio_probe(struct platform_device *pdev)
 {
 	int (*init_func)(struct platform_device *pdev,
@@ -352,6 +428,7 @@ static const struct of_device_id dw_spi_mmio_of_match[] = {
 	{ .compatible = "intel,thunderbay-ssi", .data = dw_spi_intel_init},
 	{ .compatible = "microchip,sparx5-spi", dw_spi_mscc_sparx5_init},
 	{ .compatible = "canaan,k210-spi", dw_spi_canaan_k210_init},
+	{ .compatible = "amd,pensando-elba-spi", .data = dw_spi_elba_init},
 	{ /* end of table */}
 };
 MODULE_DEVICE_TABLE(of, dw_spi_mmio_of_match);
-- 
2.17.1

