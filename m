Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 523AF63B7EE
	for <lists+devicetree@lfdr.de>; Tue, 29 Nov 2022 03:34:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235180AbiK2CeH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Nov 2022 21:34:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37792 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234997AbiK2CeH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Nov 2022 21:34:07 -0500
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 06D7A421AA
        for <devicetree@vger.kernel.org>; Mon, 28 Nov 2022 18:34:06 -0800 (PST)
Received: by mail-ej1-x631.google.com with SMTP id vp12so29246424ejc.8
        for <devicetree@vger.kernel.org>; Mon, 28 Nov 2022 18:34:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZTx+TtbHQiuyemeCcK5ytUKmVUVmCoh0H5eAmJ4K4qk=;
        b=zdPnBz8LuT1eYde2dmjuvmer7HQPreaOkL/J34wCWMTbFXn/rlUkZgCRefXxmTxSd6
         ynHItCJhUlhX/oB2no2KlunwGK6IeCorVQeNAtZFV3oyjteMsRZVQXkWRXhjrRtoPFfv
         5dTvbspYt2uIpdh6UQQCegMEKg5YRfpqkfvCrZnv6NCgczSc7qKFiDJhgpL7nq5Ix5Yw
         JDv1wHyuf8+45dqkj6Blp5k9x5lc7FxsVJyBNVTlGlCM/p0CjKi6p8sx7XCmaYgR/Pso
         n4+SrZ1GsX9KXdHppUTzlSbDJaxWGT0Of3R5Nsw2oApzRycZvxrSZv00CIsPOmdE/UTR
         YTyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZTx+TtbHQiuyemeCcK5ytUKmVUVmCoh0H5eAmJ4K4qk=;
        b=uYzxKPr5iaNHspyt/OO0TjmnDinXGSftFvw1VAqwZNt4nOSxnXCqg8eHqQabrywt7O
         3LzXEbKLRWoEgQDBfNtm28ChnlrURPzj61XDkCgJ21S4SYjDtfFG8v25D/ZVC4mTlB/Y
         7NqcUXeKThR02NmqjWRMCHXCZQEq5g5gO0z6c0gEYMoKGW5MSwMKIoVPHTDcixg68jg0
         bL4+TF1dt/DdPJYGlM9Kxrhy8bM+QNrryp9ot165R6xetd4I2Z1TzvHhVXegKvVs4LMt
         06GiX8l/jgrBIQFeHC4gcgRST2bkn8zanGjNUrD0xo2kJowc6NzS9pXKK9gFsrws+Wqs
         y2pw==
X-Gm-Message-State: ANoB5plGoUGImdqXy8x/My0GLsRAbq9neGt4opFK/WZkAKI+kHtqBOFH
        CZvx/4+qTbwMypgrfOUCaXE1/GLfrWwz6Q==
X-Google-Smtp-Source: AA0mqf7cNqtLS8XZxcIEfqpN/Zg8AfFILEVbgilC7PIW1LJ9tdQClOSPyxdLvja1MaMQAwYiJDpXfQ==
X-Received: by 2002:a17:906:8465:b0:7bd:7253:457a with SMTP id hx5-20020a170906846500b007bd7253457amr13730873ejc.81.1669689244396;
        Mon, 28 Nov 2022 18:34:04 -0800 (PST)
Received: from c64.fritz.box ([81.221.122.240])
        by smtp.gmail.com with ESMTPSA id a4-20020aa7d744000000b004615f7495e0sm5733817eds.8.2022.11.28.18.34.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Nov 2022 18:34:04 -0800 (PST)
From:   =?UTF-8?q?Bernhard=20Rosenkr=C3=A4nzer?= <bero@baylibre.com>
To:     devicetree@vger.kernel.org
Cc:     linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com,
        krzysztof.kozlowski@linaro.org, matthias.bgg@gmail.com,
        angelogioacchino.delregno@collabora.com, khilman@baylibre.com,
        linux-gpio@vger.kernel.org, linus.walleij@linaro.org
Subject: [PATCH v3 1/7] pinctrl: mediatek: common: Remove check for pins-are-numbered
Date:   Tue, 29 Nov 2022 03:33:55 +0100
Message-Id: <20221129023401.278780-2-bero@baylibre.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221129023401.278780-1-bero@baylibre.com>
References: <20221129023401.278780-1-bero@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Remove the check for the unnecessary pins-are-numbered Devicetree property.

Signed-off-by: Bernhard Rosenkränzer <bero@baylibre.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Acked-by: Kevin Hilman <khilman@baylibre.com>
---
 drivers/pinctrl/mediatek/pinctrl-mtk-common.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/pinctrl/mediatek/pinctrl-mtk-common.c b/drivers/pinctrl/mediatek/pinctrl-mtk-common.c
index 076ae0b38e3d7..553d16703475b 100644
--- a/drivers/pinctrl/mediatek/pinctrl-mtk-common.c
+++ b/drivers/pinctrl/mediatek/pinctrl-mtk-common.c
@@ -1057,7 +1057,6 @@ int mtk_pctrl_init(struct platform_device *pdev,
 	struct pinctrl_pin_desc *pins;
 	struct mtk_pinctrl *pctl;
 	struct device_node *np = pdev->dev.of_node, *node;
-	struct property *prop;
 	int ret, i;
 
 	pctl = devm_kzalloc(&pdev->dev, sizeof(*pctl), GFP_KERNEL);
@@ -1066,11 +1065,6 @@ int mtk_pctrl_init(struct platform_device *pdev,
 
 	platform_set_drvdata(pdev, pctl);
 
-	prop = of_find_property(np, "pins-are-numbered", NULL);
-	if (!prop)
-		return dev_err_probe(dev, -EINVAL,
-				     "only support pins-are-numbered format\n");
-
 	node = of_parse_phandle(np, "mediatek,pctl-regmap", 0);
 	if (node) {
 		pctl->regmap1 = syscon_node_to_regmap(node);
-- 
2.38.1

