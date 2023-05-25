Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9BDE171186C
	for <lists+devicetree@lfdr.de>; Thu, 25 May 2023 22:48:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233846AbjEYUsS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 May 2023 16:48:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49552 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233284AbjEYUsR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 May 2023 16:48:17 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EBF8197
        for <devicetree@vger.kernel.org>; Thu, 25 May 2023 13:48:16 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <ukl@pengutronix.de>)
        id 1q2Hsc-00075p-RV; Thu, 25 May 2023 22:48:14 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
        by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
        (envelope-from <ukl@pengutronix.de>)
        id 1q2Hsb-002noh-Q8; Thu, 25 May 2023 22:48:13 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
        (envelope-from <ukl@pengutronix.de>)
        id 1q2Hsb-007xa9-1I; Thu, 25 May 2023 22:48:13 +0200
From:   =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     devicetree@vger.kernel.org, kernel@pengutronix.de
Subject: [PATCH] of: unittest: Switch i2c driver back to use .probe()
Date:   Thu, 25 May 2023 22:48:12 +0200
Message-Id: <20230525204812.733642-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1266; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=KMhejfB1hLTL7mnm7HGJMWqjxZJCb1u0gX7SiuahqwE=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBkb8mKgvqco1fW+dE+u/NXipHcyc3v+ul4VhsI8 zGd47PShIWJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZG/JigAKCRCPgPtYfRL+ TlgoCACZmpco4S/5UmfWqceQroXxYQ1P19CJFWEkcc+zeRfRFUMh4wsMAzo7SnRQI+Wj5yDlX7R 7ItiZRm0/KZiH0rZm7hr13QQ6IPlyuR2eHEpLKeoq6JoG72dt0+PB9feFOSS5EDLYMON2Ehev0s aGQXLLKyu9pxTpSZNgegdaVWD4T8dZRrHTejfN4sR5yOiozKJgiQJznuhA2jYrKzVHl427vvoMR THCVMO3nvQ7uYD4a5fmGECpChHxk2M+yaSXwIlhHee+WkdvfpWbzHnWPa9GtF3vCkal2+ad1y2u cbHgP11H1vmEFDhYGcDrRxssQvVOEy9Joz3ogB4IN9QsSIAv
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

After commit b8a1a4cd5a98 ("i2c: Provide a temporary .probe_new()
call-back type"), all drivers being converted to .probe_new() and then
03c835f498b5 ("i2c: Switch .probe() to not take an id parameter") convert
back to (the new) .probe() to be able to eventually drop .probe_new() from
struct i2c_driver.

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
 drivers/of/unittest.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/of/unittest.c b/drivers/of/unittest.c
index 2191c0136531..7d3e3c6ab49b 100644
--- a/drivers/of/unittest.c
+++ b/drivers/of/unittest.c
@@ -2686,7 +2686,7 @@ static struct i2c_driver unittest_i2c_dev_driver = {
 	.driver = {
 		.name = "unittest-i2c-dev",
 	},
-	.probe_new = unittest_i2c_dev_probe,
+	.probe = unittest_i2c_dev_probe,
 	.remove = unittest_i2c_dev_remove,
 	.id_table = unittest_i2c_dev_id,
 };
@@ -2763,7 +2763,7 @@ static struct i2c_driver unittest_i2c_mux_driver = {
 	.driver = {
 		.name = "unittest-i2c-mux",
 	},
-	.probe_new = unittest_i2c_mux_probe,
+	.probe = unittest_i2c_mux_probe,
 	.remove = unittest_i2c_mux_remove,
 	.id_table = unittest_i2c_mux_id,
 };

base-commit: ac9a78681b921877518763ba0e89202254349d1b
-- 
2.39.2

