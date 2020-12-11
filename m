Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0806C2D76E9
	for <lists+devicetree@lfdr.de>; Fri, 11 Dec 2020 14:50:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387586AbgLKNuA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Dec 2020 08:50:00 -0500
Received: from mickerik.phytec.de ([195.145.39.210]:46182 "EHLO
        mickerik.phytec.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2391239AbgLKNth (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Dec 2020 08:49:37 -0500
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
        q=dns/txt; i=@phytec.de; t=1607694535; x=1610286535;
        h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=4KCCPkp/6s25V9wQmTKHknABts+NJhJ+XY43stNJro4=;
        b=susbmhjNBaC48fi7DNuSRkJxupJsqRGZI+qpfvn/gRlQGbC6EglCvY82Pff1Tw2A
        QDsF4s4bizY510Xq+wVFq7wk4pQDy6OvBOXkuyMFh5S9nTD9ybAqpwEVux/YCqDt
        ojfLMxBYkBj9Lz6SPoPcemhNJqe8mvT06u1pSHZ3erc=;
X-AuditID: c39127d2-96bff70000006435-1f-5fd378c7062b
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
        by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id CA.F7.25653.7C873DF5; Fri, 11 Dec 2020 14:48:55 +0100 (CET)
Received: from augenblix2.phytec.de ([172.16.0.56])
          by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
          with ESMTP id 2020121114485536-962992 ;
          Fri, 11 Dec 2020 14:48:55 +0100 
From:   Teresa Remmet <t.remmet@phytec.de>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Alexander Dahl <ada@thorsis.com>
Subject: [PATCH v3 0/4] Initial support for phyBOARD-Pollux i.MX8MP
Date:   Fri, 11 Dec 2020 14:48:51 +0100
Message-Id: <1607694535-417799-1-git-send-email-t.remmet@phytec.de>
X-Mailer: git-send-email 2.7.4
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 11.12.2020 14:48:55,
        Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 11.12.2020 14:48:55,
        Serialize complete at 11.12.2020 14:48:55
X-TNEFEvaluated: 1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmpjluLIzCtJLcpLzFFi42JZI8DApXu84nK8wZM3chZ9B5ks3i/rYbSY
        f+Qcq8XDq/4W589vYLfY9Pgaq0Xr3iPsFn+3b2KxeLFF3IHTY828NYweO2fdZffYtKqTzWPz
        knqP/r8GHuvmvmf3+LxJLoA9issmJTUnsyy1SN8ugStjxbmLjAU/uCuWHdvE2MB4kbOLkZND
        QsBEonNODzuILSSwlVHi9qfQLkYuIPs8o8Tc+asZQRJsAhoST1ecZgKxRQRcJDZPeMYEUsQs
        0MIkcXP+YrYuRg4OYQFniXPHS0FqWARUJSYv+wRWzwsUvt53hA1imZzEzXOdzCC9EgKNTBJr
        Z8xmgkgISZxefJZ5AiPPAkaGVYxCuZnJ2alFmdl6BRmVJanJeimpmxiBYXV4ovqlHYx9czwO
        MTJxMB5ilOBgVhLhlWW5FC/Em5JYWZValB9fVJqTWnyIUZqDRUmcdwNvSZiQQHpiSWp2ampB
        ahFMlomDU6qBcVun9KxOm0KF1PDMjc/rnl/ek9RU1l37u9oyua9A4co8CfHnf7ICODxabOsl
        4hafWXnivEVi6o53H9bsaevbZee3e8dn3bdpourzS6dN0LS59v4zs0e3AF8+n22l3mwnJZeJ
        zyZd+m+ryaIedUT0HdNs15PnjzS/NElkuX3ca7p1dqTr1n01SizFGYmGWsxFxYkAzVzcHxkC
        AAA=
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Third version for the initial support for the SoM phyCORE-i.MX8MP
and the carrier board phyBOARD-Pollux.

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
 .../dts/freescale/imx8mp-phyboard-pollux-rdk.dts   | 163 ++++++++++++
 .../boot/dts/freescale/imx8mp-phycore-som.dtsi     | 296 +++++++++++++++++++++
 arch/arm64/configs/defconfig                       |   2 +
 5 files changed, 468 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-phyboard-pollux-rdk.dts
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-phycore-som.dtsi

-- 
2.7.4

