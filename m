Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 177E95B9FBC
	for <lists+devicetree@lfdr.de>; Thu, 15 Sep 2022 18:40:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229624AbiIOQkA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Sep 2022 12:40:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39540 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229503AbiIOQj7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Sep 2022 12:39:59 -0400
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com [IPv6:2607:f8b0:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 12CCF21253
        for <devicetree@vger.kernel.org>; Thu, 15 Sep 2022 09:39:58 -0700 (PDT)
Received: by mail-pg1-x530.google.com with SMTP id t65so17825250pgt.2
        for <devicetree@vger.kernel.org>; Thu, 15 Sep 2022 09:39:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=RkWGT9yQHWHTXXm5E5ctM+LbterE/dY2uqCbfyonKt8=;
        b=gumQQAFlGYvN9ynL/A+akjjufry3KtQo+pgN9JFbxSOCca2trA+55rKFztsyTHWXp+
         Q/ZYiWAjIfkrV9xuonsyLrqgO/IfIIBNuEEF+6N2U94VkkyCkh2ZerlcUHW/IYsXwS15
         gJOtRTgF32jkGnBySGruPhD05QGwg3XZHCP695yxkHljm+E4BOOsz7oAH3TZ4x0pFNjj
         bUIiu5mcdYpK67zVBMeQGTsUAMg+x8tdziBDMWz+ZUiLREzFle5JFGa/9aORWVraGIdL
         KsPxYVV1pvOjzYY/RJXuIV/AbAknbo/uAKWWFWBHH3UE+rQHnpuK2788Y1fw+yCb1poe
         +RBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=RkWGT9yQHWHTXXm5E5ctM+LbterE/dY2uqCbfyonKt8=;
        b=wVV56qaenbkpxaq4Pbk+pUds8BjC4ikyeVxUPcvM7r8+/k8eKBRLAoteEgpTq5sn8d
         6KMd5dBKBMhEUgw/UQ6hQWPflOp/b7WmVdMJkT/GaXlkD05Ln5tGHpDTB/yeRYIKViHI
         7gTrJBLtxv+dxou77vKLFqijEKOYCCXmomLUy1ohejMa/kj//hMnGBvdljoKPkhhweWc
         diGqBZxj0UC6MhPMBAmmMTCrRmJtje1KXY78qnMEVWg7+xD1jrPE/MPVm7QaIiHkTb5X
         42NmL4K0+lrzx8pxDMWAvUlxvt571V/LFDwgnBT2kjrMm+qyzOv/piUs9yV9p2g2qYQO
         XbCw==
X-Gm-Message-State: ACrzQf3to/Rui/s+5Nk9Wjj/tAdYKlGhr130DsmdSWE1yOA3MM18LxH5
        bCjos9N76+DhaoLGL2NUH9bJVg==
X-Google-Smtp-Source: AMsMyM6s2WDMJGPu8tV/Wn9Y9tLoRGIUCm5iTpZGgft29tWl675ANncBYsC09zQCOspfPZ+hKqyrPg==
X-Received: by 2002:a63:564b:0:b0:42c:414a:95fd with SMTP id g11-20020a63564b000000b0042c414a95fdmr623215pgm.5.1663259997496;
        Thu, 15 Sep 2022 09:39:57 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:f820:a732:fc7f:74df])
        by smtp.gmail.com with ESMTPSA id x21-20020aa78f15000000b00540f3ac5fb8sm12841652pfr.69.2022.09.15.09.39.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Sep 2022 09:39:57 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v5 0/6] ARM: Add Rockchip RV1126 support
Date:   Thu, 15 Sep 2022 22:09:41 +0530
Message-Id: <20220915163947.1922183-1-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Jagan Teki <jagan@amarulasolutions.com>

RV1126 is a high-performance vision processor SoC for IPC/CVR,
especially for AI related application.

This series add left over patches from v4 [1]. The dts patches
will send in another series as we have some naming convention
updates.

[1] https://patchwork.kernel.org/project/linux-arm-kernel/cover/20220907160207.3845791-1-jagan@edgeble.ai/

Any inputs?
Jagan.

Jagan Teki (6):
  i2c: rk3x: Add rv1126 support
  clk: rockchip: Add dt-binding header for RV1126
  dt-bindings: clock: rockchip: Document RV1126 CRU
  clk: rockchip: Add clock controller support for RV1126 SoC.
  ARM: dts: rockchip: Add Rockchip RV1126 pinctrl
  ARM: dts: rockchip: Add Rockchip RV1126 SoC

 .../bindings/clock/rockchip,rv1126-cru.yaml   |   62 +
 MAINTAINERS                                   |    2 +-
 arch/arm/boot/dts/rv1126-pinctrl.dtsi         |  212 +++
 arch/arm/boot/dts/rv1126.dtsi                 |  430 ++++++
 drivers/clk/rockchip/Kconfig                  |    7 +
 drivers/clk/rockchip/Makefile                 |    1 +
 drivers/clk/rockchip/clk-rv1126.c             | 1156 +++++++++++++++++
 drivers/clk/rockchip/clk.h                    |   19 +
 drivers/i2c/busses/i2c-rk3x.c                 |    9 +
 .../dt-bindings/clock/rockchip,rv1126-cru.h   |  632 +++++++++
 10 files changed, 2529 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rv1126-cru.yaml
 create mode 100644 arch/arm/boot/dts/rv1126-pinctrl.dtsi
 create mode 100644 arch/arm/boot/dts/rv1126.dtsi
 create mode 100644 drivers/clk/rockchip/clk-rv1126.c
 create mode 100644 include/dt-bindings/clock/rockchip,rv1126-cru.h

-- 
2.25.1

