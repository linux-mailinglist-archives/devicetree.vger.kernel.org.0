Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4813B24AC83
	for <lists+devicetree@lfdr.de>; Thu, 20 Aug 2020 03:03:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726482AbgHTBDr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Aug 2020 21:03:47 -0400
Received: from lelv0143.ext.ti.com ([198.47.23.248]:38748 "EHLO
        lelv0143.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726673AbgHTBDp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Aug 2020 21:03:45 -0400
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 07K13avf125129;
        Wed, 19 Aug 2020 20:03:36 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1597885416;
        bh=6kJbgIztwtOyZC+MYEW+cLzplJX1YTK6baG39qI5lm0=;
        h=From:To:CC:Subject:Date;
        b=sqFEG2SSD7MQjP8gwAP6pBr1AlheaOWCBXqfaGgRZKefLbZ+4i+1cFRQzRbWxDIQt
         l7TyKYdSiqT3gUdqiCXPh/hbnteeVHMddFPNRxgjxlZIIV76mhxfL0RFd/cgIp9SL2
         qOItHbBbxvsflOGROmwwjKwOQy0vpjuomnhszIIs=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 07K13a1P064919;
        Wed, 19 Aug 2020 20:03:36 -0500
Received: from DLEE107.ent.ti.com (157.170.170.37) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 19
 Aug 2020 20:03:36 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 19 Aug 2020 20:03:36 -0500
Received: from fllv0103.dal.design.ti.com (fllv0103.dal.design.ti.com [10.247.120.73])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 07K13alC009739;
        Wed, 19 Aug 2020 20:03:36 -0500
Received: from localhost ([10.250.32.29])
        by fllv0103.dal.design.ti.com (8.14.7/8.14.7) with ESMTP id 07K13ZeL022524;
        Wed, 19 Aug 2020 20:03:36 -0500
From:   Suman Anna <s-anna@ti.com>
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>
CC:     <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, Suman Anna <s-anna@ti.com>
Subject: [PATCH 0/7] Add C66x & C71x DSP nodes on J721E SoCs
Date:   Wed, 19 Aug 2020 20:03:24 -0500
Message-ID: <20200820010331.2911-1-s-anna@ti.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Nishanth, Tero,

The following series adds the base dt nodes for the 2 C66x and 1 C71x
DSP remote processors present in MAIN domain on J721E SoCs, and the
required nodes to boot these successfully on J721E EVM board. The DSP
remoteproc driver and bindings have been merged into 5.9-rc1. The
series uses previously accepted mailbox nodes.

I have validated the IPC functionality using the latest System Firmware.
The series itself is not directly influenced by the SYSFW version, only
the referenced mailbox interrupts properties get modified as part of
the ABI 3.0 changes. These are already handled in a pending pull-request
for 5.9-rc2 [1].

regards
Suman

[1] https://lore.kernel.org/patchwork/patch/1290231/

Suman Anna (7):
  arm64: dts: ti: k3-j721e-main: Add C66x DSP nodes
  arm64: dts: ti: k3-j721e-common-proc-board: Add mailboxes to C66x DSPs
  arm64: dts: ti: k3-j721e-som-p0: Add DDR carveout memory nodes for C66
    DSPs
  arm64: dts: ti: k3-j721e-main: Add C71x DSP node
  arm64: dts: ti: k3-j721e-common-proc-board: Add mailboxes to C71x DSP
  arm64: dts: ti: k3-j721e-som-p0: Add DDR carveout memory nodes for
    C71x DSP
  arm64: dts: ti: k3-j721e-som-p0: Reserve memory for IPC between RTOS
    cores

 .../dts/ti/k3-j721e-common-proc-board.dts     | 12 ++++
 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi     | 38 +++++++++++++
 arch/arm64/boot/dts/ti/k3-j721e-som-p0.dtsi   | 57 +++++++++++++++++++
 3 files changed, 107 insertions(+)

-- 
2.28.0

