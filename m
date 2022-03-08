Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1D0D54D13BF
	for <lists+devicetree@lfdr.de>; Tue,  8 Mar 2022 10:49:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239327AbiCHJuP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Mar 2022 04:50:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56716 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241228AbiCHJuN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Mar 2022 04:50:13 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 67CD9340CD
        for <devicetree@vger.kernel.org>; Tue,  8 Mar 2022 01:49:17 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id h15so3179407wrc.6
        for <devicetree@vger.kernel.org>; Tue, 08 Mar 2022 01:49:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=8Gn7RMbXnK5pOX3NLfwNAKfKCwU3agMth+Gnkiqncgw=;
        b=n1mtQkUkGKPBmZFNsNswSmpz1kilToriI0Gn2TXWimIaqUwnDcc793xA5k7sXREWB6
         aDIQ/y9tV1HqnLZy8JuSpLONMKWZBzeYvyd/x5N+mpbnjbPY2kBQ/c/WhErow4Fj1gor
         uOUMKwuD3519EGocbq+2HEjX84vF+gNrm4pDky3TtSrp9TCsWw1OZXF1eKhWMwb6bucv
         AWU1SucCnbuQgDzehoDmQV4lYdc4iMbLZtYMON9jA38ZZANdSt7LNKT/DbZXN9Z64NET
         EM7BtQDNvqOrhthwtkfpqZjHH6GSMyGu3tVGyEkyZ95FwSLGaBhQvvuuU3nXZgpE7ZyV
         yYJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8Gn7RMbXnK5pOX3NLfwNAKfKCwU3agMth+Gnkiqncgw=;
        b=b7TO7Hu7wnSrKQJGYUus7mcL9gEk7+1o127xJacOts/JOFq4vDqsgue/WQ9IG6f0KL
         fQmBwdAviBsk2emgeNYV3P231IZ0b9VlSzADBU5dBKWT7ywlj4IqZzq7Fs00LpQMMBjT
         l0cebcKV8+iGN1P75K30rP0QODt4KUshDuTn7G/jQTzn2haI9dldAO8yPKqTWp+msnz9
         180KXXbWq8oJuLSG6PtkZIy7jMMDBsevGUplG3opnznye3A9Ot1keqnqpwdHDKU1WwA0
         nc2eU0Z4ylBP2baJzudn9xwYNnfxpaTZbQFzXMxUJthoA0hzZk2gIcJZMJuIuCLKqyEk
         yU9g==
X-Gm-Message-State: AOAM5311nMU9+Me9YN7KRm5ZlGrKcgmfHLuKrgcqCgYRrkBk/eKl6JEj
        c2Kf38w+IsexHVN3M6PLebDAeA==
X-Google-Smtp-Source: ABdhPJwgpwNlL+6iw/j8w2WjZiYerIbGT8Nl7xwa9rGUtNmbZvaZejExak5PLKkv0MXEHhHj+9F2TQ==
X-Received: by 2002:a5d:6344:0:b0:1f0:21ee:9705 with SMTP id b4-20020a5d6344000000b001f021ee9705mr11450999wrw.93.1646732955982;
        Tue, 08 Mar 2022 01:49:15 -0800 (PST)
Received: from prec5560.. (freifunk-gw.bsa1-cpe1.syseleven.net. [176.74.57.43])
        by smtp.gmail.com with ESMTPSA id z3-20020a1cf403000000b0037d1f4a2201sm1684885wma.21.2022.03.08.01.49.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Mar 2022 01:49:15 -0800 (PST)
From:   Robert Foss <robert.foss@linaro.org>
To:     airlied@linux.ie, daniel@ffwll.ch, robh+dt@kernel.org,
        matthias.bgg@gmail.com, robert.foss@linaro.org,
        laurent.pinchart@ideasonboard.com, xji@analogixsemi.com,
        hsinyi@chromium.org, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Chen-Yu Tsai <wenst@chromium.org>, arnd@arndb.de
Subject: [PATCH v2 1/2] dt-bindings: drm/bridge: anx7625: Revert DPI support
Date:   Tue,  8 Mar 2022 10:49:10 +0100
Message-Id: <20220308094911.2680291-2-robert.foss@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220308094911.2680291-1-robert.foss@linaro.org>
References: <20220308094911.2680291-1-robert.foss@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Revert DPI support from binding.

DPI support relies on the bus-type enum which does not yet support
Mipi DPI, since no v4l2_fwnode_bus_type has been defined for this
bus type.

When DPI for anx7625 was initially added, it assumed that
V4L2_FWNODE_BUS_TYPE_PARALLEL was the correct bus type for
representing DPI, which it is not.

In order to prevent adding this mis-usage to the ABI, let's revert
the support.

Signed-off-by: Robert Foss <robert.foss@linaro.org>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---

Changes since v1:
- Rob: Instead of reverting the entire commit introducing this,
       do a partial revert of only the relevant parts.

 .../display/bridge/analogix,anx7625.yaml      | 19 +------------------
 1 file changed, 1 insertion(+), 18 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml b/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml
index 1d3e88daca041..25b5ef3f759ca 100644
--- a/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml
@@ -91,22 +91,7 @@ properties:
         $ref: /schemas/graph.yaml#/$defs/port-base
         unevaluatedProperties: false
         description:
-          MIPI DSI/DPI input.
-
-        properties:
-          endpoint:
-            $ref: /schemas/media/video-interfaces.yaml#
-            type: object
-            additionalProperties: false
-
-            properties:
-              remote-endpoint: true
-
-              bus-type:
-                enum: [1, 5]
-                default: 1
-
-              data-lanes: true
+          Video port for MIPI DSI input.
 
       port@1:
         $ref: /schemas/graph.yaml#/properties/port
@@ -155,8 +140,6 @@ examples:
                     reg = <0>;
                     anx7625_in: endpoint {
                         remote-endpoint = <&mipi_dsi>;
-                        bus-type = <5>;
-                        data-lanes = <0 1 2 3>;
                     };
                 };
 
-- 
2.32.0

