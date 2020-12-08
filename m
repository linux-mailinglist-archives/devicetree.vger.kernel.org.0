Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6FE7D2D2FE3
	for <lists+devicetree@lfdr.de>; Tue,  8 Dec 2020 17:40:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730009AbgLHQiw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Dec 2020 11:38:52 -0500
Received: from mickerik.phytec.de ([195.145.39.210]:44808 "EHLO
        mickerik.phytec.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726810AbgLHQiw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Dec 2020 11:38:52 -0500
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
        q=dns/txt; i=@phytec.de; t=1607445491; x=1610037491;
        h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=xx0QBK6dma5ychvqlBG4xl4/YdrslEW2fCxbd2fXZ18=;
        b=Eb6chGscJgkRXsSt0ymOF/aUhUyT1SBlhQWE45pgbW8wJarXba70qUewcwDzdyp6
        nQa5BBRmM8CW1E81/NTHy3FIIofbJ7KzpBd80azkjKUMafpc3xH/vfhWFvEXxMoR
        mO4ABjh6XfCf6Piv1ZIbGJOOpMRxbN05FkGzpohUuPU=;
X-AuditID: c39127d2-981ff70000006435-a9-5fcfabf31b07
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
        by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 0B.23.25653.3FBAFCF5; Tue,  8 Dec 2020 17:38:11 +0100 (CET)
Received: from augenblix2.phytec.de ([172.16.0.56])
          by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
          with ESMTP id 2020120817381108-940638 ;
          Tue, 8 Dec 2020 17:38:11 +0100 
From:   Teresa Remmet <t.remmet@phytec.de>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH v2 0/4] Initial support for phyBOARD-Pollux i.MX8MP
Date:   Tue, 8 Dec 2020 17:38:07 +0100
Message-Id: <1607445491-208271-1-git-send-email-t.remmet@phytec.de>
X-Mailer: git-send-email 2.7.4
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 08.12.2020 17:38:11,
        Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 08.12.2020 17:38:11,
        Serialize complete at 08.12.2020 17:38:11
X-TNEFEvaluated: 1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrHJMWRmVeSWpSXmKPExsWyRoCBS/fz6vPxBs+mS1i8X9bDaDH/yDlW
        i4dX/S3On9/AbrHp8TVWi9a9R9gt/m7fxGLxYou4A4fHmnlrGD12zrrL7rFpVSebx+Yl9R79
        fw08Pm+SC2CL4rJJSc3JLEst0rdL4Mpoef+KuWA6d8W705YNjC2cXYycHBICJhITt21h7mLk
        4hAS2MooMXVfHxOEc45R4trHyWwgVWwCGhJPV5xmArFFBFwkNk94BlbELPCIUeLthGWMIAlh
        AWeJlTungTWwCKhILD30GSzOCxRvu3qFGWKdnMTNc51g6yQEGpkkbvzYCJUQkji9+CzzBEae
        BYwMqxiFcjOTs1OLMrP1CjIqS1KT9VJSNzECw+jwRPVLOxj75ngcYmTiYDzEKMHBrCTCqyZ1
        Nl6INyWxsiq1KD++qDQntfgQozQHi5I47wbekjAhgfTEktTs1NSC1CKYLBMHp1QDoyOXfmvJ
        mf6CyjnXHdyYXTsXFbDd12B2eB+/SlSqQsfcxGrt1OwVQenpfV9W9j//9eROt0vznqtdugYf
        nhwwdU6fm6i3RGbm7JP3ns5JPnfxeYDvz53z9WYtEpl1rTMjMsVYef9fgUt68yb965B7lMU+
        4cIdjYeZ73mnf7gTuaLjnTK/8BopcyWW4oxEQy3mouJEAM/A7XARAgAA
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Second version for the initial support for the SoM phyCORE-i.MX8MP
and the carrier board phyBOARD-Pollux.

Changes in v2:
- Add rv3028 as module instead of buildin in defconfig
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
 .../dts/freescale/imx8mp-phyboard-pollux-rdk.dts   | 166 ++++++++++++
 .../boot/dts/freescale/imx8mp-phycore-som.dtsi     | 296 +++++++++++++++++++++
 arch/arm64/configs/defconfig                       |   2 +
 5 files changed, 471 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-phyboard-pollux-rdk.dts
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-phycore-som.dtsi

-- 
2.7.4

