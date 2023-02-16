Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E44D9698DE9
	for <lists+devicetree@lfdr.de>; Thu, 16 Feb 2023 08:42:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229573AbjBPHmJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Feb 2023 02:42:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46950 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229700AbjBPHmH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Feb 2023 02:42:07 -0500
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7E7B3B0D7
        for <devicetree@vger.kernel.org>; Wed, 15 Feb 2023 23:42:05 -0800 (PST)
Received: by codeconstruct.com.au (Postfix, from userid 10000)
        id 3FC012024A; Thu, 16 Feb 2023 15:42:01 +0800 (AWST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=codeconstruct.com.au; s=2022a; t=1676533321;
        bh=nEz8ZwbZq4uv4GNC68L/J2QzHskqfAQiUHEbxZNxSGE=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References;
        b=RUszN14YWY6naxENAcAJoIIZQBU49k8A+C7WnAEzCiiPM8+BW/Z13Jl1hZpfDl6Ce
         etUM/dvOr32V40DqnICZr1mg+dwXD93fUIP3qTiNGnsiy/1ZGEQ6sMdUQmRMx5GWvI
         fmqmwR86cw61Cuhyuj7+UsoHb0F06BOPLJ7Gnr8khlgCk1RdrAn2O3nNRH2c1N4xO2
         DPKA98xMF1VMbQn6hBf3NI9/Jr0mZoOHnan/QS7YmDEkfeULWADJKFNPBS/ThQuNs/
         QA5gRpsFIbfOpugPM7AR8Z5cBnqNloHpoMhKZGnVHth505qvPgUYCRg2cZ72UQYBMp
         szJtg+HZfiyzw==
From:   Jeremy Kerr <jk@codeconstruct.com.au>
To:     linux-i3c@lists.infradead.org
Cc:     Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Vitor Soares <ivitro@gmail.com>, linux-aspeed@lists.ozlabs.org,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Dylan Hung <dylan_hung@aspeedtech.com>,
        Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>
Subject: [PATCH 2/4] i3c: dw: Add platform operations
Date:   Thu, 16 Feb 2023 15:41:53 +0800
Message-Id: <eb90bc9ee9f72efc2012abce3e4e50186552e194.1676532146.git.jk@codeconstruct.com.au>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <cover.1676532146.git.jk@codeconstruct.com.au>
References: <cover.1676532146.git.jk@codeconstruct.com.au>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The dw i3c core can be integrated into various SoC devices. Platforms
that use this core may need a little configuration that is specific to
that platform.

Add a little infrastructure to allow platform-specific behaviour: a bit
of data on struct dw_i3c_master, and two hooks to the probe and init
calls to enable this.

A future change will add new platform support that uses these hooks.

Signed-off-by: Jeremy Kerr <jk@codeconstruct.com.au>
---
 drivers/i3c/master/dw-i3c-master.c | 42 +++++++++++++++++++++++++-----
 1 file changed, 36 insertions(+), 6 deletions(-)

diff --git a/drivers/i3c/master/dw-i3c-master.c b/drivers/i3c/master/dw-i3c-master.c
index d73d57362b3b..49b891449222 100644
--- a/drivers/i3c/master/dw-i3c-master.c
+++ b/drivers/i3c/master/dw-i3c-master.c
@@ -241,6 +241,17 @@ struct dw_i3c_master {
 	char version[5];
 	char type[5];
 	u8 addrs[MAX_DEVS];
+
+	/* platform-specific data */
+	const struct dw_i3c_platform_ops *platform_ops;
+	union {
+	} pdata;
+
+};
+
+struct dw_i3c_platform_ops {
+	int (*probe)(struct dw_i3c_master *i3c, struct platform_device *pdev);
+	int (*init)(struct dw_i3c_master *i3c);
 };
 
 struct dw_i3c_i2c_dev_data {
@@ -612,6 +623,12 @@ static int dw_i3c_master_bus_init(struct i3c_master_controller *m)
 	u32 thld_ctrl;
 	int ret;
 
+	if (master->platform_ops && master->platform_ops->init) {
+		ret = master->platform_ops->init(master);
+		if (ret)
+			return ret;
+	}
+
 	switch (bus->mode) {
 	case I3C_BUS_MODE_MIXED_FAST:
 	case I3C_BUS_MODE_MIXED_LIMITED:
@@ -1128,8 +1145,15 @@ static const struct i3c_master_controller_ops dw_mipi_i3c_ops = {
 	.i2c_xfers = dw_i3c_master_i2c_xfers,
 };
 
+static const struct of_device_id dw_i3c_master_of_match[] = {
+	{ .compatible = "snps,dw-i3c-master-1.00a", },
+	{},
+};
+MODULE_DEVICE_TABLE(of, dw_i3c_master_of_match);
+
 static int dw_i3c_probe(struct platform_device *pdev)
 {
+	const struct of_device_id *match;
 	struct dw_i3c_master *master;
 	int ret, irq;
 
@@ -1181,6 +1205,18 @@ static int dw_i3c_probe(struct platform_device *pdev)
 	master->maxdevs = ret >> 16;
 	master->free_pos = GENMASK(master->maxdevs - 1, 0);
 
+	/* match any platform-specific ops */
+	match = of_match_node(dw_i3c_master_of_match, pdev->dev.of_node);
+	if (match && match->data)
+		master->platform_ops = match->data;
+
+	/* platform-specific probe */
+	if (master->platform_ops && master->platform_ops->probe) {
+		ret = master->platform_ops->probe(master, pdev);
+		if (ret)
+			goto err_assert_rst;
+	}
+
 	ret = i3c_master_register(&master->base, &pdev->dev,
 				  &dw_mipi_i3c_ops, false);
 	if (ret)
@@ -1213,12 +1249,6 @@ static int dw_i3c_remove(struct platform_device *pdev)
 	return 0;
 }
 
-static const struct of_device_id dw_i3c_master_of_match[] = {
-	{ .compatible = "snps,dw-i3c-master-1.00a", },
-	{},
-};
-MODULE_DEVICE_TABLE(of, dw_i3c_master_of_match);
-
 static struct platform_driver dw_i3c_driver = {
 	.probe = dw_i3c_probe,
 	.remove = dw_i3c_remove,
-- 
2.39.1

