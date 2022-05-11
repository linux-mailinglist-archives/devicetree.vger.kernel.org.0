Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9BAC4522E2E
	for <lists+devicetree@lfdr.de>; Wed, 11 May 2022 10:21:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233984AbiEKIVl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 May 2022 04:21:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47956 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243697AbiEKIV3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 May 2022 04:21:29 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B8F632BE2
        for <devicetree@vger.kernel.org>; Wed, 11 May 2022 01:21:27 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1nohat-0002Us-0i; Wed, 11 May 2022 10:21:15 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
        by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
        (envelope-from <sha@pengutronix.de>)
        id 1nohaq-001eQN-Nn; Wed, 11 May 2022 10:21:11 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
        (envelope-from <sha@pengutronix.de>)
        id 1nohao-004lV3-My; Wed, 11 May 2022 10:21:10 +0200
From:   Sascha Hauer <s.hauer@pengutronix.de>
To:     dri-devel@lists.freedesktop.org
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>,
        Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH v2 2/3] drm: rockchip: Change register space names
Date:   Wed, 11 May 2022 10:21:08 +0200
Message-Id: <20220511082109.1110043-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220511082109.1110043-1-s.hauer@pengutronix.de>
References: <20220511082109.1110043-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
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

"regs" seems to generic when there are multiple register spaces, so
rename that one to "vop". Also change "gamma_lut" to better looking
"gamma-lut".

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index 8d1323a47f822..d463ea80b6569 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -2620,7 +2620,7 @@ static int vop2_bind(struct device *dev, struct device *master, void *data)
 
 	dev_set_drvdata(dev, vop2);
 
-	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "regs");
+	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "vop");
 	if (!res) {
 		drm_err(vop2->drm, "failed to get vop2 register byname\n");
 		return -EINVAL;
@@ -2637,7 +2637,7 @@ static int vop2_bind(struct device *dev, struct device *master, void *data)
 	if (ret)
 		return ret;
 
-	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "gamma_lut");
+	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "gamma-lut");
 	if (res) {
 		vop2->lut_regs = devm_ioremap_resource(dev, res);
 		if (IS_ERR(vop2->lut_regs))
-- 
2.30.2

