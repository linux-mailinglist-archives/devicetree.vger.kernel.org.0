Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B6608432E9E
	for <lists+devicetree@lfdr.de>; Tue, 19 Oct 2021 08:52:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229649AbhJSGzH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Oct 2021 02:55:07 -0400
Received: from mx1.tq-group.com ([93.104.207.81]:53801 "EHLO mx1.tq-group.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229695AbhJSGzG (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 19 Oct 2021 02:55:06 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1634626374; x=1666162374;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=LEsOShHi53FwhvjjCf5twbUdvETtYuAw3EERG3UwX5A=;
  b=jOOpKLrNG9ZMrCNJDvdRWbw3wTWz6yUe+meQ9c19UlYsozESDLIAvV9I
   XxZZQWKgZZrvjYsCW+Lj6W9XBMheWsxJfhQTFZlu9NJb/WuYecaZ9DASS
   UTjmb5zLWCvuhjoaOzFFW6DNL5u78aPqfvtp4kt7dinDTo6bMNJ/SdMMN
   Qx4KORWFIM1TmaHM/O8wWs8NzczxBhwa40qfJD2Ef6RVYnQy58bTnLD+A
   va3CIn5a1ujXk2v81+kJgaaBQ8Zy1fQgRqCxRFEAd8ku4LroQzLTm3vw+
   gCDiEnsoBYKjOcyiP0gMk+Rtcl0fVPuq49T72VCy7V93YyWpnJxSrVFEt
   Q==;
X-IronPort-AV: E=Sophos;i="5.85,383,1624312800"; 
   d="scan'208";a="20119997"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 19 Oct 2021 08:52:52 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Tue, 19 Oct 2021 08:52:52 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Tue, 19 Oct 2021 08:52:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1634626372; x=1666162372;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=LEsOShHi53FwhvjjCf5twbUdvETtYuAw3EERG3UwX5A=;
  b=HuYEUGluTbcDMagJYu21BPDNW1UC1AMYO9jpzLwH7M23bthPSTG2xtju
   XSwnqgItG4KYD8gkxQ0nVTHNI1ogcYf7RvZDAJNY/4Ih6XYO5PT/RM5UB
   BpeVHIyccTA7BX4p6uY68yq+c6urb22vNec3N/moNniZHXab2mG4K8NX9
   W5AwXH9Lsrn8ZMTF9opp8wQeneXDrxpHwHU2V3ghZmrahCKQwojyTuSGC
   xhuglY98k9y+GQ3wtYGStXy4nZ/CVGvddO45GJy2+BJmai64rBs7JSjak
   GHFxz3/bnoNZB0MSV61FdZbeN7bCzE9wO+Hl2yl1+JX4jCnGMVR7xxSf2
   w==;
X-IronPort-AV: E=Sophos;i="5.85,383,1624312800"; 
   d="scan'208";a="20119996"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 19 Oct 2021 08:52:52 +0200
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 53FF8280075;
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
Cc:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Alexander Stein <alexander.stein@ew.tq-group.com>
Subject: [PATCH v3 1/4] dt-bindings: display: bridge: sn65dsi83: Make enable GPIO optional
Date:   Tue, 19 Oct 2021 08:52:36 +0200
Message-Id: <20211019065239.969988-2-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211019065239.969988-1-alexander.stein@ew.tq-group.com>
References: <20211019065239.969988-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

The SN65DSI8x EN signal may be tied to VCC, or otherwise controlled by
means not available to the kernel. Make the GPIO optional.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 .../devicetree/bindings/display/bridge/ti,sn65dsi83.yaml         | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
index 07b20383cbca..a5779bf17849 100644
--- a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
@@ -93,7 +93,6 @@ properties:
 required:
   - compatible
   - reg
-  - enable-gpios
   - ports
 
 allOf:
-- 
2.25.1

