Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3EB3E2348EE
	for <lists+devicetree@lfdr.de>; Fri, 31 Jul 2020 18:11:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728771AbgGaQLy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 Jul 2020 12:11:54 -0400
Received: from mail.kernel.org ([198.145.29.99]:59472 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727819AbgGaQLy (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 31 Jul 2020 12:11:54 -0400
Received: from localhost.localdomain (cpe-70-114-128-244.austin.res.rr.com [70.114.128.244])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 57C27208E4;
        Fri, 31 Jul 2020 16:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1596211913;
        bh=n30iVxtZUXL0lFfMmaBLnGgmA3X5tfkJ1vwKQk0SRU4=;
        h=From:To:Cc:Subject:Date:From;
        b=qCvEKBFFWjzgPnXQ8PkGMKXhR2JfCj9q+87cfbthV5eXLoB1G4pnZXVn6iT9tV00G
         IYnHoRlNzNJAU69RqNw619VMJbTLnypjiQXhbR3ULyAzDs3zt3GqiBKJNngjJiMX/W
         WIhp+eZzbkMpeJbPQh1316A5FLLyc0s6r0cFzC48=
From:   Dinh Nguyen <dinguyen@kernel.org>
To:     linux-arm-kernel@lists.infradead.org
Cc:     dinguyen@kernel.org, devicetree@vger.kernel.org
Subject: [PATCH] ARM: dts: socfpga: fix register entry for timer3 on Arria10
Date:   Fri, 31 Jul 2020 11:11:45 -0500
Message-Id: <20200731161145.8093-1-dinguyen@kernel.org>
X-Mailer: git-send-email 2.17.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fixes the register address for the timer3 entry on Arria10.

Fixes: 475dc86d08de4 ("arm: dts: socfpga: Add a base DTSI for Altera's Arria10 SOC")
Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 arch/arm/boot/dts/socfpga_arria10.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/socfpga_arria10.dtsi b/arch/arm/boot/dts/socfpga_arria10.dtsi
index 8f614c4b0e3e..9c71472c237b 100644
--- a/arch/arm/boot/dts/socfpga_arria10.dtsi
+++ b/arch/arm/boot/dts/socfpga_arria10.dtsi
@@ -819,7 +819,7 @@
 		timer3: timer3@ffd00100 {
 			compatible = "snps,dw-apb-timer";
 			interrupts = <0 118 IRQ_TYPE_LEVEL_HIGH>;
-			reg = <0xffd01000 0x100>;
+			reg = <0xffd00100 0x100>;
 			clocks = <&l4_sys_free_clk>;
 			clock-names = "timer";
 			resets = <&rst L4SYSTIMER1_RESET>;
-- 
2.17.1

