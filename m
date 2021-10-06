Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CB8EB42392C
	for <lists+devicetree@lfdr.de>; Wed,  6 Oct 2021 09:47:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237563AbhJFHtO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Oct 2021 03:49:14 -0400
Received: from mx1.tq-group.com ([93.104.207.81]:56298 "EHLO mx1.tq-group.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S237669AbhJFHtO (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 6 Oct 2021 03:49:14 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1633506442; x=1665042442;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=TLwy29Z74qOt7jxrwkFUfPbnsEScBrPBXFyKkjDo208=;
  b=RMEtELz91l1Aj+RHticl46UJH1cMMbzNv6X1munzMHQIC/BYK+RI0WXV
   h5v36cmKuh65+MDHHNEAQj4IzNTzenMG+J3KEo1eIliW/Npp2l2uExkk9
   7FibsIZjrvuopo2cdWd6J3G9DQGkRflZXcV3oBvDFrETtR3mFAepWKCx4
   /Cw9oTVKcSdYgQP20dpnz/thjtUJGEKmdJHLlETZ3OS35i7zA1Hrp/d7X
   r3FUY2zioIC8YXU8Rvc3nimPdJFIvGbVEQM1gh5m4qPHfT882kN5pVWuZ
   kLtG8rC+/8ARlj1giybvuN90eCnoZJ59gdpm+YAK8+fNoWxO5CV+Hi/eX
   g==;
X-IronPort-AV: E=Sophos;i="5.85,350,1624312800"; 
   d="scan'208";a="19887680"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 06 Oct 2021 09:47:21 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Wed, 06 Oct 2021 09:47:22 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Wed, 06 Oct 2021 09:47:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1633506442; x=1665042442;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=TLwy29Z74qOt7jxrwkFUfPbnsEScBrPBXFyKkjDo208=;
  b=RMEtELz91l1Aj+RHticl46UJH1cMMbzNv6X1munzMHQIC/BYK+RI0WXV
   h5v36cmKuh65+MDHHNEAQj4IzNTzenMG+J3KEo1eIliW/Npp2l2uExkk9
   7FibsIZjrvuopo2cdWd6J3G9DQGkRflZXcV3oBvDFrETtR3mFAepWKCx4
   /Cw9oTVKcSdYgQP20dpnz/thjtUJGEKmdJHLlETZ3OS35i7zA1Hrp/d7X
   r3FUY2zioIC8YXU8Rvc3nimPdJFIvGbVEQM1gh5m4qPHfT882kN5pVWuZ
   kLtG8rC+/8ARlj1giybvuN90eCnoZJ59gdpm+YAK8+fNoWxO5CV+Hi/eX
   g==;
X-IronPort-AV: E=Sophos;i="5.85,350,1624312800"; 
   d="scan'208";a="19887679"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 06 Oct 2021 09:47:21 +0200
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id B11E0280065;
        Wed,  6 Oct 2021 09:47:21 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Robert Foss <robert.foss@linaro.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org
Subject: [PATCH 2/3] dt-bindings: drm/bridge: ti-sn65dsi83: Add vcc supply bindings
Date:   Wed,  6 Oct 2021 09:47:12 +0200
Message-Id: <20211006074713.1094396-2-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211006074713.1094396-1-alexander.stein@ew.tq-group.com>
References: <20211006074713.1094396-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a VCC regulator which needs to be enabled before the EN pin is
released.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 .../devicetree/bindings/display/bridge/ti,sn65dsi83.yaml     | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
index 07b20383cbca..149cff3233c2 100644
--- a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
@@ -32,6 +32,9 @@ properties:
     maxItems: 1
     description: GPIO specifier for bridge_en pin (active high).
 
+  vcc-supply:
+    description: A 1.8V power supply (see regulator/regulator.yaml).
+
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
 
@@ -94,6 +97,7 @@ required:
   - compatible
   - reg
   - enable-gpios
+  - vcc-supply
   - ports
 
 allOf:
@@ -135,6 +139,7 @@ examples:
             reg = <0x2d>;
 
             enable-gpios = <&gpio2 1 GPIO_ACTIVE_HIGH>;
+            vcc-supply = <&reg_sn65dsi83_1v8>;
 
             ports {
                 #address-cells = <1>;
-- 
2.25.1

