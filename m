Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BEB3E5BD30A
	for <lists+devicetree@lfdr.de>; Mon, 19 Sep 2022 19:02:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230461AbiISRB7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Sep 2022 13:01:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44540 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230377AbiISRBB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Sep 2022 13:01:01 -0400
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 173313F1FB
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 10:00:30 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id 29so162477edv.2
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 10:00:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date;
        bh=w6fAZjUSUbrTkGOCw5LFlmC1xlGoTF8FJL/IRWB3F4k=;
        b=VyeY5nKyZ2Xt/Foj79ukjzeYW4F8E4loVlhOJLflWXPXa38+TG6kPPbnPJK5N6wYlp
         l00cwyDPfxCvQZiSOSkA5M2GaDMATf8caLakqM7xgzSCpDc/np8/N3mN6C5k/Z5eGs5M
         wbmqXtAovwQK910RwxBV10RsnW/DTczpNc0tkVi+KPEn5b9+M4uh8g7fSddQOAMawP2K
         4Zb4cHnVWy5+eeIIKaTBXD8QEb6y5h5w+Yw4DlEj8JOI8cWnh+fcrvbfZKYqQXVXfpjW
         s9yJLZzVW357YxZ6NIUfkLNAeku8MQ/rpeEFJ3Nz/EOZYEe8b0ZB5EvQcow/777qr4B0
         ubnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=w6fAZjUSUbrTkGOCw5LFlmC1xlGoTF8FJL/IRWB3F4k=;
        b=R/C300233GvcpvGmUB2Lt6XakFPJMV28Nak1dxGPTLHYJ44tsWYxbXRckPBuSPNW+F
         FnCFMZYXvwtrblJI+/BX9W3pfLF5ndzZSDJP+ue96LU/7H0gGhshXiIGZC19VKKCvT4x
         RecHXEAgI/zwH+qvLET2dw/tTx/tubfUIeoiVDyb6vT1y1Rce1lpcBvxPFISE8Gq71uT
         +xL8RTwWdfhRibM4GaDPSOgpxFsQr4xVrV/Yi3UcZyW8ONfa9NFKMYL/+2KpmIl3Fkkk
         w5tJsg4W6BI4bIvxReAK772TX+wyuOOwyEgjcxbpVYzUtqmIpj4Z3k3eYM3NbKy8bg6X
         hKmA==
X-Gm-Message-State: ACrzQf1bZiaHsAyKLG2eXZwi/eqNyEIDREOZEXM5ufbm8nRuR9rCqVc2
        P2aE/JHZD/oA4XlMhS+gQ4MSyQ==
X-Google-Smtp-Source: AMsMyM59bK7bV3ogR0Vq/U6qyHBj+7WUNCJVJ7yTHkO06E3cAutw018u4siyFRxzjVJRBcxdwPWWvA==
X-Received: by 2002:aa7:ca56:0:b0:453:ceea:99d4 with SMTP id j22-20020aa7ca56000000b00453ceea99d4mr7672718edt.54.1663606823801;
        Mon, 19 Sep 2022 10:00:23 -0700 (PDT)
Received: from [127.0.0.1] (2a02-8440-6340-f287-3074-96af-9642-0003.rev.sfr.net. [2a02:8440:6340:f287:3074:96af:9642:3])
        by smtp.gmail.com with ESMTPSA id cf16-20020a0564020b9000b0044fc3c0930csm20424246edb.16.2022.09.19.10.00.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Sep 2022 10:00:23 -0700 (PDT)
From:   Guillaume Ranquet <granquet@baylibre.com>
Date:   Mon, 19 Sep 2022 18:56:15 +0200
Subject: [PATCH v1 17/17] drm/mediatek: Add mt8195-dpi support to drm_drv
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20220919-v1-17-4844816c9808@baylibre.com>
References: <20220919-v1-0-4844816c9808@baylibre.com>
In-Reply-To: <20220919-v1-0-4844816c9808@baylibre.com>
To:     Vinod Koul <vkoul@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
        David Airlie <airlied@linux.ie>,
        Rob Herring <robh+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        Chunfeng Yun <chunfeng.yun@mediatek.com>,
        CK Hu <ck.hu@mediatek.com>, Jitao shi <jitao.shi@mediatek.com>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     linux-mediatek@lists.infradead.org,
        dri-devel@lists.freedesktop.org,
        Pablo Sun <pablo.sun@mediatek.com>, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Mattijs Korpershoek <mkorpershoek@baylibre.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-phy@lists.infradead.org,
        Guillaume Ranquet <granquet@baylibre.com>,
        devicetree@vger.kernel.org
X-Mailer: b4 0.10.0-dev
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add dpi support to enable the HDMI path.

Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
index 72049a530ae1..27f029ca760b 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
@@ -820,6 +820,8 @@ static const struct of_device_id mtk_ddp_comp_dt_ids[] = {
 	  .data = (void *)MTK_DPI },
 	{ .compatible = "mediatek,mt8192-dpi",
 	  .data = (void *)MTK_DPI },
+	{ .compatible = "mediatek,mt8195-dpi",
+	  .data = (void *)MTK_DPI },
 	{ .compatible = "mediatek,mt8195-dp-intf",
 	  .data = (void *)MTK_DP_INTF },
 	{ .compatible = "mediatek,mt2701-dsi",

-- 
b4 0.10.0-dev
