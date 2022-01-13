Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8F7D248D398
	for <lists+devicetree@lfdr.de>; Thu, 13 Jan 2022 09:29:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233102AbiAMI3e (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jan 2022 03:29:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37682 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233035AbiAMI3a (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Jan 2022 03:29:30 -0500
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1688C061748
        for <devicetree@vger.kernel.org>; Thu, 13 Jan 2022 00:29:29 -0800 (PST)
Received: by mail-pj1-x102b.google.com with SMTP id rj2-20020a17090b3e8200b001b1944bad25so10017458pjb.5
        for <devicetree@vger.kernel.org>; Thu, 13 Jan 2022 00:29:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=fJ7jhTxZtYx2s5hY3iEvxpmsU4PPvMVmZGrdRkEcvPI=;
        b=PLAaBUlntcankP7m4gA6KoVaSoKmRjBpv22xwtJTl640B14bcNtySYU0gIRBgsP809
         QOVf+cLw3LwXpTHXRt1Eyf4hdqXQK6fr/bEEnIKR3lsfvFxahjhfsONjI78HBsB9yKh6
         b7JBFm1QAhDVkheYeHE2Z1Y8OXPHral1o1dqA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=fJ7jhTxZtYx2s5hY3iEvxpmsU4PPvMVmZGrdRkEcvPI=;
        b=jbk14XuUwfrdpJu5rdu7pAagswkVtZzhH/aCCyzjKoI/Zy4+S/4DK8cg+wuF4z8zgz
         WVyRd1WwUIcIvnWnXvaQSr4SK4P8udhAAwQkEUVCbahCQlc2+purYUDlfLlJFTqjCXCS
         HY3jEinbjaOzKxnAu5NhgcQ/hTvFHg5n/x23g8U8QdMKnT8zrai9s0tFSKL2abj2XgHC
         U7fb7isiHzTT4aYE0ioAs6A8a1IrE35+haEIC0CX+wluNNEEtpcBGXp+wZR7O4z52d6N
         hKt0hZIEc0WwFiHzRrHRJTcnQMLrxIT4dlT5B6HFZQZwHXPmVPR/ehAESc9NmnRnPnp5
         g+qg==
X-Gm-Message-State: AOAM532yhBsFPbGRYZZd6aVAhSNBCooGdTltEm4Axq9/08R0o+5Gea5R
        gZ8qy3Nd+sKGKf2xZFZtpq/eeQ==
X-Google-Smtp-Source: ABdhPJz3FAaPjCmLcQZSvMjXwU7x63sWZyU7FnTBqQIB9bRgLOw6BP2FLX5QBqCTsb5MEq6GUDupnA==
X-Received: by 2002:a17:902:b202:b0:149:9a8a:f93b with SMTP id t2-20020a170902b20200b001499a8af93bmr3261822plr.127.1642062569199;
        Thu, 13 Jan 2022 00:29:29 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:3ced:e0da:4852:430c])
        by smtp.gmail.com with ESMTPSA id b12sm2109894pfv.148.2022.01.13.00.29.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jan 2022 00:29:28 -0800 (PST)
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
Subject: [PATCH v3 3/3] dt-bindings: drm/bridge: anx7625: Add aux-bus node
Date:   Thu, 13 Jan 2022 16:29:18 +0800
Message-Id: <20220113082918.2279347-3-hsinyi@chromium.org>
X-Mailer: git-send-email 2.34.1.575.g55b058a8bb-goog
In-Reply-To: <20220113082918.2279347-1-hsinyi@chromium.org>
References: <20220113082918.2279347-1-hsinyi@chromium.org>
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

