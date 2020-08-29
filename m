Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5B73425693F
	for <lists+devicetree@lfdr.de>; Sat, 29 Aug 2020 19:09:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728439AbgH2RJi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 29 Aug 2020 13:09:38 -0400
Received: from foss.arm.com ([217.140.110.172]:45064 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728471AbgH2RJh (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 29 Aug 2020 13:09:37 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C623712FC;
        Sat, 29 Aug 2020 10:09:36 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id BD77E3F71F;
        Sat, 29 Aug 2020 10:09:35 -0700 (PDT)
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Sudeep Holla <sudeep.holla@arm.com>, kernel-team@android.com,
        Will Deacon <will@kernel.org>, tsoni@quicinc.com,
        pratikp@quicinc.com
Subject: [PATCH 4/9] firmware: smccc: export both smccc functions
Date:   Sat, 29 Aug 2020 18:09:18 +0100
Message-Id: <20200829170923.29949-5-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200829170923.29949-1-sudeep.holla@arm.com>
References: <20200829170923.29949-1-sudeep.holla@arm.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

We need to export both arm_smccc_1_1_get_conduit and arm_smccc_get_version
to allow Arm FFA modules make use of them.

Let us export them in preparation to add support for Arm FFA modules.

Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 drivers/firmware/smccc/smccc.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/firmware/smccc/smccc.c b/drivers/firmware/smccc/smccc.c
index 4e80921ee212..00c88b809c0c 100644
--- a/drivers/firmware/smccc/smccc.c
+++ b/drivers/firmware/smccc/smccc.c
@@ -24,8 +24,10 @@ enum arm_smccc_conduit arm_smccc_1_1_get_conduit(void)
 
 	return smccc_conduit;
 }
+EXPORT_SYMBOL_GPL(arm_smccc_1_1_get_conduit);
 
 u32 arm_smccc_get_version(void)
 {
 	return smccc_version;
 }
+EXPORT_SYMBOL_GPL(arm_smccc_get_version);
-- 
2.17.1

