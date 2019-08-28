Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B7DA9A05D2
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2019 17:12:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726439AbfH1PMq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Aug 2019 11:12:46 -0400
Received: from mail.nic.cz ([217.31.204.67]:33052 "EHLO mail.nic.cz"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726513AbfH1PMq (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 28 Aug 2019 11:12:46 -0400
Received: from dellmb.labs.office.nic.cz (unknown [IPv6:2001:1488:fffe:6:cac7:3539:7f1f:463])
        by mail.nic.cz (Postfix) with ESMTP id 8EC0C14098C;
        Wed, 28 Aug 2019 17:12:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nic.cz; s=default;
        t=1567005164; bh=VmL2wTPYp1MPQKyMxFIRG4LqayHmtUbkqhR9Pz7swrY=;
        h=From:To:Date;
        b=nMRsqPd5q6dgWh+4EsvOaJoDziieiTr5ZuTazkXoM/1/DjDe1bPWgEDxKBsI8/11Z
         WsYqcClQ31a3oQSiZRaucVLMgZkVvYjRW9JELv9Cm6Ixda7g9R2ORtngmzDqWpFkyy
         p+bpPHYdi8axdRvdjsu9J/bk7AWv5q0ZP1lDlYRE=
From:   =?UTF-8?q?Marek=20Beh=C3=BAn?= <marek.behun@nic.cz>
To:     arm@kernel.org
Cc:     Gregory CLEMENT <gregory.clement@bootlin.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        Andrew Lunn <andrew@lunn.ch>,
        =?UTF-8?q?Marek=20Beh=C3=BAn?= <marek.behun@nic.cz>,
        "Rafael J . Wysocki" <rafael.j.wysocki@intel.com>
Subject: [PATCH v2 mvebu-dt64 2/3] dt-bindings: marvell: document Turris Mox compatible
Date:   Wed, 28 Aug 2019 17:12:42 +0200
Message-Id: <20190828151243.23542-3-marek.behun@nic.cz>
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

This adds the documentation for the Turris Mox compatible in armada-37xx
device-tree binding documentation.

Signed-off-by: Marek Behún <marek.behun@nic.cz>
Cc: Gregory CLEMENT <gregory.clement@bootlin.com>
Cc: Rob Herring <robh@kernel.org>
Cc: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
---
 .../devicetree/bindings/arm/marvell/armada-37xx.txt       | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/marvell/armada-37xx.txt b/Documentation/devicetree/bindings/arm/marvell/armada-37xx.txt
index eddde4faef01..f6d6642d81c0 100644
--- a/Documentation/devicetree/bindings/arm/marvell/armada-37xx.txt
+++ b/Documentation/devicetree/bindings/arm/marvell/armada-37xx.txt
@@ -48,3 +48,11 @@ avs: avs@11500 {
 	compatible = "marvell,armada-3700-avs", "syscon";
 	reg = <0x11500 0x40>;
 }
+
+
+CZ.NIC's Turris Mox SOHO router Device Tree Bindings
+----------------------------------------------------
+
+Required root node property:
+
+ - compatible: must contain "cznic,turris-mox"
-- 
2.21.0

