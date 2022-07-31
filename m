Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E95A0586028
	for <lists+devicetree@lfdr.de>; Sun, 31 Jul 2022 19:47:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229577AbiGaRrm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 31 Jul 2022 13:47:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44492 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229495AbiGaRrl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 31 Jul 2022 13:47:41 -0400
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com [IPv6:2607:f8b0:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB0FCB4A9
        for <devicetree@vger.kernel.org>; Sun, 31 Jul 2022 10:47:39 -0700 (PDT)
Received: by mail-pg1-x530.google.com with SMTP id f65so7801216pgc.12
        for <devicetree@vger.kernel.org>; Sun, 31 Jul 2022 10:47:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=kOlJryni2mOgiS6QUvArt36eMtTHRpJ86WtsC9yowsI=;
        b=VvfuGV+hNgaXELjXo99xAFteQxjSqz1sx8UjFVhnYPk4D0pDp9YNta3StsM6f7DlXm
         GkDhs35V7wziOrhE0aua3KysaUV/fprHDKMDHO9+SthPBPTZ0bEdVgOqAPSZjMPdb0o1
         S7RRbN0UtHOmIwJ34TM9NXhLJxdS2bbYoJFB/a+JvBM9uiwSfXnloPOxfAH6Ndz6Wxjr
         M/1orx8g/lczROU4zHiggNlenJMQgfQeho5eXmfUS4WbjcltVL094fLtIdiGGqrFpJKa
         K8VdKYwFJFOY5osW9WzYgTPGWphv9YePN4Wa1Rqa1x7EqEdGCcsItnBA1mGqZ09C3MoE
         sXjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=kOlJryni2mOgiS6QUvArt36eMtTHRpJ86WtsC9yowsI=;
        b=OBa1h9r0O40RoG3tHrB6MMrGvb/vQbia7OvRw/o/WhB6S2uOd46KF03zzyFOqzlF8N
         b9FZ7zuaM1eZYTna0f52iIH2XC4QLk2EZ6gDIHBtqBVLWpkUzVq0rjJePQ1wFkVd1Efb
         2otYailXIgBX21zM0tsAClnutKM3zgsrK4jadJC4s6qDFagPNn6hvbORMN3nzw9C/iHz
         Hp25rhRMrQNX5ImiCcvPghi25wmFwTwXelifLuxwiCGj8db8KCnEz1SFeLx7WsUSyeG+
         dnu3nCkoDzq3/MHKZD4y70nFYz7Y88ZDsMMejjFV+GH2E+mNqgS07eqwVY7FGCrZwkDW
         PB0A==
X-Gm-Message-State: AJIora+T9CtCG2ftNMyqUdVfi+2ycoq8d3jARJ4Etx/1lKWKGYP2uAu/
        roR5zwWZwEEQ0RJ45QdDDYX169cBBda8lIW8BG2zEQ==
X-Google-Smtp-Source: AA6agR6z9FFK6acl0RC3akO4sM8FlnHLmdp5RpAcCJW4NQvVMzWhnceDt3xj4/su2jWuEaLOHvlp+g==
X-Received: by 2002:a05:6a00:1812:b0:52a:c171:7cc5 with SMTP id y18-20020a056a00181200b0052ac1717cc5mr12600245pfa.81.1659289659179;
        Sun, 31 Jul 2022 10:47:39 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:c5e8:48d3:6a8c:6418])
        by smtp.gmail.com with ESMTPSA id n5-20020a170903110500b0016d3935eff0sm7812062plh.176.2022.07.31.10.47.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Jul 2022 10:47:38 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH v2 00/20] ARM: Add Rockchip RV1126 support
Date:   Sun, 31 Jul 2022 23:17:06 +0530
Message-Id: <20220731174726.72631-1-jagan@edgeble.ai>
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

This patch series add basic core support for Rockchip RV1126 and
v1 for the series can be found at [2].

Tested in Edgeble AI Edge Compute Module 0.

Anyone interested, please have a look on this repo [1]

[2] https://patchwork.kernel.org/project/linux-arm-kernel/cover/20220723204335.750095-1-jagan@edgeble.ai/
[1] https://github.com/edgeble/linux-next/commits/ecm0-v4

Any inputs?
Jagan.

Elaine Zhang (1):
  clk: rockchip: Add MUXTBL variant

Jagan Teki (18):
  dt-bindings: power: rockchip: Document RV1126 power-controller
  dt-bindings: power: Add power-domain header for RV1126
  soc: rockchip: power-domain: Add RV1126 power domains
  dt-bindings: power: rockchip: Document RV1126 PMU IO domains
  dt-bindings: pinctrl: rockchip: Document RV1126 pinctrl
  pinctrl: rockchip: Add RV1126 pinctrl support
  dt-bindings: clock: rockchip: Document RV1126 CRU
  clk: rockchip: Add dt-binding header for RV1126
  Add clock controller support for RV1126 SoC.
  dt-bindings: soc: rockchip: Document RV1126 grf
  dt-bindings: soc: rockchip: Document RV1126 pmugrf
  dt-bindings: mfd: syscon: Add Rockchip RV1126 QoS register
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
 .../devicetree/bindings/mfd/syscon.yaml       |    1 +
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
 include/dt-bindings/clock/rv1126-cru.h        |  632 ++++++++++
 include/dt-bindings/power/rv1126-power.h      |   35 +
 25 files changed, 3516 insertions(+), 14 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rv1126-cru.yaml
 create mode 100644 arch/arm/boot/dts/rv1126-edgeble-ecm0-carrier.dts
 create mode 100644 arch/arm/boot/dts/rv1126-edgeble-edge-compute-module-0.dtsi
 create mode 100644 arch/arm/boot/dts/rv1126-pinctrl.dtsi
 create mode 100644 arch/arm/boot/dts/rv1126.dtsi
 create mode 100644 drivers/clk/rockchip/clk-rv1126.c
 create mode 100644 include/dt-bindings/clock/rv1126-cru.h
 create mode 100644 include/dt-bindings/power/rv1126-power.h

-- 
2.25.1

