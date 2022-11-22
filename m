Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C1A526331EB
	for <lists+devicetree@lfdr.de>; Tue, 22 Nov 2022 02:09:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232012AbiKVBJe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Nov 2022 20:09:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50512 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232239AbiKVBJP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Nov 2022 20:09:15 -0500
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 54FA9532FE
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 17:08:10 -0800 (PST)
Received: by mail-ej1-x632.google.com with SMTP id n12so32308173eja.11
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 17:08:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZTx+TtbHQiuyemeCcK5ytUKmVUVmCoh0H5eAmJ4K4qk=;
        b=LxkapDROlNg89vbfyOnHNwYtPPUfl2VexbTmKnYd0BjumMyVcRkoBcbPgGQNiCR76Z
         lu71Zfj0axIJ5DX8GAYZYxOcUEcnNsw19VoSTfGwI3jpbvJTC7fpGmm28fhX55YGIDul
         q6HM6mtWmwwZgWn/Jxl0R+IFpAHdrkfwzeiDNe3JLDvu58K0AmooRZlP42VhOD+nOtu8
         Wpn2B0vMSsS3VTfpWqyvY0El80MtzxkC3ni7qpQS2roMk2Nk5Sl0U6kG15gzcX8U/yqw
         CM+eVkiPmV3UsNrgQxJ4fPA3bBMV8yMTG2Cb9YD/l1IjmFGKuLPm6gS44TXGKTDI6kW7
         9BIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZTx+TtbHQiuyemeCcK5ytUKmVUVmCoh0H5eAmJ4K4qk=;
        b=mzck44GXdsoTG4s0RLwBFHeGBZcvKJ1YLvdDu8av38EZHEWZrdeAixCK1x1UNJb4/6
         oimgVYoX6YadkxEgDjsgHbc5MVw5sXPCpCr+O3i0FdCuC/bYKDsJhSOZ0QQ09l3SG7sm
         ph6G3Jro0sobY8ZV+I+C8JlTT9IHJrCPskFWum5Gf/GljzoMcIzces7wSlDmFIlveZWA
         bd6ksI+aSMVaDJAjbqHIUdKy6fI8sJf797Y14g1va6zlCBspjlNPKk3PZhgir0KxvlfF
         zCcmf6hO5pIQjLSqcGBPLdnvZGVehup1BwTej9hIqJGrOs9MWxk9EFSxhAonIHa74CTQ
         ezew==
X-Gm-Message-State: ANoB5pn5mhsH02k+x93JIcUFTwI7OvpHdNKKDXA5By7QE38yVZh8XJCw
        g8YK0Gj+bAD03qcN+c+eK9jyPgB4aM3Md/FU
X-Google-Smtp-Source: AA0mqf7VrdKpG04LpKtWDcLfh9W2BtI6C/41tDew40mV/sen6b/FETzkdsA3/5/JhMJG+02LOvmq5w==
X-Received: by 2002:a17:906:3810:b0:7b5:cab5:2ea8 with SMTP id v16-20020a170906381000b007b5cab52ea8mr1036389ejc.222.1669079288692;
        Mon, 21 Nov 2022 17:08:08 -0800 (PST)
Received: from c64.fritz.box ([2a01:2a8:8108:8301:7643:bec8:f62b:b074])
        by smtp.gmail.com with ESMTPSA id f13-20020a1709064dcd00b007030c97ae62sm5514683ejw.191.2022.11.21.17.08.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Nov 2022 17:08:08 -0800 (PST)
From:   =?UTF-8?q?Bernhard=20Rosenkr=C3=A4nzer?= <bero@baylibre.com>
To:     devicetree@vger.kernel.org
Cc:     linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com,
        krzysztof.kozlowski@linaro.org, matthias.bgg@gmail.com,
        angelogioacchino.delregno@collabora.com, khilman@baylibre.com
Subject: [PATCH v2 1/7] pinctrl: mediatek: common: Remove check for pins-are-numbered
Date:   Tue, 22 Nov 2022 02:07:47 +0100
Message-Id: <20221122010753.3126828-2-bero@baylibre.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221122010753.3126828-1-bero@baylibre.com>
References: <20221122010753.3126828-1-bero@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
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

