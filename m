Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1E6D6397CB3
	for <lists+devicetree@lfdr.de>; Wed,  2 Jun 2021 00:49:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235003AbhFAWuy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Jun 2021 18:50:54 -0400
Received: from foss.arm.com ([217.140.110.172]:59750 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S234998AbhFAWuy (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 1 Jun 2021 18:50:54 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F00A61042;
        Tue,  1 Jun 2021 15:49:11 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id D4BF93F719;
        Tue,  1 Jun 2021 15:49:10 -0700 (PDT)
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     devicetree@vger.kernel.org
Cc:     Sudeep Holla <sudeep.holla@arm.com>,
        linux-arm-kernel@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Cristian Marussi <cristian.marussi@arm.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>
Subject: [PATCH v2 1/8] dt-bindings: firmware: arm,scpi: Move arm,scp-shmem to json schema
Date:   Tue,  1 Jun 2021 23:48:57 +0100
Message-Id: <20210601224904.917990-2-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210601224904.917990-1-sudeep.holla@arm.com>
References: <20210601224904.917990-1-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Move the SRAM and shared memory binding for SCPI into the existing
Generic on-chip SRAM. We just need to update the compatible list and
there-by remove the whole old text format binding for the same.

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Kevin Hilman <khilman@baylibre.com>
Cc: Neil Armstrong <narmstrong@baylibre.com>
Cc: Jerome Brunet <jbrunet@baylibre.com>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 .../devicetree/bindings/arm/arm,scpi.txt          | 15 ---------------
 Documentation/devicetree/bindings/sram/sram.yaml  |  1 +
 2 files changed, 1 insertion(+), 15 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/arm,scpi.txt b/Documentation/devicetree/bindings/arm/arm,scpi.txt
index bcd6c3ec471e..bcb8b3d61e68 100644
--- a/Documentation/devicetree/bindings/arm/arm,scpi.txt
+++ b/Documentation/devicetree/bindings/arm/arm,scpi.txt
@@ -56,21 +56,6 @@ Sub-nodes
 	node. It can be non linear and hence provide the mapping of identifiers
 	into the clock-output-names array.
 
-SRAM and Shared Memory for SCPI
--------------------------------
-
-A small area of SRAM is reserved for SCPI communication between application
-processors and SCP.
-
-The properties should follow the generic mmio-sram description found in [3]
-
-Each sub-node represents the reserved area for SCPI.
-
-Required sub-node properties:
-- reg : The base offset and size of the reserved area with the SRAM
-- compatible : should be "arm,scp-shmem" for Non-secure SRAM based
-	       shared memory
-
 Sensor bindings for the sensors based on SCPI Message Protocol
 --------------------------------------------------------------
 SCPI provides an API to access the various sensors on the SoC.
diff --git a/Documentation/devicetree/bindings/sram/sram.yaml b/Documentation/devicetree/bindings/sram/sram.yaml
index c1a5afa73cfe..7fc208692a7a 100644
--- a/Documentation/devicetree/bindings/sram/sram.yaml
+++ b/Documentation/devicetree/bindings/sram/sram.yaml
@@ -80,6 +80,7 @@ description: |+
             - amlogic,meson8b-smp-sram
             - amlogic,meson-gxbb-scp-shmem
             - amlogic,meson-axg-scp-shmem
+            - arm,scp-shmem
             - renesas,smp-sram
             - rockchip,rk3066-smp-sram
             - samsung,exynos4210-sysram
-- 
2.25.1

