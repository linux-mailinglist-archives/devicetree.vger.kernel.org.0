Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 605B83812C5
	for <lists+devicetree@lfdr.de>; Fri, 14 May 2021 23:20:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231945AbhENVVl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 May 2021 17:21:41 -0400
Received: from fllv0015.ext.ti.com ([198.47.19.141]:51002 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231182AbhENVVl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 May 2021 17:21:41 -0400
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 14ELKNrE068630;
        Fri, 14 May 2021 16:20:23 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1621027223;
        bh=jsR7yCJRl2ehMf9xyNPmEKKxEcqbrS7fweFyx2zzIN8=;
        h=From:To:CC:Subject:Date;
        b=EXo6avwnI9+43/16PJX5Y85wN9YKD9w5edfSm0e9DVH1grsz6yO9iEHKHKlGxpAGB
         dH4SlV2pog/5ELOLwYdYKpoK6U/UBk4JvUb8n8Vhf0t0AV2lZZDbUJHj4kcAPisRkq
         IBX7C7ZnnwCr+amhXrAmSANJwsvvcwM3zj7rROxg=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 14ELKNED080177
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Fri, 14 May 2021 16:20:23 -0500
Received: from DFLE108.ent.ti.com (10.64.6.29) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Fri, 14
 May 2021 16:20:23 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Fri, 14 May 2021 16:20:23 -0500
Received: from fllv0103.dal.design.ti.com (fllv0103.dal.design.ti.com [10.247.120.73])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 14ELKNB1053023;
        Fri, 14 May 2021 16:20:23 -0500
Received: from localhost ([10.250.35.60])
        by fllv0103.dal.design.ti.com (8.14.7/8.14.7) with ESMTP id 14ELKNet060538;
        Fri, 14 May 2021 16:20:23 -0500
From:   Suman Anna <s-anna@ti.com>
To:     Nishanth Menon <nm@ti.com>, Jan Kiszka <jan.kiszka@siemens.com>
CC:     <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, Suman Anna <s-anna@ti.com>
Subject: [PATCH] arm64: dts: ti: k3-am65-iot2050-common: Disable mailbox nodes
Date:   Fri, 14 May 2021 16:20:16 -0500
Message-ID: <20210514212016.3153-1-s-anna@ti.com>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

There are no sub-mailbox devices defined currently for both the
IOT2050 boards. These are usually dictated by the firmwares running
on the R5F remote processors and the applications they provide.
Defining the actual sub-mailboxes will also dictate the interrupts
the clusters will use for interrupts on the Cortex-A53 cores.

Disable all of the Mailbox clusters until the sub-mailboxes are
defined and used. This fixes the warnings around the missing
interrupts with the upcoming conversion of the OMAP Mailbox binding
to YAML format.

Signed-off-by: Suman Anna <s-anna@ti.com>
---
Hi Nishanth,

I will be posting the conversion of the OMAP Mailbox binding to YAML
sometime next week to deal with the current dtbs_check warnings seen
with these nodes on all K3 SoCs. It is kinda of a chicken and egg
problem w.r.t when you want all warnings gone, and this is in
preparation towards that. It also follows anyway the expected style
for Mailbox unless you add the usable mailbox sub-device nodes and
the interrupts they use.

regards
Suman

 .../boot/dts/ti/k3-am65-iot2050-common.dtsi   | 48 +++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi b/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi
index de763ca9251c..f4ec9ed52939 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi
@@ -653,3 +653,51 @@ &pcie1_rc {
 &pcie1_ep {
 	status = "disabled";
 };
+
+&mailbox0_cluster0 {
+	status = "disabled";
+};
+
+&mailbox0_cluster1 {
+	status = "disabled";
+};
+
+&mailbox0_cluster2 {
+	status = "disabled";
+};
+
+&mailbox0_cluster3 {
+	status = "disabled";
+};
+
+&mailbox0_cluster4 {
+	status = "disabled";
+};
+
+&mailbox0_cluster5 {
+	status = "disabled";
+};
+
+&mailbox0_cluster6 {
+	status = "disabled";
+};
+
+&mailbox0_cluster7 {
+	status = "disabled";
+};
+
+&mailbox0_cluster8 {
+	status = "disabled";
+};
+
+&mailbox0_cluster9 {
+	status = "disabled";
+};
+
+&mailbox0_cluster10 {
+	status = "disabled";
+};
+
+&mailbox0_cluster11 {
+	status = "disabled";
+};
-- 
2.30.1

