Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8C7D22615C6
	for <lists+devicetree@lfdr.de>; Tue,  8 Sep 2020 18:56:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731961AbgIHQ4R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Sep 2020 12:56:17 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:55102 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731826AbgIHQXE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Sep 2020 12:23:04 -0400
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 088GMw96077993;
        Tue, 8 Sep 2020 11:22:58 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1599582178;
        bh=SEM8rc44jwT/AQPHjWeLw3o/QxF7YSN0HPxJMxq2Lfg=;
        h=From:To:CC:Subject:Date;
        b=uLvpGsRiipcueyEhreLEig2uYffwo4OPx1Rdl6AobjzeLYM6qdm/FO47A/cxHZmRf
         0+Yj6qVQ7MpVF32z6jDV74eh+HoosmNsJ8H7Kta6jLRtdnASAokgwew2aAN12PPDVy
         rssS39itQtLGHvCZI0Yg6sf4VNTa5LwlvUZUJSzI=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 088GMwG4027133
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 8 Sep 2020 11:22:58 -0500
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 8 Sep
 2020 11:22:57 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 8 Sep 2020 11:22:57 -0500
Received: from lokesh-ssd.dhcp.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 088GMqAn044781;
        Tue, 8 Sep 2020 11:22:53 -0500
From:   Lokesh Vutla <lokeshvutla@ti.com>
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
        Rob Herring <robh+dt@kernel.org>
CC:     Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Sekhar Nori <nsekhar@ti.com>, Suman Anna <s-anna@ti.com>,
        Grygorii Strashko <grygorii.strashko@ti.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>
Subject: [PATCH v3 0/5] arm64: Initial support for Texas Instrument's J7200 Platform
Date:   Tue, 8 Sep 2020 21:52:47 +0530
Message-ID: <20200908162252.17672-1-lokeshvutla@ti.com>
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
Boot log: https://pastebin.ubuntu.com/p/Ppng92TR9z/

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

 .../devicetree/bindings/arm/ti/k3.txt         |  26 ---
 .../devicetree/bindings/arm/ti/k3.yaml        |  35 +++
 MAINTAINERS                                   |   2 +-
 arch/arm64/boot/dts/ti/Makefile               |   6 +-
 .../dts/ti/k3-j7200-common-proc-board.dts     |  64 ++++++
 arch/arm64/boot/dts/ti/k3-j7200-main.dtsi     | 199 ++++++++++++++++++
 .../boot/dts/ti/k3-j7200-mcu-wakeup.dtsi      |  84 ++++++++
 arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi   |  29 +++
 arch/arm64/boot/dts/ti/k3-j7200.dtsi          | 165 +++++++++++++++
 9 files changed, 581 insertions(+), 29 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/ti/k3.txt
 create mode 100644 Documentation/devicetree/bindings/arm/ti/k3.yaml
 create mode 100644 arch/arm64/boot/dts/ti/k3-j7200-common-proc-board.dts
 create mode 100644 arch/arm64/boot/dts/ti/k3-j7200-main.dtsi
 create mode 100644 arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi
 create mode 100644 arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi
 create mode 100644 arch/arm64/boot/dts/ti/k3-j7200.dtsi

-- 
2.28.0

