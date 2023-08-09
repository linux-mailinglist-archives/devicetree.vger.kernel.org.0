Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6B1D1776423
	for <lists+devicetree@lfdr.de>; Wed,  9 Aug 2023 17:40:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232449AbjHIPkA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Aug 2023 11:40:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56428 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232813AbjHIPjt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Aug 2023 11:39:49 -0400
Received: from mail-yw1-x1130.google.com (mail-yw1-x1130.google.com [IPv6:2607:f8b0:4864:20::1130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7477E269D
        for <devicetree@vger.kernel.org>; Wed,  9 Aug 2023 08:39:48 -0700 (PDT)
Received: by mail-yw1-x1130.google.com with SMTP id 00721157ae682-58451ecf223so115077b3.1
        for <devicetree@vger.kernel.org>; Wed, 09 Aug 2023 08:39:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691595587; x=1692200387;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iwOzHfqAzmYTY+7Vlxn3fLDfMJgjpkQd/BObI7qJc1k=;
        b=o/sJJmdeOlNo2UR/tdgD9cd/8YYqCLu1053cG2W7LnguU89RJFFAThfBECNOApB3N8
         yotLuH2DD19T8tZA4SDi+ZTYkZt4uFWF5UYi0j8lXHEbfwXd5bQWMzzjPjXOvvTR/Rj5
         eKjmyp9UALRpXlrnKfxUnlMzZRqbkCX4H+om8gsuZCULdlqLHZqITnYttVHUypK1SdUL
         VYk4wbtwpVeL1HhMoYJJtyzeXhlWIwRCUCmrQ6I7sLUYfxvPxWuyE4kPJb2pTAMNWqgK
         NSmWM/4F4QQka2eDuw+dLgzKw3YCjF3cYf5Wu/1ER2gA1YegC1LXYEoz/9OcCZZo/G60
         Qqig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691595587; x=1692200387;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iwOzHfqAzmYTY+7Vlxn3fLDfMJgjpkQd/BObI7qJc1k=;
        b=IHj7YCA6aOC3JVhqUK+FKFABdY1Wxwj+2OSGy1Lbx07UqKZJRc4QUmzwsJ+VIF0+Ik
         XvIKqGhyvPSGMZnIE7cDlJxq5IAP3WC8f5L4G/UH0ibSBAsvtqyx2ZBAI+nN9t09+4NF
         Fev/pO8KKjICQUlAtWHDiLd+MMIkz2B6cpL4KzMeIwkY71acWBmqkhaVNVYitgYv40wr
         QlQ5oM50/zVyZVI7x9mhQJQ+p8XgflWsuaWrDBE5yPRmikrRYCMtcNCLbGtrqRMaM4uC
         gB3lStITDHzvXl0Q3GtxtUSgk9GkW2vx2BukzlYj69+AejAEa9mOF3mnb4reLKsiG2iV
         M3RA==
X-Gm-Message-State: AOJu0YyYaPE/KmNDLR/OAOr4fAURe7zf/NvO6MyER4t+FqBrcLH2il1E
        Q41aqHB2efaUkrz2ZlzzXIOrxtsZuHM=
X-Google-Smtp-Source: AGHT+IHUEiZoN3ojpU4inG9BJCqG+Svqp0pn+33BbOb7wYoFcNdt2/lAZJyDKOIO032V1jbbIoAKMQ==
X-Received: by 2002:a81:4744:0:b0:586:c27c:3eee with SMTP id u65-20020a814744000000b00586c27c3eeemr3081651ywa.38.1691595587525;
        Wed, 09 Aug 2023 08:39:47 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id u15-20020a81a50f000000b005707fb5110bsm4043969ywg.58.2023.08.09.08.39.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Aug 2023 08:39:47 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     devicetree@vger.kernel.org
Cc:     dri-devel@lists.freedesktop.org, conor+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org,
        neil.armstrong@linaro.org, Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 1/2] dt-bindings: display: newvision,nv3051d: Add Anbernic 351V Support
Date:   Wed,  9 Aug 2023 10:39:40 -0500
Message-Id: <20230809153941.1172-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230809153941.1172-1-macroalpha82@gmail.com>
References: <20230809153941.1172-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

Document the Anbernic RG351V panel, which appears to be identical to
the panel used in their 353 series except for in inclusion of an
additional DSI format flag.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../display/panel/newvision,nv3051d.yaml       | 18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml b/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml
index 116c1b6030a2..576f3640cb33 100644
--- a/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml
+++ b/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml
@@ -7,9 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: NewVision NV3051D based LCD panel
 
 description: |
-  The NewVision NV3051D is a driver chip used to drive DSI panels. For now,
-  this driver only supports the 640x480 panels found in the Anbernic RG353
-  based devices.
+  The NewVision NV3051D is a driver chip used to drive DSI panels.
 
 maintainers:
   - Chris Morgan <macromorgan@hotmail.com>
@@ -19,11 +17,15 @@ allOf:
 
 properties:
   compatible:
-    items:
-      - enum:
-          - anbernic,rg353p-panel
-          - anbernic,rg353v-panel
-      - const: newvision,nv3051d
+    oneOf:
+      - items:
+          - enum:
+              - anbernic,rg353p-panel
+              - anbernic,rg353v-panel
+          - const: newvision,nv3051d
+
+      - items:
+          - const: anbernic,rg351v-panel
 
   reg: true
   backlight: true
-- 
2.34.1

