Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EF4DA61990A
	for <lists+devicetree@lfdr.de>; Fri,  4 Nov 2022 15:14:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231912AbiKDOOf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Nov 2022 10:14:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57930 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231663AbiKDOOb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Nov 2022 10:14:31 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A9B5D27172
        for <devicetree@vger.kernel.org>; Fri,  4 Nov 2022 07:14:25 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id w14so7226743wru.8
        for <devicetree@vger.kernel.org>; Fri, 04 Nov 2022 07:14:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7ZMIvZlN2RweJkUN5B//uFf7tgMLArGLgtt1G8UfvMA=;
        b=vaZQ6TBoKkbx6TGxCcFW+YH+RxWS+kSPBpJm20J0qkLGMHIEa0T1ZM2r2Zqy6pJ5gF
         1q5R0qy6Cx33RKk0/W4UYWCc3HAqeVlyBulwzqdGQ4r6019aq24y6lYW/8hd/8C8ynqL
         xIl4S6/k4pj9slu3IkHzLkj6jHAp3cWFHdS3XbU8OHjl/IpRC8JmYlVRpIqlyV0wVP+Z
         0141hvtRLwVgnNzOCE+ahZzOOgGzGq2BLnrRBJlONSwoGtZVYYdEri//pLry3Cf7ibyT
         meRI7L/rIoGsKpR3HROJLlLhdp8PBdIUk8AyBYOqpoyNk1lHRar4rDHdxG++TFo4zafr
         HhAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7ZMIvZlN2RweJkUN5B//uFf7tgMLArGLgtt1G8UfvMA=;
        b=xhXKmLHn0KXPmlYC0KLugyRBn+e+zK+i95bELq6hDL/qGmfbivrhGsf5HuDSiwMPRx
         s2rQ2nqxcDxLVyOV6T0uQLSqyzIr1Ewl2e8YA0xNQkouDUKs0NNsb4Q6mDxCsTklSWw0
         39fSbraNry4tDYGli3skM54JKwI6obsqgZwnwXEICSeoQM8iIiNutgcT1QOOZLPAbXe+
         Exo0qpbuPt/TgaBWGI9ZQ51cmwGpKhh8wKHGM94r0TzXdYwH7WKSnl7PHfcK94yUxKp9
         igOuMhjzqa1X2AIFXYO61xYRVfp55RUJ8kyGgLMXiqfhh/IDNVeDNoJOkYWbpu63d3Ib
         VQ0Q==
X-Gm-Message-State: ACrzQf0B5wj4GBEcL2D8EALH4EaFGZvqDmWeDbKL0dZ1Yn7ymehVwZWc
        O0ZjY9uKCpAlyR4n/vc/yj8/AQ==
X-Google-Smtp-Source: AMsMyM6vxkBTMx3zpCwdVJDHci7QUsUI/9KYwNLHnBbluAYJIfNZUyVM5fn6RwNaPAlohJffVGFYwQ==
X-Received: by 2002:a05:6000:1c08:b0:236:e52d:b0d7 with SMTP id ba8-20020a0560001c0800b00236e52db0d7mr215846wrb.46.1667571264124;
        Fri, 04 Nov 2022 07:14:24 -0700 (PDT)
Received: from [127.0.0.1] (2a02-8440-6440-7fff-3074-96af-9642-0003.rev.sfr.net. [2a02:8440:6440:7fff:3074:96af:9642:3])
        by smtp.gmail.com with ESMTPSA id bj9-20020a0560001e0900b002365cd93d05sm3594512wrb.102.2022.11.04.07.14.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Nov 2022 07:14:23 -0700 (PDT)
From:   Guillaume Ranquet <granquet@baylibre.com>
Date:   Fri, 04 Nov 2022 15:09:55 +0100
Subject: [PATCH v3 09/12] phy: phy-mtk-hdmi: Add generic phy configure callback
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20220919-v3-9-a803f2660127@baylibre.com>
References: <20220919-v3-0-a803f2660127@baylibre.com>
In-Reply-To: <20220919-v3-0-a803f2660127@baylibre.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Chunfeng Yun <chunfeng.yun@mediatek.com>,
        Jitao shi <jitao.shi@mediatek.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Vinod Koul <vkoul@kernel.org>, CK Hu <ck.hu@mediatek.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Kishon Vijay Abraham I <kishon@ti.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-kernel@lists.infradead.org, stuart.lee@mediatek.com,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        Guillaume Ranquet <granquet@baylibre.com>,
        mac.shen@mediatek.com, linux-phy@lists.infradead.org
X-Mailer: b4 0.11.0-dev
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Some phys, such as mt8195, needs to have a configure callback defined.

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
---
 drivers/phy/mediatek/phy-mtk-hdmi.c | 12 ++++++++++++
 drivers/phy/mediatek/phy-mtk-hdmi.h |  1 +
 2 files changed, 13 insertions(+)

diff --git a/drivers/phy/mediatek/phy-mtk-hdmi.c b/drivers/phy/mediatek/phy-mtk-hdmi.c
index b16d437d6721..32f713301768 100644
--- a/drivers/phy/mediatek/phy-mtk-hdmi.c
+++ b/drivers/phy/mediatek/phy-mtk-hdmi.c
@@ -8,10 +8,12 @@
 
 static int mtk_hdmi_phy_power_on(struct phy *phy);
 static int mtk_hdmi_phy_power_off(struct phy *phy);
+static int mtk_hdmi_phy_configure(struct phy *phy, union phy_configure_opts *opts);
 
 static const struct phy_ops mtk_hdmi_phy_dev_ops = {
 	.power_on = mtk_hdmi_phy_power_on,
 	.power_off = mtk_hdmi_phy_power_off,
+	.configure = mtk_hdmi_phy_configure,
 	.owner = THIS_MODULE,
 };
 
@@ -43,6 +45,16 @@ static int mtk_hdmi_phy_power_off(struct phy *phy)
 	return 0;
 }
 
+static int mtk_hdmi_phy_configure(struct phy *phy, union phy_configure_opts *opts)
+{
+	struct mtk_hdmi_phy *hdmi_phy = phy_get_drvdata(phy);
+
+	if (hdmi_phy->conf->hdmi_phy_configure)
+		return hdmi_phy->conf->hdmi_phy_configure(phy, opts);
+
+	return 0;
+}
+
 static const struct phy_ops *
 mtk_hdmi_phy_dev_get_ops(const struct mtk_hdmi_phy *hdmi_phy)
 {
diff --git a/drivers/phy/mediatek/phy-mtk-hdmi.h b/drivers/phy/mediatek/phy-mtk-hdmi.h
index c7fa65cff989..f5aac9d352d8 100644
--- a/drivers/phy/mediatek/phy-mtk-hdmi.h
+++ b/drivers/phy/mediatek/phy-mtk-hdmi.h
@@ -24,6 +24,7 @@ struct mtk_hdmi_phy_conf {
 	const struct clk_ops *hdmi_phy_clk_ops;
 	void (*hdmi_phy_enable_tmds)(struct mtk_hdmi_phy *hdmi_phy);
 	void (*hdmi_phy_disable_tmds)(struct mtk_hdmi_phy *hdmi_phy);
+	int (*hdmi_phy_configure)(struct phy *phy, union phy_configure_opts *opts);
 };
 
 struct mtk_hdmi_phy {

-- 
b4 0.11.0-dev
