Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 72E0B6C0080
	for <lists+devicetree@lfdr.de>; Sun, 19 Mar 2023 11:06:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229799AbjCSKGd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 Mar 2023 06:06:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45226 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229869AbjCSKGb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 19 Mar 2023 06:06:31 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4382619C42
        for <devicetree@vger.kernel.org>; Sun, 19 Mar 2023 03:06:30 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <ukl@pengutronix.de>)
        id 1pdpvo-0007gm-6B; Sun, 19 Mar 2023 11:06:28 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
        by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
        (envelope-from <ukl@pengutronix.de>)
        id 1pdpvn-005CGO-HJ; Sun, 19 Mar 2023 11:06:27 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
        (envelope-from <ukl@pengutronix.de>)
        id 1pdpvm-006741-FM; Sun, 19 Mar 2023 11:06:26 +0100
From:   =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     devicetree@vger.kernel.org, kernel@pengutronix.de
Subject: [PATCH 1/3] of: unittest: Drop call to platform_set_drvdata(..., NULL)
Date:   Sun, 19 Mar 2023 11:06:18 +0100
Message-Id: <20230319100620.295849-2-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230319100620.295849-1-u.kleine-koenig@pengutronix.de>
References: <20230319100620.295849-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=675; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=WnU+KUseW7VTE3m1b/pjGqKrTA+PlyGyQFf1hE3p4tM=; b=owEBbAGT/pANAwAKAY+A+1h9Ev5OAcsmYgBkFt6VTX/mk7d7OR30vTKXTYKcHRnFTDbNxM1FB xNy3L2aFA+JATIEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZBbelQAKCRCPgPtYfRL+ TjFSB/dmi9dV2V9Fljayd4vQ6i/hqZwfn25ii0Rjd8y5w90+Wq88g8/RRNXIbdHnyyni2YWxYv9 rqmK0gF1tbUuWxBF7ibIVOqARWlYLOHsdKBmR64ND09sHPCJ5ViDpwlJf8f8SLk5WU5L78Jw2T5 zDMrxHqS8HHGI4mE8OG7sohC7AoQZ2WwqB28XNq6cP2DrmPpmkR5kdcuYedezfyvo/xwgCq3DO3 YWXmFmehsNDPCg3MDn2SX3ZjeJ5tIPzjcNX8z+nd7UrPXKcKtJ3K8UPdBdOT4bBkb4DJxSTAUCa hVXEX8cZHzkcwr40SXadlcvObgOPTQMRP/gP0sIisSZpPtE=
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

The driver core already unsets driver data after .remove() completes.
So there is no reason to do this explicitly in the driver itself.

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
 drivers/of/unittest.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/of/unittest.c b/drivers/of/unittest.c
index b5a7a31d8bd2..2504092e8302 100644
--- a/drivers/of/unittest.c
+++ b/drivers/of/unittest.c
@@ -1639,7 +1639,6 @@ static int unittest_gpio_remove(struct platform_device *pdev)
 	if (devptr->chip.base != -1)
 		gpiochip_remove(&devptr->chip);
 
-	platform_set_drvdata(pdev, NULL);
 	kfree(devptr);
 
 	return 0;
-- 
2.39.2

