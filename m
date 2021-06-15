Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 98D083A89DC
	for <lists+devicetree@lfdr.de>; Tue, 15 Jun 2021 21:57:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230144AbhFOT7f (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Jun 2021 15:59:35 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:32786 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229898AbhFOT7e (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Jun 2021 15:59:34 -0400
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 15FJvONo105585;
        Tue, 15 Jun 2021 14:57:24 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1623787044;
        bh=71e4nTWPMHeTRiYEVBS9JCWm+tEgJNdifo6vQrS9iBQ=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=cwn1+jI30bT5MhbBgTh3Xt7QRGSR7VbYJaqVVwZr51X7gSxMsQfsgSYa3t7uSn0qF
         vaJ5boJhTEXIIl6oK5Us2j6PcDM+6ZAArXjU1+6GsaGPAuDur3RHgRC7xfZzadLCLl
         WvGlMf9d+ep9SmwUeLKUinp02z7B8lR2sJ6LCT30=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 15FJvOZs009115
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 15 Jun 2021 14:57:24 -0500
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Tue, 15
 Jun 2021 14:57:23 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Tue, 15 Jun 2021 14:57:23 -0500
Received: from fllv0103.dal.design.ti.com (fllv0103.dal.design.ti.com [10.247.120.73])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 15FJvNhe123063;
        Tue, 15 Jun 2021 14:57:23 -0500
Received: from localhost ([10.250.35.153])
        by fllv0103.dal.design.ti.com (8.14.7/8.14.7) with ESMTP id 15FJvNlG095745;
        Tue, 15 Jun 2021 14:57:23 -0500
From:   Suman Anna <s-anna@ti.com>
To:     Nishanth Menon <nm@ti.com>
CC:     Lokesh Vutla <lokeshvutla@ti.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, Suman Anna <s-anna@ti.com>
Subject: [PATCH v2 1/3] arm64: dts: ti: k3-am64-main: Add MAIN domain R5F cluster nodes
Date:   Tue, 15 Jun 2021 14:57:16 -0500
Message-ID: <20210615195718.15898-2-s-anna@ti.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210615195718.15898-1-s-anna@ti.com>
References: <20210615195718.15898-1-s-anna@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The AM64x SoCs have 2 dual-core Arm Cortex-R5F processor (R5FSS)
subsystems/clusters. Both the R5F clusters are present within the
MAIN domain (MAIN_R5FSS0 & MAIN_R5FSS1). Each of these can be
configured at boot time to be either run in a new "Single-CPU" mode
or in an Asymmetric Multi Processing (AMP) fashion in Split-mode.
The mode is restricted to "Single-CPU" on some devices with the
appropriate eFuse bit set, but the most common devices support both
modes. These subsystems have 64 KB each Tightly-Coupled Memory (TCM)
internal memories for each core split between two banks - ATCM and
BTCM (further interleaved into two banks). The TCMs of both Cores
are combined in Single-CPU mode to provide a larger 128 KB of memory.
The other notable difference is that the TCMs are spaced 1 MB apart
on these SoCs unlike the existing SoCs.

Add the DT nodes for both these MAIN domain R5F cluster/subsystems,
the two R5F cores are added as child nodes to each of the corresponding
R5F cluster node. Both the clusters are configured to run in Split mode
by default, with the ATCMs enabled to allow the R5 cores to execute
code from DDR with boot-strapping code from ATCM. The inter-processor
communication between the main A72 cores and these processors is
achieved through shared memory and Mailboxes.

The following firmware names are used by default for these cores, and
can be overridden in a board dts file if desired:
  MAIN R5FSS0 Core0: am64-main-r5f0_0-fw (both in Single-CPU & Split modes)
  MAIN R5FSS0 Core1: am64-main-r5f0_1-fw (needed only in Split mode)
  MAIN R5FSS1 Core0: am64-main-r5f1_0-fw (both in Single-CPU & Split modes)
  MAIN R5FSS1 Core1: am64-main-r5f1_1-fw (needed only in Split mode)

NOTE:
A R5FSS cluster can be configured in "Single-CPU" mode by using a
value of 2 for the "ti,cluster-mode" property. Value of 1 is not
permitted (fails the dtbs_check).

Signed-off-by: Suman Anna <s-anna@ti.com>
---
v2:
No code changes, rebased and retained the presence after the mailbox nodes

 arch/arm64/boot/dts/ti/k3-am64-main.dtsi | 84 ++++++++++++++++++++++++
 1 file changed, 84 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am64-main.dtsi b/arch/arm64/boot/dts/ti/k3-am64-main.dtsi
index 7ab3652dfdfb..73e6b0f10879 100644
--- a/arch/arm64/boot/dts/ti/k3-am64-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am64-main.dtsi
@@ -694,6 +694,90 @@ mailbox0_cluster7: mailbox@29070000 {
 		ti,mbox-num-fifos = <16>;
 	};
 
+	main_r5fss0: r5fss@78000000 {
+		compatible = "ti,am64-r5fss";
+		ti,cluster-mode = <0>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0x78000000 0x00 0x78000000 0x10000>,
+			 <0x78100000 0x00 0x78100000 0x10000>,
+			 <0x78200000 0x00 0x78200000 0x08000>,
+			 <0x78300000 0x00 0x78300000 0x08000>;
+		power-domains = <&k3_pds 119 TI_SCI_PD_EXCLUSIVE>;
+
+		main_r5fss0_core0: r5f@78000000 {
+			compatible = "ti,am64-r5f";
+			reg = <0x78000000 0x00010000>,
+			      <0x78100000 0x00010000>;
+			reg-names = "atcm", "btcm";
+			ti,sci = <&dmsc>;
+			ti,sci-dev-id = <121>;
+			ti,sci-proc-ids = <0x01 0xff>;
+			resets = <&k3_reset 121 1>;
+			firmware-name = "am64-main-r5f0_0-fw";
+			ti,atcm-enable = <1>;
+			ti,btcm-enable = <1>;
+			ti,loczrama = <1>;
+		};
+
+		main_r5fss0_core1: r5f@78200000 {
+			compatible = "ti,am64-r5f";
+			reg = <0x78200000 0x00008000>,
+			      <0x78300000 0x00008000>;
+			reg-names = "atcm", "btcm";
+			ti,sci = <&dmsc>;
+			ti,sci-dev-id = <122>;
+			ti,sci-proc-ids = <0x02 0xff>;
+			resets = <&k3_reset 122 1>;
+			firmware-name = "am64-main-r5f0_1-fw";
+			ti,atcm-enable = <1>;
+			ti,btcm-enable = <1>;
+			ti,loczrama = <1>;
+		};
+	};
+
+	main_r5fss1: r5fss@78400000 {
+		compatible = "ti,am64-r5fss";
+		ti,cluster-mode = <0>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0x78400000 0x00 0x78400000 0x10000>,
+			 <0x78500000 0x00 0x78500000 0x10000>,
+			 <0x78600000 0x00 0x78600000 0x08000>,
+			 <0x78700000 0x00 0x78700000 0x08000>;
+		power-domains = <&k3_pds 120 TI_SCI_PD_EXCLUSIVE>;
+
+		main_r5fss1_core0: r5f@78400000 {
+			compatible = "ti,am64-r5f";
+			reg = <0x78400000 0x00010000>,
+			      <0x78500000 0x00010000>;
+			reg-names = "atcm", "btcm";
+			ti,sci = <&dmsc>;
+			ti,sci-dev-id = <123>;
+			ti,sci-proc-ids = <0x06 0xff>;
+			resets = <&k3_reset 123 1>;
+			firmware-name = "am64-main-r5f1_0-fw";
+			ti,atcm-enable = <1>;
+			ti,btcm-enable = <1>;
+			ti,loczrama = <1>;
+		};
+
+		main_r5fss1_core1: r5f@78600000 {
+			compatible = "ti,am64-r5f";
+			reg = <0x78600000 0x00008000>,
+			      <0x78700000 0x00008000>;
+			reg-names = "atcm", "btcm";
+			ti,sci = <&dmsc>;
+			ti,sci-dev-id = <124>;
+			ti,sci-proc-ids = <0x07 0xff>;
+			resets = <&k3_reset 124 1>;
+			firmware-name = "am64-main-r5f1_1-fw";
+			ti,atcm-enable = <1>;
+			ti,btcm-enable = <1>;
+			ti,loczrama = <1>;
+		};
+	};
+
 	serdes_wiz0: wiz@f000000 {
 		compatible = "ti,am64-wiz-10g";
 		#address-cells = <1>;
-- 
2.30.1

