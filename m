Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 88400397CB6
	for <lists+devicetree@lfdr.de>; Wed,  2 Jun 2021 00:49:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235026AbhFAWu5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Jun 2021 18:50:57 -0400
Received: from foss.arm.com ([217.140.110.172]:59776 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S234766AbhFAWu5 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 1 Jun 2021 18:50:57 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 60B58139F;
        Tue,  1 Jun 2021 15:49:15 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 457D93F719;
        Tue,  1 Jun 2021 15:49:14 -0700 (PDT)
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     devicetree@vger.kernel.org
Cc:     Sudeep Holla <sudeep.holla@arm.com>,
        linux-arm-kernel@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Cristian Marussi <cristian.marussi@arm.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>
Subject: [PATCH v2 4/8] dt-bindings: firmware: amlogic,scpi: Move arm,scpi-shmem to json schema
Date:   Tue,  1 Jun 2021 23:49:00 +0100
Message-Id: <20210601224904.917990-5-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210601224904.917990-1-sudeep.holla@arm.com>
References: <20210601224904.917990-1-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

"amlogic,meson-gxbb-scp-shmem" is already in the Generic on-chip SRAM
binding though "amlogic,meson-gxbb-scpi" is missing which is now added.
Also remove the whole old text format binding for the same.

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Kevin Hilman <khilman@baylibre.com>
Cc: Neil Armstrong <narmstrong@baylibre.com>
Cc: Jerome Brunet <jbrunet@baylibre.com>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 .../devicetree/bindings/arm/amlogic,scpi.txt         | 12 ------------
 Documentation/devicetree/bindings/sram/sram.yaml     |  1 +
 2 files changed, 1 insertion(+), 12 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/amlogic,scpi.txt b/Documentation/devicetree/bindings/arm/amlogic,scpi.txt
index 5ab59da052df..ebfe302fb747 100644
--- a/Documentation/devicetree/bindings/arm/amlogic,scpi.txt
+++ b/Documentation/devicetree/bindings/arm/amlogic,scpi.txt
@@ -5,18 +5,6 @@ Required properties
 
 - compatible : should be "amlogic,meson-gxbb-scpi"
 
-AMLOGIC SRAM and Shared Memory for SCPI
-------------------------------------
-
-Required properties:
-- compatible : should be "amlogic,meson-gxbb-sram"
-
-Each sub-node represents the reserved area for SCPI.
-
-Required sub-node properties:
-- compatible : should be "amlogic,meson-gxbb-scp-shmem" for SRAM based shared
-		memory on Amlogic GXBB SoC.
-
 Sensor bindings for the sensors based on SCPI Message Protocol
 --------------------------------------------------------------
 SCPI provides an API to access the various sensors on the SoC.
diff --git a/Documentation/devicetree/bindings/sram/sram.yaml b/Documentation/devicetree/bindings/sram/sram.yaml
index 799ed9a0e4b2..3eda5049d183 100644
--- a/Documentation/devicetree/bindings/sram/sram.yaml
+++ b/Documentation/devicetree/bindings/sram/sram.yaml
@@ -28,6 +28,7 @@ description: |+
     contains:
       enum:
         - mmio-sram
+        - amlogic,meson-gxbb-sram
         - arm,juno-sram-ns
         - atmel,sama5d2-securam
         - rockchip,rk3288-pmu-sram
-- 
2.25.1

