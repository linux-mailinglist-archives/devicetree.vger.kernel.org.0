Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6A9A01A78F7
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2020 12:58:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2438797AbgDNK56 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Apr 2020 06:57:58 -0400
Received: from metis.ext.pengutronix.de ([85.220.165.71]:49041 "EHLO
        metis.ext.pengutronix.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2438359AbgDNKcK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Apr 2020 06:32:10 -0400
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28] helo=dude02.lab.pengutronix.de)
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <mtr@pengutronix.de>)
        id 1jOIrN-0007Ba-EK; Tue, 14 Apr 2020 12:32:05 +0200
Received: from mtr by dude02.lab.pengutronix.de with local (Exim 4.92)
        (envelope-from <mtr@pengutronix.de>)
        id 1jOIrM-00018I-Uo; Tue, 14 Apr 2020 12:32:04 +0200
From:   Michael Tretter <m.tretter@pengutronix.de>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Rohit Visavalia <rohit.visavalia@xilinx.com>,
        Michal Simek <michal.simek@xilinx.com>,
        Rob Herring <robh+dt@kernel.org>,
        Dhaval Shah <dshah@xilinx.com>, kernel@pengutronix.de,
        Michael Tretter <m.tretter@pengutronix.de>
Subject: [PATCH v2 6/6] soc: xilinx: vcu: add missing register NUM_CORE
Date:   Tue, 14 Apr 2020 12:32:02 +0200
Message-Id: <20200414103202.4288-7-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200414103202.4288-1-m.tretter@pengutronix.de>
References: <20200414103202.4288-1-m.tretter@pengutronix.de>
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

The H.264/H.265 Video Codec Unit v1.2 documentation describes this
register as follows:

	Number of encoders core used for the provided configuration

This is required for configuring the VCU encoder buffer.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Changelog:

v1 -> v2:
- none
---
 include/linux/mfd/syscon/xlnx-vcu.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/linux/mfd/syscon/xlnx-vcu.h b/include/linux/mfd/syscon/xlnx-vcu.h
index d3edec4b7b1d..ff7bc3656f6e 100644
--- a/include/linux/mfd/syscon/xlnx-vcu.h
+++ b/include/linux/mfd/syscon/xlnx-vcu.h
@@ -32,6 +32,7 @@
 #define VCU_BUFFER_B_FRAME		0x5c
 #define VCU_WPP_EN			0x60
 #define VCU_PLL_CLK_DEC			0x64
+#define VCU_NUM_CORE			0x6c
 #define VCU_GASKET_INIT			0x74
 #define VCU_GASKET_VALUE		0x03
 
-- 
2.20.1

