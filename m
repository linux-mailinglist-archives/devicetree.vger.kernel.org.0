Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3E487366785
	for <lists+devicetree@lfdr.de>; Wed, 21 Apr 2021 11:06:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237840AbhDUJGj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Apr 2021 05:06:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41998 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237783AbhDUJGj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Apr 2021 05:06:39 -0400
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com [IPv6:2607:f8b0:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2EB52C06174A
        for <devicetree@vger.kernel.org>; Wed, 21 Apr 2021 02:06:06 -0700 (PDT)
Received: by mail-pl1-x635.google.com with SMTP id t22so20949043ply.1
        for <devicetree@vger.kernel.org>; Wed, 21 Apr 2021 02:06:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=YN/nmUh9APD9tW++qNNzvwSyrvP9kAzlnRWJP7UTqw8=;
        b=E/bDd4stpigRKHLBmM7boSUFUdSeoMYg70Sxl7+7SdP/bpB0NRDb/XNrxaSYcSbzA5
         O/ZihtJUWg/RkWrVNDJMJbT4d+xrgZm/eKpbGZZ8Gz0sgfEMiO2USQTymahFefQOLsjL
         I8qgC3vQrlj0b7NYEDrICfBCQXev97pB3tliI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=YN/nmUh9APD9tW++qNNzvwSyrvP9kAzlnRWJP7UTqw8=;
        b=Mfo6N7lnF23u4yWgzwMMb4FVqQO5+RRpJWp9TtOnxbQwNp0pHT6Gt/fs0956wVnwJN
         7pTdwAUv3F/PUV0JVVNF3cOeRGa9vrddR+LBMegYvD6iIhDBob+IAiGGo3PUcmdrW+bJ
         prULBN6LsVF6VvMMBZvWxpx74ld5D0gY2FDZ6qcsu/UugNp/SLksCSz52+svBNGtntUq
         D4wdlW70T+/VBAS028va8wlbuCZPiM0Bnxebz7nmmAIDHp1NvwKby8X/qJPpxRRHDOIA
         eUUi3p5YwJ/snvdXzGYDOAN9sRYmsPPYpNOX48ssNpSuR3MIralOxSowmIQ2QpaK7Cqt
         Ykcg==
X-Gm-Message-State: AOAM533dTSCHBbvuo56bIJqu8RCh+cq8zuFgW4By+/eCaqaJ0oD2qDLD
        LZ3WdK4stuuMB1XC32y5vIuHlg==
X-Google-Smtp-Source: ABdhPJypgg+tTiJKZh+G2ovk+kqA8t7/GJ+LKUMbYaoTtXTh//9Uh6G0vutZCIY27V9JopVBtzfHNA==
X-Received: by 2002:a17:902:d706:b029:e6:90aa:24e0 with SMTP id w6-20020a170902d706b02900e690aa24e0mr33502167ply.42.1618995965639;
        Wed, 21 Apr 2021 02:06:05 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:60c1:887e:ac53:9b5c])
        by smtp.gmail.com with ESMTPSA id jx20sm1495889pjb.41.2021.04.21.02.06.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Apr 2021 02:06:05 -0700 (PDT)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
        Ben Ho <Ben.Ho@mediatek.com>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: [PATCH v3 00/10] Add several jacuzzi boards
Date:   Wed, 21 Apr 2021 17:05:51 +0800
Message-Id: <20210421090601.730744-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.31.1.498.g6c1eba8ee3d-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add several jacuzzi follower devices: kappa, willo, burnet, kenzo, and
fennel.

Change log:
v2 -> v3:
 - remove unused property in i2c2 in willow and burnet.
 - add fennel.

Hsin-Yi Wang (10):
  dt-bindings: arm64: dts: mediatek: Add mt8183-kukui-jacuzzi-kappa
  dt-bindings: arm64: dts: mediatek: Add mt8183-kukui-jacuzzi-willow
  dt-bindings: arm64: dts: mediatek: Add mt8183-kukui-jacuzzi-burnet
  dt-bindings: arm64: dts: mediatek: Add mt8183-kukui-jacuzzi-kenzo
  dt-bindings: arm64: dts: mediatek: Add mt8183-kukui-jacuzzi-fennel
  arm64: dts: mt8183: Add kukui-jacuzzi-kappa board
  arm64: dts: mt8183: Add kukui-jacuzzi-willow board
  arm64: dts: mt8183: Add kukui-jacuzzi-burnet board
  arm64: dts: mt8183: Add kukui-jacuzzi-kenzo board
  arm64: dts: mt8183: Add kukui-jacuzzi-fennel board

 .../devicetree/bindings/arm/mediatek.yaml     | 29 +++++++++++-
 arch/arm64/boot/dts/mediatek/Makefile         |  8 ++++
 .../mediatek/mt8183-kukui-jacuzzi-burnet.dts  | 30 +++++++++++++
 .../mt8183-kukui-jacuzzi-fennel-sku1.dts      | 44 +++++++++++++++++++
 .../mt8183-kukui-jacuzzi-fennel-sku6.dts      | 32 ++++++++++++++
 .../mediatek/mt8183-kukui-jacuzzi-fennel.dtsi | 27 ++++++++++++
 .../mt8183-kukui-jacuzzi-fennel14.dts         | 16 +++++++
 .../mediatek/mt8183-kukui-jacuzzi-kappa.dts   | 16 +++++++
 .../mediatek/mt8183-kukui-jacuzzi-kenzo.dts   | 12 +++++
 .../mt8183-kukui-jacuzzi-willow-sku0.dts      | 13 ++++++
 .../mt8183-kukui-jacuzzi-willow-sku1.dts      | 12 +++++
 .../mediatek/mt8183-kukui-jacuzzi-willow.dtsi | 26 +++++++++++
 .../dts/mediatek/mt8183-kukui-jacuzzi.dtsi    |  8 ++++
 13 files changed, 271 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-burnet.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku1.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku6.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel.dtsi
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel14.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-kappa.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-kenzo.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-willow-sku0.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-willow-sku1.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-willow.dtsi

-- 
2.31.1.498.g6c1eba8ee3d-goog

