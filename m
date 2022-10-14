Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E05AD5FF104
	for <lists+devicetree@lfdr.de>; Fri, 14 Oct 2022 17:20:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230118AbiJNPUP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Oct 2022 11:20:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55758 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229957AbiJNPUH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Oct 2022 11:20:07 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 10B714D15B
        for <devicetree@vger.kernel.org>; Fri, 14 Oct 2022 08:20:02 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id c3-20020a1c3503000000b003bd21e3dd7aso5577409wma.1
        for <devicetree@vger.kernel.org>; Fri, 14 Oct 2022 08:20:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:message-id:date:from:content-transfer-encoding:mime-version
         :subject:from:to:cc:subject:date:message-id:reply-to;
        bh=XC5LEu3vClkmtksdzdUgpje8SO37USDa4/NkLEkuaxk=;
        b=ThIpzCsPF1rVHTCbtQrYisKePnMrSzk+2OLerVouDguzlws+D4XMeeA4rZGTV3rOre
         XEKXdHplc3i7l2jHu/vicLuSzRHcYqKKlQqEQ19bBpOKATPsXbTLdsYjdoVRlK0rXfc+
         oA4iDiMUAXBGa9RY/GTLmphYivCkq8p7tLEKKbzynqie0dj1u5zkarzqdkXseGoU35PG
         e6h0o8PsGG53Fpl+7QXyB1ZWH1HQgbcG/32hRln18cPZJKygABPeB+hPuyLjlSUck8uX
         v+Fmcf6vuia//lQOL+X1G0o9W1eafCc/rGIZ4RyGEk2wLFQqZ3m0R1yRCxJX6gVw2x9+
         ptlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:message-id:date:from:content-transfer-encoding:mime-version
         :subject:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XC5LEu3vClkmtksdzdUgpje8SO37USDa4/NkLEkuaxk=;
        b=aQAdLtfmOITHue4i/neuGOSARmU5IM9zllSrxQW2tvhHa/FguavJDuuluWyi+o8vuB
         ODuQo7tzwbHjig0G3ZkHU0UDqoV0tlpwnDtaxCVJv5lOr51YOoY8AKJer5keR2ssUeCW
         a17fKVEHA6KpHdRnK6T/O1TIOK02Q9/LciZ3kRXCw2wnbt8q9yrWJkvkUdMckp0Am2I7
         s9YcZlxfn7rADlWo8FK/7vgtlCOHE98zDR3vjTnmX5VOgDzgiD/DmPhqjdx7jLb137Tl
         EtWHAUFYIF4GyhMEt7z4Oxqw9KW72FGj9pMyYNw3MqXOKuLFUzdfgAId50krCyo3Zr3N
         gtjQ==
X-Gm-Message-State: ACrzQf0wRNee9BIDEJWNHkaEZAEdc/b2iaYn7I+6u+k/ArtkJmC23ACD
        aBHHS0BK5Abe1YgmwBTTcrgFGQ==
X-Google-Smtp-Source: AMsMyM4VkTLDxpgmuvAJhKLbTOzq4iW8KsRFV4M9ozA3gWvMUm7ECSR35q/G8eUTOdT/6vou6Rojqg==
X-Received: by 2002:a05:600c:4f52:b0:3c6:cd82:5943 with SMTP id m18-20020a05600c4f5200b003c6cd825943mr10786580wmq.185.1665760801147;
        Fri, 14 Oct 2022 08:20:01 -0700 (PDT)
Received: from [127.0.0.1] (2a02-8440-6241-7429-3074-96af-9642-0004.rev.sfr.net. [2a02:8440:6241:7429:3074:96af:9642:4])
        by smtp.gmail.com with ESMTPSA id z11-20020a05600c0a0b00b003c6bd91caa5sm2818223wmp.17.2022.10.14.08.19.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Oct 2022 08:20:00 -0700 (PDT)
Subject: [PATCH v2 00/12] Add MT8195 HDMI support
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-b4-tracking: H4sIACl9SWMC/0WMzQoCIRSFX2W46wwVCW3Ve0SEOpKX/AGdhGHw3bu0aXX4Dt85B/TQMHS4Lge0ML
 BjLQTytICPtrwCw5UYJJeSG2FYXDM+8/YGMpztgblmi4/klE9KVEbsW23773EIivt/PATjTGmltLh4 o7m+ObsndC2cfc3wmHN+AdU1/fiSAAAA
From:   Guillaume Ranquet <granquet@baylibre.com>
Date:   Fri, 14 Oct 2022 17:15:53 +0200
Message-Id: <20220919-v2-0-8419dcf4f09d@baylibre.com>
To:     Chunfeng Yun <chunfeng.yun@mediatek.com>,
        David Airlie <airlied@gmail.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Jitao shi <jitao.shi@mediatek.com>, CK Hu <ck.hu@mediatek.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>
Cc:     Guillaume Ranquet <granquet@baylibre.com>, stuart.lee@mediatek.com,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        mac.shen@mediatek.com, linux-mediatek@lists.infradead.org,
        dri-devel@lists.freedesktop.org
