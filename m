Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 88D0A53138C
	for <lists+devicetree@lfdr.de>; Mon, 23 May 2022 18:24:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238461AbiEWQPd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 May 2022 12:15:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54882 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238446AbiEWQPb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 May 2022 12:15:31 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C4AF465401
        for <devicetree@vger.kernel.org>; Mon, 23 May 2022 09:15:29 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id n23so19850230edy.0
        for <devicetree@vger.kernel.org>; Mon, 23 May 2022 09:15:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=D0DE2jvukRBvDGRLAryG5jNG7HT3mMoLpXG5GPxzDOA=;
        b=NN+LHPvm7dG259hHKGHheoJk5P3cCneDSo6QeJdhAeoRK1+yJ9aSXuRsOgU/REuXGl
         pFeMLX+VC+Vz6lFCZ9LfWQjAgyZgBJ+HX8xdP2LOmhv1fyeNUqwRfNjwrVrryJVverPG
         AMONXAZv/KK/tEjxhtYj/Yp9o1fHvhuTHum4U1xOWM003eVm/5sTCwY3IyqxDOfTHMgR
         ructedW0naLwW8ZbewzH5vQ82jG5LAsdvoCoxXcYUSlc/jc34xfpsH1WcN1WnZp7GLZH
         RACM+zsSUXVa3KF3R5YBBSmHgNinTvmcrxeXa2E0iQENZco1WDd3xjm3uO96kZ94fqk9
         m1VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=D0DE2jvukRBvDGRLAryG5jNG7HT3mMoLpXG5GPxzDOA=;
        b=BqFWGRVkB429GskrkMRr7MrhN1KFoUkSNCLyTVBxeQzWoMYMFSzjyFidydWZu3WUZP
         ORpbw1xia9OZMDijW+W9HpYZMQaH2X8615+BYGZ4nmrtHsIeo0gevjObTZ7ZCqjjBSXr
         cGtyGEp3ECvXkAELm8y82cxhDkfjPkACarRzSB5ivCHIDFGoHd3SfCSlsOj2dEqhfO2c
         rZWfIBncMn3YPsR8/Xd9g3fXF5bNFAVeUnhrXZ/yFXaQ0WfDurxP6ktTKyHHGUpcCMaO
         pfwSGTztn/9vJTec9zqx8g3Uu247AYxRwzz/alfkIBJYeu68AjUfLuY7cE7QLyNB9gOl
         Jtqg==
X-Gm-Message-State: AOAM532OhAop3LgIUj3pATYfaTaZ46f2RVPgCcMdPGLcELxoYuLgotA3
        Pf1yIG2HH5tuqTKw8vgJjYLPJw==
X-Google-Smtp-Source: ABdhPJwBawxu2oTUO55D818pZJrRZVEugw6Lk23dBka6ZNH8jNqJobFfavhthR59DZ7ba7tVzBiKEg==
X-Received: by 2002:aa7:da83:0:b0:42a:b7c9:1a7b with SMTP id q3-20020aa7da83000000b0042ab7c91a7bmr24452951eds.359.1653322528287;
        Mon, 23 May 2022 09:15:28 -0700 (PDT)
Received: from prec5560.lan ([2001:bf7:830:a7fa:f33e:a35d:7618:8a44])
        by smtp.gmail.com with ESMTPSA id i11-20020a170906264b00b006feed212f50sm950591ejc.184.2022.05.23.09.15.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 May 2022 09:15:27 -0700 (PDT)
From:   Robert Foss <robert.foss@linaro.org>
To:     andrzej.hajda@intel.com, narmstrong@baylibre.com,
        robert.foss@linaro.org, Laurent.pinchart@ideasonboard.com,
        jonas@kwiboo.se, jernej.skrabec@gmail.com, airlied@linux.ie,
        daniel@ffwll.ch, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, xji@analogixsemi.com,
        hsinyi@chromium.org, sam@ravnborg.org, maxime@cerno.tech,
        tzimmermann@suse.de, jose.exposito89@gmail.com,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Daniel Vetter <daniel.vetter@ffwll.ch>
Subject: [PATCH v2 2/2] Revert "dt-bindings:drm/bridge:anx7625: add port@0 property"
Date:   Mon, 23 May 2022 18:15:20 +0200
Message-Id: <20220523161520.354687-2-robert.foss@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220523161520.354687-1-robert.foss@linaro.org>
References: <20220523161520.354687-1-robert.foss@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This reverts commit 7328736d270aa4fa6fcd033ade02acc2874a2db5.

This patch depends on the patches just aplied to the media tree, and will
not build without them, which leaves drm-misc-next in a broken state.
Let's revert the two latter patches until rc1 has been branched,
and rc1 has been backmerged into drm-misc-next.

Signed-off-by: Robert Foss <robert.foss@linaro.org>
Acked-by: Daniel Vetter <daniel.vetter@ffwll.ch>
---
 .../display/bridge/analogix,anx7625.yaml      | 19 +------------------
 1 file changed, 1 insertion(+), 18 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml b/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml
index 4590186c4a0b..35a48515836e 100644
--- a/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml
@@ -94,22 +94,7 @@ properties:
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
-                enum: [7]
-                default: 1
-
-              data-lanes: true
+          Video port for MIPI DSI input.
 
       port@1:
         $ref: /schemas/graph.yaml#/properties/port
@@ -158,8 +143,6 @@ examples:
                     reg = <0>;
                     anx7625_in: endpoint {
                         remote-endpoint = <&mipi_dsi>;
-                        bus-type = <7>;
-                        data-lanes = <0 1 2 3>;
                     };
                 };
 
-- 
2.34.1

