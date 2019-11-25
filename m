Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 17F651095D5
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2019 23:51:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726975AbfKYWvf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Nov 2019 17:51:35 -0500
Received: from mail.kernel.org ([198.145.29.99]:45664 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725946AbfKYWvf (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 25 Nov 2019 17:51:35 -0500
Received: from e123331-lin.home (lfbn-mar-1-643-104.w90-118.abo.wanadoo.fr [90.118.215.104])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id C4C962075C;
        Mon, 25 Nov 2019 22:51:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1574722294;
        bh=6l+Q/1zeptnUElv8N8xrlvME3mj9QEmXMRy3WTUJudA=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=U/p/KqIV0hcBxRwG2iXrtJ138MUeR9VHmeYUFFZ3NacCVDb/brU03Ka+T+qmAZ/ez
         D/k95iqKVMZ2ZDDH7R5GqEx47P4Dr3UbzoCLJMvT8SZDm07NEZSUgQTIfEItEpDv6M
         m7uLOaq9fAv45KlqZjmhoq5gLqqvgeVlp840S6T0=
From:   Ard Biesheuvel <ardb@kernel.org>
To:     devicetree@vger.kernel.org
Cc:     robh+dt@kernel.org, thomas.lendacky@amd.com,
        suravee.suthikulpanit@amd.com, brijeshkumar.singh@amd.com,
        will@kernel.org, Ard Biesheuvel <ardb@kernel.org>
Subject: [PATCH 5/6] dt: amd-seattle: add a description of the PCIe SMMU
Date:   Mon, 25 Nov 2019 23:51:09 +0100
Message-Id: <20191125225110.10924-6-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191125225110.10924-1-ardb@kernel.org>
References: <20191125225110.10924-1-ardb@kernel.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a description of the SMMU that covers the PCIe host bridge
on AMD Seattle.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/arm64/boot/dts/amd/amd-seattle-soc.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/amd/amd-seattle-soc.dtsi b/arch/arm64/boot/dts/amd/amd-seattle-soc.dtsi
index 9fa6890fca35..7484ea695262 100644
--- a/arch/arm64/boot/dts/amd/amd-seattle-soc.dtsi
+++ b/arch/arm64/boot/dts/amd/amd-seattle-soc.dtsi
@@ -239,6 +239,16 @@
 				<0x02000000 0x00 0x40000000 0x00 0x40000000 0x00 0x80000000>,
 				/* 64-bit MMIO (size= 508G) */
 				<0x03000000 0x01 0x00000000 0x01 0x00000000 0x7f 0x00000000>;
+			iommu-map = <0x0 &pcie_smmu 0x0 0x10000>;
+		};
+
+		pcie_smmu: smmu@e0a00000 {
+			compatible = "arm,mmu-401";
+			reg = <0 0xe0a00000 0 0x10000>;
+			#global-interrupts = <1>;
+			interrupts = <0 333 4>, <0 333 4>;
+			#iommu-cells = <1>;
+			dma-coherent;
 		};
 
 		/* Perf CCN504 PMU */
-- 
2.17.1

