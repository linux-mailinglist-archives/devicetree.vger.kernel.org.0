Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 55329493CD4
	for <lists+devicetree@lfdr.de>; Wed, 19 Jan 2022 16:18:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1355663AbiASPSJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Jan 2022 10:18:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56322 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1355639AbiASPSF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Jan 2022 10:18:05 -0500
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com [IPv6:2607:f8b0:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 45029C06173E
        for <devicetree@vger.kernel.org>; Wed, 19 Jan 2022 07:18:05 -0800 (PST)
Received: by mail-pg1-x533.google.com with SMTP id r11so2903049pgr.6
        for <devicetree@vger.kernel.org>; Wed, 19 Jan 2022 07:18:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Kp2JX1puGgzXBsvWu8HbdG09bQuSVyJ347xkXdyu4zM=;
        b=ZaOoXpvKVo/hhWAxlfGIC4Hk1xJcaYgYgke072IZ/a1xoXNvgiTsIFrkIm391CbNWe
         rXo3/f6oF4ai4CzsZgsQIdn5xyO5h2SUmwlkA2BWP3pdVw2lYIdh+nfCp00F3gye0UHE
         sXXsTfTiASjt0LRqtXNbmgE8FuBtcTux/WwiI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Kp2JX1puGgzXBsvWu8HbdG09bQuSVyJ347xkXdyu4zM=;
        b=KOqD71T19T5KVtOIAzjfaJZVVNEatdWMZwVnRNP+3jSyOSTnSIVgym3PEa9g50Qn/G
         velTRKBM2dMhFcKGknEGWhijlkhljCBtHf8JaQH8Jx+mUZmfN9xiReZGoaO2InMKZ7nj
         Yd5TCvw9edq+DKSLj2L/PLi25DN1+tz3HNDufZKrSvyC22axwQuF1CE6foKq7SBTVAPx
         1Gd1DKP8OzR6c1dfPlyktCnQgEDPXSfAONTGkBN85h1pIJetPg03QwhwqeSA17nWhEyO
         ozExYKextT1fry1YyYsNfke9ns/zt5jF8rvtYHjyo5bMj3OLDTuIvFFaoJfl5YberYCZ
         DNHQ==
X-Gm-Message-State: AOAM530j1ugMhY2ssBhCcFI3hVuSkXmyvhhF80wszSJPo6pGGf+eyI9Z
        ojqRzFWPsY8zhSWfqlCP//6YUQ==
X-Google-Smtp-Source: ABdhPJwq/W/AkvyyrQ2/pwRcgiWGOEiwcnyR4t8Y9k4BxxuoDweqV6ttCqo15/59QA8a3KuadqovyA==
X-Received: by 2002:a63:317:: with SMTP id 23mr20669854pgd.318.1642605484698;
        Wed, 19 Jan 2022 07:18:04 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:ab3b:7ccf:392:3f04])
        by smtp.gmail.com with ESMTPSA id ip14sm6731596pjb.11.2022.01.19.07.18.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Jan 2022 07:18:04 -0800 (PST)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Robert Foss <robert.foss@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, Xin Ji <xji@analogixsemi.com>
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Maxime Ripard <maxime@cerno.tech>
Subject: [PATCH v5 4/4] dt-bindings: drm/bridge: anx7625: Add aux-bus node
Date:   Wed, 19 Jan 2022 23:17:51 +0800
Message-Id: <20220119151751.986185-4-hsinyi@chromium.org>
X-Mailer: git-send-email 2.34.1.703.g22d0c6ccf7-goog
In-Reply-To: <20220119151751.986185-1-hsinyi@chromium.org>
References: <20220119151751.986185-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

List panel under aux-bus node if it's connected to anx7625's aux bus.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
Reviewed-by: Xin Ji <xji@analogixsemi.com>
---
 .../display/bridge/analogix,anx7625.yaml        | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml b/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml
index 1d3e88daca041a..0d38d6fe39830f 100644
--- a/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml
@@ -83,6 +83,9 @@ properties:
     type: boolean
     description: let the driver enable audio HDMI codec function or not.
 
+  aux-bus:
+    $ref: /schemas/display/dp-aux-bus.yaml#
+
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
 
@@ -167,5 +170,19 @@ examples:
                     };
                 };
             };
+
+            aux-bus {
+                panel {
+                    compatible = "innolux,n125hce-gn1";
+                    power-supply = <&pp3300_disp_x>;
+                    backlight = <&backlight_lcd0>;
+
+                    port {
+                        panel_in: endpoint {
+                            remote-endpoint = <&anx7625_out>;
+                        };
+                    };
+                };
+            };
         };
     };
-- 
2.34.1.703.g22d0c6ccf7-goog

