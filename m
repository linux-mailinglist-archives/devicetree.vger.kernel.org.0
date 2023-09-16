Return-Path: <devicetree+bounces-748-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BC6167A2F17
	for <lists+devicetree@lfdr.de>; Sat, 16 Sep 2023 12:05:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 575E31C209BC
	for <lists+devicetree@lfdr.de>; Sat, 16 Sep 2023 10:05:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E754912B7F;
	Sat, 16 Sep 2023 10:05:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B2DC7E
	for <devicetree@vger.kernel.org>; Sat, 16 Sep 2023 10:05:29 +0000 (UTC)
Received: from mail.andi.de1.cc (mail.andi.de1.cc [IPv6:2a02:c205:3004:2154::1])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D803ACD5;
	Sat, 16 Sep 2023 03:05:26 -0700 (PDT)
Received: from p200300ccff1003001a3da2fffebfd33a.dip0.t-ipconnect.de ([2003:cc:ff10:300:1a3d:a2ff:febf:d33a] helo=aktux)
	by mail.andi.de1.cc with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <andreas@kemnade.info>)
	id 1qhSB0-003pjL-5f; Sat, 16 Sep 2023 12:05:21 +0200
Received: from andi by aktux with local (Exim 4.96)
	(envelope-from <andreas@kemnade.info>)
	id 1qhSAz-006vKu-1S;
	Sat, 16 Sep 2023 12:05:21 +0200
From: Andreas Kemnade <andreas@kemnade.info>
To: dmitry.torokhov@gmail.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	lee@kernel.org,
	bcousson@baylibre.com,
	tony@atomide.com,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	andreas@kemnade.info,
	linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-omap@vger.kernel.org,
	linux-clk@vger.kernel.org
Subject: [PATCH v4 3/5] mfd: twl-core: Add a clock subdevice for the TWL6032
Date: Sat, 16 Sep 2023 12:05:13 +0200
Message-Id: <20230916100515.1650336-4-andreas@kemnade.info>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230916100515.1650336-1-andreas@kemnade.info>
References: <20230916100515.1650336-1-andreas@kemnade.info>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Clock device needs no separate devicetree node, so add it as
a platform device. Other devices in the family also have controllable
clocks, but due to the lack of testing, just add it for the TWL6032
now.

Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
---
 drivers/mfd/twl-core.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/mfd/twl-core.c b/drivers/mfd/twl-core.c
index ce01a87f8dc39..234500b2e53fc 100644
--- a/drivers/mfd/twl-core.c
+++ b/drivers/mfd/twl-core.c
@@ -31,6 +31,8 @@
 #include <linux/regulator/machine.h>
 
 #include <linux/i2c.h>
+
+#include <linux/mfd/core.h>
 #include <linux/mfd/twl.h>
 
 /* Register descriptions for audio */
@@ -690,6 +692,10 @@ static struct of_dev_auxdata twl_auxdata_lookup[] = {
 	{ /* sentinel */ },
 };
 
+static const struct mfd_cell twl6032_cells[] = {
+	{ .name = "twl6032-clk" },
+};
+
 /* NOTE: This driver only handles a single twl4030/tps659x0 chip */
 static int
 twl_probe(struct i2c_client *client)
@@ -836,6 +842,16 @@ twl_probe(struct i2c_client *client)
 				 TWL4030_DCDC_GLOBAL_CFG);
 	}
 
+	if (id->driver_data == (TWL6030_CLASS | TWL6032_SUBCLASS)) {
+		status = devm_mfd_add_devices(&client->dev,
+					      PLATFORM_DEVID_NONE,
+					      twl6032_cells,
+					      ARRAY_SIZE(twl6032_cells),
+					      NULL, 0, NULL);
+		if (status < 0)
+			goto free;
+	}
+
 	status = of_platform_populate(node, NULL, twl_auxdata_lookup,
 				      &client->dev);
 
-- 
2.39.2


