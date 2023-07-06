Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C85D27497C4
	for <lists+devicetree@lfdr.de>; Thu,  6 Jul 2023 10:55:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231393AbjGFIzk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Jul 2023 04:55:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53872 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230125AbjGFIzj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Jul 2023 04:55:39 -0400
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 348AC1BC2
        for <devicetree@vger.kernel.org>; Thu,  6 Jul 2023 01:55:38 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0A52C2F4;
        Thu,  6 Jul 2023 01:56:20 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id ECB4A3F73F;
        Thu,  6 Jul 2023 01:55:36 -0700 (PDT)
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Sudeep Holla <sudeep.holla@arm.com>,
        Liviu Dudau <liviu.dudau@arm.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Avram Lubkin <avram@rockhopper.net>
Subject: [PATCH] arm64: dts: arm: Remove the dangling vexpress-v2m-rs1.dtsi symlink
Date:   Thu,  6 Jul 2023 09:55:34 +0100
Message-ID: <20230706085534.300828-1-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Commit 724ba6751532 ("ARM: dts: Move .dts files to vendor sub-directories")
moved all arm vendor specific DTS into the sub-directory and updated
vexpress-v2f-1xv7-ca53x2.dts accordingly to include vexpress-v2m-rs1.dtsi
from the right path. However the symlink was left dangling which is harmless
and causes no issue for the build.

Just remove the dangling symlink now that it is noticed and reported.

Fixes: 724ba6751532 ("ARM: dts: Move .dts files to vendor sub-directories")
Cc: Liviu Dudau <liviu.dudau@arm.com>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>
Reported-by: Avram Lubkin <avram@rockhopper.net>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 arch/arm64/boot/dts/arm/vexpress-v2m-rs1.dtsi | 1 -
 1 file changed, 1 deletion(-)
 delete mode 120000 arch/arm64/boot/dts/arm/vexpress-v2m-rs1.dtsi

diff --git a/arch/arm64/boot/dts/arm/vexpress-v2m-rs1.dtsi b/arch/arm64/boot/dts/arm/vexpress-v2m-rs1.dtsi
deleted file mode 120000
index 68fd0f8f1dee..000000000000
--- a/arch/arm64/boot/dts/arm/vexpress-v2m-rs1.dtsi
+++ /dev/null
@@ -1 +0,0 @@
-../../../../arm/boot/dts/vexpress-v2m-rs1.dtsi
\ No newline at end of file
-- 
2.41.0

