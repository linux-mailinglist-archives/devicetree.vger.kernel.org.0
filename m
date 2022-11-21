Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E98A4632599
	for <lists+devicetree@lfdr.de>; Mon, 21 Nov 2022 15:23:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230469AbiKUOXT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Nov 2022 09:23:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35668 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230450AbiKUOXP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Nov 2022 09:23:15 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D7C215725
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 06:23:13 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id x5so16023792wrt.7
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 06:23:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:message-id:date:from:content-transfer-encoding:mime-version
         :subject:from:to:cc:subject:date:message-id:reply-to;
        bh=ApgbBZshAeQOw9pkeKTeXHyu/sDAx7l2fVv7nBtVMo4=;
        b=JOj8ERrSkiiFbvhLUOS10gbdm3dGjio1sc0L+J+VhUjPOtREOV5XC6V5KMnetrOj7Z
         MqlTFilZxnRBw5U34g0W/99jVnzlDBgjEkl0cJq9cc+zW7lCsZuKJmJLniXbj18sfn6q
         wjZPYk8Rpmir1EmWy0FgcKpinL7Wh/ovXYkUm8iQYBe43aScTrtTEjMDggnsI5wPLvCy
         /STO9raP2yYZowKD+UKXBO+Noq3BOEso0jV6VE6jRVFYIE4aG03pLMcQ/yk+hdxToHDH
         dSmCQEdwO+k1vwDIFKNRm+b1PG46FUK1eS4iNFo7oMMDVUb0EQzjVmcrr2ibmRamEGHY
         maXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:message-id:date:from:content-transfer-encoding:mime-version
         :subject:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ApgbBZshAeQOw9pkeKTeXHyu/sDAx7l2fVv7nBtVMo4=;
        b=hLOWXIbN+D6M/YdBnS9cc5saITQ2FkW+0/kXYjmRn2u6CBrPrfh4SyTF63zwWeZKP+
         Y3WRiyK6G8eKgQRO0enrIz5jjhBl0pYghyiHhJX2G7T631t0jbWaElasTpntgOs4mWOP
         7vCphM9X3mZeQVA5Ps/QildG6MPx56wtn0BqoYu0t+Eadf+nZNmxgyy7CIhYKLTmv/x4
         HC1vjglHF7Myj+jQ2jAFf4bPMGibvvOUhTpyrLkqDEVvXzawoptVDT6vO2Kqt207Mf+s
         U1sYlYcO2p4ulWHxjYvrTlyRpaa0qiamq4twGS9WyE9Jq3duPdsyduQ9YwOshiFLhOVF
         4Whw==
X-Gm-Message-State: ANoB5pnN11MUpL0ckmuY12NYTQ/35ocY3oyOrK/sND8Psc0hlRD1RtA8
        tCMUVAJhGkp89taCW5RLKvgN8g==
X-Google-Smtp-Source: AA0mqf6RSC4twqdaC4T+eNyvJRXlNyhsDoJT4o9bQNdbOdWsagRC7U2kD1RJas+wAHB1EBwcNi5PLA==
X-Received: by 2002:adf:e303:0:b0:22e:3c66:bda1 with SMTP id b3-20020adfe303000000b0022e3c66bda1mr2684983wrj.139.1669040591732;
        Mon, 21 Nov 2022 06:23:11 -0800 (PST)
Received: from [127.0.0.1] (2a02-8440-6441-244f-3074-96af-9642-0002.rev.sfr.net. [2a02:8440:6441:244f:3074:96af:9642:2])
        by smtp.gmail.com with ESMTPSA id m7-20020a05600c4f4700b003b4fe03c881sm20206468wmq.48.2022.11.21.06.23.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Nov 2022 06:23:11 -0800 (PST)
Subject: [PATCH v4 0/3] Add MT8195 HDMI phy support
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-b4-tracking: H4sIAN6Ie2MC/23MTQrCMBAF4KuUWRtJ0lATV72HiOSvJtimkNRAKb27gxuhuBre432zQfE5+gLXZo
 PsayxxThjEqQEbdHp6Eh1m4JRzqpgiwU3xMS0vwIXRxROTdbIBN+k9jliGWJY5r9+PleG5/XBlhBIh
 hZCss0pS2Ru9jtFkf7bzBHfklR8IRyIFU84OYqDK/SHtgbRItKTtwLuOMn45kH3fP9SYURL4AAAA
From:   Guillaume Ranquet <granquet@baylibre.com>
Date:   Mon, 21 Nov 2022 15:19:10 +0100
Message-Id: <20220919-v4-0-bdc21e1307e9@baylibre.com>
To:     Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Vinod Koul <vkoul@kernel.org>, CK Hu <ck.hu@mediatek.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jitao shi <jitao.shi@mediatek.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Chunfeng Yun <chunfeng.yun@mediatek.com>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        David Airlie <airlied@gmail.com>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Guillaume Ranquet <granquet@baylibre.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        stuart.lee@mediatek.com,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-kernel@lists.infradead.org,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, mac.shen@mediatek.com,
        linux-phy@lists.infradead.org, linux-mediatek@lists.infradead.org
X-Mailer: b4 0.11.0-dev
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add support for HDMI phy on MT8195.

This is split from the previous v3 to contain only the phy related
changes to the HDMI support for mt8195 as suggested by Vinod.

This is based on top of next-20221121

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
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: mac.shen@mediatek.com
CC: stuart.lee@mediatek.com
Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
---
Changes in v4:
- Dedicated series for HDMI phy support (without the drm/ related
  changes)
- Removed useless variable initializations in phy driver
- Link to v3: https://lore.kernel.org/r/20220919-v3-0-a803f2660127@baylibre.com

Changes in v3:
- phy: Grouped register and bit definition together to add clarity
- dt-bindings: Addressed comments
- Link to v2: https://lore.kernel.org/r/20220919-v2-0-8419dcf4f09d@baylibre.com

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
Guillaume Ranquet (3):
      dt-bindings: phy: mediatek: hdmi-phy: Add mt8195 compatible
      phy: phy-mtk-hdmi: Add generic phy configure callback
      phy: mediatek: add support for phy-mtk-hdmi-mt8195

 .../devicetree/bindings/phy/mediatek,hdmi-phy.yaml |   1 +
 drivers/phy/mediatek/Makefile                      |   1 +
 drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c         | 541 +++++++++++++++++++++
 drivers/phy/mediatek/phy-mtk-hdmi-mt8195.h         | 111 +++++
 drivers/phy/mediatek/phy-mtk-hdmi.c                |  15 +
 drivers/phy/mediatek/phy-mtk-hdmi.h                |   2 +
 6 files changed, 671 insertions(+)
---
base-commit: e4cd8d3ff7f9efeb97330e5e9b99eeb2a68f5cf9
change-id: 20220919-hdmi_mtk

Best regards,
-- 
Guillaume Ranquet <granquet@baylibre.com>
