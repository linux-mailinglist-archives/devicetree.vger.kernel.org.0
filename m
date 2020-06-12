Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 13F131F7902
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2020 15:55:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726283AbgFLNzH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 Jun 2020 09:55:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50562 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726536AbgFLNyv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 Jun 2020 09:54:51 -0400
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com [IPv6:2a00:1450:4864:20::241])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 40968C03E96F
        for <devicetree@vger.kernel.org>; Fri, 12 Jun 2020 06:54:49 -0700 (PDT)
Received: by mail-lj1-x241.google.com with SMTP id c17so11141985lji.11
        for <devicetree@vger.kernel.org>; Fri, 12 Jun 2020 06:54:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=dfWTJRln/wUkUezGYMWTWyc7bZ4R2M6yJEVL+/18MoU=;
        b=YKUm5+MXtyoghi4Yx87JKWrhK8cqKD7Pbsn3qttgdfSTtHv9XJDTFN6NgT4uvktIZ4
         uoW5GEgLbTnrIKjiPQH6wahznKsDQ5arq9tYg0nV3URIhCV9lEdy9f9oGwW4Y1W1y9u9
         w9/5i2Een1oXqRDGaVhEBRV7FFxMTbNX43qg0J+qjrXwn2xDKJ/ytgQrOnogGLijj0/T
         9Jlw5TytVFnb97n2RZU8Et8Hf57kDLGSF0BPJ8W4BWtNgD3Z+dTD755+KLZnXI2WcLwl
         IqqKciv1se3OjH7IzAN57JRVq66HbgvpNjVFwb1TDU5vjEHitTUcjc1F7oeh2JdCwLLz
         xlyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=dfWTJRln/wUkUezGYMWTWyc7bZ4R2M6yJEVL+/18MoU=;
        b=BnvIRbbti0N84exZpd7rbx78t/QADVzDBUunDW0T3gCd2VYV4FsytyxAaCZDlgpt5H
         IfGz+OT1AfQswd/n/sY55UDvRn3Qj1Fvn01Di07yUeANuJg+fIWXwNfo5bfdcTpxzYG4
         Z+281zCuvY+MLiU6yB4enmta7dXQGf4Dhhj2/BnaptlNaXHEOsx3LARTBzKvXaa2WCkL
         G4u2NrPhLWSoz8m/06ehi7fg+ab2/JvvA7puJXski16CxK8HuXdd04hvtDf0n21uJBCt
         s6uW9gZILry+83EbWmHYR1S8X52TgqVwus5sxkuZhQpYHchj2X1tCB4R7kVJL1+xyqQn
         wadQ==
X-Gm-Message-State: AOAM532sSpMfj8x3eo7mO5+Grfk4GZF1/3lGK/iYBVU50Gemhfl9bouu
        G2+P5v3toMY9LuzcZdr5u0VR5g==
X-Google-Smtp-Source: ABdhPJzkvrMx8Yl1wKGOV7GyTAN+Yk3rUFpSNV9AQJqPXtZtgFKoZ6hefDkjfeWUdm8RijLAnD9lYQ==
X-Received: by 2002:a2e:81c5:: with SMTP id s5mr6643701ljg.372.1591970087696;
        Fri, 12 Jun 2020 06:54:47 -0700 (PDT)
Received: from localhost.localdomain (37-144-159-139.broadband.corbina.ru. [37.144.159.139])
        by smtp.googlemail.com with ESMTPSA id a1sm2414415lfi.36.2020.06.12.06.54.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jun 2020 06:54:47 -0700 (PDT)
From:   Andrey Konovalov <andrey.konovalov@linaro.org>
To:     mchehab@kernel.org, sakari.ailus@iki.fi,
        manivannan.sadhasivam@linaro.org
Cc:     linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        c.barrett@framos.com, a.brela@framos.com, peter.griffin@linaro.org,
        Andrey Konovalov <andrey.konovalov@linaro.org>
Subject: [PATCH v5 10/10] media: i2c: imx290: set bus_type before calling v4l2_fwnode_endpoint_alloc_parse()
Date:   Fri, 12 Jun 2020 16:53:55 +0300
Message-Id: <20200612135355.30286-11-andrey.konovalov@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200612135355.30286-1-andrey.konovalov@linaro.org>
References: <20200612135355.30286-1-andrey.konovalov@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The bus_type field of v4l2_fwnode_endpoint structure passed as the argument
to v4l2_fwnode_endpoint_alloc_parse() function must be initiaized.
Set it to V4L2_MBUS_CSI2_DPHY, and check for -ENXIO which is returned
when the requested media bus type doesn't match the fwnode.

Also remove v4l2_fwnode_endpoint field from struct imx290 as it is only
needed in the probe function: use the local variable for this purpose.

Signed-off-by: Andrey Konovalov <andrey.konovalov@linaro.org>
---
 drivers/media/i2c/imx290.c | 38 +++++++++++++++++++-------------------
 1 file changed, 19 insertions(+), 19 deletions(-)

