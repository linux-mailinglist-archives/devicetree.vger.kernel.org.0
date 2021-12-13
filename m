Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 56566472D79
	for <lists+devicetree@lfdr.de>; Mon, 13 Dec 2021 14:36:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237341AbhLMNgh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Dec 2021 08:36:37 -0500
Received: from mx1.tq-group.com ([93.104.207.81]:62170 "EHLO mx1.tq-group.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S235647AbhLMNgg (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 13 Dec 2021 08:36:36 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1639402596; x=1670938596;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=9uQ/nA2SxUtGSmaROU3d1oxGvu+83eq3tQzha9jKgE8=;
  b=VLphZTl9FToqK8B7M5bF8rKaDeU9IitsTFJOeB1BuqiABHtZLEPlGX+U
   zRUFihE2ZBfdRzLtPbbOwNq6wdA1ZolfVmb70jJYyhjV6cjAaF2uhIerc
   AtDvwrEx4/b06spVETy7uankaRjlxf3+e5cxb6O+esFPk7iPPd3HVIc2u
   WuJs4C2CUToIYzDFRWCD2rFLPVdB7N2pj+Cp8qpGz5axAe6cZQpZD67SR
   eJmGiMTeoP2G0Sj3I+/i8kKZfMlsw2fsSPX3iM5JD3yuP6aBCoZJCBDkp
   dzkdbktBVGDeIGTqX59tbkj/H/HgmmARIq5EGZq/ziamcv2tyaSfwVcs+
   A==;
X-IronPort-AV: E=Sophos;i="5.88,202,1635199200"; 
   d="scan'208";a="21012626"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 13 Dec 2021 14:36:35 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Mon, 13 Dec 2021 14:36:35 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Mon, 13 Dec 2021 14:36:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1639402595; x=1670938595;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=9uQ/nA2SxUtGSmaROU3d1oxGvu+83eq3tQzha9jKgE8=;
  b=MG0gvtoPgv49ZprXvvDLocnT8t7f7SJ3rAUj/Yprp69skCI6FMavXUHv
   41AqhmQGoFAXJL/vtmRE5zp2KDDdmOjXj5jFN/4DF4RnY75VrxLJ2Gyay
   Nd/QdaS1RZmZNabMLqXTuHMxj2/o+yqxKB8/1jcTd9VuarH3KzGzTZztd
   NV2ScNb2KmdRyqO6JPiCM+s4MxTA6hxUKyDPXlPlRTOc/5Uoa/cSlhwng
   FZuBzxWbFgEDtqEInKyvHXp5K8fcTRtVsR/lni4vF7ZVd+0yy0qF6I3/Z
   Cxvs0wmIQ8LSBkzb5Sa0OofuAC14PS6Zc3p3QKlBonDsLfsYjrzgkOZFs
   Q==;
X-IronPort-AV: E=Sophos;i="5.88,202,1635199200"; 
   d="scan'208";a="21012625"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 13 Dec 2021 14:36:34 +0100
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id B1DB9280078;
        Mon, 13 Dec 2021 14:36:34 +0100 (CET)
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
        Sam Ravnborg <sam@ravnborg.org>, Rob Herring <robh@kernel.org>,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v5 3/4] dt-bindings: drm/bridge: ti-sn65dsi83: Add vcc supply bindings
Date:   Mon, 13 Dec 2021 14:36:25 +0100
Message-Id: <20211213133626.2498056-4-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211213133626.2498056-1-alexander.stein@ew.tq-group.com>
References: <20211213133626.2498056-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a VCC regulator which needs to be enabled before the EN pin is
released.

Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
Acked-by: Rob Herring <robh@kernel.org>
Reviewed-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 .../devicetree/bindings/display/bridge/ti,sn65dsi83.yaml      | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
index c3f3e73f740a..48a97bb3e2e0 100644
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
 
@@ -132,6 +135,7 @@ examples:
             reg = <0x2d>;
 
             enable-gpios = <&gpio2 1 GPIO_ACTIVE_HIGH>;
+            vcc-supply = <&reg_sn65dsi83_1v8>;
 
             ports {
                 #address-cells = <1>;
-- 
2.25.1

