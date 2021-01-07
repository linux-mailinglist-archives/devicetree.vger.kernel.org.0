Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5E8932ECC70
	for <lists+devicetree@lfdr.de>; Thu,  7 Jan 2021 10:13:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726890AbhAGJMy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Jan 2021 04:12:54 -0500
Received: from mickerik.phytec.de ([195.145.39.210]:60278 "EHLO
        mickerik.phytec.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727153AbhAGJMy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Jan 2021 04:12:54 -0500
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
        q=dns/txt; i=@phytec.de; t=1610010732; x=1612602732;
        h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=WUiyXaZ3kCntMKEIcO80kK6GTqvTz/YAun/9tx8RSmQ=;
        b=ezObaDf/fjUGPQfMS6b2U2FMnel/XXKwJVa0WFXA2kkWHIVa8mxKN6ykP8YZFo51
        4kQEz8ZxWYHL8Ko4iPDFNZWm4Tx1cNN+T8P3rxvIrxfI2kl/r5ywHc146P1DjSLC
        fYLy0KB5XYRwKzoxrfy6X+DgEnzyGXnen95bhDheQ3Y=;
X-AuditID: c39127d2-0c7b670000001c86-0d-5ff6d06c51f1
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
        by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 57.B1.07302.C60D6FF5; Thu,  7 Jan 2021 10:12:12 +0100 (CET)
Received: from augenblix2.phytec.de ([172.16.0.56])
          by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
          with ESMTP id 2021010710121202-64470 ;
          Thu, 7 Jan 2021 10:12:12 +0100 
From:   Teresa Remmet <t.remmet@phytec.de>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Alexander Dahl <ada@thorsis.com>
Subject: [PATCH v4 0/4] Initial support for phyBOARD-Pollux i.MX8MP 
Date:   Thu, 7 Jan 2021 10:12:07 +0100
Message-Id: <1610010731-44779-1-git-send-email-t.remmet@phytec.de>
X-Mailer: git-send-email 2.7.4
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 07.01.2021 10:12:12,
        Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 07.01.2021 10:12:12,
        Serialize complete at 07.01.2021 10:12:12
X-TNEFEvaluated: 1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmpnluLIzCtJLcpLzFFi42JZI8DApZtz4Vu8wdL9ghZ9B5ks3i/rYbSY
        f+Qcq8XDq/4W589vYLfY9Pgaq0Xr3iPsFn+3b2KxeLFF3IHTY828NYweO2fdZffYtKqTzWPz
        knqP/r8GHuvmvmf3+LxJLoA9issmJTUnsyy1SN8ugSuj+fpCxoInvBVTbv5gbmCczN3FyMkh
        IWAicf7RK7YuRi4OIYGtjBKNX1uhnLOMEl8edTODVLEJaEg8XXGaCcQWEXCR2DzhGRNIEbNA
        C5PEzfmL2UASwkCJs9O3s3YxcnCwCKhIrLvADxLmFXCSuHd1EzvENjmJm+c6mUF6JQQamSSu
        X/7LBpEQkji9+CzzBEaeBYwMqxiFcjOTs1OLMrP1CjIqS1KT9VJSNzECA+vwRPVLOxj75ngc
        YmTiYDzEKMHBrCTCa3HsS7wQb0piZVVqUX58UWlOavEhRmkOFiVx3g28JWFCAumJJanZqakF
        qUUwWSYOTqkGRmXm+S1am1YentHtPE/TfOEVQaNu1yOCz2+17Mkw0VG0Uo7M674stUx/64a1
        75Q09onulJJo3Lb83pNrIU0ex98223JkSG47GLbMNeE595f9OhIRjxpus4kycKcbxB9f+VR+
        h9DltNr4zOk7Ntd7qcus1/h7bofqRoMH4SXf1/utfPzlZ2e0uRJLcUaioRZzUXEiABP3WS4a
        AgAA
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fourth version for the initial support for the SoM phyCORE-i.MX8MP
and the carrier board phyBOARD-Pollux.

Changes in v4:
- resolved defconfig conflict adding PCA9532 during rebase to v5.11-rc2
- removed unneeded status properties in device trees
- removed upstream not available i2c rtc property
- fixed i2c rtc trickle-resistor value

Changes in v3:
- removed deprecated led label property
- added Reviewed-by and Acked-by tags

Changes in v2:
- add rv3028 as module instead of buildin in defconfig
- updated commit message of rv3028 accordingly
- changed entries of device tree binding documentation to "const" 
  and fixed order
- fixed led dimmer node name
- removed rtc clock node
- fixed pmic node name
- removed reg entries in pmic regulator nodes
- removed clock entry from rtc node
- moved muxing of enable gpio for sd-card regulator to the proper node
- squashed imx8mp-phyboard-pollux.dtsi into imx8mp-phyboard-pollux-rdk.dts

Teresa

Teresa Remmet (4):
  arm64: defconfig: Enable rv3028 i2c rtc driver
  arm64: defconfig: Enable PCA9532 support
  bindings: arm: fsl: Add PHYTEC i.MX8MP devicetree bindings
  arm64: dts: freescale: Add support for phyBOARD-Pollux-i.MX8MP

 Documentation/devicetree/bindings/arm/fsl.yaml     |   6 +
 arch/arm64/boot/dts/freescale/Makefile             |   1 +
 .../dts/freescale/imx8mp-phyboard-pollux-rdk.dts   | 161 +++++++++++
 .../boot/dts/freescale/imx8mp-phycore-som.dtsi     | 293 +++++++++++++++++++++
 arch/arm64/configs/defconfig                       |   2 +
 5 files changed, 463 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-phyboard-pollux-rdk.dts
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-phycore-som.dtsi

-- 
2.7.4

