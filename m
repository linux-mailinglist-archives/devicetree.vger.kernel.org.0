Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E0999330664
	for <lists+devicetree@lfdr.de>; Mon,  8 Mar 2021 04:28:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231941AbhCHD1i (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 7 Mar 2021 22:27:38 -0500
Received: from inva020.nxp.com ([92.121.34.13]:40194 "EHLO inva020.nxp.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S233948AbhCHD13 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 7 Mar 2021 22:27:29 -0500
Received: from inva020.nxp.com (localhost [127.0.0.1])
        by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 316CD1A09DF;
        Mon,  8 Mar 2021 04:27:24 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com [165.114.16.14])
        by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 144FB1A09E4;
        Mon,  8 Mar 2021 04:27:19 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net [10.192.224.44])
        by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 653554033B;
        Mon,  8 Mar 2021 04:27:13 +0100 (CET)
From:   Dong Aisheng <aisheng.dong@nxp.com>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     dongas86@gmail.com, kernel@pengutronix.de, shawnguo@kernel.org,
        robh+dt@kernel.org, linux-imx@nxp.com, jan.kiszka@siemens.com,
        Dong Aisheng <aisheng.dong@nxp.com>
Subject: [PATCH RESEND V5 00/14] arm64: dts: imx8: architecture improvement and adding imx8qm support
Date:   Mon,  8 Mar 2021 11:14:16 +0800
Message-Id: <1615173270-6289-1-git-send-email-aisheng.dong@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

IMX SCU based platforms (e.g. MX8QM/MX8QXP) are comprised of a number of SS
(Subsystems), those SS may be shared between different SoCs while most of them
can be reused like Devices Resources, Clocks, Power domains and etc.

This patch series aims to improve the MX8 architecture to comply with the HW
design to save a lot of duplicated codes and benefits us a better
maintainability and scalability in the future.

ChangeLog:
v5-resend:
 * no changes but rebase to lastest shawn/for-next
v5:
 * rebase to latest shawn/for-next
 * make mx8qm usdhc compatible with imx8qxp
v4-resend:
 * no change except put three module binding patches first which are used
   by this patchset.
v3->v4:
 * mainly rebase to latest kernel except a few very minor changes like change to use
   new scu protocol binding which was not supported in last version
v2->v3:
 * use clock-indices property instead of bit-offset property suggested by Shawn Guo
 * rebase to latest shawn/for-next
v1->v2:
 * change to the new two cells scu clock binding, so original adding scu clocks
   patches were removed.
 * Move scu pd node above clk node


Dong Aisheng (14):
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

 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../boot/dts/freescale/imx8-ss-adma.dtsi      |   8 +
 .../boot/dts/freescale/imx8-ss-audio.dtsi     |  68 +++
 .../boot/dts/freescale/imx8-ss-conn.dtsi      | 184 ++++++++
 .../arm64/boot/dts/freescale/imx8-ss-ddr.dtsi |  18 +
 .../arm64/boot/dts/freescale/imx8-ss-dma.dtsi | 202 +++++++++
 .../boot/dts/freescale/imx8-ss-lsio.dtsi      | 311 +++++++++++++
 arch/arm64/boot/dts/freescale/imx8qm-mek.dts  | 144 ++++++
 .../boot/dts/freescale/imx8qm-ss-conn.dtsi    |  21 +
 .../boot/dts/freescale/imx8qm-ss-dma.dtsi     |  51 +++
 .../boot/dts/freescale/imx8qm-ss-lsio.dtsi    |  61 +++
 arch/arm64/boot/dts/freescale/imx8qm.dtsi     | 176 ++++++++
 .../boot/dts/freescale/imx8qxp-ai_ml.dts      |  20 +-
 .../freescale/imx8qxp-colibri-eval-v3.dtsi    |   8 +-
 .../boot/dts/freescale/imx8qxp-colibri.dtsi   |  12 +-
 arch/arm64/boot/dts/freescale/imx8qxp-mek.dts |  50 +--
 .../boot/dts/freescale/imx8qxp-ss-adma.dtsi   |  37 ++
 .../boot/dts/freescale/imx8qxp-ss-conn.dtsi   |  25 ++
 .../boot/dts/freescale/imx8qxp-ss-lsio.dtsi   |  61 +++
 arch/arm64/boot/dts/freescale/imx8qxp.dtsi    | 423 ++----------------
 20 files changed, 1443 insertions(+), 438 deletions(-)
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
2.25.1

