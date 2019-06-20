Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0E1594D249
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2019 17:37:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732020AbfFTPhz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Jun 2019 11:37:55 -0400
Received: from mail.kernel.org ([198.145.29.99]:49246 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1731805AbfFTPhy (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 20 Jun 2019 11:37:54 -0400
Received: from localhost.localdomain (cpe-70-114-128-244.austin.res.rr.com [70.114.128.244])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 405DA20673;
        Thu, 20 Jun 2019 15:37:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1561045073;
        bh=5S55eD9KThwVmvDK4f2MHwvW8jbRfVsr+zLTJS228J0=;
        h=From:To:Cc:Subject:Date:From;
        b=cCDs5tMDNnzi3+3r36shIabf+VzxQS2wMJF1zf8tjQckhI3pLn0/z5gkNKzUdKgBu
         iJfwsT98qZqP0Nu4fbhQgpc+CM9umjyXdAC4ESFVjyvLFeXsGEZKvD72Ls14NEcn2G
         5Lo2jL7nSvIHe0MmsrRdxyprFdbpxfQbRi6tdGtY=
From:   Dinh Nguyen <dinguyen@kernel.org>
To:     robh+dt@kernel.org, mark.rutland@arm.com
Cc:     dinguyen@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] ARM: dts: socfpga: add reset properties for DMA
Date:   Thu, 20 Jun 2019 10:37:31 -0500
Message-Id: <20190620153732.26738-1-dinguyen@kernel.org>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add both the reset and reset-ocp properties for the DMA node on Arria10.

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 arch/arm/boot/dts/socfpga_arria10.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/socfpga_arria10.dtsi b/arch/arm/boot/dts/socfpga_arria10.dtsi
index 20af1543819a..26c157b91189 100644
--- a/arch/arm/boot/dts/socfpga_arria10.dtsi
+++ b/arch/arm/boot/dts/socfpga_arria10.dtsi
@@ -68,6 +68,8 @@
 				#dma-requests = <32>;
 				clocks = <&l4_main_clk>;
 				clock-names = "apb_pclk";
+				resets = <&rst DMA_RESET>, <&rst DMA_OCP_RESET>;
+				reset-names = "dma", "dma-ocp";
 			};
 		};
 
-- 
2.20.0

