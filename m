Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BF4B8429DF9
	for <lists+devicetree@lfdr.de>; Tue, 12 Oct 2021 08:49:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232509AbhJLGvN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Oct 2021 02:51:13 -0400
Received: from mx1.tq-group.com ([93.104.207.81]:22452 "EHLO mx1.tq-group.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S233376AbhJLGvK (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 12 Oct 2021 02:51:10 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1634021349; x=1665557349;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=VRR0se0nChPPCwlnAT8ZDDTNztxvzoMjgIcwUmvsRbk=;
  b=ECpOmtWa9WLQpHKJ8Z1rS9M/eGCFoDsu8F4VbMwc5oGRH9n/p1FIpilx
   +feuRdlxmyv34HCdCb3bC3qKSWtI9fPGsi64vpvb1/TX19xNohAGZ4fDB
   ByjguRKqCbs+N2JJna0Yoi2Ov4rUdbzlySLVDIQ/7mVHL2bi8MedNYcnx
   FLKaahFk5vGqYEDVpp1ESu/5l2G+6QRH08rJdp+kl2bfmEwLf4UTJ3Ypg
   rUiebmv7y5CUdxtj3dUyiLlmv6b67be/HBy+kpO8/7gBIBfrYyQks/ge8
   FSyzCvpD3EvoWtFqhu8rdZ0pptVyIoSl5Y3Nz/b9m5QvCnwXjQuEKEzzz
   w==;
X-IronPort-AV: E=Sophos;i="5.85,366,1624312800"; 
   d="scan'208";a="19985096"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 12 Oct 2021 08:49:02 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Tue, 12 Oct 2021 08:49:02 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Tue, 12 Oct 2021 08:49:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1634021342; x=1665557342;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=VRR0se0nChPPCwlnAT8ZDDTNztxvzoMjgIcwUmvsRbk=;
  b=iST/7KGJAtbpzbJjH8XRjGIJeVauikGvq7EZhNuyohQRUtQQ39w/fkXO
   UQFOS/ZB/0+cxrykKds/b9zVIgVY+IWksBGzATUYcAgOuuW4GYNbe37VN
   ooArTguanV5Sfiyvw2jQgGeGA2WvcbC6dsCfxixFexLvJ/oVNWR6wt4rC
   y2c2Oj2NixskTfDiiPBFfbhtYaPRrMSv+GA572yjVv+YsXHZcSzNOlw4F
   u4LSiA5ZdkIlZX7gJajQIshmtPQxtTUbOx84gp0oIciL4esIcIy8dBMxE
   9R49ZfI2mXPq+9Z1yZH1DvnaNGBz6zCpov6QmR9JhNxKxqlX1HTf3qHiH
   A==;
X-IronPort-AV: E=Sophos;i="5.85,366,1624312800"; 
   d="scan'208";a="19985095"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 12 Oct 2021 08:49:02 +0200
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id E804A280075;
        Tue, 12 Oct 2021 08:49:01 +0200 (CEST)
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
Subject: [PATCH v2 3/4] dt-bindings: drm/bridge: ti-sn65dsi83: Add vcc supply bindings
Date:   Tue, 12 Oct 2021 08:48:42 +0200
Message-Id: <20211012064843.298104-4-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211012064843.298104-1-alexander.stein@ew.tq-group.com>
References: <20211012064843.298104-1-alexander.stein@ew.tq-group.com>
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
 .../devicetree/bindings/display/bridge/ti,sn65dsi83.yaml     | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
index a5779bf17849..49ace6f312d5 100644
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
 
@@ -93,6 +96,7 @@ properties:
 required:
   - compatible
   - reg
+  - vcc-supply
   - ports
 
 allOf:
@@ -134,6 +138,7 @@ examples:
             reg = <0x2d>;
 
             enable-gpios = <&gpio2 1 GPIO_ACTIVE_HIGH>;
+            vcc-supply = <&reg_sn65dsi83_1v8>;
 
             ports {
                 #address-cells = <1>;
-- 
2.25.1

