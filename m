Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EEF672C386B
	for <lists+devicetree@lfdr.de>; Wed, 25 Nov 2020 06:21:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726320AbgKYFUO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 Nov 2020 00:20:14 -0500
Received: from fllv0016.ext.ti.com ([198.47.19.142]:53946 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725838AbgKYFUO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 25 Nov 2020 00:20:14 -0500
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0AP5K5Qn017845;
        Tue, 24 Nov 2020 23:20:05 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1606281605;
        bh=ShUumkwB/My+VCBZGxZuldydX2eb+iiUfOc/rV+YOk0=;
        h=From:To:CC:Subject:Date;
        b=dmof87IgbGo+a7CRwYUSg7oC1VApFooYtsb0bRPlILa1qWKvwKAfBzNsAbKHOgqH/
         IUdt6rT9Zp0kxXFZ5qgvHS/dhbfapIGbi4gG9aRWB6Ym/Wykk/60tPRT5VTFG5iPgW
         RKg7Bh5jhnGZsFvHINQsKuUD46DA55/GZlrHT9G8=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0AP5K4Ym002418
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 24 Nov 2020 23:20:05 -0600
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 24
 Nov 2020 23:20:05 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 24 Nov 2020 23:20:04 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0AP5K4VY124723;
        Tue, 24 Nov 2020 23:20:04 -0600
From:   Dave Gerlach <d-gerlach@ti.com>
To:     Rob Herring <robh+dt@kernel.org>, Nishanth Menon <nm@ti.com>
CC:     Dave Gerlach <d-gerlach@ti.com>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, Tony Lindgren <tony@atomide.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Suman Anna <s-anna@ti.com>,
        Peter Ujfalusi <peter.ujfalusi@ti.com>,
        Sekhar Nori <nsekhar@ti.com>,
        Kishon Vijay Abraham <kishon@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Aswath Govindraju <a-govindraju@ti.com>
Subject: [PATCH 0/3] arm64: Initial support for Texas Instruments AM642 Platform
Date:   Tue, 24 Nov 2020 23:20:01 -0600
Message-ID: <20201125052004.17823-1-d-gerlach@ti.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This series adds initial support for the latest new SoC, AM642,
from Texas Instruments.

Additional detail can be found in the patch descriptions, also
see AM64X Technical Reference Manual (SPRUIM2, Nov 2020) for
further details: https://www.ti.com/lit/pdf/spruim2

Regards,
Dave

Dave Gerlach (3):
  dt-bindings: arm: ti: Add bindings for AM642 SoC
  arm64: dts: ti: Add Support for AM642 SoC
  arm64: dts: ti: Add support for AM642 EVM

 .../devicetree/bindings/arm/ti/k3.yaml        |   6 +
 arch/arm64/boot/dts/ti/Makefile               |   2 +
 arch/arm64/boot/dts/ti/k3-am64-main.dtsi      | 178 ++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-am64.dtsi           |  95 ++++++++++
 arch/arm64/boot/dts/ti/k3-am642-evm.dts       |  61 ++++++
 arch/arm64/boot/dts/ti/k3-am642.dtsi          |  65 +++++++
 6 files changed, 407 insertions(+)
 create mode 100644 arch/arm64/boot/dts/ti/k3-am64-main.dtsi
 create mode 100644 arch/arm64/boot/dts/ti/k3-am64.dtsi
 create mode 100644 arch/arm64/boot/dts/ti/k3-am642-evm.dts
 create mode 100644 arch/arm64/boot/dts/ti/k3-am642.dtsi

-- 
2.28.0

