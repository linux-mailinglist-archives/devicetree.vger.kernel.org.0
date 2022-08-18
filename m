Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CF84259833C
	for <lists+devicetree@lfdr.de>; Thu, 18 Aug 2022 14:41:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244676AbiHRMll (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Aug 2022 08:41:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45670 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236846AbiHRMll (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Aug 2022 08:41:41 -0400
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com [IPv6:2607:f8b0:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DF18C785BA
        for <devicetree@vger.kernel.org>; Thu, 18 Aug 2022 05:41:39 -0700 (PDT)
Received: by mail-pf1-x42c.google.com with SMTP id y141so1416699pfb.7
        for <devicetree@vger.kernel.org>; Thu, 18 Aug 2022 05:41:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=TUnKJIFQ1zZdAILaN3dEonwQtoPz0tBuedLrOJLMjrg=;
        b=DM0MbALTY5xAWuobL5DJkF+L+dd6Lx2UVDdjW5x7e+eHKp/9AKeydwlvzbFj+l2rrd
         XF+TNS17zGAKNl9ydWq5e4PwcjrVwcM0gnN9TkUmQdAN9yuYeR+GcKzqs7Y99eR5/wNX
         YVD1iQKxXn6E/aq0zXUgctHLF7mBaqKqav/DnHKcEYljnk7XhyKNrrMDnr3jwhHsEkz8
         Vznc173Cnfpp9oFcQJ9aULdrU1ZNx4kPP0RCZM5/mP6iqbZchBRDbwOY7Q+QfLpMYnX2
         sKgbia/I8DuPDFMFQEdoNw/3ET9axaSjdE7rx7Qx3wlZ90CuGoHQ4Epi/dj7w3modASq
         6w+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=TUnKJIFQ1zZdAILaN3dEonwQtoPz0tBuedLrOJLMjrg=;
        b=6E6mng14p5/HDqrS6UOoSWKQMS4Q8K6RPdoaOCdd7yEP302WnGjLwKy3aEj2wi5O/o
         JJpH1lYCKNB8Ca01ZEOWPncdAzmK6zlY+WLu9a1t51BH/L2sJ7Q6+h1vQ97wxHmI2chi
         LtiRNmTEy09bPK/8RcN3hUC3CfbhXsXnONic9wtW6khdc6EjoCa83XInLaHeMAKzCXRd
         7/6TkTsVUMbycgkopjIIf3jl5WznVlrASHwXaFVf9T5S+4WAxijM+WylieFklQ5VTse2
         YAU9kQL39RNvvTwK4zJeRt5NzKvETJo5xTMVYqxbg+atCj5kVlJ7rIE+PXNCBPFOogQH
         CgNQ==
X-Gm-Message-State: ACgBeo2sxrfOuw8M0t0He5T81x5iZqg5fujLKhwjva833P2SCTweMxYZ
        Ipe9qBxG4KF2UC6tdSXLkrrpuw==
X-Google-Smtp-Source: AA6agR5NkPX0+2g1ubxM6fQKnGgUdjIU2IZh1Y18KiBFcX7FjFcNKwYzlt8S0149MUflTuCygRWaHg==
X-Received: by 2002:a63:db0b:0:b0:429:f039:74c5 with SMTP id e11-20020a63db0b000000b00429f03974c5mr2295308pgg.551.1660826499316;
        Thu, 18 Aug 2022 05:41:39 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:d1c4:8ea9:aedc:add1])
        by smtp.gmail.com with ESMTPSA id x6-20020aa78f06000000b005302cef1684sm1495651pfr.34.2022.08.18.05.41.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Aug 2022 05:41:39 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH v3 00/19] ARM: Add Rockchip RV1126 support
Date:   Thu, 18 Aug 2022 18:11:13 +0530
Message-Id: <20220818124132.125304-1-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
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

This patch series add basic core support for Rockchip RV1126 and
v2 for the series can be found at [2].

Tested in Edgeble AI Edge Compute Module 0.

Anyone interested, please have a look on this repo [1]

[2] https://patchwork.kernel.org/project/linux-arm-kernel/cover/20220731174726.72631-1-jagan@edgeble.ai/
[1] https://github.com/edgeble/linux-next/commits/ecm0-v4

