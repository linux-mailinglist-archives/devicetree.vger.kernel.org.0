Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 69A2A506009
	for <lists+devicetree@lfdr.de>; Tue, 19 Apr 2022 00:58:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233977AbiDRXAb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Apr 2022 19:00:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52760 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233895AbiDRXAb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Apr 2022 19:00:31 -0400
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 7AEF82D1E1
        for <devicetree@vger.kernel.org>; Mon, 18 Apr 2022 15:57:50 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4463F1042;
        Mon, 18 Apr 2022 15:57:50 -0700 (PDT)
Received: from e121345-lin.cambridge.arm.com (e121345-lin.cambridge.arm.com [10.1.196.40])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 8E93F3F5A1;
        Mon, 18 Apr 2022 15:57:49 -0700 (PDT)
From:   Robin Murphy <robin.murphy@arm.com>
To:     will@kernel.org
Cc:     mark.rutland@arm.com, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org
Subject: [PATCH 1/4] dt-bindings: perf: arm-cmn: Add CMN-650 and CMN-700
Date:   Mon, 18 Apr 2022 23:57:38 +0100
Message-Id: <9b4dc0c82c91adff62b6f92eec5f61fb25b9db87.1650320598.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.35.3.dirty
In-Reply-To: <cover.1650320598.git.robin.murphy@arm.com>
References: <cover.1650320598.git.robin.murphy@arm.com>
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

If you were to guess from the product names that CMN-650 and CMN-700 are
the next two evolutionary steps of Arm's enterprise-level interconnect
following on from CMN-600, you'd be pleasantly correct. Add them to the
DT binding.

CC: devicetree@vger.kernel.org
Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 Documentation/devicetree/bindings/perf/arm,cmn.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/perf/arm,cmn.yaml b/Documentation/devicetree/bindings/perf/arm,cmn.yaml
index 2d4219ec7eda..2e51072e794a 100644
--- a/Documentation/devicetree/bindings/perf/arm,cmn.yaml
+++ b/Documentation/devicetree/bindings/perf/arm,cmn.yaml
@@ -14,6 +14,8 @@ properties:
   compatible:
     enum:
       - arm,cmn-600
+      - arm,cmn-650
+      - arm,cmn-700
       - arm,ci-700
 
   reg:
-- 
2.35.3.dirty

