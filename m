Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A9FBE265BCD
	for <lists+devicetree@lfdr.de>; Fri, 11 Sep 2020 10:41:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725554AbgIKIlz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Sep 2020 04:41:55 -0400
Received: from foss.arm.com ([217.140.110.172]:56870 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725780AbgIKIlw (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 11 Sep 2020 04:41:52 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8594D11B3;
        Fri, 11 Sep 2020 01:41:51 -0700 (PDT)
Received: from ewhatever.cambridge.arm.com (ewhatever.cambridge.arm.com [10.1.197.1])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 45EE63F73C;
        Fri, 11 Sep 2020 01:41:50 -0700 (PDT)
From:   Suzuki K Poulose <suzuki.poulose@arm.com>
To:     linux-arm-kernel@lists.infradead.org
Cc:     coresight@lists.linaro.org, mathieu.poirier@linaro.org,
        mike.leach@linaro.org, leo.yan@linaro.org,
        Anshuman.Khandual@arm.com,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>
Subject: [PATCH 19/19] dts: bindings: coresight: ETMv4.4 system register access only units
Date:   Fri, 11 Sep 2020 09:41:19 +0100
Message-Id: <20200911084119.1080694-20-suzuki.poulose@arm.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200911084119.1080694-1-suzuki.poulose@arm.com>
References: <20200911084119.1080694-1-suzuki.poulose@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document the bindings for ETMv4.4 and later with only system register
access.

Cc: devicetree@vger.kernel.org
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: Mike Leach <mike.leach@linaro.org>
Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 Documentation/devicetree/bindings/arm/coresight.txt | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/coresight.txt b/Documentation/devicetree/bindings/arm/coresight.txt
index d711676b4a51..cfe47bdda728 100644
--- a/Documentation/devicetree/bindings/arm/coresight.txt
+++ b/Documentation/devicetree/bindings/arm/coresight.txt
@@ -34,9 +34,13 @@ its hardware characteristcs.
 					Program Flow Trace Macrocell:
 			"arm,coresight-etm3x", "arm,primecell";
 
-		- Embedded Trace Macrocell (version 4.x):
+		- Embedded Trace Macrocell (version 4.x), with memory mapped access.
 			"arm,coresight-etm4x", "arm,primecell";
 
+		- Embedded Trace Macrocell (version 4.4 and later) with system
+		  register access only.
+			"arm,coresight-etm-v4.4";
+
 		- Coresight programmable Replicator :
 			"arm,coresight-dynamic-replicator", "arm,primecell";
 
-- 
2.24.1

