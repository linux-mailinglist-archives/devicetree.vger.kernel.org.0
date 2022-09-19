Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7306D5BD2D5
	for <lists+devicetree@lfdr.de>; Mon, 19 Sep 2022 19:00:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230301AbiISRAD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Sep 2022 13:00:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43370 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230172AbiISQ7x (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Sep 2022 12:59:53 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EA83F13F2C
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 09:59:50 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id x94so88624ede.11
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 09:59:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date;
        bh=7xDk5BrXibXgfT99ckwNvMekh76xOPeNv/4FsaCfh58=;
        b=CEZJ9TEVferg0ulxXwdUEbWib2zYhw9Tir5LaamEXUe9UQabtpHUZ7t39RbS4S85HC
         x9PFzpX7wALrVEGjd5qyae6tIH2bK+BZxA3AsOGG5SLe8GtLeXrWR5PdxeYfhkGL8zz6
         4aQbHNr7a6hYGMtek5NqaK1fsiK/TphfUjeSfIXBdpM51CKKKEWyLmeQpmyv0FJfOOKB
         18XYmYWBK0IEwGn7H7CTG9n/4b/wl9y9Ex4FAUHaHxrhTxfMVImS7y1QRGtXw5/va7SX
         FYVEq7OHlcwL2JOG2/A0K17XMaMH2dmNtlQw3PM5ptekzTUaKbzqovvSlmYzThYg57/r
         AsXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=7xDk5BrXibXgfT99ckwNvMekh76xOPeNv/4FsaCfh58=;
        b=YP/cZdpm1CbKlC2tuMGKtZINs56iOC4XMuBBn5Z0QYloHoN2FqEnJdUiNjjkpQ4C0/
         67Ixcmpznspu6Te7IQEg8xYqyveBR49ntkw0kG69IG49jC7rlQy+lK87UY9QWUfNO9Nl
         dGEbgRZyc45KXg17K7kq0ofRHZHGXVvW42OLQNcpzlPv3sRKGxAbAOi2Tq5DCMfov8fs
         /6gM+3QOnnC8w7ePwXUS2ZFSqiaq0iI0UfAvYjdvCx1oZQN80DOpvBxUXljiAm4mJyox
         SiBiKG/hTdDueXdYYv5EGOyjzsIlDuQ2tjpE7EEsUuzznTll71E3pzfEOv9Z+x1Wl6ks
         LiLA==
X-Gm-Message-State: ACrzQf0yCivjLNsyhROWyLE0yLCTk9MagCEvvhJ/YoEmAB37zM/SvxD1
        c1Pqr3Knv9l3hUNkkTWQuNZ/TQ==
X-Google-Smtp-Source: AMsMyM5gxGj7vc60+sBilG3OlczkPRO2uGjBc+la49BQKMmf9aIyceQBVlL/fz7uc0yOaSZjotbdPQ==
X-Received: by 2002:a05:6402:493:b0:445:b5f0:7a0f with SMTP id k19-20020a056402049300b00445b5f07a0fmr16348159edv.120.1663606789339;
        Mon, 19 Sep 2022 09:59:49 -0700 (PDT)
Received: from [127.0.0.1] (2a02-8440-6340-f287-3074-96af-9642-0003.rev.sfr.net. [2a02:8440:6340:f287:3074:96af:9642:3])
        by smtp.gmail.com with ESMTPSA id cf16-20020a0564020b9000b0044fc3c0930csm20424246edb.16.2022.09.19.09.59.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Sep 2022 09:59:49 -0700 (PDT)
From:   Guillaume Ranquet <granquet@baylibre.com>
Date:   Mon, 19 Sep 2022 18:56:01 +0200
Subject: [PATCH v1 03/17] dt-bindings: phy: mediatek: hdmi-phy: Add mt8195 compatible
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20220919-v1-3-4844816c9808@baylibre.com>
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
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a compatible for the HDMI PHY on MT8195

Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>

diff --git a/Documentation/devicetree/bindings/phy/mediatek,hdmi-phy.yaml b/Documentation/devicetree/bindings/phy/mediatek,hdmi-phy.yaml
index 0d94950b84ca..71c75a11e189 100644
--- a/Documentation/devicetree/bindings/phy/mediatek,hdmi-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/mediatek,hdmi-phy.yaml
@@ -28,6 +28,7 @@ properties:
           - const: mediatek,mt2701-hdmi-phy
       - const: mediatek,mt2701-hdmi-phy
       - const: mediatek,mt8173-hdmi-phy
+      - const: mediatek,mt8195-hdmi-phy
 
   reg:
     maxItems: 1

-- 
b4 0.10.0-dev
