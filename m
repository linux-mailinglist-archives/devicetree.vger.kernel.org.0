Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7B2B7485FB
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2019 16:50:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728057AbfFQOuL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Jun 2019 10:50:11 -0400
Received: from pandora.armlinux.org.uk ([78.32.30.218]:58548 "EHLO
        pandora.armlinux.org.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726151AbfFQOuK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Jun 2019 10:50:10 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
        Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:Reply-To:Content-ID
        :Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
        Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:
        List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=dOh7uqmpibaT0Zdj+4oa5qbvYvKyLSBAYkLGdLcNmp8=; b=eI2PXv12FX3MW1F6+JjHTul2N4
        qqVHcYdNubVBXXsXfjcdHFyBTAmIBvP6bFH80JbUNMFNXImMmlbloxpgkK9V0RSBAdiamEgpkJH4Y
        +AsZPxLQwHuC3LQgeuh7hO0ojGv1lWy4p4AQ24zTxhZ/DMR4RjjGIXRZpJNWvAqfadLTeAiUaYfmc
        w07VywUS4G08YQFiLpAKFt37sI+2ZHpjc6tVcwV/cELApastnr/gO9ZT3gPTiBz5d09GIq9/6bx2x
        L0m4G781jVk9y4Q1AlgEBkou39/0Jlg8gBVzFF2jhu6zASLOK2/4Mve4KZEy2omFNcHzAqZSAx203
        KQhnCMuA==;
Received: from e0022681537dd.dyn.armlinux.org.uk ([2002:4e20:1eda:1:222:68ff:fe15:37dd]:34836 helo=rmk-PC.armlinux.org.uk)
        by pandora.armlinux.org.uk with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
        (Exim 4.90_1)
        (envelope-from <rmk@armlinux.org.uk>)
        id 1hcsxH-0004PG-KM; Mon, 17 Jun 2019 15:49:55 +0100
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim 4.82_1-5b7a7c0-XX)
        (envelope-from <rmk@armlinux.org.uk>)
        id 1hcsxH-0007Vv-0l; Mon, 17 Jun 2019 15:49:55 +0100
From:   Russell King <rmk+kernel@armlinux.org.uk>
To:     Gregory Clement <gregory.clement@bootlin.com>
Cc:     Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: marvell: add missing #interrupt-cells property
MIME-Version: 1.0
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset="utf-8"
Message-Id: <E1hcsxH-0007Vv-0l@rmk-PC.armlinux.org.uk>
Date:   Mon, 17 Jun 2019 15:49:55 +0100
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The GPIO interrupt controllers are missing their required
#interrupt-cells property, which prevents GPIO interrupts being
specified in DT.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 arch/arm64/boot/dts/marvell/armada-cp110.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/marvell/armada-cp110.dtsi b/arch/arm64/boot/dts/marvell/armada-cp110.dtsi
index 4d6e4a097f72..f71afb1de18f 100644
--- a/arch/arm64/boot/dts/marvell/armada-cp110.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-cp110.dtsi
@@ -238,6 +238,7 @@
 					<85 IRQ_TYPE_LEVEL_HIGH>,
 					<84 IRQ_TYPE_LEVEL_HIGH>,
 					<83 IRQ_TYPE_LEVEL_HIGH>;
+				#interrupt-cells = <2>;
 				status = "disabled";
 			};
 
@@ -253,6 +254,7 @@
 					<81 IRQ_TYPE_LEVEL_HIGH>,
 					<80 IRQ_TYPE_LEVEL_HIGH>,
 					<79 IRQ_TYPE_LEVEL_HIGH>;
+				#interrupt-cells = <2>;
 				status = "disabled";
 			};
 		};
-- 
2.7.4

