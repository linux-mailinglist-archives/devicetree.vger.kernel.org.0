Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6613535571F
	for <lists+devicetree@lfdr.de>; Tue,  6 Apr 2021 16:58:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345372AbhDFO6u (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Apr 2021 10:58:50 -0400
Received: from mail.kernel.org ([198.145.29.99]:50644 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S233155AbhDFO6t (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 6 Apr 2021 10:58:49 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 73FEC61057;
        Tue,  6 Apr 2021 14:58:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1617721121;
        bh=JKU4Qj3Y0kNRQzQkL/5ntTwi3i7cm/F4c5ot6GQisNI=;
        h=From:To:Cc:Subject:Date:From;
        b=oyLqoon9BALgvWizeXscD3YSvJJA94rS5irobvPR+uX4Un2eRISziwcjPMIFcuGLb
         er7eSs8vHmf3Vx1c+3aRtJ1KRWxgnNowaI0JeyG4UvPKyEP7N23e+mj/L6NUsDENVi
         sjA/jQNhM+UtGV5Eu18BU4AJf80KniVEvDrE/RVJ8JQcFyMymh/D6tPmMaiK5hwp7Y
         JIfgSqPYAARbdRc1bc2jE1fCibiRRYSoYRAmxnzSbE95q/Wfoks9mdgVm/2lok85e1
         IAFyyqhCu3a83Qf9PEXryKwQrDFOKj/b93tP+s3JMdN8u2sHZSSBEsqc+B5XWSGrlZ
         jxUiYfQtU0vBQ==
From:   Dinh Nguyen <dinguyen@kernel.org>
To:     devicetree@vger.kernel.org
Cc:     dinguyen@kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm: dts: arria10: add lightweight HPS2FPGA bridge
Date:   Tue,  6 Apr 2021 09:58:35 -0500
Message-Id: <20210406145835.234546-1-dinguyen@kernel.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the lightweight HPS2FPGA bridge entry.

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 arch/arm/boot/dts/socfpga_arria10.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/socfpga_arria10.dtsi b/arch/arm/boot/dts/socfpga_arria10.dtsi
index a574ea91d9d3..f956c50ec6cf 100644
--- a/arch/arm/boot/dts/socfpga_arria10.dtsi
+++ b/arch/arm/boot/dts/socfpga_arria10.dtsi
@@ -428,6 +428,14 @@ socfpga_axi_setup: stmmac-axi-config {
 			snps,blen = <0 0 0 0 16 0 0>;
 		};
 
+		fpga_bridge0: fpga_bridge@ff200000 {
+			compatible = "altr,socfpga-lwhps2fpga-bridge";
+			reg = <0xff200000 0x100000>;
+			resets = <&rst LWHPS2FPGA_RESET>;
+			clocks = <&l4_main_clk>;
+			status = "disabled";
+		};
+
 		gmac0: ethernet@ff800000 {
 			compatible = "altr,socfpga-stmmac-a10-s10", "snps,dwmac-3.72a", "snps,dwmac";
 			altr,sysmgr-syscon = <&sysmgr 0x44 0>;
-- 
2.25.1

