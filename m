Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9564341C06B
	for <lists+devicetree@lfdr.de>; Wed, 29 Sep 2021 10:14:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244730AbhI2IPt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Sep 2021 04:15:49 -0400
Received: from egress-ip33b.ess.de.barracuda.com ([18.185.115.237]:43814 "EHLO
        egress-ip33b.ess.de.barracuda.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S244717AbhI2IPr (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 29 Sep 2021 04:15:47 -0400
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200]) by mx-outbound45-61.eu-central-1c.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Wed, 29 Sep 2021 08:14:04 +0000
Received: by mail-pg1-f200.google.com with SMTP id 15-20020a630d4f000000b00287c5b3f77bso1628858pgn.11
        for <devicetree@vger.kernel.org>; Wed, 29 Sep 2021 01:14:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Fh8BHUuInQoe2F9epgF7MvMEhb7N+5ayCx0fHuFmNm8=;
        b=NZ9XqcdFjN/ho7Ut6woyOgRGX0X0ogrVLw9xsyuCo6MNyPPQw6BjEf6q4atZEFYSYi
         Pgw+rrQymMHHMYDWYdrznj3OzmxFLReFFIo08j1v0nSnwBQHoYYCJP6DMLvWzIn/bOjT
         hcDszxm/XNroap7vpygWZ2zI4V9Ejc1tFe9Hs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Fh8BHUuInQoe2F9epgF7MvMEhb7N+5ayCx0fHuFmNm8=;
        b=CU0MbvrVqnLiqMTWffujMDosu9bBy4pGoBVfP1hDtmcAWugeG62IT6E0Q62EphNayM
         Iz66nLmo1pVbiIEglgNwwInW8icRRhUmsdjqLCnhEwY2pW2sQn5f4nLB6j2yu8Aca7IC
         xRttgMLSzUp0hOejp5VH9TSPoXa1Dlo+xer7hVCb/3jGw7AFpOpScckg5VcbJ911RCPF
         EcKlsXuhhKkILHDozKG8jgaN9FFsXG0INlji2+IX/G+wFxWzIKmq6TD7GIi8TcN8FG6H
         HXpuD+QE6SQUZAS4eQSvlurrjx30rmHUFtTquF4nooTVYv2fbEZuZB1C6aUlQshmIaQe
         5nsA==
X-Gm-Message-State: AOAM532ScChH+QDfP9M5wuXlLlEY6m1Zhp2fcSAfav36rBz3xbGKzIpk
        Bm9XBZnVkDkQirGoCuq7IDMdnLc+aRvlCtEOccHaThIyzvFd0TGSm9jLBr7nkhO4MYMC7eQCP/j
        vclb9dP1YQBvmBk1DG1AS33zddzl4JpAKfScJNZnJMt+bqGLIChQ0P90P6A==
X-Received: by 2002:a62:5e05:0:b0:44b:34af:af0d with SMTP id s5-20020a625e05000000b0044b34afaf0dmr10007807pfb.54.1632903232284;
        Wed, 29 Sep 2021 01:13:52 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz+hOv2B6BbiuZ6iZaaqbuPwaOq6prHXjkKQEI/bgInuAZKqFJ5byuiC5HbTcvOxpEYibf6pQ==
X-Received: by 2002:a62:5e05:0:b0:44b:34af:af0d with SMTP id s5-20020a625e05000000b0044b34afaf0dmr10007785pfb.54.1632903232054;
        Wed, 29 Sep 2021 01:13:52 -0700 (PDT)
Received: from LAP568U.mistral.in ([106.51.227.150])
        by smtp.gmail.com with ESMTPSA id k14sm1152026pji.45.2021.09.29.01.13.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Sep 2021 01:13:51 -0700 (PDT)
From:   Sinthu Raja <sinthu.raja@mistralsolutions.com>
X-Google-Original-From: Sinthu Raja <sinthu.raja@ti.com>
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Vignesh Raghavendra <vigneshr@ti.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Sinthu Raja <sinthu.raja@ti.com>
Subject: [PATCH V3 3/4] arm64: dts: ti: k3-j721e-sk: Add IPC sub-mailbox nodes
Date:   Wed, 29 Sep 2021 13:43:32 +0530
Message-Id: <20210929081333.26454-4-sinthu.raja@ti.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210929081333.26454-1-sinthu.raja@ti.com>
References: <20210929081333.26454-1-sinthu.raja@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-BESS-ID: 1632903243-311581-615-18966-1
X-BESS-VER: 2019.1_20210928.1746
X-BESS-Apparent-Source-IP: 209.85.215.200
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.234800 [from 
        cloudscan12-37.eu-central-1a.ess.aws.cudaops.com]
        Rule breakdown below
         pts rule name              description
        ---- ---------------------- --------------------------------
        0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
        0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn't match header 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS91090 scores of KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND, BSF_SC0_MISMATCH_TO
X-BESS-BRTS-Status: 1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Sinthu Raja <sinthu.raja@ti.com>

