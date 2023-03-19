Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7DC586C007D
	for <lists+devicetree@lfdr.de>; Sun, 19 Mar 2023 11:06:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229805AbjCSKGd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 Mar 2023 06:06:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45230 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229488AbjCSKGb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 19 Mar 2023 06:06:31 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 99E3423D8B
        for <devicetree@vger.kernel.org>; Sun, 19 Mar 2023 03:06:30 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <ukl@pengutronix.de>)
        id 1pdpvo-0007h4-Gy; Sun, 19 Mar 2023 11:06:28 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
        by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
        (envelope-from <ukl@pengutronix.de>)
        id 1pdpvn-005CGS-S7; Sun, 19 Mar 2023 11:06:27 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
        (envelope-from <ukl@pengutronix.de>)
        id 1pdpvn-006747-0W; Sun, 19 Mar 2023 11:06:27 +0100
From:   =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     devicetree@vger.kernel.org, kernel@pengutronix.de
Subject: [PATCH 3/3] of: unittest: Convert to platform remove callback returning void
Date:   Sun, 19 Mar 2023 11:06:20 +0100
Message-Id: <20230319100620.295849-4-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230319100620.295849-1-u.kleine-koenig@pengutronix.de>
References: <20230319100620.295849-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=3538; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=DdBp/SsfmLVzol70a4TlwfTwu3astbMwnG8NLulK3dY=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBkFt6ZJKWHX410MiHnlYpQWLhDfYuD4SmzV1HmN QK3Nd0jKv2JATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZBbemQAKCRCPgPtYfRL+ TiZYCACdTCRkcnux5cCEIh5ON6FItQNADHSvdcqERZaWdZNWY4zNP9oi2CAu2/BsVQjtkzqoizR 4JR2XC4tX3GX+mFd1yY5Cufp4Lkj74tI31eAHhJSjyRLDatjYfNQfTAWOXWIo8fKOZ/K+X6n0TR lD06BifyTlVTGb31qRCzycpnJTxeMlruoMjYbN5nfLiiFuaXcFmJ8kf35y1eJQLUbFjnDCejc04 UcdPY4UgDBzYQJ2oalV7mZWPeStHv90hRCufbWcITsozNTJsoFDzfigHrxaeLCVijpAjuKUdIaM e5Vc9jYRzaAM9/57mpk08nAf70fRrSKywdTFiJeizUhCPG9P
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The .remove() callback for a platform driver returns an int which makes
many driver authors wrongly assume it's possible to do error handling by
returning an error code. However the value returned is (mostly) ignored
and this typically results in resource leaks. To improve here there is a
quest to make the remove callback return void. In the first step of this
quest all drivers are converted to .remove_new() which already returns
void.

Trivially convert this driver from always returning zero in the remove
callback to the void returning variant.

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
 drivers/of/unittest.c | 17 ++++++-----------
 1 file changed, 6 insertions(+), 11 deletions(-)

diff --git a/drivers/of/unittest.c b/drivers/of/unittest.c
index 0b0b966133b7..ab3e91445256 100644
--- a/drivers/of/unittest.c
+++ b/drivers/of/unittest.c
@@ -1529,13 +1529,12 @@ static int unittest_probe(struct platform_device *pdev)
 	return 0;
 }
 
-static int unittest_remove(struct platform_device *pdev)
+static void unittest_remove(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct device_node *np = dev->of_node;
 
 	dev_dbg(dev, "%s for node @%pOF\n", __func__, np);
-	return 0;
 }
 
 static const struct of_device_id unittest_match[] = {
@@ -1545,7 +1544,7 @@ static const struct of_device_id unittest_match[] = {
 
 static struct platform_driver unittest_driver = {
 	.probe			= unittest_probe,
-	.remove			= unittest_remove,
+	.remove_new		= unittest_remove,
 	.driver = {
 		.name		= "unittest",
 		.of_match_table	= of_match_ptr(unittest_match),
@@ -1626,7 +1625,7 @@ static int unittest_gpio_probe(struct platform_device *pdev)
 	return ret;
 }
 
-static int unittest_gpio_remove(struct platform_device *pdev)
+static void unittest_gpio_remove(struct platform_device *pdev)
 {
 	struct unittest_gpio_dev *devptr = platform_get_drvdata(pdev);
 	struct device *dev = &pdev->dev;
@@ -1637,8 +1636,6 @@ static int unittest_gpio_remove(struct platform_device *pdev)
 		gpiochip_remove(&devptr->chip);
 
 	kfree(devptr);
-
-	return 0;
 }
 
 static const struct of_device_id unittest_gpio_id[] = {
@@ -1648,7 +1645,7 @@ static const struct of_device_id unittest_gpio_id[] = {
 
 static struct platform_driver unittest_gpio_driver = {
 	.probe	= unittest_gpio_probe,
-	.remove	= unittest_gpio_remove,
+	.remove_new = unittest_gpio_remove,
 	.driver	= {
 		.name		= "unittest-gpio",
 		.of_match_table	= of_match_ptr(unittest_gpio_id),
@@ -2486,7 +2483,7 @@ static int unittest_i2c_bus_probe(struct platform_device *pdev)
 	return 0;
 }
 
-static int unittest_i2c_bus_remove(struct platform_device *pdev)
+static void unittest_i2c_bus_remove(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct device_node *np = dev->of_node;
@@ -2494,8 +2491,6 @@ static int unittest_i2c_bus_remove(struct platform_device *pdev)
 
 	dev_dbg(dev, "%s for node @%pOF\n", __func__, np);
 	i2c_del_adapter(&std->adap);
-
-	return 0;
 }
 
 static const struct of_device_id unittest_i2c_bus_match[] = {
@@ -2505,7 +2500,7 @@ static const struct of_device_id unittest_i2c_bus_match[] = {
 
 static struct platform_driver unittest_i2c_bus_driver = {
 	.probe			= unittest_i2c_bus_probe,
-	.remove			= unittest_i2c_bus_remove,
+	.remove_new		= unittest_i2c_bus_remove,
 	.driver = {
 		.name		= "unittest-i2c-bus",
 		.of_match_table	= of_match_ptr(unittest_i2c_bus_match),
-- 
2.39.2