diff --git a/drivers/media/i2c/imx290.c b/drivers/media/i2c/imx290.c
index 02001c1b0dfc..9c97830164e9 100644
--- a/drivers/media/i2c/imx290.c
+++ b/drivers/media/i2c/imx290.c
@@ -70,7 +70,6 @@ struct imx290 {
 	u8 bpp;
 
 	struct v4l2_subdev sd;
-	struct v4l2_fwnode_endpoint ep;
 	struct media_pad pad;
 	struct v4l2_mbus_framefmt current_format;
 	const struct imx290_mode *current_mode;
@@ -914,17 +913,18 @@ static const struct media_entity_operations imx290_subdev_entity_ops = {
  * of MIPI data lanes are mentioned in the device tree, or the value of the
  * first missing frequency otherwise.
  */
-static s64 imx290_check_link_freqs(const struct imx290 *imx290)
+static s64 imx290_check_link_freqs(const struct imx290 *imx290,
+				   const struct v4l2_fwnode_endpoint *ep)
 {
 	int i, j;
 	const s64 *freqs = imx290_link_freqs_ptr(imx290);
 	int freqs_count = imx290_link_freqs_num(imx290);
 
 	for (i = 0; i < freqs_count; i++) {
-		for (j = 0; j < imx290->ep.nr_of_link_frequencies; j++)
-			if (freqs[i] == imx290->ep.link_frequencies[j])
+		for (j = 0; j < ep->nr_of_link_frequencies; j++)
+			if (freqs[i] == ep->link_frequencies[j])
 				break;
-		if (j == imx290->ep.nr_of_link_frequencies)
+		if (j == ep->nr_of_link_frequencies)
 			return freqs[i];
 	}
 	return 0;
@@ -934,6 +934,10 @@ static int imx290_probe(struct i2c_client *client)
 {
 	struct device *dev = &client->dev;
 	struct fwnode_handle *endpoint;
+	/* Only CSI2 is supported for now: */
+	struct v4l2_fwnode_endpoint ep = {
+		.bus_type = V4L2_MBUS_CSI2_DPHY
+	};
 	struct imx290 *imx290;
 	u32 xclk_freq;
 	s64 fq;
@@ -956,15 +960,18 @@ static int imx290_probe(struct i2c_client *client)
 		return -EINVAL;
 	}
 
-	ret = v4l2_fwnode_endpoint_alloc_parse(endpoint, &imx290->ep);
+	ret = v4l2_fwnode_endpoint_alloc_parse(endpoint, &ep);
 	fwnode_handle_put(endpoint);
-	if (ret) {
+	if (ret == -ENXIO) {
+		dev_err(dev, "Unsupported bus type, should be CSI2\n");
+		goto free_err;
+	} else if (ret) {
 		dev_err(dev, "Parsing endpoint node failed\n");
 		goto free_err;
 	}
 
 	/* Get number of data lanes */
-	imx290->nlanes = imx290->ep.bus.mipi_csi2.num_data_lanes;
+	imx290->nlanes = ep.bus.mipi_csi2.num_data_lanes;
 	if (imx290->nlanes != 2 && imx290->nlanes != 4) {
 		dev_err(dev, "Invalid data lanes: %d\n", imx290->nlanes);
 		ret = -EINVAL;
@@ -973,27 +980,20 @@ static int imx290_probe(struct i2c_client *client)
 
 	dev_dbg(dev, "Using %u data lanes\n", imx290->nlanes);
 
-	if (!imx290->ep.nr_of_link_frequencies) {
+	if (!ep.nr_of_link_frequencies) {
 		dev_err(dev, "link-frequency property not found in DT\n");
 		ret = -EINVAL;
 		goto free_err;
 	}
 
 	/* Check that link frequences for all the modes are in device tree */
-	fq = imx290_check_link_freqs(imx290);
+	fq = imx290_check_link_freqs(imx290, &ep);
 	if (fq) {
 		dev_err(dev, "Link frequency of %lld is not supported\n", fq);
 		ret = -EINVAL;
 		goto free_err;
 	}
 
-	/* Only CSI2 is supported for now */
-	if (imx290->ep.bus_type != V4L2_MBUS_CSI2_DPHY) {
-		dev_err(dev, "Unsupported bus type, should be CSI2\n");
-		ret = -EINVAL;
-		goto free_err;
-	}
-
 	/* get system clock (xclk) */
 	imx290->xclk = devm_clk_get(dev, "xclk");
 	if (IS_ERR(imx290->xclk)) {
@@ -1108,7 +1108,7 @@ static int imx290_probe(struct i2c_client *client)
 	pm_runtime_enable(dev);
 	pm_runtime_idle(dev);
 
-	v4l2_fwnode_endpoint_free(&imx290->ep);
+	v4l2_fwnode_endpoint_free(&ep);
 
 	return 0;
 
@@ -1118,7 +1118,7 @@ static int imx290_probe(struct i2c_client *client)
 	v4l2_ctrl_handler_free(&imx290->ctrls);
 	mutex_destroy(&imx290->lock);
 free_err:
-	v4l2_fwnode_endpoint_free(&imx290->ep);
+	v4l2_fwnode_endpoint_free(&ep);
 
 	return ret;
 }
-- 
2.17.1

