Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CA8BC6E4BA7
	for <lists+devicetree@lfdr.de>; Mon, 17 Apr 2023 16:39:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230453AbjDQOjY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Apr 2023 10:39:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34274 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230101AbjDQOjP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Apr 2023 10:39:15 -0400
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B4DF592
        for <devicetree@vger.kernel.org>; Mon, 17 Apr 2023 07:39:13 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id e8so8521580ljn.2
        for <devicetree@vger.kernel.org>; Mon, 17 Apr 2023 07:39:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681742352; x=1684334352;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8VxPnjG7Ga3tmIOUhMs54Sv+8hbNOJAgCnpbXzAxobQ=;
        b=cWWVykdxAAPEOQp1ZbmWCBdekcLthpzNRIBJ0OL9IqxWeOgEwmiJOXokKDa3PtB9t5
         krOAF+aYZoK4lP0/5yZLFSEJNcuBWFAvj9ZWKt9kvysGz4Oxh9W3tbNNlTW9IXCp7DUM
         2e29F2kkaEKqMWPLQUlAcaZWV7JcRBMGjW1BFJ4JjVtV6Cb84+TIZfSfjrgTiShRjksn
         06s3Nu8O6KgxCzAWCapCPLaoHuvW9Xzl0HXKYAsNNObWL/I4RiU72v2f8UWfJ7Qzuj8V
         J0cWzQ3OFxvB6AVgwL3OQE6oM96zxgcrfFMwfa1yuzRDrtD3hjK986sJ0L7tFmASLV4d
         lhFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681742352; x=1684334352;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8VxPnjG7Ga3tmIOUhMs54Sv+8hbNOJAgCnpbXzAxobQ=;
        b=GkwCnMxd+7zwDT9ebW+2cY5YWWn1jIS5fHV3UH2X3+9kCcO4Xvpbq6k4bt0sZwDuwt
         7HcK7lEjG+AxrF3UmzVazQN3McmUCrjW4pvSFh5mY/qfY/ok4505lGEILmQ0RMWJXwsp
         UBeDy47iCC9AR1LMgphNn6MfR9Fnq5kjBy/p1F0h9og49Y9RzPsOFG6Bjv8Wrh98r3Rq
         miUPmwSuH7n4evbtxwCDp+Zo97UkRYH7BANKKqnCQiJ3ZF8MQSIZwXiHsErya2eWcVCN
         xsGC3OIBfAPMaVhaMPDitvGPHqBV23wBnJIzu22ZCXOsY2BoMvNg9tYjbnveYer4Gu0o
         7cVg==
X-Gm-Message-State: AAQBX9fAOFSspol3j50J1HUJBZI1RL+nSopC9NbhPv5jfr6Kh8FtvCYQ
        fvvV8YKtQJhMYAL9uwJBNELbd0lWmu0PbhOlKj8=
X-Google-Smtp-Source: AKy350ZlDi5eFUrDRQBiRDXvxsZvLAbEbyX5OrzW/dZYUJBFRSY0Gw+UnZZbd+FQhTsOt34FsiKANg==
X-Received: by 2002:a05:651c:c2:b0:299:bb73:fcd4 with SMTP id 2-20020a05651c00c200b00299bb73fcd4mr3707650ljr.7.1681742351770;
        Mon, 17 Apr 2023 07:39:11 -0700 (PDT)
Received: from [192.168.1.101] (abyk99.neoplus.adsl.tpnet.pl. [83.9.30.99])
        by smtp.gmail.com with ESMTPSA id 2-20020a2eb282000000b002a76b9e4058sm2235785ljx.43.2023.04.17.07.39.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Apr 2023 07:39:11 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Mon, 17 Apr 2023 16:39:04 +0200
Subject: [PATCH v3 2/4] drm/panel: nt36523: Add DCS backlight support
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230412-topic-lenovopanel-v3-2-bcf9ba4de46f@linaro.org>
References: <20230412-topic-lenovopanel-v3-0-bcf9ba4de46f@linaro.org>
In-Reply-To: <20230412-topic-lenovopanel-v3-0-bcf9ba4de46f@linaro.org>
To:     Jianhua Lu <lujianhua000@gmail.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1681742347; l=3553;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=dc/Dvzhn8dlfyxlg6IxeHxMIzNiaOkMG9FE6LJmww9g=;
 b=iM8VjNqLvv57texCYnh0YJE0n+lyfH7nI3h1sLGMBp5uzmqK5nevK+/zKLyan9hqEhpXADSCCpNY
 Kr3lrPXxCTakzdTzZCvraHB5JU34qFIOk97eRqpgYUzYMd/GpSel
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This chip supports controlling the backlight via DCS commands, on at
least some panels. Add support for doing so.