Any inputs?
Jagan.

Elaine Zhang (1):
  clk: rockchip: Add MUXTBL variant

Jagan Teki (17):
  dt-bindings: power: Add power-domain header for RV1126
  dt-bindings: power: rockchip: Document RV1126 power-controller
  soc: rockchip: power-domain: Add RV1126 power domains
  dt-bindings: power: rockchip: Document RV1126 PMU IO domains
  dt-bindings: pinctrl: rockchip: Document RV1126 pinctrl
  pinctrl: rockchip: Add RV1126 pinctrl support
  clk: rockchip: Add dt-binding header for RV1126
  dt-bindings: clock: rockchip: Document RV1126 CRU
  Add clock controller support for RV1126 SoC.
  dt-bindings: soc: rockchip: Document RV1126 grf
  dt-bindings: soc: rockchip: Document RV1126 pmugrf
  ARM: dts: rockchip: Add Rockchip RV1126 pinctrl
  ARM: dts: rockchip: Add Rockchip RV1126 SoC
  dt-bindings: vendor-prefixes: Add Edgeble AI Technologies Pvt. Ltd.
  dt-bindings: arm: rockchip: Add Edgeble AI Edge Compute Module 0 Carrier
  ARM: dts: rockchip: rv1126: Add Edgeble AI Edge Compute Module 0
  ARM: dts: rockchip: rv1126: Add Edgeble AI Edge Compute Module 0 Carrier

Jianqun Xu (1):
  soc: rockchip: io-domain: Add RV1126 IO domains

 .../devicetree/bindings/arm/rockchip.yaml     |    6 +
 .../bindings/clock/rockchip,rv1126-cru.yaml   |   62 +
 .../bindings/pinctrl/rockchip,pinctrl.yaml    |    1 +
 .../power/rockchip,power-controller.yaml      |    2 +
 .../bindings/power/rockchip-io-domain.yaml    |   30 +
 .../devicetree/bindings/soc/rockchip/grf.yaml |    2 +
 .../devicetree/bindings/vendor-prefixes.yaml  |    2 +
 MAINTAINERS                                   |    2 +-
 arch/arm/boot/dts/Makefile                    |    1 +
 .../boot/dts/rv1126-edgeble-ecm0-carrier.dts  |   38 +
 .../rv1126-edgeble-edge-compute-module-0.dtsi |  353 ++++++
 arch/arm/boot/dts/rv1126-pinctrl.dtsi         |  302 +++++
 arch/arm/boot/dts/rv1126.dtsi                 |  500 ++++++++
 drivers/clk/rockchip/Kconfig                  |    7 +
 drivers/clk/rockchip/Makefile                 |    1 +
 drivers/clk/rockchip/clk-rv1126.c             | 1107 +++++++++++++++++
 drivers/clk/rockchip/clk.c                    |   27 +-
 drivers/clk/rockchip/clk.h                    |   36 +
 drivers/pinctrl/pinctrl-rockchip.c            |  333 ++++-
 drivers/pinctrl/pinctrl-rockchip.h            |    1 +
 drivers/soc/rockchip/io-domain.c              |   20 +
 drivers/soc/rockchip/pm_domains.c             |   29 +
 .../dt-bindings/clock/rockchip,rv1126-cru.h   |  632 ++++++++++
 .../dt-bindings/power/rockchip,rv1126-power.h |   35 +
 24 files changed, 3515 insertions(+), 14 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rv1126-cru.yaml
 create mode 100644 arch/arm/boot/dts/rv1126-edgeble-ecm0-carrier.dts
 create mode 100644 arch/arm/boot/dts/rv1126-edgeble-edge-compute-module-0.dtsi
 create mode 100644 arch/arm/boot/dts/rv1126-pinctrl.dtsi
 create mode 100644 arch/arm/boot/dts/rv1126.dtsi
 create mode 100644 drivers/clk/rockchip/clk-rv1126.c
 create mode 100644 include/dt-bindings/clock/rockchip,rv1126-cru.h
 create mode 100644 include/dt-bindings/power/rockchip,rv1126-power.h

-- 
2.25.1

