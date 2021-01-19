Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9B5872FBCBF
	for <lists+devicetree@lfdr.de>; Tue, 19 Jan 2021 17:44:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731977AbhASQmZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Jan 2021 11:42:25 -0500
Received: from fllv0016.ext.ti.com ([198.47.19.142]:53094 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389278AbhASQlj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Jan 2021 11:41:39 -0500
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 10JGdRq1013322;
        Tue, 19 Jan 2021 10:39:27 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1611074368;
        bh=jljfKdRWfHI5nVmQOfVi65N3P1Pg9s+aML4Z2XXxMWY=;
        h=From:To:CC:Subject:Date;
        b=NvtSaxilTsSQAptpa2a5SnBH4uiBMFWIZF8cO1g7IOgYhXk6tIRba/CA97FyxNF3H
         OVItU/WP93J87ZBiJwG/sabCC/KMuN4/1R3ukf/yiei+vLuVOMQPSMX7b+6GdfCjQj
         1fvHCV753DjPB1eAZiNTQrSP7lkeydRUKtJH/awA=
Received: from DLEE106.ent.ti.com (dlee106.ent.ti.com [157.170.170.36])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 10JGdRnh054857
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 19 Jan 2021 10:39:27 -0600
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 19
 Jan 2021 10:39:27 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 19 Jan 2021 10:39:27 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 10JGdRIX124421;
        Tue, 19 Jan 2021 10:39:27 -0600
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
Subject: [PATCH v2 0/5] arm64: Initial support for Texas Instruments AM642 Platform
Date:   Tue, 19 Jan 2021 10:39:22 -0600
Message-ID: <20210119163927.774-1-d-gerlach@ti.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This is v2 of the series to add initial support for the latest new SoC,
AM642, from Texas Instruments. Version 1 can be found at [1]. Additional
detail can be found in the patch descriptions, also see AM64X Technical
Reference Manual (SPRUIM2, Nov 2020) for further details:
https://www.ti.com/lit/pdf/spruim2

Since v1, several new bindings have made it in linux-next so we can
now include those nodes using them here. The spi, i2c, and mmc nodes
have now been added along with DMA support. Specifics about changes
from v1 are included with each patch.

Regards,
Dave

[1] https://lore.kernel.org/linux-arm-kernel/20201125052004.17823-1-d-gerlach@ti.com/

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
 arch/arm64/boot/dts/ti/k3-am642-evm.dts       | 258 +++++++++++
 arch/arm64/boot/dts/ti/k3-am642.dtsi          |  65 +++
 include/dt-bindings/pinctrl/k3.h              |   5 +-
 8 files changed, 920 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/boot/dts/ti/k3-am64-main.dtsi
 create mode 100644 arch/arm64/boot/dts/ti/k3-am64-mcu.dtsi
 create mode 100644 arch/arm64/boot/dts/ti/k3-am64.dtsi
 create mode 100644 arch/arm64/boot/dts/ti/k3-am642-evm.dts
 create mode 100644 arch/arm64/boot/dts/ti/k3-am642.dtsi

-- 
2.28.0

