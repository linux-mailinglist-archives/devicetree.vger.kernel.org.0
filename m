Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 66389B1222
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2019 17:32:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1733069AbfILPcL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Sep 2019 11:32:11 -0400
Received: from inva020.nxp.com ([92.121.34.13]:40230 "EHLO inva020.nxp.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1733001AbfILPcL (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 12 Sep 2019 11:32:11 -0400
Received: from inva020.nxp.com (localhost [127.0.0.1])
        by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 939CF1A0695;
        Thu, 12 Sep 2019 17:32:08 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com [165.114.16.14])
        by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id D9E0F1A068E;
        Thu, 12 Sep 2019 17:32:02 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net [10.192.224.44])
        by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id E9BDD402AE;
        Thu, 12 Sep 2019 23:31:55 +0800 (SGT)
From:   Dong Aisheng <aisheng.dong@nxp.com>
To:     linux-arm-kernel@lists.infradead.org
Cc:     dongas86@gmail.com, kernel@pengutronix.de, shawnguo@kernel.org,
        fabio.estevam@nxp.com, robh+dt@kernel.org, catalin.marinas@arm.com,
        will.deacon@arm.com, devicetree@vger.kernel.org, linux-imx@nxp.com,
        oliver.graute@gmail.com, Dong Aisheng <aisheng.dong@nxp.com>
Subject: [PATCH V3 00/15] arm64: dts: imx8: architecture improvement and adding imx8qm support
Date:   Thu, 12 Sep 2019 23:30:37 +0800
Message-Id: <1568302252-28066-1-git-send-email-aisheng.dong@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

IMX SCU based platforms (e.g. MX8QM/MX8QXP) are comprised of a number of SS
(Subsystems), those SS may be shared between different SoCs while most of them
can be reused like Devices Resources, Clocks, Power domains and etc.

This patch series aims to improve the MX8 architecture to comply with the HW
design to save a lot of duplicated codes and benefits us a better
maintainability and scalability in the future.

This patch series depends on another clk new binding series:
https://patchwork.kernel.org/cover/11046287/

NOTE: for the missing undocumented compatible strings for the new SoC IMX8QM
in this patch series. It will be sent in another patch series later.

ChangeLog:
v2->v3:
 * use clock-indices property instead of bit-offset property suggested by Shawn Guo
 * rebase to latest shawn/for-next
v1->v2:
 * change to the new two cells scu clock binding, so original adding scu clocks
   patches were removed.
 * Move scu pd node above clk node

Dong Aisheng (15):
  arm64: dts: imx8qxp: add fallback compatible string for scu pd
  arm64: dts: imx8qxp: move scu pd node before scu clock node
  arm64: dts: imx8qxp: orginize dts in subsystems
  arm64: dts: imx8: add lsio lpcg clocks
  arm64: dts: imx8: add conn lpcg clocks
  arm64: dts: imx8: add adma lpcg clocks
  arm64: dts: imx8: switch to two cell scu clock binding
  arm64: dts: imx8: switch to new lpcg clock binding
  arm64: dts: imx8qm: add lsio ss support
  arm64: dts: imx8qm: add conn ss support
  arm64: dts: imx8: split adma ss into dma and audio ss
  arm64: dts: imx8qm: add dma ss support
  arm64: dts: imx: add imx8qm common dts file
  arm64: dts: imx: add imx8qm mek support
  arm64: defconfig: add imx8qm mek support

 arch/arm64/boot/dts/freescale/Makefile             |   1 +
 arch/arm64/boot/dts/freescale/imx8-ss-adma.dtsi    |   8 +
 arch/arm64/boot/dts/freescale/imx8-ss-audio.dtsi   |  67 ++++
 arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi    | 192 +++++++++
 arch/arm64/boot/dts/freescale/imx8-ss-ddr.dtsi     |  19 +
 arch/arm64/boot/dts/freescale/imx8-ss-dma.dtsi     | 209 ++++++++++
 arch/arm64/boot/dts/freescale/imx8-ss-lsio.dtsi    | 310 +++++++++++++++
 arch/arm64/boot/dts/freescale/imx8qm-mek.dts       | 144 +++++++
 arch/arm64/boot/dts/freescale/imx8qm-ss-conn.dtsi  |  21 +
 arch/arm64/boot/dts/freescale/imx8qm-ss-dma.dtsi   |  51 +++
 arch/arm64/boot/dts/freescale/imx8qm-ss-lsio.dtsi  |  61 +++
 arch/arm64/boot/dts/freescale/imx8qm.dtsi          | 180 +++++++++
 arch/arm64/boot/dts/freescale/imx8qxp-ai_ml.dts    |  16 +-
 arch/arm64/boot/dts/freescale/imx8qxp-mek.dts      |   8 +-
 arch/arm64/boot/dts/freescale/imx8qxp-ss-adma.dtsi |  37 ++
 arch/arm64/boot/dts/freescale/imx8qxp-ss-conn.dtsi |  21 +
 arch/arm64/boot/dts/freescale/imx8qxp-ss-lsio.dtsi |  61 +++
 arch/arm64/boot/dts/freescale/imx8qxp.dtsi         | 431 ++-------------------
 arch/arm64/configs/defconfig                       |   1 +
 19 files changed, 1420 insertions(+), 418 deletions(-)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8-ss-adma.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8-ss-audio.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8-ss-ddr.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8-ss-dma.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8-ss-lsio.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8qm-mek.dts
 create mode 100644 arch/arm64/boot/dts/freescale/imx8qm-ss-conn.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8qm-ss-dma.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8qm-ss-lsio.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8qm.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8qxp-ss-adma.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8qxp-ss-conn.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8qxp-ss-lsio.dtsi

-- 
2.7.4

