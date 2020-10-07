Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 413322869A5
	for <lists+devicetree@lfdr.de>; Wed,  7 Oct 2020 22:57:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727819AbgJGU5I (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Oct 2020 16:57:08 -0400
Received: from inva021.nxp.com ([92.121.34.21]:41720 "EHLO inva021.nxp.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726013AbgJGU5I (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 7 Oct 2020 16:57:08 -0400
Received: from inva021.nxp.com (localhost [127.0.0.1])
        by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 17E5420762E;
        Wed,  7 Oct 2020 22:52:20 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com [134.27.226.22])
        by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id CC46F207F2E;
        Wed,  7 Oct 2020 22:39:49 +0200 (CEST)
Received: from fsr-ub1864-126.ea.freescale.net (fsr-ub1864-126.ea.freescale.net [10.171.82.212])
        by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 8FDE0202CA;
        Wed,  7 Oct 2020 22:39:49 +0200 (CEST)
From:   Ioana Ciornei <ioana.ciornei@nxp.com>
To:     robh+dt@kernel.org, shawnguo@kernel.org
Cc:     leoyang.li@nxp.com, devicetree@vger.kernel.org,
        Ioana Ciornei <ioana.ciornei@nxp.com>
Subject: [PATCH v3 00/11] arm64: dts: layerscape: update MAC nodes with PHY information
Date:   Wed,  7 Oct 2020 23:39:25 +0300
Message-Id: <20201007203936.23953-1-ioana.ciornei@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch set aims to add the necessary DTS nodes to complete the
MAC/PCS/PHY representation on DPAA2 devices. The external MDIO bus nodes
and the PHYs found on them are added, along with the PCS MDIO internal
buses and their PCS PHYs. Also, links to these PHYs are added from the
DPMAC node.

Changes in v2:
 - documented the dpmac node into a new yaml entry
 - dropped the '0x' from some unit addresses

Changes in v3:
 - renamed dpmac@x into ethernet@x
 - renamed the new documentation file to use the same name as the
   compatible
 - marked additionalProperties as false
 - added a reference to ethernet-controller.yaml
 - added a new patch to document 10gbase-r - 2/11

Ioana Ciornei (11):
  dt-bindings: net: add the DPAA2 MAC DTS definition
  dt-bindings: net: add the 10gbase-r connection type
  arm64: dts: ls1088a: add external MDIO device nodes
  arm64: dts: ls1088ardb: add QSGMII PHY nodes
  arm64: dts: ls1088ardb: add necessary DTS nodes for DPMAC2
  arm64: dts: ls208xa: add the external MDIO nodes
  arm64: dts: ls2088ardb: add PHY nodes for the CS4340 PHYs
  arm64: dts: ls2088ardb: add PHY nodes for the AQR405 PHYs
  arm64: dts: ls208xa: add PCS MDIO and PCS PHY nodes
  arm64: dts: lx2160a: add PCS MDIO and PCS PHY nodes
  arm64: dts: lx2160ardb: add nodes for the AQR107 PHYs

 .../bindings/net/ethernet-controller.yaml     |   1 +
 .../bindings/net/fsl,qoriq-mc-dpmac.yaml      |  60 ++++
 .../boot/dts/freescale/fsl-ls1088a-rdb.dts    | 119 ++++++++
 .../arm64/boot/dts/freescale/fsl-ls1088a.dtsi | 101 +++++-
 .../boot/dts/freescale/fsl-ls2088a-rdb.dts    | 118 +++++++
 .../arm64/boot/dts/freescale/fsl-ls208xa.dtsi | 274 ++++++++++++++++-
 .../boot/dts/freescale/fsl-lx2160a-rdb.dts    |  32 ++
 .../arm64/boot/dts/freescale/fsl-lx2160a.dtsi | 288 ++++++++++++++++--
 8 files changed, 949 insertions(+), 44 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/net/fsl,qoriq-mc-dpmac.yaml

-- 
2.28.0

