Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9134E57F15D
	for <lists+devicetree@lfdr.de>; Sat, 23 Jul 2022 22:43:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230273AbiGWUnx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 23 Jul 2022 16:43:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46544 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229542AbiGWUnw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 23 Jul 2022 16:43:52 -0400
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com [IPv6:2607:f8b0:4864:20::102d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 856541B795
        for <devicetree@vger.kernel.org>; Sat, 23 Jul 2022 13:43:51 -0700 (PDT)
Received: by mail-pj1-x102d.google.com with SMTP id b7-20020a17090a12c700b001f20eb82a08so10953616pjg.3
        for <devicetree@vger.kernel.org>; Sat, 23 Jul 2022 13:43:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ayxcrf4aJACwZDBwNXjIEXRAZRtLeukNc8gccXG3cuc=;
        b=TxskMipOpJAQRMQevlVB3zLR1yot76nUQV9mYuNkJMSMPrrXNQyYfdZ46JV8CYTmEQ
         ayt1W87Y0n8IMnm2vzLTs79IeJCWuIicYz2cKEGyNfP9TURI2cVSQ883ktgtCCixOlFM
         fSg3W7U4WeKeBfpnSx9Ep37iaqbLFQ2b8rqjH2pbMIzKJGB6f6qjHoPeLrV9UozSRaJY
         FQIKphAHJyuzD3UpX8JoiNOQdpz8Lqyj0rckoUdQXA7+XqTeG9e59yYqyZHUt8MYC0FU
         Er0ApR1b9M7ydsHZwPcsXARBjkbrthG6Rkv1fqYsM/BWiVIY30uI2uTaNiiWjAciQTZc
         YWSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ayxcrf4aJACwZDBwNXjIEXRAZRtLeukNc8gccXG3cuc=;
        b=eWmr+jg95jfOZUxZd6H+ehCdhKOcvhP53oV09Cm4qYTdlJUVpvW0PTitDg+UpFbuzW
         jvdNnM+M6+JT8UrRizjikLME13ww4/Nvp6aSCBoa4yyKWhICTKP8lqHkCuxTCgbtwiVl
         fqv5LbCsd41IeJvSN3CyYA8lzKTo6mMrMAdsoNzHkc5BRfI97tVHraKPT6efyvyzHTpK
         89EfuTxe8RWuKWAfERizNS4VT9pDHZddz5dIe7rGIaaXRfWcHgJKh5FDvpDqtqK7ud2h
         94fK3gXfVhxSNLrzHDkQMHySVk1ymfsHgeUPWkt1N7VUz+gWLpuNU43jcX3QjPs7gB61
         DjkQ==
X-Gm-Message-State: AJIora90gCZRCTPpNHiasyYvXSsRXT/pUKwJnd290sKCY8RKNnHgqROY
        o9cxQ7HXYNKXSf052tDM6IlQ0A==
X-Google-Smtp-Source: AGRyM1uWp+wiwnB3VavYEe2t2e7ZcOokXRruIdLToV7aJ6tEL01IbFid8VMdczr0mqJlqCJ870ebpw==
X-Received: by 2002:a17:903:2281:b0:16d:614a:63a0 with SMTP id b1-20020a170903228100b0016d614a63a0mr2152841plh.140.1658609030876;
        Sat, 23 Jul 2022 13:43:50 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:a406:cc30:f4ec:f10a])
        by smtp.gmail.com with ESMTPSA id u14-20020a170902e80e00b0016a6caacaefsm6187950plg.103.2022.07.23.13.43.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Jul 2022 13:43:50 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 00/22] ARM: Add Rockchip RV1126 support
Date:   Sun, 24 Jul 2022 02:13:13 +0530
Message-Id: <20220723204335.750095-1-jagan@edgeble.ai>
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

RV1126 is a high-performance vision processor SoC for IPC/CVR,
especially for AI related application.

It is based on quad-core ARM Cortex-A7 32-bit core which integrates
NEON and FPU. There is a 32KB I-cache and 32KB D-cache for each core
and 512KB unified L2 cache. It has build-in NPU supports INT8/INT16
hybrid operation and computing power is up to 2.0TOPs.

This patch series add basic core support for Rockchip RV1126.

Tested in Edgeble AI Edge Compute Module 0.

Anyone interested, please have a look on this repo [1]

[1] https://github.com/edgeble/linux-next/commits/ecm0-v4

Any inputs?
Jagan.

Elaine Zhang (1):
  clk: rockchip: Add MUXTBL variant

