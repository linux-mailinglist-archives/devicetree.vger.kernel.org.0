Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8CBC32FDB2C
	for <lists+devicetree@lfdr.de>; Wed, 20 Jan 2021 21:49:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732283AbhATUt2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jan 2021 15:49:28 -0500
Received: from fllv0015.ext.ti.com ([198.47.19.141]:49232 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388237AbhATU0h (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jan 2021 15:26:37 -0500
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 10KKPWPW039649;
        Wed, 20 Jan 2021 14:25:32 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1611174332;
        bh=Twc/GQf12aJeqk1mHxxtbn5jnBdXtyChT6TgBPfGu/M=;
        h=From:To:CC:Subject:Date;
        b=Pz8w0D/ttlbqoMB0QkvJwoYlSkDdce3HnJsJqUDYiPVjLyvH8L/7TJvoaS2X6sD0J
         tuvY47hgfJ2kyzzICguhLZd/Yr8VZH8XK3mUAUXdWIgyhRx/IfYlYtWX8glg+0Z8Jh
         r8qxG9ZJnnX52WxNhaN/lbNQE8PBFxultiY9EXSo=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 10KKPWmt050851
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Wed, 20 Jan 2021 14:25:32 -0600
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 20
 Jan 2021 14:25:32 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 20 Jan 2021 14:25:31 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 10KKPWol090495;
        Wed, 20 Jan 2021 14:25:32 -0600
From:   Dave Gerlach <d-gerlach@ti.com>
To:     Nishanth Menon <nm@ti.com>
CC:     Dave Gerlach <d-gerlach@ti.com>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Tony Lindgren <tony@atomide.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Suman Anna <s-anna@ti.com>, Sekhar Nori <nsekhar@ti.com>,
        Kishon Vijay Abraham <kishon@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Aswath Govindraju <a-govindraju@ti.com>
Subject: [PATCH v3 0/5] arm64: Initial support for Texas Instruments AM642 Platform
Date:   Wed, 20 Jan 2021 14:25:27 -0600
Message-ID: <20210120202532.9011-1-d-gerlach@ti.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This is v3 of the series to add initial support for the latest new SoC,
AM642, from Texas Instruments. Additional detail can be found in the
patch descriptions, also see AM64X Technical Reference Manual (SPRUIM2,
Nov 2020) for further details: https://www.ti.com/lit/pdf/spruim2

This version contains a few minor fixes from v2:

* Use the appropriate 'arm,cortex-a53-pmu' instead of 'arm,armv8-pmuv3'
  for ARM pmu node based on Sudeep's comment from v2.
* Fix a typo in the 'dmas' property on main_spi0
* Drop main_spi0 from board dts as a more appropriate
  compatible to use for the eeprom will be available after [1] is merged.
* Add 'gpio-line-names' under main_i2c1.


v2: https://lore.kernel.org/linux-arm-kernel/20210119163927.774-1-d-gerlach@ti.com/
v1: https://lore.kernel.org/linux-arm-kernel/20201125052004.17823-1-d-gerlach@ti.com/

Regards,
Dave

[1] https://lore.kernel.org/patchwork/project/lkml/list/?series=478815

Dave Gerlach (4):
  dt-bindings: arm: ti: Add bindings for AM642 SoC
  dt-bindings: pinctrl: k3: Introduce pinmux definitions for AM64
  arm64: dts: ti: Add support for AM642 SoC
  arm64: dts: ti: Add support for AM642 EVM

Peter Ujfalusi (1):
  arm64: dts: ti: k3-am64-main: Enable DMA support

 .../devicetree/bindings/arm/ti/k3.yaml        |   6 +
 arch/arm64/boot/dts/ti/Makefile               |   2 +
 arch/arm64/boot/dts/ti/k3-am64-main.dtsi      | 406 ++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-am64-mcu.dtsi       |  76 ++++
 arch/arm64/boot/dts/ti/k3-am64.dtsi           | 103 +++++
 arch/arm64/boot/dts/ti/k3-am642-evm.dts       | 246 +++++++++++
 arch/arm64/boot/dts/ti/k3-am642.dtsi          |  65 +++
 include/dt-bindings/pinctrl/k3.h              |   5 +-
 8 files changed, 908 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/boot/dts/ti/k3-am64-main.dtsi
 create mode 100644 arch/arm64/boot/dts/ti/k3-am64-mcu.dtsi
 create mode 100644 arch/arm64/boot/dts/ti/k3-am64.dtsi
 create mode 100644 arch/arm64/boot/dts/ti/k3-am642-evm.dts
 create mode 100644 arch/arm64/boot/dts/ti/k3-am642.dtsi

-- 
2.28.0

