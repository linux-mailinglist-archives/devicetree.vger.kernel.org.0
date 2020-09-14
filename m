Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BAF2C26915F
	for <lists+devicetree@lfdr.de>; Mon, 14 Sep 2020 18:23:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726349AbgINQXL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Sep 2020 12:23:11 -0400
Received: from lelv0142.ext.ti.com ([198.47.23.249]:35232 "EHLO
        lelv0142.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726424AbgINQXG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Sep 2020 12:23:06 -0400
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08EGMaSl093374;
        Mon, 14 Sep 2020 11:22:36 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1600100556;
        bh=ksIvwOJYCplU5DPrlrnmbJZ9t7wIf/UmP0pQ54TFDHo=;
        h=From:To:CC:Subject:Date;
        b=XhE7AnC1N11G/C+fKb+OwvuowmI+q1VZswQfw9QjZA2AVyYdScQPCFl6SvjOlHME0
         JXkR0ij+6k25RhenHYnvwHtAYOCxXhsDR7FvqQe+ZM8GLOD9QQkk48B3T2MKWoUxiC
         eGP2+IDbZ2IJyb6r9gig12bLEG1mazNlUoapIm3I=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08EGMaRk030846
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 14 Sep 2020 11:22:36 -0500
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 14
 Sep 2020 11:22:36 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 14 Sep 2020 11:22:36 -0500
Received: from lokesh-ssd.dhcp.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08EGMW6Z088296;
        Mon, 14 Sep 2020 11:22:33 -0500
From:   Lokesh Vutla <lokeshvutla@ti.com>
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
        Rob Herring <robh+dt@kernel.org>
CC:     Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Sekhar Nori <nsekhar@ti.com>, Suman Anna <s-anna@ti.com>,
        Grygorii Strashko <grygorii.strashko@ti.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>
Subject: [PATCH v4 0/5] arm64: Initial support for Texas Instrument's J7200 Platform
Date:   Mon, 14 Sep 2020 21:52:26 +0530
Message-ID: <20200914162231.2535-1-lokeshvutla@ti.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This series adds initial support for latest new SoC, J7200, from Texas Instruments.

The J7200 SoC is a part of the K3 Multicore SoC architecture platform.
It is targeted for for automotive gateway, vehicle compute systems,
Vehicle-to-Vehicle (V2V) and Vehicle-to-Everything (V2X) applications.
The SoC aims to meet the complex processing needs of modern embedded products.

See J7200 Technical Reference Manual (SPRUIU1, June 2020)
for further details: https://www.ti.com/lit/pdf/spruiu1

This series is based on the ti-k3-dts-next from Nishanth's tree[0].
Boot log: https://pastebin.ubuntu.com/p/sJ4Xh4J488/ 

Changes since v3:
- Update epoch in Makefile
- Updated ranges for cbass main and mcu_wakeup
- s/pinmux/pinctrl
- s/navss@/bus@
- Added intr and inta nodes
- Added chosen node

Changes since v2:
- Update Makefile to build dtbs using CONFIG_ARCH_K3
- use 0x00 in all places just to be consistent for all K3 devices
- Fixed upper case to lower case in reg property.

[0] git://git.kernel.org/pub/scm/linux/kernel/git/nmenon/linux.git

Lokesh Vutla (5):
  arm64: dts: ti: Makefile: Use ARCH_K3 for building dtbs
  dt-bindings: arm: ti: Convert K3 board/soc bindings to DT schema
  dt-bindings: arm: ti: Add bindings for J7200 SoC
  arm64: dts: ti: Add support for J7200 SoC
  arm64: dts: ti: Add support for J7200 Common Processor Board

 .../devicetree/bindings/arm/ti/k3.txt         |  26 --
 .../devicetree/bindings/arm/ti/k3.yaml        |  35 +++
 MAINTAINERS                                   |   2 +-
 arch/arm64/boot/dts/ti/Makefile               |   8 +-
 .../dts/ti/k3-j7200-common-proc-board.dts     |  64 +++++
 arch/arm64/boot/dts/ti/k3-j7200-main.dtsi     | 236 ++++++++++++++++++
 .../boot/dts/ti/k3-j7200-mcu-wakeup.dtsi      |  95 +++++++
 arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi   |  29 +++
 arch/arm64/boot/dts/ti/k3-j7200.dtsi          | 172 +++++++++++++
 9 files changed, 637 insertions(+), 30 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/ti/k3.txt
 create mode 100644 Documentation/devicetree/bindings/arm/ti/k3.yaml
 create mode 100644 arch/arm64/boot/dts/ti/k3-j7200-common-proc-board.dts
 create mode 100644 arch/arm64/boot/dts/ti/k3-j7200-main.dtsi
 create mode 100644 arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi
 create mode 100644 arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi
 create mode 100644 arch/arm64/boot/dts/ti/k3-j7200.dtsi

-- 
2.28.0