Note this may only concern the NT36523*W* variant. Nobody knows, really,
there's no docs.

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Reviewed-by: Jianhua Lu <lujianhua000@gmail.com>
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 drivers/gpu/drm/panel/panel-novatek-nt36523.c | 68 +++++++++++++++++++++++++--
 1 file changed, 65 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-novatek-nt36523.c b/drivers/gpu/drm/panel/panel-novatek-nt36523.c
index d30dbbfb67b1..b0466abae812 100644
--- a/drivers/gpu/drm/panel/panel-novatek-nt36523.c
+++ b/drivers/gpu/drm/panel/panel-novatek-nt36523.c
@@ -5,6 +5,7 @@
  * Copyright (c) 2022, 2023 Jianhua Lu <lujianhua000@gmail.com>
  */
 
+#include <linux/backlight.h>
 #include <linux/delay.h>
 #include <linux/gpio/consumer.h>
 #include <linux/module.h>
@@ -53,6 +54,7 @@ struct panel_desc {
 	int (*init_sequence)(struct panel_info *pinfo);
 
 	bool is_dual_dsi;
+	bool has_dcs_backlight;
 };
 
 static inline struct panel_info *to_panel_info(struct drm_panel *panel)
@@ -679,6 +681,59 @@ static const struct drm_panel_funcs nt36523_panel_funcs = {
 	.get_modes = nt36523_get_modes,
 };
 
+static int nt36523_bl_update_status(struct backlight_device *bl)
+{
+	struct mipi_dsi_device *dsi = bl_get_data(bl);
+	u16 brightness = backlight_get_brightness(bl);
+	int ret;
+
+	dsi->mode_flags &= ~MIPI_DSI_MODE_LPM;
+
+	ret = mipi_dsi_dcs_set_display_brightness_large(dsi, brightness);
+	if (ret < 0)
+		return ret;
+
+	dsi->mode_flags |= MIPI_DSI_MODE_LPM;
+
+	return 0;
+}
+
+static int nt36523_bl_get_brightness(struct backlight_device *bl)
+{
+	struct mipi_dsi_device *dsi = bl_get_data(bl);
+	u16 brightness;
+	int ret;
+
+	dsi->mode_flags &= ~MIPI_DSI_MODE_LPM;
+
+	ret = mipi_dsi_dcs_get_display_brightness_large(dsi, &brightness);
+	if (ret < 0)
+		return ret;
+
+	dsi->mode_flags |= MIPI_DSI_MODE_LPM;
+
+	return brightness;
+}
+
+static const struct backlight_ops nt36523_bl_ops = {
+	.update_status = nt36523_bl_update_status,
+	.get_brightness = nt36523_bl_get_brightness,
+};
+
+static struct backlight_device *nt36523_create_backlight(struct mipi_dsi_device *dsi)
+{
+	struct device *dev = &dsi->dev;
+	const struct backlight_properties props = {
+		.type = BACKLIGHT_RAW,
+		.brightness = 512,
+		.max_brightness = 4095,
+		.scale = BACKLIGHT_SCALE_NON_LINEAR,
+	};
+
+	return devm_backlight_device_register(dev, dev_name(dev), dev, dsi,
+					      &nt36523_bl_ops, &props);
+}
+
 static int nt36523_probe(struct mipi_dsi_device *dsi)
 {
 	struct device *dev = &dsi->dev;
@@ -730,9 +785,16 @@ static int nt36523_probe(struct mipi_dsi_device *dsi)
 	mipi_dsi_set_drvdata(dsi, pinfo);
 	drm_panel_init(&pinfo->panel, dev, &nt36523_panel_funcs, DRM_MODE_CONNECTOR_DSI);
 
-	ret = drm_panel_of_backlight(&pinfo->panel);
-	if (ret)
-		return dev_err_probe(dev, ret, "failed to get backlight\n");
+	if (pinfo->desc->has_dcs_backlight) {
+		pinfo->panel.backlight = nt36523_create_backlight(dsi);
+		if (IS_ERR(pinfo->panel.backlight))
+			return dev_err_probe(dev, PTR_ERR(pinfo->panel.backlight),
+					     "Failed to create backlight\n");
+	} else {
+		ret = drm_panel_of_backlight(&pinfo->panel);
+		if (ret)
+			return dev_err_probe(dev, ret, "Failed to get backlight\n");
+	}
 
 	drm_panel_add(&pinfo->panel);
 

-- 
2.40.0