Add the sub-mailbox nodes that are used to communicate between MPU and
various remote processors present in the J721E SoCs to the J721E EAIK
board. These include the R5F remote processors in the dual-R5F cluster
(MCU_R5FSS0) in the MCU domain and the two dual-R5F clusters
(MAIN_R5FSS0 & MAIN_R5FSS1) in the MAIN domain; the two C66x DSP remote
processors and the single C71x DSP remote processor in the MAIN domain.
These sub-mailbox nodes utilize the System Mailbox clusters 0 through 4.
All the remaining mailbox clusters are currently not used on A72 core,
and are hence disabled.

The sub-mailbox nodes added match the hard-coded mailbox configuration
used within the TI RTOS IPC software packages. The R5F processor
sub-systems are assumed to be running in Split mode, so a sub-mailbox
node is used by each of the R5F cores. Only the sub-mailbox node for
the first R5F core in each cluster is used in case of a Lockstep mode
for that R5F cluster.

Signed-off-by: Sinthu Raja <sinthu.raja@ti.com>
---
 arch/arm64/boot/dts/ti/k3-j721e-sk.dts | 129 +++++++++++++++++++++++++
 1 file changed, 129 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-j721e-sk.dts b/arch/arm64/boot/dts/ti/k3-j721e-sk.dts
index 2ca92ed12f03..7816aa9b06f0 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-j721e-sk.dts
@@ -727,3 +727,132 @@ &icssg1_mdio {
 &ufs_wrapper {
 	status = "disabled";
 };
+
+&mailbox0_cluster0 {
+	interrupts = <436>;
+
+	mbox_mcu_r5fss0_core0: mbox-mcu-r5fss0-core0 {
+		ti,mbox-rx = <0 0 0>;
+		ti,mbox-tx = <1 0 0>;
+	};
+
+	mbox_mcu_r5fss0_core1: mbox-mcu-r5fss0-core1 {
+		ti,mbox-rx = <2 0 0>;
+		ti,mbox-tx = <3 0 0>;
+	};
+};
+
+&mailbox0_cluster1 {
+	interrupts = <432>;
+
+	mbox_main_r5fss0_core0: mbox-main-r5fss0-core0 {
+		ti,mbox-rx = <0 0 0>;
+		ti,mbox-tx = <1 0 0>;
+	};
+
+	mbox_main_r5fss0_core1: mbox-main-r5fss0-core1 {
+		ti,mbox-rx = <2 0 0>;
+		ti,mbox-tx = <3 0 0>;
+	};
+};
+
+&mailbox0_cluster2 {
+	interrupts = <428>;
+
+	mbox_main_r5fss1_core0: mbox-main-r5fss1-core0 {
+		ti,mbox-rx = <0 0 0>;
+		ti,mbox-tx = <1 0 0>;
+	};
+
+	mbox_main_r5fss1_core1: mbox-main-r5fss1-core1 {
+		ti,mbox-rx = <2 0 0>;
+		ti,mbox-tx = <3 0 0>;
+	};
+};
+
+&mailbox0_cluster3 {
+	interrupts = <424>;
+
+	mbox_c66_0: mbox-c66-0 {
+		ti,mbox-rx = <0 0 0>;
+		ti,mbox-tx = <1 0 0>;
+	};
+
+	mbox_c66_1: mbox-c66-1 {
+		ti,mbox-rx = <2 0 0>;
+		ti,mbox-tx = <3 0 0>;
+	};
+};
+
+&mailbox0_cluster4 {
+	interrupts = <420>;
+
+	mbox_c71_0: mbox-c71-0 {
+		ti,mbox-rx = <0 0 0>;
+		ti,mbox-tx = <1 0 0>;
+	};
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
+
+&mcu_r5fss0_core0 {
+	mboxes = <&mailbox0_cluster0 &mbox_mcu_r5fss0_core0>;
+};
+
+&mcu_r5fss0_core1 {
+	mboxes = <&mailbox0_cluster0 &mbox_mcu_r5fss0_core1>;
+};
+
+&main_r5fss0_core0 {
+	mboxes = <&mailbox0_cluster1 &mbox_main_r5fss0_core0>;
+};
+
+&main_r5fss0_core1 {
+	mboxes = <&mailbox0_cluster1 &mbox_main_r5fss0_core1>;
+};
+
+&main_r5fss1_core0 {
+	mboxes = <&mailbox0_cluster2 &mbox_main_r5fss1_core0>;
+};
+
+&main_r5fss1_core1 {
+	mboxes = <&mailbox0_cluster2 &mbox_main_r5fss1_core1>;
+};
+
+&c66_0 {
+	mboxes = <&mailbox0_cluster3 &mbox_c66_0>;
+};
+
+&c66_1 {
+	mboxes = <&mailbox0_cluster3 &mbox_c66_1>;
+};
+
+&c71_0 {
+	mboxes = <&mailbox0_cluster4 &mbox_c71_0>;
+};
-- 
2.31.1

