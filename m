Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1918D38C263
	for <lists+devicetree@lfdr.de>; Fri, 21 May 2021 10:58:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234197AbhEUI7u (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 May 2021 04:59:50 -0400
Received: from szxga07-in.huawei.com ([45.249.212.35]:3461 "EHLO
        szxga07-in.huawei.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233878AbhEUI7u (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 May 2021 04:59:50 -0400
Received: from dggems702-chm.china.huawei.com (unknown [172.30.72.58])
        by szxga07-in.huawei.com (SkyGuard) with ESMTP id 4FmgRr0XMGzCtKy;
        Fri, 21 May 2021 16:55:36 +0800 (CST)
Received: from dggpemm500006.china.huawei.com (7.185.36.236) by
 dggems702-chm.china.huawei.com (10.3.19.179) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Fri, 21 May 2021 16:58:24 +0800
Received: from thunder-town.china.huawei.com (10.174.177.72) by
 dggpemm500006.china.huawei.com (7.185.36.236) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Fri, 21 May 2021 16:58:23 +0800
From:   Zhen Lei <thunder.leizhen@huawei.com>
To:     Khuong Dinh <khuong@os.amperecomputing.com>,
        Rob Herring <robh+dt@kernel.org>,
        devicetree <devicetree@vger.kernel.org>
CC:     Zhen Lei <thunder.leizhen@huawei.com>
Subject: [PATCH 1/1] arm64: dts: apm: Separate each group of data in the property 'reg'
Date:   Fri, 21 May 2021 16:57:05 +0800
Message-ID: <20210521085705.8312-1-thunder.leizhen@huawei.com>
X-Mailer: git-send-email 2.26.0.windows.1
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [10.174.177.72]
X-ClientProxiedBy: dggems705-chm.china.huawei.com (10.3.19.182) To
 dggpemm500006.china.huawei.com (7.185.36.236)
X-CFilter-Loop: Reflected
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Do not write the 'reg' of multiple groups of data into a uint32 array,
use <> to separate them. Otherwise, the errors similar to the following
will be reported by reg.yaml.

arch/arm64/boot/dts/apm/apm-merlin.dt.yaml:
soc: pcie@1f2c0000:reg:0: \
[0, 522977280, 0, 65536, 160, 3489660928, 0, 262144] is too long

Signed-off-by: Zhen Lei <thunder.leizhen@huawei.com>
---
 arch/arm64/boot/dts/apm/apm-shadowcat.dtsi | 12 +++++------
 arch/arm64/boot/dts/apm/apm-storm.dtsi     | 24 +++++++++++-----------
 2 files changed, 18 insertions(+), 18 deletions(-)

diff --git a/arch/arm64/boot/dts/apm/apm-shadowcat.dtsi b/arch/arm64/boot/dts/apm/apm-shadowcat.dtsi
index a83c82c50e29912..1c7fa5ca92ac68b 100644
--- a/arch/arm64/boot/dts/apm/apm-shadowcat.dtsi
+++ b/arch/arm64/boot/dts/apm/apm-shadowcat.dtsi
@@ -320,8 +320,8 @@ sdioclk: sdioclk@1f2ac000 {
 				compatible = "apm,xgene-device-clock";
 				#clock-cells = <1>;
 				clocks = <&socplldiv2 0>;
-				reg = <0x0 0x1f2ac000 0x0 0x1000
-					0x0 0x17000000 0x0 0x2000>;
+				reg = <0x0 0x1f2ac000 0x0 0x1000>,
+				      <0x0 0x17000000 0x0 0x2000>;
 				reg-names = "csr-reg", "div-reg";
 				csr-offset = <0x0>;
 				csr-mask = <0x2>;
@@ -614,8 +614,8 @@ pcie0: pcie@1f2b0000 {
 			#interrupt-cells = <1>;
 			#size-cells = <2>;
 			#address-cells = <3>;
-			reg = < 0x00 0x1f2b0000 0x0 0x00010000   /* Controller registers */
-				0xc0 0xd0000000 0x0 0x00040000>; /* PCI config space */
+			reg = <0x00 0x1f2b0000 0x0 0x00010000>,  /* Controller registers */
+			      <0xc0 0xd0000000 0x0 0x00040000>;  /* PCI config space */
 			reg-names = "csr", "cfg";
 			ranges = <0x01000000 0x00 0x00000000 0xc0 0x10000000 0x00 0x00010000   /* io */
 				  0x02000000 0x00 0x20000000 0xc1 0x20000000 0x00 0x20000000   /* mem */
@@ -640,8 +640,8 @@ pcie1: pcie@1f2c0000 {
 			#interrupt-cells = <1>;
 			#size-cells = <2>;
 			#address-cells = <3>;
-			reg = < 0x00 0x1f2c0000 0x0 0x00010000   /* Controller registers */
-				0xa0 0xd0000000 0x0 0x00040000>; /* PCI config space */
+			reg = <0x00 0x1f2c0000 0x0 0x00010000>,  /* Controller registers */
+			      <0xa0 0xd0000000 0x0 0x00040000>;  /* PCI config space */
 			reg-names = "csr", "cfg";
 			ranges = <0x01000000 0x00 0x00000000 0xa0 0x10000000 0x00 0x00010000   /* io */
 				  0x02000000 0x00 0x20000000 0xa1 0x20000000 0x00 0x20000000   /* mem */
diff --git a/arch/arm64/boot/dts/apm/apm-storm.dtsi b/arch/arm64/boot/dts/apm/apm-storm.dtsi
index 0f37e77f5459951..5841355f07d78a2 100644
--- a/arch/arm64/boot/dts/apm/apm-storm.dtsi
+++ b/arch/arm64/boot/dts/apm/apm-storm.dtsi
@@ -182,8 +182,8 @@ sdioclk: sdioclk@1f2ac000 {
 				compatible = "apm,xgene-device-clock";
 				#clock-cells = <1>;
 				clocks = <&socplldiv2 0>;
-				reg = <0x0 0x1f2ac000 0x0 0x1000
-					0x0 0x17000000 0x0 0x2000>;
+				reg = <0x0 0x1f2ac000 0x0 0x1000>,
+				      <0x0 0x17000000 0x0 0x2000>;
 				reg-names = "csr-reg", "div-reg";
 				csr-offset = <0x0>;
 				csr-mask = <0x2>;
@@ -614,8 +614,8 @@ pcie0: pcie@1f2b0000 {
 			#interrupt-cells = <1>;
 			#size-cells = <2>;
 			#address-cells = <3>;
-			reg = < 0x00 0x1f2b0000 0x0 0x00010000   /* Controller registers */
-				0xe0 0xd0000000 0x0 0x00040000>; /* PCI config space */
+			reg = <0x00 0x1f2b0000 0x0 0x00010000>,  /* Controller registers */
+			      <0xe0 0xd0000000 0x0 0x00040000>;  /* PCI config space */
 			reg-names = "csr", "cfg";
 			ranges = <0x01000000 0x00 0x00000000 0xe0 0x10000000 0x00 0x00010000   /* io */
 				  0x02000000 0x00 0x80000000 0xe1 0x80000000 0x00 0x80000000   /* mem */
@@ -640,8 +640,8 @@ pcie1: pcie@1f2c0000 {
 			#interrupt-cells = <1>;
 			#size-cells = <2>;
 			#address-cells = <3>;
-			reg = < 0x00 0x1f2c0000 0x0 0x00010000   /* Controller registers */
-				0xd0 0xd0000000 0x0 0x00040000>; /* PCI config space */
+			reg = <0x00 0x1f2c0000 0x0 0x00010000>,  /* Controller registers */
+			      <0xd0 0xd0000000 0x0 0x00040000>;  /* PCI config space */
 			reg-names = "csr", "cfg";
 			ranges = <0x01000000 0x00 0x00000000 0xd0 0x10000000 0x00 0x00010000   /* io  */
 				  0x02000000 0x00 0x80000000 0xd1 0x80000000 0x00 0x80000000   /* mem */
@@ -666,8 +666,8 @@ pcie2: pcie@1f2d0000 {
 			#interrupt-cells = <1>;
 			#size-cells = <2>;
 			#address-cells = <3>;
-			reg =  < 0x00 0x1f2d0000 0x0 0x00010000   /* Controller registers */
-				 0x90 0xd0000000 0x0 0x00040000>; /* PCI config space */
+			reg =  <0x00 0x1f2d0000 0x0 0x00010000>,  /* Controller registers */
+			       <0x90 0xd0000000 0x0 0x00040000>;  /* PCI config space */
 			reg-names = "csr", "cfg";
 			ranges = <0x01000000 0x00 0x00000000 0x90 0x10000000 0x00 0x00010000   /* io  */
 				  0x02000000 0x00 0x80000000 0x91 0x80000000 0x00 0x80000000   /* mem */
@@ -692,8 +692,8 @@ pcie3: pcie@1f500000 {
 			#interrupt-cells = <1>;
 			#size-cells = <2>;
 			#address-cells = <3>;
-			reg = < 0x00 0x1f500000 0x0 0x00010000   /* Controller registers */
-				0xa0 0xd0000000 0x0 0x00040000>; /* PCI config space */
+			reg = <0x00 0x1f500000 0x0 0x00010000>,  /* Controller registers */
+			      <0xa0 0xd0000000 0x0 0x00040000>;  /* PCI config space */
 			reg-names = "csr", "cfg";
 			ranges = <0x01000000 0x00 0x00000000 0xa0 0x10000000 0x00 0x00010000   /* io  */
 				  0x02000000 0x00 0x80000000 0xa1 0x80000000 0x00 0x80000000   /* mem */
@@ -718,8 +718,8 @@ pcie4: pcie@1f510000 {
 			#interrupt-cells = <1>;
 			#size-cells = <2>;
 			#address-cells = <3>;
-			reg = < 0x00 0x1f510000 0x0 0x00010000   /* Controller registers */
-				0xc0 0xd0000000 0x0 0x00200000>; /* PCI config space */
+			reg = <0x00 0x1f510000 0x0 0x00010000>,  /* Controller registers */
+			      <0xc0 0xd0000000 0x0 0x00200000>;  /* PCI config space */
 			reg-names = "csr", "cfg";
 			ranges = <0x01000000 0x00 0x00000000 0xc0 0x10000000 0x00 0x00010000   /* io  */
 				  0x02000000 0x00 0x80000000 0xc1 0x80000000 0x00 0x80000000   /* mem */
-- 
2.26.0.106.g9fadedd


