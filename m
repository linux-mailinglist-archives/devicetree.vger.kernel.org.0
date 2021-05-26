Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 95773391F10
	for <lists+devicetree@lfdr.de>; Wed, 26 May 2021 20:28:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235493AbhEZS3r (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 May 2021 14:29:47 -0400
Received: from foss.arm.com ([217.140.110.172]:48480 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232262AbhEZS3r (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 26 May 2021 14:29:47 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8E3F0143B;
        Wed, 26 May 2021 11:28:15 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 6FEFA3F73B;
        Wed, 26 May 2021 11:28:14 -0700 (PDT)
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     devicetree@vger.kernel.org
Cc:     Sudeep Holla <sudeep.holla@arm.com>,
        linux-arm-kernel@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Cristian Marussi <cristian.marussi@arm.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>
Subject: [PATCH 1/8] dt-bindings: firmware: arm,scpi: Move arm,scpi-shmem to json schema
Date:   Wed, 26 May 2021 19:28:00 +0100
Message-Id: <20210526182807.548118-2-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210526182807.548118-1-sudeep.holla@arm.com>
References: <20210526182807.548118-1-sudeep.holla@arm.com>
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
index c1a5afa73cfe..e9946ed15964 100644
--- a/Documentation/devicetree/bindings/sram/sram.yaml
+++ b/Documentation/devicetree/bindings/sram/sram.yaml
@@ -80,6 +80,7 @@ description: |+
             - amlogic,meson8b-smp-sram
             - amlogic,meson-gxbb-scp-shmem
             - amlogic,meson-axg-scp-shmem
+            - arm,scpi-shmem
             - renesas,smp-sram
             - rockchip,rk3066-smp-sram
             - samsung,exynos4210-sysram
-- 
2.25.1

