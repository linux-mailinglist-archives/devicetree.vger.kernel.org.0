Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D88B34FF3A7
	for <lists+devicetree@lfdr.de>; Wed, 13 Apr 2022 11:36:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232655AbiDMJik (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Apr 2022 05:38:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52502 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234530AbiDMJig (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Apr 2022 05:38:36 -0400
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id DD1E4546BB
        for <devicetree@vger.kernel.org>; Wed, 13 Apr 2022 02:35:59 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4165613D5;
        Wed, 13 Apr 2022 02:35:59 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 41D143F5A1;
        Wed, 13 Apr 2022 02:35:58 -0700 (PDT)
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Sudeep Holla <sudeep.holla@arm.com>, devicetree@vger.kernel.org,
        Liviu Dudau <liviu.dudau@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Mike Leach <Mike.Leach@arm.com>,
        Robin Murphy <robin.murphy@arm.com>
Subject: [PATCH] arm64: dts: juno: Fix SCMI power domain IDs for ETF and CS funnel
Date:   Wed, 13 Apr 2022 10:35:47 +0100
Message-Id: <20220413093547.1699535-1-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The SCMI power domain ID for all the coresight components is 8 while
the previous/older SCPI domain was 0. When adding SCMI variant, couple
of instances retained SCPI domain ID by mistake.

Fix the same by using the correct SCMI power domain ID of 8.

Fixes: 96bb0954860a ("arm64: dts: juno: Add separate SCMI variants")
Reported-by: Mike Leach <Mike.Leach@arm.com>
Cc: Robin Murphy <robin.murphy@arm.com>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 arch/arm64/boot/dts/arm/juno-r1-scmi.dts | 4 ++--
 arch/arm64/boot/dts/arm/juno-r2-scmi.dts | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/arm/juno-r1-scmi.dts b/arch/arm64/boot/dts/arm/juno-r1-scmi.dts
index 190a0fba4ad6..fd1f0d26d751 100644
--- a/arch/arm64/boot/dts/arm/juno-r1-scmi.dts
+++ b/arch/arm64/boot/dts/arm/juno-r1-scmi.dts
@@ -7,11 +7,11 @@ funnel@20130000 {
 	};
 
 	etf@20140000 {
-		power-domains = <&scmi_devpd 0>;
+		power-domains = <&scmi_devpd 8>;
 	};
 
 	funnel@20150000 {
-		power-domains = <&scmi_devpd 0>;
+		power-domains = <&scmi_devpd 8>;
 	};
 };
 
diff --git a/arch/arm64/boot/dts/arm/juno-r2-scmi.dts b/arch/arm64/boot/dts/arm/juno-r2-scmi.dts
index dbf13770084f..35e6d4762c46 100644
--- a/arch/arm64/boot/dts/arm/juno-r2-scmi.dts
+++ b/arch/arm64/boot/dts/arm/juno-r2-scmi.dts
@@ -7,11 +7,11 @@ funnel@20130000 {
 	};
 
 	etf@20140000 {
-		power-domains = <&scmi_devpd 0>;
+		power-domains = <&scmi_devpd 8>;
 	};
 
 	funnel@20150000 {
-		power-domains = <&scmi_devpd 0>;
+		power-domains = <&scmi_devpd 8>;
 	};
 };
 
-- 
2.35.1

