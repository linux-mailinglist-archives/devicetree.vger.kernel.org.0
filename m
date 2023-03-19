Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D28066C007E
	for <lists+devicetree@lfdr.de>; Sun, 19 Mar 2023 11:06:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229610AbjCSKGc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 Mar 2023 06:06:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45214 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229805AbjCSKGb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 19 Mar 2023 06:06:31 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ECE1823D83
        for <devicetree@vger.kernel.org>; Sun, 19 Mar 2023 03:06:29 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <ukl@pengutronix.de>)
        id 1pdpvn-0007gk-Ua; Sun, 19 Mar 2023 11:06:27 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
        by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
        (envelope-from <ukl@pengutronix.de>)
        id 1pdpvn-005CGL-A3; Sun, 19 Mar 2023 11:06:27 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
        (envelope-from <ukl@pengutronix.de>)
        id 1pdpvm-006744-Nt; Sun, 19 Mar 2023 11:06:26 +0100
From:   =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     devicetree@vger.kernel.org, kernel@pengutronix.de
Subject: [PATCH 2/3] of: unittest: Drop if blocks with always false condition
Date:   Sun, 19 Mar 2023 11:06:19 +0100
Message-Id: <20230319100620.295849-3-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230319100620.295849-1-u.kleine-koenig@pengutronix.de>
References: <20230319100620.295849-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=937; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=LTgL+GZgIZYcBvJFo4PqWZFnpXQCRPx461LOgmASeLA=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBkFt6XI/t7Ab6bFVHVEhSHJtMXMLWij5vP7KKx1 F3iAGdPStKJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZBbelwAKCRCPgPtYfRL+ Tv+GCAC4MaHDoWacS66aD+d2Yeuw4sEJYS3MZbqWEC42vjSJJmrWQCIh41kpn2c574ngRCJvL7L FxPdu3kFQtO671cDUnjpBIV9ESQLRRhAwRuOB29WWe6HxdE8YEWR07jqLhv5/rcY3hx1FuqytqR TEms1UP0kipHjz+7Op5Yt32BpRZy37tRUsR0akXGjMdqtcicmgWNbJH9HxC9N6ddcs2gbSDG9Sq Hb88bBo5KC4AQG6uITRyDTVSJGNUCmrmzTmcSIHL3FfA+e9Ctam1IDuner4i+EiJQPy3M+BMbRL v8qP7MyCwbs4AbNPx56Jhs0MlwbHgP4EhLiEUvZeOK8jF8ml
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

unittest_gpio_remove() is only called after unittest_gpio_probe() completed
successfully. In this case driver data was set to a non-NULL value and so
platform_get_drvdata() never returns NULL.

Also note that the compiler might optimize away this check anyhow as
devptr was already dereferenced for the dev_dbg call above.

Drop this if block.

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
 drivers/of/unittest.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/of/unittest.c b/drivers/of/unittest.c
index 2504092e8302..0b0b966133b7 100644
--- a/drivers/of/unittest.c
+++ b/drivers/of/unittest.c
@@ -1633,9 +1633,6 @@ static int unittest_gpio_remove(struct platform_device *pdev)
 
 	dev_dbg(dev, "%s for node @%pfw\n", __func__, devptr->chip.fwnode);
 
-	if (!devptr)
-		return -EINVAL;
-
 	if (devptr->chip.base != -1)
 		gpiochip_remove(&devptr->chip);
 
-- 
2.39.2

