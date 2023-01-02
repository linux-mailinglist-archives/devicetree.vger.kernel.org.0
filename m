Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0367865B143
	for <lists+devicetree@lfdr.de>; Mon,  2 Jan 2023 12:42:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229966AbjABLmI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Jan 2023 06:42:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55656 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232719AbjABLmA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Jan 2023 06:42:00 -0500
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D98EAE86
        for <devicetree@vger.kernel.org>; Mon,  2 Jan 2023 03:41:58 -0800 (PST)
Received: by mail-lf1-x12f.google.com with SMTP id bp15so41232142lfb.13
        for <devicetree@vger.kernel.org>; Mon, 02 Jan 2023 03:41:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ot07odIMBdi99ZptGGtgBesy1j3BRGxC/hcJ0N+TCxs=;
        b=ROrZRy6C2QbxPLI+6Vx8HBTPv6HMBgAkapWo4sNLlX5XPiqHt6cS/4G2lfiTCCQmUj
         pGJ0nRz91ehp4Po8Du+hLVqytJyUgi90OkhcfIv0jKwYu4ZfVVt8MxDUZmQH5FORMLSW
         67wHSUpVcnXxIT0LsIhhTdu3JD/UxQ9HrbZc7Ep98ixE7tTtP3o7Xw3OSIqwMNjnf9jH
         ZlJ3UOr7X3M/fcDlNiUneZk2HyBMw6rLHFMI1zFTWVsIrRxzWj/XJ21W8o9WqBpcVnl9
         HcUGI6MVNFYOGKxf9p4soTjaWJKwHlvEhG+4qPrFw+/9Cz+vQ16xPrV/AjN/u1Fezuvk
         SHvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ot07odIMBdi99ZptGGtgBesy1j3BRGxC/hcJ0N+TCxs=;
        b=gSWMAWwfH/MspbXJ80CuoQ4Egbd8K8//5CPCe+FcUJUverxMoVeR/J9BlbZ0psASeD
         3e6BlceiTwpOx/AtJENBRWz6DNJLo96qFBc0YCU+Pndlv2UCFxBF3gIhYAsNSKaD0Q2U
         i/Bl4KR7YC6+qxCvEGRG2/Bqh76YbEPi1HOjXwcDa4BpEk4JregzPGrSnlBUjCgyyZ5K
         6QNdmbtYnfwovJ9bF7BB2+8VpkiZ4KBUnDIVL/OwjV/NBuhK7eLfRgC4rQJp4VGanHrw
         Rp0mYclvd0DhwirVjF6e3BZQAY2W6/cSwuh6IlnELi0ly/ro6jbssDnFFCqzF8MNmbnS
         daJw==
X-Gm-Message-State: AFqh2koVe0b3jrtamZ7QjTiKByfURRhZpzAdFXqQiNDGqAUJpfPbHtQ4
        q/RXpVP6dD38ghaOa8Rw09XW6OaHoRtoKKF0
X-Google-Smtp-Source: AMrXdXvnjqG2Y/pyr5nZjYWE9uLYb988hSA8gSfnRbitymR+6iWVJQzN6BffnHeN7xCV/A4uvftQNA==
X-Received: by 2002:a19:f517:0:b0:4c3:35b3:9a0e with SMTP id j23-20020a19f517000000b004c335b39a0emr9440867lfb.56.1672659717229;
        Mon, 02 Jan 2023 03:41:57 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id c20-20020ac24154000000b0048a8c907fe9sm4356397lfi.167.2023.01.02.03.41.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Jan 2023 03:41:56 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Banajit Goswami <bgoswami@quicinc.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        alsa-devel@alsa-project.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/8] ASoC: codecs: wsa883x: Simplify &pdev->dev in probe
Date:   Mon,  2 Jan 2023 12:41:45 +0100
Message-Id: <20230102114152.297305-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The probe already stores pointer to &pdev->dev, so use it to make the
code a bit easier to read.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 sound/soc/codecs/wsa883x.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/sound/soc/codecs/wsa883x.c b/sound/soc/codecs/wsa883x.c
index 966ba4909204..8d69ed340e83 100644
--- a/sound/soc/codecs/wsa883x.c
+++ b/sound/soc/codecs/wsa883x.c
@@ -1375,7 +1375,7 @@ static int wsa883x_probe(struct sdw_slave *pdev,
 	struct device *dev = &pdev->dev;
 	int ret;
 
-	wsa883x = devm_kzalloc(&pdev->dev, sizeof(*wsa883x), GFP_KERNEL);
+	wsa883x = devm_kzalloc(dev, sizeof(*wsa883x), GFP_KERNEL);
 	if (!wsa883x)
 		return -ENOMEM;
 
@@ -1388,17 +1388,17 @@ static int wsa883x_probe(struct sdw_slave *pdev,
 	if (ret)
 		return dev_err_probe(dev, ret, "Failed to enable vdd regulator\n");
 
-	wsa883x->sd_n = devm_gpiod_get_optional(&pdev->dev, "powerdown",
+	wsa883x->sd_n = devm_gpiod_get_optional(dev, "powerdown",
 						GPIOD_FLAGS_BIT_NONEXCLUSIVE | GPIOD_OUT_HIGH);
 	if (IS_ERR(wsa883x->sd_n)) {
-		ret = dev_err_probe(&pdev->dev, PTR_ERR(wsa883x->sd_n),
+		ret = dev_err_probe(dev, PTR_ERR(wsa883x->sd_n),
 				    "Shutdown Control GPIO not found\n");
 		goto err;
 	}
 
-	dev_set_drvdata(&pdev->dev, wsa883x);
+	dev_set_drvdata(dev, wsa883x);
 	wsa883x->slave = pdev;
-	wsa883x->dev = &pdev->dev;
+	wsa883x->dev = dev;
 	wsa883x->sconfig.ch_count = 1;
 	wsa883x->sconfig.bps = 1;
 	wsa883x->sconfig.direction = SDW_DATA_DIR_RX;
@@ -1413,7 +1413,7 @@ static int wsa883x_probe(struct sdw_slave *pdev,
 	wsa883x->regmap = devm_regmap_init_sdw(pdev, &wsa883x_regmap_config);
 	if (IS_ERR(wsa883x->regmap)) {
 		gpiod_direction_output(wsa883x->sd_n, 1);
-		ret = dev_err_probe(&pdev->dev, PTR_ERR(wsa883x->regmap),
+		ret = dev_err_probe(dev, PTR_ERR(wsa883x->regmap),
 				    "regmap_init failed\n");
 		goto err;
 	}
@@ -1423,7 +1423,7 @@ static int wsa883x_probe(struct sdw_slave *pdev,
 	pm_runtime_set_active(dev);
 	pm_runtime_enable(dev);
 
-	ret = devm_snd_soc_register_component(&pdev->dev,
+	ret = devm_snd_soc_register_component(dev,
 					      &wsa883x_component_drv,
 					       wsa883x_dais,
 					       ARRAY_SIZE(wsa883x_dais));
-- 
2.34.1

