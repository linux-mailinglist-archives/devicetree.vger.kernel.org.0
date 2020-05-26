Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6359D1D0FBA
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2020 12:30:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732472AbgEMKac (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 May 2020 06:30:32 -0400
Received: from foss.arm.com ([217.140.110.172]:42576 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1729731AbgEMKab (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 13 May 2020 06:30:31 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 433A1D6E;
        Wed, 13 May 2020 03:30:31 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.25])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0EFAC3F305;
        Wed, 13 May 2020 03:30:29 -0700 (PDT)
From:   Andre Przywara <andre.przywara@arm.com>
To:     Rob Herring <robh@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Mark Rutland <mark.rutland@arm.com>,
        Marc Zyngier <maz@kernel.org>
Subject: [PATCH v3 01/20] dt-bindings: arm: gic: Allow combining arm,gic-400 compatible strings
Date:   Wed, 13 May 2020 11:29:57 +0100
Message-Id: <20200513103016.130417-2-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513103016.130417-1-andre.przywara@arm.com>
References: <20200513103016.130417-1-andre.przywara@arm.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The arm,gic-400 compatible is probably the best matching string for the
GIC in most modern SoCs, but was only introduced later into the kernel.
For historic reasons and to keep compatibility, some SoC DTs were thus
using a combination of this name and one of the older strings, which
currently the binding denies.

Add a stanza to the DT binding to allow "arm,gic-400", followed by
either "arm,cortex-a15-gic" or "arm,cortex-a7-gic". This fixes binding
compliance for quite some SoC .dtsi files in the kernel tree.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 .../devicetree/bindings/interrupt-controller/arm,gic.yaml   | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/arm,gic.yaml b/Documentation/devicetree/bindings/interrupt-controller/arm,gic.yaml
index 9a47820ef346..3ab258c82930 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/arm,gic.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/arm,gic.yaml
@@ -39,6 +39,12 @@ properties:
               - qcom,msm-8660-qgic
               - qcom,msm-qgic2
 
+      - items:
+          - const: arm,gic-400
+          - enum:
+             - arm,cortex-a15-gic
+             - arm,cortex-a7-gic
+
       - items:
           - const: arm,arm1176jzf-devchip-gic
           - const: arm,arm11mp-gic
-- 
2.17.1

