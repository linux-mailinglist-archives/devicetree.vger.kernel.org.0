Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DF23E5FD997
	for <lists+devicetree@lfdr.de>; Thu, 13 Oct 2022 14:51:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229823AbiJMMvz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Oct 2022 08:51:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35376 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229812AbiJMMvx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Oct 2022 08:51:53 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D3F9B125855
        for <devicetree@vger.kernel.org>; Thu, 13 Oct 2022 05:51:51 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id u10so2704009wrq.2
        for <devicetree@vger.kernel.org>; Thu, 13 Oct 2022 05:51:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a8xPngQ7Xav1IVqeX2fWSoDFWgcYJEV7TkYDvz0h/Mc=;
        b=rOGynw/RR8E+IosAIA02jON+pQh39XPXi5XXzgGskDZBNrZGR1TBTnpgImzmo9mhR8
         RUCZ4vLUqTUjHiYL3tEw8zi+4pH1IZ2Kmzk8ii2IrLTjYTNmt5e3tEgLXnqWxqEyW20n
         gDSdAZNVhbtLaW4J1ciGqAiN+dStcXAXJnw2XRO43DSddm58r8WjgtaowhAeFh5lj7s9
         yPl5EeG+G6FV8imgYKvzvg4QY52IxSOsC7VR+8tosIt2T4jwDvnTVkrF8gPJltFNFShB
         8Eb9HW5Sgzx0atM7gpaATfXJ7lWgn8NVI482LgIh1nGKHDVehBtr2hoXLv+xKaWXiVGi
         ZrvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a8xPngQ7Xav1IVqeX2fWSoDFWgcYJEV7TkYDvz0h/Mc=;
        b=Kxl6NZumM9OsLRZVSARvvUgby3CjPW3ImIdXpSWTPESq9q+YamWr1GXyyrajhg6SA4
         avkYoRJbbe84gwRlJXLElcy2LPrNLrDFM8Yq4uMNl1jRzCaWGNyLKBzBcmFXCtsSGxWT
         055ExEprQh1Z2mJbr4+SN52maFKGdl/tOnOSuZFfpVJwD6b6V1JQlhgBLg7/KHVS4dgF
         pqW/enFcm/RPmTUUWFlJUTced+D9m8iX9La1snpKCQegNJJFOYRUMolJaPWhxcYdNd9j
         2KTTEgNgNXJxAWsJzUt3pYSJCvq8wSQnx7UmRj4NgCBATeUgism+V8U8K2u/1w4YrmQd
         ojKQ==
X-Gm-Message-State: ACrzQf2/nLJpWlyHJTsVaenD0AwgbeiQLWZgoEfLmY+MubD+iaYjVzAh
        T/VX06NCVV0XS1wbGQcLpRDLYw==
X-Google-Smtp-Source: AMsMyM7OBtmbZd0iFl3u8pFwQhlVSYrfeJI9A7ahdvRBy5i9Up33z7URxhvmxT/DQ8czD4M0O3zdIA==
X-Received: by 2002:a05:6000:2c5:b0:22f:5242:12fe with SMTP id o5-20020a05600002c500b0022f524212femr16939052wry.401.1665665510100;
        Thu, 13 Oct 2022 05:51:50 -0700 (PDT)
Received: from planet9.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id m3-20020a056000024300b0022e3e7813f0sm1332292wrz.107.2022.10.13.05.51.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Oct 2022 05:51:49 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     sakari.ailus@iki.fi, dave.stevenson@raspberrypi.com,
        jacopo@jmondi.org, paul.j.murphy@intel.com,
        daniele.alessandrelli@intel.com, mchehab@kernel.org,
        linux-media@vger.kernel.org
Cc:     bryan.odonoghue@linaro.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v5 2/3] media: i2c: imx412: Assign v4l2 device subname based on compat string
Date:   Thu, 13 Oct 2022 13:51:41 +0100
Message-Id: <20221013125142.3321405-3-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221013125142.3321405-1-bryan.odonoghue@linaro.org>
References: <20221013125142.3321405-1-bryan.odonoghue@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

imx412 and imx577 return the same chip-id when interrogated via i2c.
I've confirmed this myself by

Sakari suggested we should add a new compat which should be reflected in
the name of the media entity

https://patchwork.kernel.org/project/linux-media/patch/20220607134057.2427663-3-bryan.odonoghue@linaro.org/#24894500

Set up the .data parameter of of_device_id to pass a string which
we use to set the media entity name. Once done we can add in imx577 as a
compatible chips with the media names reflecting the directed compat string.

Cc: sakari.ailus@iki.fi
Cc: dave.stevenson@raspberrypi.com
Cc: jacopo@jmondi.org
Cc: "Paul J. Murphy" <paul.j.murphy@intel.com>
Cc: Daniele Alessandrelli <daniele.alessandrelli@intel.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-media@vger.kernel.org
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 drivers/media/i2c/imx412.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/media/i2c/imx412.c b/drivers/media/i2c/imx412.c
index a1394d6c1432..9f854a1a4c2f 100644
--- a/drivers/media/i2c/imx412.c
+++ b/drivers/media/i2c/imx412.c
@@ -1172,6 +1172,7 @@ static int imx412_init_controls(struct imx412 *imx412)
 static int imx412_probe(struct i2c_client *client)
 {
 	struct imx412 *imx412;
+	const char *name;
 	int ret;
 
 	imx412 = devm_kzalloc(&client->dev, sizeof(*imx412), GFP_KERNEL);
@@ -1179,6 +1180,9 @@ static int imx412_probe(struct i2c_client *client)
 		return -ENOMEM;
 
 	imx412->dev = &client->dev;
+	name = device_get_match_data(&client->dev);
+	if (!name)
+		return -ENODEV;
 
 	/* Initialize subdev */
 	v4l2_i2c_subdev_init(&imx412->sd, client, &imx412_subdev_ops);
@@ -1218,6 +1222,8 @@ static int imx412_probe(struct i2c_client *client)
 	imx412->sd.flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
 	imx412->sd.entity.function = MEDIA_ENT_F_CAM_SENSOR;
 
+	v4l2_i2c_subdev_set_name(&imx412->sd, client, name, NULL);
+
 	/* Initialize source pad */
 	imx412->pad.flags = MEDIA_PAD_FL_SOURCE;
 	ret = media_entity_pads_init(&imx412->sd.entity, 1, &imx412->pad);
@@ -1281,7 +1287,7 @@ static const struct dev_pm_ops imx412_pm_ops = {
 };
 
 static const struct of_device_id imx412_of_match[] = {
-	{ .compatible = "sony,imx412" },
+	{ .compatible = "sony,imx412", .data = "imx412" },
 	{ }
 };
 
-- 
2.34.1

