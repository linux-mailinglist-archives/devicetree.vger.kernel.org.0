Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 95E8A729DA3
	for <lists+devicetree@lfdr.de>; Fri,  9 Jun 2023 17:00:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240758AbjFIPAV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Jun 2023 11:00:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42164 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241631AbjFIO75 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Jun 2023 10:59:57 -0400
Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net [217.70.183.193])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D49ED18C
        for <devicetree@vger.kernel.org>; Fri,  9 Jun 2023 07:59:56 -0700 (PDT)
X-GND-Sasl: miquel.raynal@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1686322795;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=GOXmbDeINpoIDU/vXw0yK73QV+pWdXwKgrY443WDF0c=;
        b=QUwyXPjor572e2TjjtQxrFxJHfm8wwz/SEkCiifzuHh1it6PtCu2pId/zUAfKqIR8dx+Iz
        EOKAlWdba8cDelXYokYfmFGh7jyc+rFU/LrMcEZtbFEAObR3/BI+oI5jtox8wZDoJbmHk9
        f5DQhcmBLfbGkwXdxd2W99Uc2szW5h9Wd1qqU4VdrJQ+w2tZ8yfAMrOXyPfLD3diySwIXf
        nK5XevurV9SwDreS09Jnjer2EGwTigCtWcgTsEHFVaBBnxeq9s4SDnlVi2eejhsyF3TTuV
        wSrikPg+y2kUsu1ill6m8s54ni5ndC47FAjpWM+Xj5C5HJGpQDxShFVVZqXOig==
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 83A9D240007;
        Fri,  9 Jun 2023 14:59:54 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Maxime Ripard <mripard@kernel.org>,
        dri-devel@lists.freedesktop.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        devicetree@vger.kernel.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH 1/7] drm/panel: sitronix-st7789v: Prevent core spi warnings
Date:   Fri,  9 Jun 2023 16:59:45 +0200
Message-Id: <20230609145951.853533-2-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230609145951.853533-1-miquel.raynal@bootlin.com>
References: <20230609145951.853533-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The spi core warns us about using an of_device_id table without a
spi_device_id table aside for module utilities in orter to not rely on
OF modaliases. Just add this table using the device name without the
vendor prefix (as it is usually done).

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/gpu/drm/panel/panel-sitronix-st7789v.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-sitronix-st7789v.c b/drivers/gpu/drm/panel/panel-sitronix-st7789v.c
index bbc4569cbcdc..c67b9adb157f 100644
--- a/drivers/gpu/drm/panel/panel-sitronix-st7789v.c
+++ b/drivers/gpu/drm/panel/panel-sitronix-st7789v.c
@@ -400,9 +400,16 @@ static const struct of_device_id st7789v_of_match[] = {
 };
 MODULE_DEVICE_TABLE(of, st7789v_of_match);
 
+static const struct spi_device_id st7789v_ids[] = {
+	{ "st7789v", },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(spi, st7789v_ids);
+
 static struct spi_driver st7789v_driver = {
 	.probe = st7789v_probe,
 	.remove = st7789v_remove,
+	.id_table = st7789v_ids,
 	.driver = {
 		.name = "st7789v",
 		.of_match_table = st7789v_of_match,
-- 
2.34.1