Jagan Teki (20):
  dt-bindings: power: rockchip: Document RV1126 power-controller
  dt-bindings: power: Add power-domain header for RV1126
  soc: rockchip: power-domain: Add RV1126 power domains
  dt-bindings: power: rockchip: Document RV1126 PMU IO domains
  dt-bindings: pinctrl: rockchip: Document RV1126 pinctrl
  pinctrl: rockchip: Add RV1126 pinctrl support
  dt-bindings: clock: rockchip: Document RV1126 CRU
  clk: rockchip: Add RV1126 clock controller
  dt-bindings: mmc: rockchip-dw-mshc: Document Rockchip RV1126
  dt-bindings: serial: snps-dw-apb-uart: Document Rockchip RV1126
  dt-bindings: i2c: i2c-rk3x: Document Rockchip RV1126
  dt-bindings: soc: rockchip: Document RV1126 grf
  dt-bindings: soc: rockchip: Document RV1126 pmugrf
  dt-bindings: mfd: syscon: Add Rockchip RV1126 QoS register
  ARM: dts: rockchip: Add Rockchip RV1126 SoC
  dt-bindings: vendor-prefixes: Add Edgeble AI Technologies Pvt. Ltd.
  dt-bindings: arm: rockchip: Add Edgeble AI Edge Compute Module 0 Carrier
  ARM: dts: rockchip: rv1126: Add Edgeble AI Edge Compute Module 0
  ARM: dts: rockchip: rv1126: Add Edgeble AI Edge Compute Module 0 Carrier
  ARM: configs: Add RV1126 ECM0 fragment config

Jianqun Xu (1):
  soc: rockchip: io-domain: Add RV1126 IO domains

 .../devicetree/bindings/arm/rockchip.yaml     |    6 +
 .../bindings/clock/rockchip,rv1126-cru.yaml   |   70 ++
 .../devicetree/bindings/i2c/i2c-rk3x.yaml     |    1 +
 .../devicetree/bindings/mfd/syscon.yaml       |    1 +
 .../bindings/mmc/rockchip-dw-mshc.yaml        |    1 +
 .../bindings/pinctrl/rockchip,pinctrl.yaml    |    1 +
 .../power/rockchip,power-controller.yaml      |    2 +
 .../bindings/power/rockchip-io-domain.yaml    |   30 +
 .../bindings/serial/snps-dw-apb-uart.yaml     |    1 +
 .../devicetree/bindings/soc/rockchip/grf.yaml |    2 +
 .../devicetree/bindings/vendor-prefixes.yaml  |    2 +
 MAINTAINERS                                   |    2 +-
 arch/arm/boot/dts/Makefile                    |    1 +
 arch/arm/boot/dts/rockchip-pinconf.dtsi       |  115 ++
 .../rv1126-edge-compute-module-0-carrier.dts  |   38 +
 .../dts/rv1126-edge-compute-module-0.dtsi     |  329 +++++
 arch/arm/boot/dts/rv1126-pinctrl.dtsi         |  302 +++++
 arch/arm/boot/dts/rv1126.dtsi                 |  500 ++++++++
 arch/arm/configs/rv1126-ecm0.config           |    3 +
 drivers/clk/rockchip/Kconfig                  |    7 +
 drivers/clk/rockchip/Makefile                 |    1 +
 drivers/clk/rockchip/clk-rv1126.c             | 1107 +++++++++++++++++
 drivers/clk/rockchip/clk.c                    |   27 +-
 drivers/clk/rockchip/clk.h                    |   36 +
 drivers/pinctrl/pinctrl-rockchip.c            |  333 ++++-
 drivers/pinctrl/pinctrl-rockchip.h            |    1 +
 drivers/soc/rockchip/io-domain.c              |   20 +
 drivers/soc/rockchip/pm_domains.c             |   29 +
 include/dt-bindings/clock/rv1126-cru.h        |  632 ++++++++++
 include/dt-bindings/power/rv1126-power.h      |   34 +
 30 files changed, 3620 insertions(+), 14 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rv1126-cru.yaml
 create mode 100644 arch/arm/boot/dts/rockchip-pinconf.dtsi
 create mode 100644 arch/arm/boot/dts/rv1126-edge-compute-module-0-carrier.dts
 create mode 100644 arch/arm/boot/dts/rv1126-edge-compute-module-0.dtsi
 create mode 100644 arch/arm/boot/dts/rv1126-pinctrl.dtsi
 create mode 100644 arch/arm/boot/dts/rv1126.dtsi
 create mode 100644 arch/arm/configs/rv1126-ecm0.config
 create mode 100644 drivers/clk/rockchip/clk-rv1126.c
 create mode 100644 include/dt-bindings/clock/rv1126-cru.h
 create mode 100644 include/dt-bindings/power/rv1126-power.h

-- 
2.25.1

