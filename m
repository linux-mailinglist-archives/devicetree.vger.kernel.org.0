Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E7E81432EA1
	for <lists+devicetree@lfdr.de>; Tue, 19 Oct 2021 08:53:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233888AbhJSGzK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Oct 2021 02:55:10 -0400
Received: from mx1.tq-group.com ([93.104.207.81]:53821 "EHLO mx1.tq-group.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S234026AbhJSGzK (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 19 Oct 2021 02:55:10 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1634626378; x=1666162378;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=afCJuCSTbn7eVZ8BU0m5iuowBOerKVpcXOZ8UxaZTaA=;
  b=otJjLOSljetTZ0hnDxnkVLimzSqCwG4sz1pBjPlsbkbR8UMmKD62Touk
   5h/udZ7u3jYsP0jJbXXZn2qbVD2h28tgAKAMggoySm6CsNPyN/YExGW7j
   3YSqBj+6798BQ7sgw0GeS/JKTKjzof/CV9pqZlSwSgkyveZ+mP33EmHCu
   OYPTTqgfSIBUGLFI6tb7TO+F8H1N1ghUa0PwTiysS4OOtbY6wdxV4jr7Y
   hNxWAUEFxr9CEZ3T9OSCyd71PRtbOE3TK/LLp5RIJiRmAcBWbDo5IVx0m
   FubLcjQeI0WIjDHgiq+ZJwEwrjPRdn9iDO1Wlf5xNvKPR+VHVUvoJFr4i
   g==;
X-IronPort-AV: E=Sophos;i="5.85,383,1624312800"; 
   d="scan'208";a="20120010"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 19 Oct 2021 08:52:57 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Tue, 19 Oct 2021 08:52:57 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Tue, 19 Oct 2021 08:52:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1634626377; x=1666162377;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=afCJuCSTbn7eVZ8BU0m5iuowBOerKVpcXOZ8UxaZTaA=;
  b=qZKcnAJcqgUt8pWRYKm6RrPoVVl6A4J8I1CtZaKJ3+KRN/gWrUu6zMwH
   pYiZyrRAUMd4xqI+pCZswRF2Scp66uIh4Vvo3fOHF0uOdPV15AwgmU25A
   aBz+n4NHn14lR4PoKUyuY7SHKx8m/kKTnVWssQiZ+XdN5bxxEHZxICchF
   Z7N/cVGAM2yfs3r73rPmaiduJdo0BQMS0RVM2YqagZGGoZ08p21HY7IHX
   d4it4GOi6sfjzQJL2iFwmlAxaFEgBcE+S7skX3nPgoFAQSUZt4if6o8NO
   i9Bs6jikVAq+l+E+7RUx7KguLdHwRZ5gdYcx8MqvtHyR1mR826JdId8MH
   w==;
X-IronPort-AV: E=Sophos;i="5.85,383,1624312800"; 
   d="scan'208";a="20120000"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 19 Oct 2021 08:52:53 +0200
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id C7281280075;
        Tue, 19 Oct 2021 08:52:52 +0200 (CEST)
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
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Sam Ravnborg <sam@ravnborg.org>
Subject: [PATCH v3 3/4] dt-bindings: drm/bridge: ti-sn65dsi83: Add vcc supply bindings
Date:   Tue, 19 Oct 2021 08:52:38 +0200
Message-Id: <20211019065239.969988-4-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211019065239.969988-1-alexander.stein@ew.tq-group.com>
References: <20211019065239.969988-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a VCC regulator which needs to be enabled before the EN pin is
released.

Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 .../devicetree/bindings/display/bridge/ti,sn65dsi83.yaml      | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
index a5779bf17849..f1e4f149ccb4 100644
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
 
@@ -134,6 +137,7 @@ examples:
             reg = <0x2d>;
 
             enable-gpios = <&gpio2 1 GPIO_ACTIVE_HIGH>;
+            vcc-supply = <&reg_sn65dsi83_1v8>;
 
             ports {
                 #address-cells = <1>;
-- 
2.25.1

