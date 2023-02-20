Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4D7A169D627
	for <lists+devicetree@lfdr.de>; Mon, 20 Feb 2023 23:10:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232596AbjBTWKs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Feb 2023 17:10:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59554 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232586AbjBTWKq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Feb 2023 17:10:46 -0500
Received: from mail-qt1-x82c.google.com (mail-qt1-x82c.google.com [IPv6:2607:f8b0:4864:20::82c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7F7D9FF23
        for <devicetree@vger.kernel.org>; Mon, 20 Feb 2023 14:10:45 -0800 (PST)
Received: by mail-qt1-x82c.google.com with SMTP id x1so3639427qtw.3
        for <devicetree@vger.kernel.org>; Mon, 20 Feb 2023 14:10:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=criticallink.com; s=google;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7++FPNmCT11inHBtqfYJtM4/xAJgiLCvorUz1cWzIv4=;
        b=RLcaWVGFtPjStOXJrnuKglAddJFhMNvM6D2JJSDTT8hyU9jFMLqOJGEGk0ajfMoBrM
         PfC5atL0Ls1yLQ87fd0Ypl49U6ULpfyvMYtGWxUA1GlWMWK21gVi+JabNX4WNqVbRXKV
         JjEGjOASQTJNQOIjeY8p7eAqAAcdpIIWy6vb0Q7JFSEbN6dJPj+/tD0zvEPKzjtj0sWo
         hutyy7WBOYuXXo15XyY02NyWItQh+mM7JM7/d31A9LIx5r7kMeY6TlxfJ4oeaE3KxP5u
         P4GLYRCM8pR/f72Z2jhuAHQriYKsDM6fF+U8A18Rtp+SFLeBwfphtZT1nvPOQiPRWCiS
         UNIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7++FPNmCT11inHBtqfYJtM4/xAJgiLCvorUz1cWzIv4=;
        b=GPoRT827mTAxMQ0lbzJQPbLDf9/4LbwTQAZn7hWB6QmjTAQm7GniV9fy/v4o1PEsSa
         mAyoE8OTPmSUhN0T7fsHl3fx/L/uY+v4ghVqhzC7+wNWmzfi7zXnr414MNaL73+EFKuD
         rkbPlkHisFULD6Q/DqB1foKCZ0JYEOzUtNApBlI+a2EmCq2g/JHaGjRAplHj3Wg3afLg
         VZuZ/T4tvHqAqOqUfBoSC3Dr85o+NFzVqaSVHN/C7mv44+ZXLrNyJty8C98F6Vcn9keM
         OfGmt/WkUoYPvtOT1AyjAOB0OkE+GwHwKxpsjdmQfXKprVU9QahQ578KOybDqvAW2xMq
         PaAw==
X-Gm-Message-State: AO0yUKWcCqcK+uYsYDPY/Js7C4lVdALH856o25xiZ82cEo92SsIyRLMo
        7gmXyOzqKisyu84ocEgjErT6Cg==
X-Google-Smtp-Source: AK7set8+lN+ZdfMWj1HtD2SgZdImvXC1J5hpiQyovkTG9eYDIZ1UF3Sx07OaCz5yt6sO+mHlPAI9ZA==
X-Received: by 2002:a05:622a:44f:b0:3ba:13dd:f253 with SMTP id o15-20020a05622a044f00b003ba13ddf253mr3677795qtx.7.1676931044624;
        Mon, 20 Feb 2023 14:10:44 -0800 (PST)
Received: from [127.0.1.1] (static-72-90-70-109.syrcny.fios.verizon.net. [72.90.70.109])
        by smtp.gmail.com with ESMTPSA id q13-20020a05620a024d00b006f9ddaaf01esm9766986qkn.102.2023.02.20.14.10.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Feb 2023 14:10:44 -0800 (PST)
From:   Jonathan Cormier <jcormier@criticallink.com>
Date:   Mon, 20 Feb 2023 17:10:35 -0500
Subject: [PATCH v3 3/3] drm/bridge: tfp410: If connected, use I2C for
 polled HPD status.
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230125-tfp410_i2c-v3-3-a85d5f0f50f1@criticallink.com>
References: <20230125-tfp410_i2c-v3-0-a85d5f0f50f1@criticallink.com>
In-Reply-To: <20230125-tfp410_i2c-v3-0-a85d5f0f50f1@criticallink.com>
To:     Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Michael Williamson <michael.williamson@criticallink.com>,
        Bob Duke <bduke@criticallink.com>,
        Jonathan Cormier <jcormier@criticallink.com>
X-Mailer: b4 0.12.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1511;
 i=jcormier@criticallink.com; h=from:subject:message-id;
 bh=mnMRLzTQ5OvUKpoF4H4mdtxVS/UwcOVTBoA/DdsbVck=;
 b=owEBbQKS/ZANAwAKAdzX/S4LNuuqAcsmYgBj8+/gbxbQIXcBj3r2SwiKKjNAonNiEYXuvWSNoLKp
 yrmAJ+KJAjMEAAEKAB0WIQT/MozqCeZtYxNnVN/c1/0uCzbrqgUCY/Pv4AAKCRDc1/0uCzbrqvBoD/
 4yR8Qxx7wDUg3SL3m4/8rA1G+JdIXlFJz5dcG8z5fkFfu0tsqWok3HvJqF0cWOzUbu9RZ8J2kys+xy
 zgUQisH1V64vHDi5YyytNoXTNRPEa+oJfpykZQt/0NFC5WtkKQC+RNxEXrG9vaO7uzLRnVCZbaCPLb
 3QYld7UNCpbHgBqcY2AqJkWJzJNcx/piAG+3Z6vh40syyMfRJmWOuFh10H9+6OYicaGK9XJ7eDI08/
 b6TRdpK0tMVULOhyua13no6DqO7njXz25b1d0dzUYgPZpWf2ryrolcyZoAs/jFlm6pNBsIs54Nv+kA
 9N3AO6ahzlQ9VV+YebIyXiPT8DezpZ9lz/4QUOks1HHaMkXgUQHgB8ukQKErmChbSV/KlfVVRHy8ih
 ZDOXoMSE1S/9JMEyDFKZSynNCKZr+chwoLOlB0l86ewB0sL5YONu2Mz2qm7xhBNNxIAKmAzjBdTpqt
 BOw0EMZy+mJNG5ffljDHO8gkLZI6vUtkIObWqEs9ObQWJtHkakatQJQhkqUCyODFuXNcAgzGqy9FRY
 gNBqVt3HbTySwXkgYtQlOQh9cOB/k3yWv+0Txom0TH+CMr0QcVHJUQpkvPGLw8xYigWyMQqz4jRX94
 vpDrBxgXVUoty24lmoQOLE/xRGryb0EO/zP52tX39J2Pma+DAHqTEntUkn4w==
X-Developer-Key: i=jcormier@criticallink.com; a=openpgp;
 fpr=FF328CEA09E66D63136754DFDCD7FD2E0B36EBAA
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Michael Williamson <michael.williamson@criticallink.com>

If the I2C bus is connected on the TFP410, then use the register
status bit to determine connection state.  This is needed, in particular,
for polling the state when the Hot Plug detect is not connected to
a controlling CPU via GPIO/IRQ lane.

Signed-off-by: Michael Williamson <michael.williamson@criticallink.com>
Signed-off-by: Jonathan Cormier <jcormier@criticallink.com>
---
 drivers/gpu/drm/bridge/ti-tfp410.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/bridge/ti-tfp410.c b/drivers/gpu/drm/bridge/ti-tfp410.c
index 41007d05d584..eeb7202452aa 100644
--- a/drivers/gpu/drm/bridge/ti-tfp410.c
+++ b/drivers/gpu/drm/bridge/ti-tfp410.c
@@ -28,6 +28,9 @@
 #define TFP410_BIT_BSEL BIT(2)
 #define TFP410_BIT_DSEL BIT(3)
 
+#define TFP410_REG_CTL_2_MODE	0x09
+#define TFP410_BIT_HTPLG BIT(1)
+
 static const struct regmap_config tfp410_regmap_config = {
 	.reg_bits = 8,
 	.val_bits = 8,
@@ -105,6 +108,15 @@ static enum drm_connector_status
 tfp410_connector_detect(struct drm_connector *connector, bool force)
 {
 	struct tfp410 *dvi = drm_connector_to_tfp410(connector);
+	int ret;
+
+	if (dvi->i2c) {
+		ret = regmap_test_bits(dvi->regmap, TFP410_REG_CTL_2_MODE, TFP410_BIT_HTPLG);
+		if (ret < 0)
+			dev_err(dvi->dev, "%s failed to read HTPLG bit : %d\n", __func__, ret);
+		else
+			return ret ? connector_status_connected : connector_status_disconnected;
+	}
 
 	return drm_bridge_detect(dvi->next_bridge);
 }

-- 
2.25.1

