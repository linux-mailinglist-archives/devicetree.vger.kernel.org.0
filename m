Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 70410631858
	for <lists+devicetree@lfdr.de>; Mon, 21 Nov 2022 02:55:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229924AbiKUBzP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 20 Nov 2022 20:55:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34976 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229903AbiKUBzM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 20 Nov 2022 20:55:12 -0500
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 15A5F3122F
        for <devicetree@vger.kernel.org>; Sun, 20 Nov 2022 17:55:09 -0800 (PST)
Received: by mail-ej1-x632.google.com with SMTP id n20so25501535ejh.0
        for <devicetree@vger.kernel.org>; Sun, 20 Nov 2022 17:55:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N/w2w13+mMWO6nBDKGCXMZSCYwmXc/qjKkmDVe/55kA=;
        b=ukSmjE2ZDkr5MBplaKJox8349Bq/DFiq/a+pyIyb/dlA/5xXDM2fH0vK6PKGnWpHkY
         WdbkNQfkGfBgc+fqQZ5Avx95WjORzzRqj2KqksT/e5UN5a4UNVVmTnnr9TkYmq94lq6Y
         AEtOcit1AdlVUNZ4kJbth4iUfDPhXwFfgrk7/UZ8XaGJtPggN+hS645yy1IV5SeQJGWh
         QNmIf7CsqpsYBZa1EgAbQ6VSFIF7O2S4J2gmpjbEsZyoG1YbkBoKfM3mwQfxc8UNootx
         8+c4vL+jyPU2rIR80jERU92JSOhVf55BiCCNb+6/3Gad2i1L5DutvxH/Bjeci4OyEcYg
         aT7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N/w2w13+mMWO6nBDKGCXMZSCYwmXc/qjKkmDVe/55kA=;
        b=NRJT0u2131+0qWUV2t4QVBPHe0meEqwLwVh8g7TmtJj5c21KBGB8Ys5/D/4HHxq8UF
         GLu89FVE8h6BPOhEQs4HIKCU7MdkHlimMCBuohVJKoWNL/wyoO2Sy21Zub/Q9HqXOXhr
         xg+is3KZq0yXZZMsN4sBAYG8dvN9vst2whZIhXviVCmV+yFk4/didge1J/o0r/afAYmA
         2SvdjA6Wan0+4LA+VuSpHWpQkHHrkDCLiU508ES1K4V3uqOqfz70ROPmA3aB+ZYV4U71
         P5incq1B5qkBpUKvuk/hOVP53HDGoquFtZeUF61s1xUsjzoxCPi31vNMemBA6+7BAsme
         X9tQ==
X-Gm-Message-State: ANoB5pmpmosqD5uTFdHNrycXFJxdArY1HYCCF/KYyTitzWzRlum0PVFF
        F5KGkx0GDqU04+2pkyG7YqnqnenZXb0J4Ef1
X-Google-Smtp-Source: AA0mqf5AZ2xmEjYJZfawEV5yKJs7UGrH3Rw1OX9e0ct+5T3lY1OESXQajfo4ZcuEXEWOAgUov53/1g==
X-Received: by 2002:a17:907:9890:b0:783:6c5:c49e with SMTP id ja16-20020a170907989000b0078306c5c49emr13775680ejc.483.1668995707442;
        Sun, 20 Nov 2022 17:55:07 -0800 (PST)
Received: from c64.fritz.box ([2a01:2a8:8108:8301:7643:bec8:f62b:b074])
        by smtp.gmail.com with ESMTPSA id g2-20020a170906538200b00782e3cf7277sm4415513ejo.120.2022.11.20.17.55.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Nov 2022 17:55:07 -0800 (PST)
From:   =?UTF-8?q?Bernhard=20Rosenkr=C3=A4nzer?= <bero@baylibre.com>
To:     devicetree@vger.kernel.org
Cc:     linux-mediatek@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org,
        krzysztof.kozlowski@linaro.org, khilman@baylibre.com,
        mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com,
        matthias.bgg@gmail.com
Subject: [PATCH 1/9] pinctrl: mediatek: common: Remove check for pins-are-numbered
Date:   Mon, 21 Nov 2022 02:54:43 +0100
Message-Id: <20221121015451.2471196-2-bero@baylibre.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221121015451.2471196-1-bero@baylibre.com>
References: <20221121015451.2471196-1-bero@baylibre.com>
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

