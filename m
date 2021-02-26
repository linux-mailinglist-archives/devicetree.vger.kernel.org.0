Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B1EF032644D
	for <lists+devicetree@lfdr.de>; Fri, 26 Feb 2021 15:44:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229618AbhBZOoq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Feb 2021 09:44:46 -0500
Received: from fllv0015.ext.ti.com ([198.47.19.141]:32928 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229622AbhBZOon (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Feb 2021 09:44:43 -0500
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 11QEgw33022565;
        Fri, 26 Feb 2021 08:42:58 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1614350578;
        bh=k/aJ18vrdS5uPZxWyBPrjwZO3FlbDQJva16qfd1N8jw=;
        h=From:To:CC:Subject:Date;
        b=hM3FCwyK569G3qExWirshGLoyeT4aI9YU370QxJgGWuxV9Fza2iTWInJW6dLXNNKL
         ro2YT1h/MQs9mkcVdRIUNHkBZ715UZZOiVJgKeTCCEOig/k93XLWANs9Q8D24meguR
         LYDyC4ic5KYOCOrCEePa6DqatYk4T02T0AjPfd7k=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 11QEgwJf044107
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Fri, 26 Feb 2021 08:42:58 -0600
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 26
 Feb 2021 08:42:57 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 26 Feb 2021 08:42:57 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 11QEgvaU116123;
        Fri, 26 Feb 2021 08:42:57 -0600
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
Subject: [PATCH v4 0/5] arm64: Initial support for Texas Instruments AM642 Platform
Date:   Fri, 26 Feb 2021 08:42:52 -0600
Message-ID: <20210226144257.5470-1-d-gerlach@ti.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,
This is v4 of the series to add initial support for the latest new SoC,
AM642, from Texas Instruments. Additional detail can be found in the
patch descriptions, also see AM64X Technical Reference Manual (SPRUIM2,
Nov 2020) for further details: https://www.ti.com/lit/pdf/spruim2

This version contains a few minor fixes from v3:

* Add Rob's Ack to patch 2
* Drop address-cells from interrupt controller node in patch 4 as [1] was dropped
* Add Suman's Signed-off-by to patch 3
* Fix date range in Makefile for TI dtbs in patch 5
* Include Reviewed-by from several people from v3 for multiple patches

v3: https://lore.kernel.org/linux-arm-kernel/20210120202532.9011-1-d-gerlach@ti.com/
v2: https://lore.kernel.org/linux-arm-kernel/20210119163927.774-1-d-gerlach@ti.com/
v1: https://lore.kernel.org/linux-arm-kernel/20201125052004.17823-1-d-gerlach@ti.com/

Regards,
Dave

[1] https://lore.kernel.org/linux-arm-kernel/161131973654.21299.8023411678794984222.b4-ty@ti.com/

Dave Gerlach (4):
  dt-bindings: arm: ti: Add bindings for AM642 SoC
  dt-bindings: pinctrl: k3: Introduce pinmux definitions for AM64
  arm64: dts: ti: Add support for AM642 SoC
  arm64: dts: ti: Add support for AM642 EVM

Peter Ujfalusi (1):
  arm64: dts: ti: k3-am64-main: Enable DMA support

 .../devicetree/bindings/arm/ti/k3.yaml        |   6 +
 arch/arm64/boot/dts/ti/Makefile               |   4 +-
 arch/arm64/boot/dts/ti/k3-am64-main.dtsi      | 405 ++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-am64-mcu.dtsi       |  76 ++++
 arch/arm64/boot/dts/ti/k3-am64.dtsi           | 103 +++++
 arch/arm64/boot/dts/ti/k3-am642-evm.dts       | 246 +++++++++++
 arch/arm64/boot/dts/ti/k3-am642.dtsi          |  65 +++
 include/dt-bindings/pinctrl/k3.h              |   5 +-
 8 files changed, 908 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm64/boot/dts/ti/k3-am64-main.dtsi
 create mode 100644 arch/arm64/boot/dts/ti/k3-am64-mcu.dtsi
 create mode 100644 arch/arm64/boot/dts/ti/k3-am64.dtsi
 create mode 100644 arch/arm64/boot/dts/ti/k3-am642-evm.dts
 create mode 100644 arch/arm64/boot/dts/ti/k3-am642.dtsi

-- 
2.28.0

