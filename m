Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DD2F9517BB
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2019 17:55:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729710AbfFXPzH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Jun 2019 11:55:07 -0400
Received: from mail.kernel.org ([198.145.29.99]:49228 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728725AbfFXPzH (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 24 Jun 2019 11:55:07 -0400
Received: from localhost.localdomain (cpe-70-114-128-244.austin.res.rr.com [70.114.128.244])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id F3BF320663;
        Mon, 24 Jun 2019 15:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1561391706;
        bh=nj7bRPb15L/qkOSEZwMEO7ceiq2iL+0rUoitbZZAxtc=;
        h=From:To:Cc:Subject:Date:From;
        b=LmXOEnRtX+0Ciea5kPax/pmf8bc8pI4KRt9ZUHY63OwJb1QsgWeeL/NUjqMDQlhs9
         N7vpVnZlm/6owKYo2A4IeX3EY6BSR7I87WKr73zdxqCTSOBK2PzQ5MgscTO75psAPR
         FOVKTfB6WsyMIo82X5tQyRLI0p4PaXbKAM2J8FYo=
From:   Dinh Nguyen <dinguyen@kernel.org>
To:     robh+dt@kernel.org, mark.rutland@arm.com
Cc:     dinguyen@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: dts: socfpga: add the QSPI OCP reset property on arria10
Date:   Mon, 24 Jun 2019 10:45:58 -0500
Message-Id: <20190624154558.5354-1-dinguyen@kernel.org>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The QSPI module needs the OCP reset bit deasserted as well.

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 arch/arm/boot/dts/socfpga_arria10.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/socfpga_arria10.dtsi b/arch/arm/boot/dts/socfpga_arria10.dtsi
index a0a6d8507265..20af1543819a 100644
--- a/arch/arm/boot/dts/socfpga_arria10.dtsi
+++ b/arch/arm/boot/dts/socfpga_arria10.dtsi
@@ -753,7 +753,8 @@
 			cdns,fifo-width = <4>;
 			cdns,trigger-address = <0x00000000>;
 			clocks = <&qspi_clk>;
-			resets = <&rst QSPI_RESET>;
+			resets = <&rst QSPI_RESET>, <&rst QSPI_OCP_RESET>;
+			reset-names = "qspi", "qspi-ocp";
 			status = "disabled";
 		};
 
-- 
2.20.0

