Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E4CA74776A5
	for <lists+devicetree@lfdr.de>; Thu, 16 Dec 2021 17:05:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238799AbhLPQFw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Dec 2021 11:05:52 -0500
Received: from mx1.tq-group.com ([93.104.207.81]:5073 "EHLO mx1.tq-group.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S238789AbhLPQFw (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 16 Dec 2021 11:05:52 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1639670752; x=1671206752;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=p5HHJrSYp7xxYPtjPoRgmxeGfWmt/+mPIconMbitaRw=;
  b=pKVfLVwbSid792IWl6Y9nrGFIp2+5rRMkL1dqE6Rn6dr+V6ve4ei5Exm
   3wGleIvtl7fIO2RnVyyAn/XRzHrIb4XuodM3rala88d5KyPODfvKH82iV
   QFndsKXr5XELjSs0phtrlVXd7+nLGo1wv1v+saYm05oqMiIhpbKtGoyvB
   Qu7eRp6SdAOAb6KnwfJtMEsZFdttTYEkI4o9FacGFU3vNsArtx5SkcLek
   1rdb28dqYZiyv7Qbs6otwsnPKctf3LpIDKab6WrrBeFXsxfpfiRffZa1Y
   mMoAXdRqFiHQ79HyYnU5IqLtBncBmsYfxPoHvfj8K1jaXXhVLliqU8VbT
   Q==;
X-IronPort-AV: E=Sophos;i="5.88,211,1635199200"; 
   d="scan'208";a="21103119"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 16 Dec 2021 17:05:50 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Thu, 16 Dec 2021 17:05:50 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Thu, 16 Dec 2021 17:05:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1639670750; x=1671206750;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=p5HHJrSYp7xxYPtjPoRgmxeGfWmt/+mPIconMbitaRw=;
  b=f47b9sh68caCcc8NOisVj4ILwTT3LSAfRZyDrHH1e+qQgjFvbSZhHAfx
   xQCH7G2cnpsjy0mYvk/BUbXWfNikW7mgi4tfgEYgLDZRQKM/Yd1J8E7dE
   wR8dnVtWV8nHhMi21MXLOWvFpzAafSlz5Z1hTGs6v7nMW8VhsWsdkmzSS
   jCYJncuIIKsPXNiSkuS1V7fkKzRBVBBIUjeIfkH2J+byUKe4IEjb+Vio6
   9ONB9waI+ptQGMm90zFo4G8FhO1DVMEH0tR33i4IgeXSmfFdgRVZzahXE
   n3as5oJbI6v9S8SBkE9xZvbgYHepexc1098UfQyXFO4LzDcti7YFOZi20
   A==;
X-IronPort-AV: E=Sophos;i="5.88,211,1635199200"; 
   d="scan'208";a="21103118"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 16 Dec 2021 17:05:50 +0100
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id CFDAB280075;
        Thu, 16 Dec 2021 17:05:49 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 1/3] dt-bindings: phy: imx8mq-usb-phy: Add imx8mp specific flags
Date:   Thu, 16 Dec 2021 17:05:39 +0100
Message-Id: <20211216160541.544974-2-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211216160541.544974-1-alexander.stein@ew.tq-group.com>
References: <20211216160541.544974-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds bindings for features only available on imx8mp. They allow
setting polarity of PWR and OC as well as disabling port power control.
Also permanently atteched can be annotated as well.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
Adding properties specific to one compatible globally and disabling them on
other compatibles is the way to go?

Are there any best practices on the usage of '-' and/or '_' in property names?

 .../bindings/phy/fsl,imx8mq-usb-phy.yaml      | 52 ++++++++++++++++++-
 1 file changed, 51 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml b/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml
index 2936f3510a6a..1d28b7d1c413 100644
--- a/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml
@@ -16,7 +16,8 @@ properties:
       - fsl,imx8mp-usb-phy
 
   reg:
-    maxItems: 1
+    minItems: 1
+    maxItems: 2
 
   "#phy-cells":
     const: 0
@@ -32,6 +33,28 @@ properties:
     description:
       A phandle to the regulator for USB VBUS.
 
+  fsl,permanently-attached:
+    type: boolean
+    description:
+      Indicates if the device atached to a downstream port is
+      permanently attached.
+
+  fsl,disable-port-power-control:
+    type: boolean
+    description:
+      Indicates whether the host controller implementation includes port
+      power control. Defines Bit 3 in capability register (HCCPARAMS).
+
+  fsl,over-current-active-low:
+    type: boolean
+    description:
+      Over current signal polarity is active low.
+
+  fsl,power-active-low:
+    type: boolean
+    description:
+      Power pad (PWR) polarity is active low.
+
 required:
   - compatible
   - reg
@@ -39,6 +62,33 @@ required:
   - clocks
   - clock-names
 
+if:
+  properties:
+    compatible:
+      contains:
+        enum:
+          - fsl,imx8mp-usb-phy
+
+then:
+  properties:
+    reg:
+      minItems: 2
+      maxItems: 2
+      items:
+        - description: PHY register base address
+        - description: Glue layer base address
+
+else:
+  properties:
+    reg:
+      maxItems: 1
+      items:
+        - description: PHY register base address
+    fsl,permanently-attached: false
+    fsl,disable-port-power-control: false
+    fsl,over-current-active-low: false
+    fsl,power-active-low: false
+
 additionalProperties: false
 
 examples:
-- 
2.25.1

