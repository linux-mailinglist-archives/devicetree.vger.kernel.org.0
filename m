Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 49CC7A05D0
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2019 17:12:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726617AbfH1PMq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Aug 2019 11:12:46 -0400
Received: from mail.nic.cz ([217.31.204.67]:33044 "EHLO mail.nic.cz"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726504AbfH1PMq (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 28 Aug 2019 11:12:46 -0400
Received: from dellmb.labs.office.nic.cz (unknown [IPv6:2001:1488:fffe:6:cac7:3539:7f1f:463])
        by mail.nic.cz (Postfix) with ESMTP id 6B374140720;
        Wed, 28 Aug 2019 17:12:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nic.cz; s=default;
        t=1567005164; bh=6bpAE8vnf/1dQ7lWI0s43Hp/7du0+zRjj/dcu0/X5mw=;
        h=From:To:Date;
        b=hyvSlgW27Fz9Hz4J8qAT+CXSJ+QSpB5vS5YaDbXtlFQVHIeLnU19ibDDUCHtmm/td
         Imj4pw6LtFP0VzRIxeQVaWKXQbgfS/uaYZLjtVhdWub9J+hZsTyAS9m4Nw8omK4m+Q
         uY4BUmABmIQJ48/COdqgeLFUQvS0Fz+wCrXiGmQg=
From:   =?UTF-8?q?Marek=20Beh=C3=BAn?= <marek.behun@nic.cz>
To:     arm@kernel.org
Cc:     Gregory CLEMENT <gregory.clement@bootlin.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        Andrew Lunn <andrew@lunn.ch>,
        =?UTF-8?q?Marek=20Beh=C3=BAn?= <marek.behun@nic.cz>
Subject: [PATCH v2 mvebu-dt64 1/3] arm64: dts: marvell: armada-37xx: add SPI CS1 pinctrl
Date:   Wed, 28 Aug 2019 17:12:41 +0200
Message-Id: <20190828151243.23542-2-marek.behun@nic.cz>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190828151243.23542-1-marek.behun@nic.cz>
References: <20190828151243.23542-1-marek.behun@nic.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.100.3 at mail.nic.cz
X-Virus-Status: Clean
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,SHORTCIRCUIT
        shortcircuit=ham autolearn=disabled version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.nic.cz
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds pinctrl node for the GPIO to be used as SPI chip select 1.

Signed-off-by: Marek Behún <marek.behun@nic.cz>
Cc: Gregory CLEMENT <gregory.clement@bootlin.com>
---
 arch/arm64/boot/dts/marvell/armada-37xx.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/marvell/armada-37xx.dtsi b/arch/arm64/boot/dts/marvell/armada-37xx.dtsi
index f43c43168b00..10812a556829 100644
--- a/arch/arm64/boot/dts/marvell/armada-37xx.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-37xx.dtsi
@@ -215,6 +215,11 @@
 					function = "spi";
 				};
 
+				spi_cs1_pins: spi-cs1-pins {
+					groups = "spi_cs1";
+					function = "spi";
+				};
+
 				i2c1_pins: i2c1-pins {
 					groups = "i2c1";
 					function = "i2c";
-- 
2.21.0

