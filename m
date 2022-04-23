Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D8B5D50CCDA
	for <lists+devicetree@lfdr.de>; Sat, 23 Apr 2022 20:22:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236724AbiDWSZ3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 23 Apr 2022 14:25:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39046 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236709AbiDWSZ1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 23 Apr 2022 14:25:27 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B5B41F7D6E
        for <devicetree@vger.kernel.org>; Sat, 23 Apr 2022 11:22:29 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id y21so7146468edo.2
        for <devicetree@vger.kernel.org>; Sat, 23 Apr 2022 11:22:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Nvtk3WrJqJk+qmVO4Q6Di137/3oPd7qzHUoK/qF/8hw=;
        b=lO+OXKgCTtcaXG67Svqw2oQgTlbnzRtqNz+BeBXdsn2GRmxuHNgmTtUvpSHd/r/c7j
         OQgRPqEeUtcDlftqQhCrNE0M1p/C//4QIOjXd4xmCcKh7h68vGDXvYNJfrYi5iyCX5us
         jReAWbUSFKXrBTbf7WnSRQfm0lVC9YAGMCH2YOkhv6UixP5L4K11W0XOX6Bspb/xtSM/
         /TqnScOU8iknMS1T23sqywMmo8oANvQtuOma42IXKqvS5FMTIaqHuAg2U2bk8mLXXF8Z
         wriL0TD2PvrsGnYyZhGpXlS4kYwGUCalx6TfbUY3bcmxSC6O5Zt9Y33lnP5A8DN2j9Yh
         Uz7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Nvtk3WrJqJk+qmVO4Q6Di137/3oPd7qzHUoK/qF/8hw=;
        b=fhefQnrHFrUDeqkucNZ7O+CbW7rW+9G4uQBn94KB8IrwYJa4bUGyo4h4VlJt0QcYHZ
         M3ukxI+JvrvCqq75aswxhKR4yqwG/wbXHPzqZoNXbNIIXZt/76wNCrNnXvYt+Hsk9hyj
         kWag+lYYhwwEFI7qR/yskeEUZxv951QomAG1S35FkmHXQg8VuzIcNfFK3Fw0+w8jEDFw
         mcBtA3jWh0u+iRxiO1PjaJH9hRXF9lsan3J9bDXU33fp7UmAep+3bDSau1v9jvykihcN
         yZ8d/Q09/yBOgJ5ZqaAo6zbHI+ARy30odu6vkXJY5Mg13VnNVd0niZGBc+ySizGqgXyD
         lYxg==
X-Gm-Message-State: AOAM531Aa99n8xywlDjO6dnpB8dKM9wSh61N9SkzStJbbKuevcQgTuuc
        R0k8DeJ1es0IJjJKCzR/ymeuXA==
X-Google-Smtp-Source: ABdhPJyg0jFFNwg0LctM7/+1curlTdprK5AH7XCrttRgbfW7DJCgpEf4E2D+vM9rzAyGQZIYOidADA==
X-Received: by 2002:a05:6402:1291:b0:425:de54:f5b with SMTP id w17-20020a056402129100b00425de540f5bmr51958edv.154.1650738147896;
        Sat, 23 Apr 2022 11:22:27 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id g24-20020a056402321800b00423e43ebb60sm2399227eda.61.2022.04.23.11.22.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Apr 2022 11:22:27 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        ChiYuan Huang <cy_huang@richtek.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 2/2] regulator: richtek,rt4801: use existing ena_gpiod feature
Date:   Sat, 23 Apr 2022 20:14:19 +0200
Message-Id: <20220423181419.19397-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220423181419.19397-1-krzysztof.kozlowski@linaro.org>
References: <20220423181419.19397-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The driver duplicated regulator core feature of controlling
regulators with GPIOs (of_parse_cb + ena_gpiod) and created its own
enable-gpios property with multiple GPIOs.

The core already does it. Keep old method for backwards compatibility.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 drivers/regulator/rt4801-regulator.c | 68 ++++++++++++++++++++++++----
 1 file changed, 58 insertions(+), 10 deletions(-)

