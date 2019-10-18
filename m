Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5D7FDDCA4D
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2019 18:07:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2502341AbfJRQHn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Oct 2019 12:07:43 -0400
Received: from metis.ext.pengutronix.de ([85.220.165.71]:38359 "EHLO
        metis.ext.pengutronix.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2501965AbfJRQHn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Oct 2019 12:07:43 -0400
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28] helo=dude02.lab.pengutronix.de)
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <mtr@pengutronix.de>)
        id 1iLUmx-0002BR-RU; Fri, 18 Oct 2019 18:07:39 +0200
Received: from mtr by dude02.lab.pengutronix.de with local (Exim 4.92)
        (envelope-from <mtr@pengutronix.de>)
        id 1iLUmw-0004AF-4q; Fri, 18 Oct 2019 18:07:38 +0200
From:   Michael Tretter <m.tretter@pengutronix.de>
To:     robh+dt@kernel.org, mark.rutland@arm.com, michal.simek@xilinx.com,
        devicetree@vger.kernel.org
Cc:     linux-arm-kernel@lists.infradead.org,
        Michael Tretter <m.tretter@pengutronix.de>
Subject: [PATCH 0/5] arm64: zynqmp: add firmware device tree node
Date:   Fri, 18 Oct 2019 18:07:30 +0200
Message-Id: <20191018160735.15658-1-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: mtr@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

this patch series adds the device tree node for the ZynqMP PMU firmware and
the subnodes for the pcap fpga loader and the efuses to the ZynqMP device
tree. While the bindings have been mainlined, the actual device tree nodes
were never added to mainline, but were left in the Xilinx downstream
repository [0].

I cherry-picked the patches from the downstream repo and slightly adjusted
them to the mainlined device tree bindings to be able to actually use the
devices with the mainline kernel and device tree.

Michael

[0] https://github.com/Xilinx/linux-xlnx

Durga Challa (1):
  arm64: zynqmp: Add data cells to access efuse

Nava kishore Manne (3):
  arm64: zynqmp: Add support for zynqmp fpga manager
  arm64: zynqmp: Label whole PL part as fpga_full region
  arm64: zynqmp: Add support for zynqmp nvmem firmware driver

Rajan Vaja (1):
  arm64: zynqmp: Add firmware DT node

 arch/arm64/boot/dts/xilinx/zynqmp.dtsi | 77 ++++++++++++++++++++++++++
 1 file changed, 77 insertions(+)

-- 
2.20.1

