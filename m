Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 88C415B0999
	for <lists+devicetree@lfdr.de>; Wed,  7 Sep 2022 18:05:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229561AbiIGQFD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Sep 2022 12:05:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50828 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229604AbiIGQEd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Sep 2022 12:04:33 -0400
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com [IPv6:2607:f8b0:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8EB28BB6A2
        for <devicetree@vger.kernel.org>; Wed,  7 Sep 2022 09:02:41 -0700 (PDT)
Received: by mail-pl1-x634.google.com with SMTP id f24so15066368plr.1
        for <devicetree@vger.kernel.org>; Wed, 07 Sep 2022 09:02:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=oHtmyp0MjeRW/7ev9U+nQsxJjSYwYzANM1nS1bhyYwo=;
        b=7Fju9Xhz5InFFNpngSUAX9JEcnScxu7+CMDZMlSdfrqW61YAbx6lZxwIx3AlEsNeb4
         Shs9pC57dF6RvlEm1FGNFYME5EiRcfcVL/P8tg2z0w8zsaSbSGK4xvVUUGThF5+nEftg
         ROA6x6AWXCSsHF7leXMvxQPFMLhLvLO7ybf+oiPbnbEj0O7gEHoVcXv+i5megzDTOSZS
         wy7C6cd2M2Tju4iBCXvwwDWWEnl7kjI/U/pdzYdCLxwmYSahn35LnDVwhAGI7GlIuZN3
         O9xxXQrm9U8lCp44nExQMRN+FwyRFXbhGCLzlwtgw3eksjKTECLr44MN3BLVb9POg9mq
         rhVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=oHtmyp0MjeRW/7ev9U+nQsxJjSYwYzANM1nS1bhyYwo=;
        b=iH7CteKd9idIFi3/OBfiGIVlVilfDy+g8Ka4+5CsDJmkYPlnlHheGcZgv6BeKt6M/6
         4QKsI0A+AAz6cEqFPBtHaeG/ysOnu0alZFs7pKvAmN4imF1sATKkMuLccDVnczhOjSYD
         2UpcjBN9GFZryrV4QEK3/eKnH3HXkjOior0C82wlMlGKD43ckJzYJxyoDhN0NIqsL2e4
         MXCcbPIMqsDESSo9nmQBTlDB0q0+iKvw/PjnsoT25rfbEheFWcxHk6+ahYShdF2RXQ53
         GZNeNYchc0gnvn0HSJJXtmFzNH97PxanKmT3uzOg6MrQMLhMqWsMmwsHuiizKHIHJbB3
         RB8w==
X-Gm-Message-State: ACgBeo0vPonQMDDxuWz64jEKO+KY0/l+Uot6kpIzXw+o7kV4LLMaTWgi
        Uyf5ntYo7AWz3dNc4OUXY/GALg==
X-Google-Smtp-Source: AA6agR5zcPWheEOnJmCN12khZ9DjLxhGpGztu9YSzGjEeswzEFPbQWeYZ6QF968kkuhvrssLDh6xpA==
X-Received: by 2002:a17:90a:4d8d:b0:1fa:9cc6:3408 with SMTP id m13-20020a17090a4d8d00b001fa9cc63408mr4552604pjh.245.1662566544122;
        Wed, 07 Sep 2022 09:02:24 -0700 (PDT)
Received: from localhost.localdomain ([23.27.44.184])
        by smtp.gmail.com with ESMTPSA id x13-20020a17090a1f8d00b001f510175984sm14919719pja.41.2022.09.07.09.02.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Sep 2022 09:02:23 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH v4 00/13] ARM: Add Rockchip RV1126 support
Date:   Wed,  7 Sep 2022 21:31:54 +0530
Message-Id: <20220907160207.3845791-1-jagan@edgeble.ai>
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
v3 for the series can be found at [1].

Tested in Edgeble AI Edge Compute Module 0.

[1] https://patchwork.kernel.org/project/linux-arm-kernel/cover/20220818124132.125304-1-jagan@edgeble.ai/

Any inputs?
Jagan.

Elaine Zhang (1):
  clk: rockchip: Add MUXTBL variant

Jagan Teki (12):
  i2c: rk3x: Add rv1126 support
  clk: rockchip: Add dt-binding header for RV1126
  dt-bindings: clock: rockchip: Document RV1126 CRU
  clk: rockchip: Add clock controller support for RV1126 SoC.
  dt-bindings: soc: rockchip: Document RV1126 grf
  dt-bindings: soc: rockchip: Document RV1126 pmugrf
  ARM: dts: rockchip: Add Rockchip RV1126 pinctrl
  ARM: dts: rockchip: Add Rockchip RV1126 SoC
  dt-bindings: vendor-prefixes: Add Edgeble AI Technologies Pvt. Ltd.
  dt-bindings: arm: rockchip: Add Edgeble AI Edge Compute Module 0 Carrier
  ARM: dts: rockchip: rv1126: Add Edgeble AI Edge Compute Module 0
  ARM: dts: rockchip: rv1126: Add Edgeble AI Edge Compute Module 0 Carrier

 .../devicetree/bindings/arm/rockchip.yaml     |    6 +
 .../bindings/clock/rockchip,rv1126-cru.yaml   |   62 +
 .../devicetree/bindings/soc/rockchip/grf.yaml |    2 +
 .../devicetree/bindings/vendor-prefixes.yaml  |    2 +
 MAINTAINERS                                   |    2 +-
 arch/arm/boot/dts/Makefile                    |    1 +
 .../boot/dts/rv1126-edgeble-ecm0-carrier.dts  |   38 +
 .../rv1126-edgeble-edge-compute-module-0.dtsi |  353 ++++++
 arch/arm/boot/dts/rv1126-pinctrl.dtsi         |  212 ++++
 arch/arm/boot/dts/rv1126.dtsi                 |  430 +++++++
 drivers/clk/rockchip/Kconfig                  |    7 +
 drivers/clk/rockchip/Makefile                 |    1 +
 drivers/clk/rockchip/clk-rv1126.c             | 1107 +++++++++++++++++
 drivers/clk/rockchip/clk.c                    |   27 +-
 drivers/clk/rockchip/clk.h                    |   36 +
 drivers/i2c/busses/i2c-rk3x.c                 |    9 +
 .../dt-bindings/clock/rockchip,rv1126-cru.h   |  632 ++++++++++
 17 files changed, 2920 insertions(+), 7 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rv1126-cru.yaml
 create mode 100644 arch/arm/boot/dts/rv1126-edgeble-ecm0-carrier.dts
 create mode 100644 arch/arm/boot/dts/rv1126-edgeble-edge-compute-module-0.dtsi
 create mode 100644 arch/arm/boot/dts/rv1126-pinctrl.dtsi
 create mode 100644 arch/arm/boot/dts/rv1126.dtsi
 create mode 100644 drivers/clk/rockchip/clk-rv1126.c
 create mode 100644 include/dt-bindings/clock/rockchip,rv1126-cru.h

-- 
2.25.1

