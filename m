Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C9EF263AD90
	for <lists+devicetree@lfdr.de>; Mon, 28 Nov 2022 17:22:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231741AbiK1QVx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Nov 2022 11:21:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51938 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232659AbiK1QVu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Nov 2022 11:21:50 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5D81A1FCC1
        for <devicetree@vger.kernel.org>; Mon, 28 Nov 2022 08:21:48 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id n3so17712783wrp.5
        for <devicetree@vger.kernel.org>; Mon, 28 Nov 2022 08:21:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=A0OXxX4BN+JC/Hy+vtoYftLVfMwhN/RiALx1B4QXUlc=;
        b=SlkrWf3SnnGDpb675mkRP6lf4nLIT1ljnSs811QXoTIpKGIr6nkO1robz4uvX+3hel
         emJjd5A2yCCTjR0LXKEjLdGYNb2o2zsvcHdQ1nXfW9oFv0bIePuY9EEF+wvSQ1jpJpfe
         uYlNtXWlsAQakgdO/rq4yHkCGTL/bSh4cUCBhsM2mfP/FtZp0bXgE/HPcGJU/oRl3i2l
         zPL3lW+z6Kap+h6fgLOacZBtOL/HD9TJ6ShxhljgFYgVd4/L6A/2W0q8oT/Juz8T/7qv
         qlVqVlXVA5+/JbXKOjRIX+Nb72oLRueixKPJUM69A14modQclXgDP110z0Dye0vX0jdJ
         cvZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=A0OXxX4BN+JC/Hy+vtoYftLVfMwhN/RiALx1B4QXUlc=;
        b=mxvSSqhzJz3zPpXi15eusZaP6ganOqut0YiRoQqQ88Kiajpnta3v+3FaeS0yq8jkVb
         gJNMtDxiiDLkOaYwTwc2hRLlzHfrfRmL6zQmy2oO1wfDy6+gEdgpYzZnQAdVyuPI/lo2
         inBsQySWtPzg5ARRu4WVBuZreawRtSYomAAaigvO/CaTfapNGNiQRY6j6q3B27OIHXZi
         IIJ+/6cDRPEcvjYna8SJp1bAdxepOPIkRGDrxO4vzvDxMB1uCeOas71/9lBLCW+uqlGn
         Sad0aXGPZlr1dYrp0Xn5X6hjwN2xWOjPbUSyCrnIlC3+J16Vpe6uoXHhn357xfiW9SDU
         FBAg==
X-Gm-Message-State: ANoB5plSLwtgmA/Gz5pR7MUz1RyyS57tpQozGI+Imx+6SUpyEAMAOCyQ
        tY0Nm4fNFZtfxGJw3TfFUpm7kw==
X-Google-Smtp-Source: AA0mqf4mvZhMdusHlUCoDzlaITnTfcTdfTwIBg2rPiKj4l0XqNnN3xuoOOxzvyyaTx+gTn619CGt5g==
X-Received: by 2002:a05:6000:128c:b0:236:e512:1a9e with SMTP id f12-20020a056000128c00b00236e5121a9emr23151843wrx.416.1669652506887;
        Mon, 28 Nov 2022 08:21:46 -0800 (PST)
Received: from [127.0.0.1] (2a02-8440-6340-f657-3074-96af-9642-0003.rev.sfr.net. [2a02:8440:6340:f657:3074:96af:9642:3])
        by smtp.gmail.com with ESMTPSA id s10-20020a1cf20a000000b003cfe1376f68sm15311450wmc.9.2022.11.28.08.21.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Nov 2022 08:21:46 -0800 (PST)
From:   Guillaume Ranquet <granquet@baylibre.com>
Date:   Mon, 28 Nov 2022 17:17:37 +0100
Subject: [PATCH v5 2/3] phy: phy-mtk-hdmi: Add generic phy configure callback
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20220919-v5-2-f346444bc459@baylibre.com>
References: <20220919-v5-0-f346444bc459@baylibre.com>
In-Reply-To: <20220919-v5-0-f346444bc459@baylibre.com>
To:     Chunfeng Yun <chunfeng.yun@mediatek.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        David Airlie <airlied@gmail.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Daniel Vetter <daniel@ffwll.ch>, Vinod Koul <vkoul@kernel.org>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        CK Hu <ck.hu@mediatek.com>, Jitao shi <jitao.shi@mediatek.com>
Cc:     mac.shen@mediatek.com, Guillaume Ranquet <granquet@baylibre.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-kernel@lists.infradead.org, stuart.lee@mediatek.com,
        kernel test robot <lkp@intel.com>,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        linux-mediatek@lists.infradead.org
X-Mailer: b4 0.11.0-dev
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Some phys, such as mt8195, needs to have a configure callback defined.

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
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
2.38.1
