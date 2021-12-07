Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DD48346B902
	for <lists+devicetree@lfdr.de>; Tue,  7 Dec 2021 11:28:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235130AbhLGKcB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Dec 2021 05:32:01 -0500
Received: from twspam01.aspeedtech.com ([211.20.114.71]:45271 "EHLO
        twspam01.aspeedtech.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235199AbhLGKb7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Dec 2021 05:31:59 -0500
Received: from mail.aspeedtech.com ([192.168.0.24])
        by twspam01.aspeedtech.com with ESMTP id 1B7A33T9003133;
        Tue, 7 Dec 2021 18:03:03 +0800 (GMT-8)
        (envelope-from tommy_huang@aspeedtech.com)
Received: from tommy0527-VirtualBox.aspeedtech.com (192.168.2.141) by
 TWMBX02.aspeed.com (192.168.0.24) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 7 Dec 2021 18:27:58 +0800
From:   Tommy Haung <tommy_huang@aspeedtech.com>
To:     <joel@jms.id.au>, <airlied@linux.ie>, <daniel@ffwll.ch>,
        <robh+dt@kernel.org>, <andrew@aj.id.au>,
        <linux-aspeed@lists.ozlabs.org>, <dri-devel@lists.freedesktop.org>,
        <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>
CC:     <BMC-SW@aspeedtech.com>, tommy-huang <tommy_huang@aspeedtech.com>
Subject: [PATCH v4 4/6] drm/aspeed: Add AST2600 chip support
Date:   Tue, 7 Dec 2021 18:27:47 +0800
Message-ID: <20211207102749.18118-6-tommy_huang@aspeedtech.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20211207102749.18118-1-tommy_huang@aspeedtech.com>
References: <20211207102749.18118-1-tommy_huang@aspeedtech.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [192.168.2.141]
X-ClientProxiedBy: TWMBX02.aspeed.com (192.168.0.24) To TWMBX02.aspeed.com
 (192.168.0.24)
X-DNSRBL: 
X-MAIL: twspam01.aspeedtech.com 1B7A33T9003133
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: tommy-huang <tommy_huang@aspeedtech.com>

Add AST2600 chip support and setting.

Signed-off-by: tommy-huang <tommy_huang@aspeedtech.com>
---
 drivers/gpu/drm/aspeed/aspeed_gfx_drv.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/aspeed/aspeed_gfx_drv.c b/drivers/gpu/drm/aspeed/aspeed_gfx_drv.c
index d4b56b3c7597..d10246b1d1c2 100644
--- a/drivers/gpu/drm/aspeed/aspeed_gfx_drv.c
+++ b/drivers/gpu/drm/aspeed/aspeed_gfx_drv.c
@@ -82,9 +82,18 @@ static const struct aspeed_gfx_config ast2500_config = {
 	.scan_line_max = 128,
 };
 
+static const struct aspeed_gfx_config ast2600_config = {
+	.dac_reg = 0xc0,
+	.int_clear_reg = 0x68,
+	.vga_scratch_reg = 0x50,
+	.throd_val = CRT_THROD_LOW(0x50) | CRT_THROD_HIGH(0x70),
+	.scan_line_max = 128,
+};
+
 static const struct of_device_id aspeed_gfx_match[] = {
 	{ .compatible = "aspeed,ast2400-gfx", .data = &ast2400_config },
 	{ .compatible = "aspeed,ast2500-gfx", .data = &ast2500_config },
+	{ .compatible = "aspeed,ast2600-gfx", .data = &ast2600_config },
 	{ },
 };
 MODULE_DEVICE_TABLE(of, aspeed_gfx_match);
-- 
2.17.1