diff --git a/drivers/regulator/rt4801-regulator.c b/drivers/regulator/rt4801-regulator.c
index 7a87788d3f09..22efe44cd3a0 100644
--- a/drivers/regulator/rt4801-regulator.c
+++ b/drivers/regulator/rt4801-regulator.c
@@ -29,17 +29,71 @@
 
 struct rt4801_priv {
 	struct device *dev;
+	/*
+	 * Driver supports enable GPIOs in two ways:
+	 * 1. Legacy enable-gpios property with multiple entries and enable
+	 *    control handled by the driver.
+	 * 2. Per-regulator enable-gpios property with enable control handled by
+	 *    the regulator core.
+	 *
+	 * The enable_gpios and enable_flag properties are for the (1) case.
+	 */
 	struct gpio_descs *enable_gpios;
 	unsigned int enable_flag;
 	unsigned int volt_sel[DSV_OUT_MAX];
 };
 
+static int rt4801_of_parse_cb(struct device_node *np,
+			      const struct regulator_desc *desc,
+			      struct regulator_config *config)
+{
+	struct rt4801_priv *priv = config->driver_data;
+
+	if (priv->enable_gpios) {
+		dev_warn(priv->dev, "duplicated enable-gpios property\n");
+		return 0;
+	}
+	config->ena_gpiod = fwnode_gpiod_get_index(of_fwnode_handle(np),
+						   "enable-gpios",
+						   0,
+						   GPIOD_OUT_HIGH |
+						   GPIOD_FLAGS_BIT_NONEXCLUSIVE,
+						   "rt4801");
+	if (IS_ERR(config->ena_gpiod))
+		config->ena_gpiod = NULL;
+
+	return 0;
+}
+
+/*
+ * regulator_ops->is_enabled() implementation
+ */
+static int rt4801_is_enabled(struct regulator_dev *rdev)
+{
+	struct rt4801_priv *priv = rdev_get_drvdata(rdev);
+	int id = rdev_get_id(rdev);
+
+	return !!(priv->enable_flag & BIT(id));
+}
+
+/*
+ * Internally used only is_enabled() implementation using also ena_pin from
+ * regulator core.
+ */
+static bool rt4801_is_enabled_ena_pin(struct regulator_dev *rdev)
+{
+	if (rdev->ena_pin)
+		return rdev->ena_gpio_state;
+
+	return rt4801_is_enabled(rdev);
+}
+
 static int rt4801_set_voltage_sel(struct regulator_dev *rdev, unsigned int selector)
 {
 	struct rt4801_priv *priv = rdev_get_drvdata(rdev);
 	int id = rdev_get_id(rdev), ret;
 
-	if (priv->enable_flag & BIT(id)) {
+	if (rt4801_is_enabled_ena_pin(rdev)) {
 		ret = regulator_set_voltage_sel_regmap(rdev, selector);
 		if (ret)
 			return ret;
@@ -54,7 +108,7 @@ static int rt4801_get_voltage_sel(struct regulator_dev *rdev)
 	struct rt4801_priv *priv = rdev_get_drvdata(rdev);
 	int id = rdev_get_id(rdev);
 
-	if (priv->enable_flag & BIT(id))
+	if (rt4801_is_enabled_ena_pin(rdev))
 		return regulator_get_voltage_sel_regmap(rdev);
 
 	return priv->volt_sel[id];
@@ -100,14 +154,6 @@ static int rt4801_disable(struct regulator_dev *rdev)
 	return 0;
 }
 
-static int rt4801_is_enabled(struct regulator_dev *rdev)
-{
-	struct rt4801_priv *priv = rdev_get_drvdata(rdev);
-	int id = rdev_get_id(rdev);
-
-	return !!(priv->enable_flag & BIT(id));
-}
-
 static const struct regulator_ops rt4801_regulator_ops = {
 	.list_voltage = regulator_list_voltage_linear,
 	.set_voltage_sel = rt4801_set_voltage_sel,
@@ -122,6 +168,7 @@ static const struct regulator_desc rt4801_regulator_descs[] = {
 		.name = "DSVP",
 		.ops = &rt4801_regulator_ops,
 		.of_match = of_match_ptr("DSVP"),
+		.of_parse_cb = rt4801_of_parse_cb,
 		.type = REGULATOR_VOLTAGE,
 		.id = DSV_OUT_POS,
 		.min_uV = MIN_UV,
@@ -135,6 +182,7 @@ static const struct regulator_desc rt4801_regulator_descs[] = {
 		.name = "DSVN",
 		.ops = &rt4801_regulator_ops,
 		.of_match = of_match_ptr("DSVN"),
+		.of_parse_cb = rt4801_of_parse_cb,
 		.type = REGULATOR_VOLTAGE,
 		.id = DSV_OUT_NEG,
 		.min_uV = MIN_UV,
-- 
2.32.0

