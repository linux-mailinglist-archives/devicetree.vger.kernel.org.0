Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 61D8548D2DE
	for <lists+devicetree@lfdr.de>; Thu, 13 Jan 2022 08:32:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231181AbiAMHcN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jan 2022 02:32:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52982 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231176AbiAMHcK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Jan 2022 02:32:10 -0500
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com [IPv6:2607:f8b0:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 60F69C061759
        for <devicetree@vger.kernel.org>; Wed, 12 Jan 2022 23:32:10 -0800 (PST)
Received: by mail-pl1-x636.google.com with SMTP id a7so5612360plh.1
        for <devicetree@vger.kernel.org>; Wed, 12 Jan 2022 23:32:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=fJ7jhTxZtYx2s5hY3iEvxpmsU4PPvMVmZGrdRkEcvPI=;
        b=IJSx48yyim2T+/autKNyiGUP5WVCIa2LnzXnNoCi6Gr8LHqpcsTey0lxosDSWWukoQ
         Itwtn9aJjQ8QeRk28BDdMwEOfJrG3FrUz3yPlgbA3Abg3QwKfQW5QmZvkriKl39DdQQU
         MwSLZ6ACdE1JK6QSgl/1slJLqLO9rP6cq5P8E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=fJ7jhTxZtYx2s5hY3iEvxpmsU4PPvMVmZGrdRkEcvPI=;
        b=3eDM3jfb8yDa8l6GPBRUIN22F2k2b1bXCuHW2mNfJDtNO/peifHhMsKjySwvi+x91J
         hNSzrnJKdnXH3Yx3dJd63MSjtA/k+zwaEN0K9vGeWVn5zJ1RE9aW1LPW7G5WNMHbQ5Gx
         FtVGprZBmR2KZdeVBxZqLd7WR0YUfheW3jnUfylRnfwDN5lPa8/uvwv/yMbeB590WuUi
         L1Z6SBElqB4w0MkRUMiIMmsMiozxt5wvObGVMLsoam9HnDiftcYvVeox7BPoApmP1r9m
         1iQzfa8arx4UDCt3PBuKK292J8Qgas94fX6kfOFg9gAuiqjGS81QgQ/4kWrSyBDzBxyp
         9sGw==
X-Gm-Message-State: AOAM533eAl8Loj5gPaev7xMcbt7n6DmdmkZ7MZLwhMeGLClQPQMBKVXQ
        XjqZ3K16m25uTR0CfwEg6U+okg==
X-Google-Smtp-Source: ABdhPJziGsBxli+6Iq6w6hS+WQ2CJbZK7AzLfAwT/ACq/ydScWMRWwiOoZBeFrG0UOgEMIqdg1xPcg==
X-Received: by 2002:a17:902:904b:b0:143:73ff:eb7d with SMTP id w11-20020a170902904b00b0014373ffeb7dmr3518103plz.85.1642059129830;
        Wed, 12 Jan 2022 23:32:09 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:3ced:e0da:4852:430c])
        by smtp.gmail.com with ESMTPSA id om3sm7747701pjb.49.2022.01.12.23.32.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jan 2022 23:32:09 -0800 (PST)
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
Subject: [PATCH v2 3/3] dt-bindings: drm/bridge: anx7625: Add aux-bus node
Date:   Thu, 13 Jan 2022 15:31:58 +0800
Message-Id: <20220113073158.2171673-3-hsinyi@chromium.org>
X-Mailer: git-send-email 2.34.1.575.g55b058a8bb-goog
In-Reply-To: <20220113073158.2171673-1-hsinyi@chromium.org>
References: <20220113073158.2171673-1-hsinyi@chromium.org>
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
2.34.1.575.g55b058a8bb-goog

