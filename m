Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4A6186D0BE3
	for <lists+devicetree@lfdr.de>; Thu, 30 Mar 2023 18:53:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231157AbjC3QxZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Mar 2023 12:53:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37732 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229764AbjC3QxK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Mar 2023 12:53:10 -0400
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 570251BDC
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 09:52:56 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6AF3B1682;
        Thu, 30 Mar 2023 09:53:40 -0700 (PDT)
Received: from eglon.cambridge.arm.com (eglon.cambridge.arm.com [10.1.196.177])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8EBF93F6C4;
        Thu, 30 Mar 2023 09:52:54 -0700 (PDT)
From:   James Morse <james.morse@arm.com>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Marc Zyngier <maz@kernel.org>,
        Oliver Upton <oliver.upton@linux.dev>,
        James Morse <james.morse@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Subject: [PATCH 3/6] arm64: cputype: Add new part numbers for Cortex-X3, and Neoverse-V2
Date:   Thu, 30 Mar 2023 17:51:25 +0100
Message-Id: <20230330165128.3237939-4-james.morse@arm.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230330165128.3237939-1-james.morse@arm.com>
References: <20230330165128.3237939-1-james.morse@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.5 required=5.0 tests=RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_NONE,UPPERCASE_50_75 autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

New CPUs have new errata. Add the new partnumbers.

Signed-off-by: James Morse <james.morse@arm.com>
---
Cortex-X3:
https://developer.arm.com/documentation/101593/0102/?lang=en
Neoverse-V2:
https://developer.arm.com/documentation/102375/0002/?lang=en
---
 arch/arm64/include/asm/cputype.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/include/asm/cputype.h b/arch/arm64/include/asm/cputype.h
index 683ca3af4084..1a2c55e172e8 100644
--- a/arch/arm64/include/asm/cputype.h
+++ b/arch/arm64/include/asm/cputype.h
@@ -84,6 +84,8 @@
 #define ARM_CPU_PART_CORTEX_X2		0xD48
 #define ARM_CPU_PART_NEOVERSE_N2	0xD49
 #define ARM_CPU_PART_CORTEX_A78C	0xD4B
+#define ARM_CPU_PART_CORTEX_X3		0xD4E
+#define ARM_CPU_PART_NEOVERSE_V2	0xD4F
 
 #define APM_CPU_PART_POTENZA		0x000
 
@@ -149,6 +151,8 @@
 #define MIDR_CORTEX_X2 MIDR_CPU_MODEL(ARM_CPU_IMP_ARM, ARM_CPU_PART_CORTEX_X2)
 #define MIDR_NEOVERSE_N2 MIDR_CPU_MODEL(ARM_CPU_IMP_ARM, ARM_CPU_PART_NEOVERSE_N2)
 #define MIDR_CORTEX_A78C	MIDR_CPU_MODEL(ARM_CPU_IMP_ARM, ARM_CPU_PART_CORTEX_A78C)
+#define MIDR_CORTEX_X3		MIDR_CPU_MODEL(ARM_CPU_IMP_ARM, ARM_CPU_PART_CORTEX_X3)
+#define MIDR_NEOVERSE_V2	MIDR_CPU_MODEL(ARM_CPU_IMP_ARM, ARM_CPU_PART_NEOVERSE_V2)
 #define MIDR_THUNDERX	MIDR_CPU_MODEL(ARM_CPU_IMP_CAVIUM, CAVIUM_CPU_PART_THUNDERX)
 #define MIDR_THUNDERX_81XX MIDR_CPU_MODEL(ARM_CPU_IMP_CAVIUM, CAVIUM_CPU_PART_THUNDERX_81XX)
 #define MIDR_THUNDERX_83XX MIDR_CPU_MODEL(ARM_CPU_IMP_CAVIUM, CAVIUM_CPU_PART_THUNDERX_83XX)
-- 
2.39.2

