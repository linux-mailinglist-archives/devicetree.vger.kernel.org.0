Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E43AA391F16
	for <lists+devicetree@lfdr.de>; Wed, 26 May 2021 20:28:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235506AbhEZS3y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 May 2021 14:29:54 -0400
Received: from foss.arm.com ([217.140.110.172]:48530 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232262AbhEZS3y (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 26 May 2021 14:29:54 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C4D9D13A1;
        Wed, 26 May 2021 11:28:22 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id A59933F73B;
        Wed, 26 May 2021 11:28:21 -0700 (PDT)
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     devicetree@vger.kernel.org
Cc:     Sudeep Holla <sudeep.holla@arm.com>,
        linux-arm-kernel@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Cristian Marussi <cristian.marussi@arm.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>
Subject: [PATCH 7/8] dt-bindings: firmware: amlogic,scpi: Convert to json schema
Date:   Wed, 26 May 2021 19:28:06 +0100
Message-Id: <20210526182807.548118-8-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210526182807.548118-1-sudeep.holla@arm.com>
References: <20210526182807.548118-1-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert/merge the existing text format SCPI binding additions for
amlogic,scpi into the common arm,scpi json scheme.

Couple of things to note:
"amlogic,meson-gxbb-scpi" is always used with "arm,scpi-pre-1.0"
 hence no need for separate "arm,scpi-pre-1.0" standalone entry and
"amlogic,meson-gxbb-scpi-sensors" is used always with "arm,scpi-sensors"

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Kevin Hilman <khilman@baylibre.com>
Cc: Neil Armstrong <narmstrong@baylibre.com>
Cc: Jerome Brunet <jbrunet@baylibre.com>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 .../devicetree/bindings/arm/amlogic,scpi.txt      | 15 ---------------
 .../devicetree/bindings/firmware/arm,scpi.yaml    |  4 ++++
 2 files changed, 4 insertions(+), 15 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/amlogic,scpi.txt

diff --git a/Documentation/devicetree/bindings/arm/amlogic,scpi.txt b/Documentation/devicetree/bindings/arm/amlogic,scpi.txt
deleted file mode 100644
index ebfe302fb747..000000000000
--- a/Documentation/devicetree/bindings/arm/amlogic,scpi.txt
+++ /dev/null
@@ -1,15 +0,0 @@
-System Control and Power Interface (SCPI) Message Protocol
-(in addition to the standard binding in [0])
-----------------------------------------------------------
-Required properties
-
-- compatible : should be "amlogic,meson-gxbb-scpi"
-
-Sensor bindings for the sensors based on SCPI Message Protocol
---------------------------------------------------------------
-SCPI provides an API to access the various sensors on the SoC.
-
-Required properties:
-- compatible : should be "amlogic,meson-gxbb-scpi-sensors".
-
-[0] Documentation/devicetree/bindings/arm/arm,scpi.txt
diff --git a/Documentation/devicetree/bindings/firmware/arm,scpi.yaml b/Documentation/devicetree/bindings/firmware/arm,scpi.yaml
index 9c115e9c1536..d1179a4ea4e9 100644
--- a/Documentation/devicetree/bindings/firmware/arm,scpi.yaml
+++ b/Documentation/devicetree/bindings/firmware/arm,scpi.yaml
@@ -34,6 +34,7 @@ description: |
           to SCPI v1.0
         items:
           - const: arm,scpi-pre-1.0
+          - const: amlogic,meson-gxbb-scpi
 
   mboxes:
     description: |
@@ -64,6 +65,9 @@ description: |
         oneOf:
           - const: arm,scpi-sensors
           - const: arm,scpi-power-domains
+          - items:
+              - const: amlogic,meson-gxbb-scpi-sensors
+              - const: arm,scpi-sensors
 
   "^clocks(-[0-9a-f]+)?$":
     type: object
-- 
2.25.1