X-Mailer: b4 0.11.0-dev
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add support for HDMI Tx on MT8195.

This includes a split of the current "legacy" hdmi driver into a common
library of functions and a two dedicated compilation units with specific
code for mt8167 and another for the "new" mt8195 SoC.

Support for the new mt8195 hdmi phy and the dpi/drm_drv adjustements to
support hdmi.

Based on next-20221014

test branch with dts and various "in flight" patches available here:
https://gitlab.com/granquet/linux/-/tree/granquet/linux-next_HDMI

I haven't updated the vdosys/mmsys/ethdr and mutex patches in a while
in that test branch, they might be outdated..

To: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Kishon Vijay Abraham I <kishon@ti.com>
To: Vinod Koul <vkoul@kernel.org>
To: Rob Herring <robh+dt@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
To: Matthias Brugger <matthias.bgg@gmail.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>
To: Philipp Zabel <p.zabel@pengutronix.de>
To: David Airlie <airlied@gmail.com>
To: Daniel Vetter <daniel@ffwll.ch>
To: CK Hu <ck.hu@mediatek.com>
To: Jitao shi <jitao.shi@mediatek.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-mediatek@lists.infradead.org
Cc: linux-phy@lists.infradead.org
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Cc: dri-devel@lists.freedesktop.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: mac.shen@mediatek.com
CC: stuart.lee@mediatek.com
Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
---
Changes in v2:
- Removed syscon requirement from the hdmi node
- Use as much as possible bit FIELD_PREP/FIELD_GET macros across all the
  patches
- Make cec optional dynamically instead of hardcoded with a flag
- Renamed hdmi variants to v1 (legacy) and v2 (mt8195) while waiting for
  a better name
- Rework hdmi v2 code to use a connector (same as v1)
- Remove "magic" 0x43 addr special handling in hdmi ddc code
- Link to v1: https://lore.kernel.org/r/20220919-v1-0-4844816c9808@baylibre.com

---
Guillaume Ranquet (12):
      dt-bindings: phy: mediatek: hdmi-phy: Add mt8195 compatible
      dt-bindings: display: mediatek: add MT8195 hdmi bindings
      drm/mediatek: hdmi: use a regmap instead of iomem
      drm/mediatek: extract common functions from the mtk hdmi driver
      drm/mediatek: hdmi: make the cec dev optional
      drm/mediatek: hdmi: add frame_colorimetry flag
      drm/mediatek: hdmi: add v2 support
      drm/mediatek: hdmi: v2: add audio support
      phy: phy-mtk-hdmi: Add generic phy configure callback
      phy: mediatek: add support for phy-mtk-hdmi-mt8195
      dt-bindings: display: mediatek: dpi: Add compatible for MediaTek MT8195
      drm/mediatek: dpi: Add mt8195 hdmi to DPI driver

 .../bindings/display/mediatek/mediatek,dpi.yaml    |    1 +
 .../bindings/display/mediatek/mediatek,hdmi.yaml   |   67 +-
 .../display/mediatek/mediatek,mt8195-hdmi-ddc.yaml |   51 +
 .../devicetree/bindings/phy/mediatek,hdmi-phy.yaml |    1 +
 drivers/gpu/drm/mediatek/Makefile                  |    5 +-
 drivers/gpu/drm/mediatek/mtk_dpi.c                 |  143 +-
 drivers/gpu/drm/mediatek/mtk_dpi_regs.h            |    5 +
 drivers/gpu/drm/mediatek/mtk_hdmi.c                |  655 +-------
 drivers/gpu/drm/mediatek/mtk_hdmi.h                |   16 +
 drivers/gpu/drm/mediatek/mtk_hdmi_common.c         |  477 ++++++
 drivers/gpu/drm/mediatek/mtk_hdmi_common.h         |  224 +++
 drivers/gpu/drm/mediatek/mtk_hdmi_ddc_v2.c         |  367 +++++
 drivers/gpu/drm/mediatek/mtk_hdmi_regs_v2.h        |  309 ++++
 drivers/gpu/drm/mediatek/mtk_hdmi_v2.c             | 1592 ++++++++++++++++++++
 drivers/gpu/drm/mediatek/mtk_hdmi_v2.h             |   31 +
 drivers/phy/mediatek/Makefile                      |    1 +
 drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c         |  546 +++++++
 drivers/phy/mediatek/phy-mtk-hdmi-mt8195.h         |  131 ++
 drivers/phy/mediatek/phy-mtk-hdmi.c                |   15 +
 drivers/phy/mediatek/phy-mtk-hdmi.h                |    2 +
 20 files changed, 4004 insertions(+), 635 deletions(-)
---
base-commit: 98035e7c0bb29bf68a2f4b650656f3a3dd07a494
change-id: 20220919-hdmi_mtk

Best regards,
-- 
Guillaume Ranquet <granquet@baylibre.com>
