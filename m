Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3AF535E6E96
	for <lists+devicetree@lfdr.de>; Thu, 22 Sep 2022 23:40:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229647AbiIVVki (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Sep 2022 17:40:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38842 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231237AbiIVVkh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Sep 2022 17:40:37 -0400
Received: from inva020.nxp.com (inva020.nxp.com [92.121.34.13])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 514B0F6864;
        Thu, 22 Sep 2022 14:40:35 -0700 (PDT)
Received: from inva020.nxp.com (localhost [127.0.0.1])
        by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id B43A61B3DBF;
        Thu, 22 Sep 2022 23:40:33 +0200 (CEST)
Received: from smtp.na-rdc02.nxp.com (usphx01srsp001v.us-phx01.nxp.com [134.27.49.11])
        by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 7505A1A0A30;
        Thu, 22 Sep 2022 23:40:33 +0200 (CEST)
Received: from right.am.freescale.net (right.am.freescale.net [10.81.116.134])
        by usphx01srsp001v.us-phx01.nxp.com (Postfix) with ESMTP id 3438940A9F;
        Thu, 22 Sep 2022 14:40:32 -0700 (MST)
From:   Li Yang <leoyang.li@nxp.com>
To:     shawnguo@kernel.org, devicetree@vger.kernel.org
Cc:     robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, Li Yang <leoyang.li@nxp.com>
Subject: [PATCH v3 0/9] accumulated dts updates for ls1046a
Date:   Thu, 22 Sep 2022 16:40:21 -0500
Message-Id: <20220922214030.9004-1-leoyang.li@nxp.com>
X-Mailer: git-send-email 2.25.1.377.g2d2118b
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: ClamAV using ClamSMTP
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

v2 updates:
- Style fixes
- Updated to use MACROs for interrupt and gpio property
- Remove dma-coherent for remaining nodes under SoC

v3 updates:
- Added dma-noncoherent exception for edma


Hou Zhiqiang (1):
  arm64: dts: ls1046a: Add big-endian property for PCIe nodes

Laurentiu Tudor (2):
  arm64: dts: ls1046a: add missing dma ranges property
  arm64: dts: ls1046a: use a pseudo-bus to constrain usb and sata dma
    size

Li Yang (4):
  arm64: dts: ls1046a: Enable usb3-lpm-capable for usb3 node
  arm64: dts: ls1046a: make dma-coherent global to the SoC
  arm64: dts: ls1046a: add gpios based i2c recovery information
  arm64: dts: ls1046a-qds: add mmio based mdio-mux nodes for FPGA

Pankaj Bansal (1):
  arm64: dts: ls1046a-qds: Modify the qspi flash frequency

Xiaowei Bao (1):
  arm64: dts: ls1046a: Add the PME interrupt and big-endian to PCIe EP
    nodes

 .../boot/dts/freescale/fsl-ls1046a-qds.dts    | 157 +++++++++++++++++-
 .../arm64/boot/dts/freescale/fsl-ls1046a.dtsi | 118 ++++++++-----
 2 files changed, 226 insertions(+), 49 deletions(-)

-- 
2.37.1

