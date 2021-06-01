Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C6851397CB4
	for <lists+devicetree@lfdr.de>; Wed,  2 Jun 2021 00:49:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234998AbhFAWuz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Jun 2021 18:50:55 -0400
Received: from foss.arm.com ([217.140.110.172]:59758 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S235007AbhFAWuz (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 1 Jun 2021 18:50:55 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 14AD611B3;
        Tue,  1 Jun 2021 15:49:13 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 2EC3E3F719;
        Tue,  1 Jun 2021 15:49:12 -0700 (PDT)
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     devicetree@vger.kernel.org
Cc:     Sudeep Holla <sudeep.holla@arm.com>,
        linux-arm-kernel@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Cristian Marussi <cristian.marussi@arm.com>,
        Florian Fainelli <f.fainelli@gmail.com>
Subject: [PATCH v2 2/8] dt-bindings: firmware: arm,scmi: Move arm,scmi-shmem to json schema
Date:   Tue,  1 Jun 2021 23:48:58 +0100
Message-Id: <20210601224904.917990-3-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210601224904.917990-1-sudeep.holla@arm.com>
References: <20210601224904.917990-1-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Move the SRAM and shared memory binding for SCMI into the existing
Generic on-chip SRAM. We just need to update the compatible list and
there-by remove the whole old text format binding for the same.

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Cristian Marussi <cristian.marussi@arm.com>
Cc: Florian Fainelli <f.fainelli@gmail.com>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 .../devicetree/bindings/arm/arm,scmi.txt          | 15 ---------------
 Documentation/devicetree/bindings/sram/sram.yaml  |  1 +
 2 files changed, 1 insertion(+), 15 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/arm,scmi.txt b/Documentation/devicetree/bindings/arm/arm,scmi.txt
index 667d58e0a659..b7be2000afcb 100644
--- a/Documentation/devicetree/bindings/arm/arm,scmi.txt
+++ b/Documentation/devicetree/bindings/arm/arm,scmi.txt
@@ -106,21 +106,6 @@ signal binding[5].
  - #reset-cells : Should be 1. Contains the reset domain ID value used
 		  by SCMI commands.
 
-SRAM and Shared Memory for SCMI
--------------------------------
-
-A small area of SRAM is reserved for SCMI communication between application
-processors and SCP.
-
-The properties should follow the generic mmio-sram description found in [4]
-
-Each sub-node represents the reserved area for SCMI.
-
-Required sub-node properties:
-- reg : The base offset and size of the reserved area with the SRAM
-- compatible : should be "arm,scmi-shmem" for Non-secure SRAM based
-	       shared memory
-
 [0] http://infocenter.arm.com/help/topic/com.arm.doc.den0056a/index.html
 [1] Documentation/devicetree/bindings/clock/clock-bindings.txt
 [2] Documentation/devicetree/bindings/power/power-domain.yaml
diff --git a/Documentation/devicetree/bindings/sram/sram.yaml b/Documentation/devicetree/bindings/sram/sram.yaml
index 7fc208692a7a..543aa400fbdf 100644
--- a/Documentation/devicetree/bindings/sram/sram.yaml
+++ b/Documentation/devicetree/bindings/sram/sram.yaml
@@ -80,6 +80,7 @@ description: |+
             - amlogic,meson8b-smp-sram
             - amlogic,meson-gxbb-scp-shmem
             - amlogic,meson-axg-scp-shmem
+            - arm,scmi-shmem
             - arm,scp-shmem
             - renesas,smp-sram
             - rockchip,rk3066-smp-sram
-- 
2.25.1

