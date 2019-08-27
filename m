Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 164029EC6D
	for <lists+devicetree@lfdr.de>; Tue, 27 Aug 2019 17:24:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730196AbfH0PX5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Aug 2019 11:23:57 -0400
Received: from mail.nic.cz ([217.31.204.67]:46820 "EHLO mail.nic.cz"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1730241AbfH0PXw (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 27 Aug 2019 11:23:52 -0400
Received: from dellmb.labs.office.nic.cz (unknown [IPv6:2001:1488:fffe:6:cac7:3539:7f1f:463])
        by mail.nic.cz (Postfix) with ESMTP id 4788D140934;
        Tue, 27 Aug 2019 17:16:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nic.cz; s=default;
        t=1566919005; bh=KLymTAMP5cjLy646wdinuh6uMM0CZWCSJYTCyJQ64hw=;
        h=From:To:Date;
        b=j/dBQLGuyJpasTv6nPze0pv6K3g4swzE/uUNS0Ic6wRomucbcHmUraz/qdnogYYsE
         IXlQau+myC93VmmNdyJzmJyM3PWt288vnR6+qCduEqGFwl8nWu1KVanovRRJyPz/jp
         O0kId0jM5UbQCTTA7Me3p+TJmnSK1NyedmzVybI8=
From:   =?UTF-8?q?Marek=20Beh=C3=BAn?= <marek.behun@nic.cz>
To:     arm@kernel.org
Cc:     Gregory CLEMENT <gregory.clement@bootlin.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        =?UTF-8?q?Marek=20Beh=C3=BAn?= <marek.behun@nic.cz>,
        "Rafael J . Wysocki" <rafael.j.wysocki@intel.com>
Subject: [PATCH mvebu-dt64 2/3] dt-bindings: marvell: document Turris Mox compatible
Date:   Tue, 27 Aug 2019 17:16:43 +0200
Message-Id: <20190827151644.12532-3-marek.behun@nic.cz>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190827151644.12532-1-marek.behun@nic.cz>
References: <20190827151644.12532-1-marek.behun@nic.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.100.3 at mail.nic.cz
X-Virus-Status: Clean
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,SHORTCIRCUIT,
        URIBL_BLOCKED shortcircuit=ham autolearn=disabled version=3.4.2
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
Cc: devicetree@vger.kernel.org
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

