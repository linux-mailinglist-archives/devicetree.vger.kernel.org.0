Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 427081D0FCE
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2020 12:30:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732770AbgEMKaz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 May 2020 06:30:55 -0400
Received: from foss.arm.com ([217.140.110.172]:42704 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1732741AbgEMKay (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 13 May 2020 06:30:54 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 463EF1FB;
        Wed, 13 May 2020 03:30:54 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.25])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2CE0A3F305;
        Wed, 13 May 2020 03:30:53 -0700 (PDT)
From:   Andre Przywara <andre.przywara@arm.com>
To:     Rob Herring <robh@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v3 18/20] arm64: dts: juno: Fix SCPI shared mem node name
Date:   Wed, 13 May 2020 11:30:14 +0100
Message-Id: <20200513103016.130417-19-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513103016.130417-1-andre.przywara@arm.com>
References: <20200513103016.130417-1-andre.przywara@arm.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The SRAM DT binding requires child nodes to use a certain node name
scheme.

Change the naming from scp-shmem to scp-sram to comply with that.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 arch/arm64/boot/dts/arm/juno-base.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/arm/juno-base.dtsi b/arch/arm64/boot/dts/arm/juno-base.dtsi
index 9228d1b60358..f6c55877fbd9 100644
--- a/arch/arm64/boot/dts/arm/juno-base.dtsi
+++ b/arch/arm64/boot/dts/arm/juno-base.dtsi
@@ -521,12 +521,12 @@
 		#size-cells = <1>;
 		ranges = <0 0x0 0x2e000000 0x8000>;
 
-		cpu_scp_lpri: scp-shmem@0 {
+		cpu_scp_lpri: scp-sram@0 {
 			compatible = "arm,juno-scp-shmem";
 			reg = <0x0 0x200>;
 		};
 
-		cpu_scp_hpri: scp-shmem@200 {
+		cpu_scp_hpri: scp-sram@200 {
 			compatible = "arm,juno-scp-shmem";
 			reg = <0x200 0x200>;
 		};
-- 
2.17.1

