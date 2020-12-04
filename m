Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5AC602CF5D5
	for <lists+devicetree@lfdr.de>; Fri,  4 Dec 2020 21:50:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729852AbgLDUt0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Dec 2020 15:49:26 -0500
Received: from mickerik.phytec.de ([195.145.39.210]:56224 "EHLO
        mickerik.phytec.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729843AbgLDUt0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Dec 2020 15:49:26 -0500
X-Greylist: delayed 941 seconds by postgrey-1.27 at vger.kernel.org; Fri, 04 Dec 2020 15:49:25 EST
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
        q=dns/txt; i=@phytec.de; t=1607113983; x=1609705983;
        h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=dnF4L/QNxERn77G0Rf0WYP4p7ng8DuJzQP/mAE64Xsk=;
        b=Noy0qnTHtPZazlXB6sT/khuz7G9WArsbPQcXNXe7rq3H4jb1xp8yU6qzRr4kNt2o
        w1ZEWhpxV/d4X+utbbtLrk9Yhtwfw3C8DVAOgKkbM+LkwJxN0EOyfHD0Gizrgfqy
        wFuvPXSO7pcIFD76+d5RNg3ifyQJ+UM/+zCBEXUtbek=;
X-AuditID: c39127d2-96bff70000006435-70-5fca9cfefc88
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
        by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id E2.74.25653.EFC9ACF5; Fri,  4 Dec 2020 21:33:02 +0100 (CET)
Received: from augenblix2.phytec.de ([172.16.0.56])
          by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
          with ESMTP id 2020120421330267-920465 ;
          Fri, 4 Dec 2020 21:33:02 +0100 
From:   Teresa Remmet <t.remmet@phytec.de>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Subject: [PATCH 0/4] Initial support for phyBOARD-Pollux i.MX8MP
Date:   Fri, 4 Dec 2020 21:32:58 +0100
Message-Id: <1607113982-109524-1-git-send-email-t.remmet@phytec.de>
X-Mailer: git-send-email 2.7.4
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 04.12.2020 21:33:02,
        Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 04.12.2020 21:33:02,
        Serialize complete at 04.12.2020 21:33:02
X-TNEFEvaluated: 1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrFJMWRmVeSWpSXmKPExsWyRoCBS/ffnFPxBhvuWVu8X9bDaDH/yDlW
        i4dX/S02Pb7GatG69wi7xd/tm1gsXmwRd2D3WDNvDaPHzll32T02repk89i8pN6j/6+Bx+dN
        cgFsUVw2Kak5mWWpRfp2CVwZc449Zi9YxFHxpOswWwPjQ7YuRk4OCQETiZ7rexm7GLk4hAS2
        MkqsezyDFcI5xyhx+sRtsCo2AQ2JpytOM4HYIgIuEp0P1rGAFDEL7GaU2PN5HStIQljAQWLe
        hpuMIDaLgIrEkf37wRp4BZwlGl78YoVYJydx81wnM0izhEAjk8Tf9ctYIBJCEqcXn2WewMiz
        gJFhFaNQbmZydmpRZrZeQUZlSWqyXkrqJkZg+ByeqH5pB2PfHI9DjEwcjIcYJTiYlUR4Y1VP
        xgvxpiRWVqUW5ccXleakFh9ilOZgURLn3cBbEiYkkJ5YkpqdmlqQWgSTZeLglGpg3PjrR2Xg
        ncl3rm44x8Pxr/xm8cH3a9vYN2popQt3q7VMlvhl58P7+uLLPvXCo0fPLipeemTrn233ux98
        iGgwTtxR+N9948b5jYEbNju67Pj+cNO/A97vglcezNjJwJ719Er5JUe+bKfLF1aw13y3jrwi
        xyhqfi52bvJHh9o3W/vMZvG7u8Q1ayqxFGckGmoxFxUnAgDkOk0tDQIAAA==
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

this patch stack adds initial support for the SoM phyCORE-i.MX8MP
and the carrier board phyBOARD-Pollux.

Teresa

Teresa Remmet (4):
  arm64: defconfig: Enable rv3028 i2c rtc driver
  arm64: defconfig: Enable PCA9532 support
  bindings: arm: fsl: Add PHYTEC i.MX8MP devicetree bindings
  arm64: dts: freescale: Add support for phyBOARD-Pollux-i.MX8MP

 Documentation/devicetree/bindings/arm/fsl.yaml     |   7 +
 arch/arm64/boot/dts/freescale/Makefile             |   1 +
 .../dts/freescale/imx8mp-phyboard-pollux-rdk.dts   |  16 ++
 .../boot/dts/freescale/imx8mp-phyboard-pollux.dtsi | 152 ++++++++++
 .../boot/dts/freescale/imx8mp-phycore-som.dtsi     | 319 +++++++++++++++++++++
 arch/arm64/configs/defconfig                       |   2 +
 6 files changed, 497 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-phyboard-pollux-rdk.dts
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-phyboard-pollux.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-phycore-som.dtsi

-- 
2.7.4

