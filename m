Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6D42C5123EF
	for <lists+devicetree@lfdr.de>; Wed, 27 Apr 2022 22:30:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236449AbiD0Udo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Apr 2022 16:33:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41398 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230211AbiD0Udm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Apr 2022 16:33:42 -0400
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com [IPv6:2607:f8b0:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 205ED6F9EF
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 13:30:30 -0700 (PDT)
Received: by mail-pl1-x62a.google.com with SMTP id s14so2554504plk.8
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 13:30:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=TyZE4JpHRVYo+b1SEajVG8GhKCg8WLvC1BfKNFX1vtU=;
        b=jirR79zAFiifoqz7FtzliwnKnv17qWOW+UwmHM2v9GRUTPDv6LWEOC80Ih6So3HBj2
         Rb4lp1LlQIXWsNIzcpYnrW5NyOrOrDAWZ7idusCJSEzWfpBRSxMGltfIy3gBPaaZ1Y9K
         aQbvc5XyxPyBFLhwhizo2B378UZOQkt+iRc+4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=TyZE4JpHRVYo+b1SEajVG8GhKCg8WLvC1BfKNFX1vtU=;
        b=VWnL5BI7HDTavsFqg1ON4GagBR9Br7s/IkW0OijAbOSu6SBdb14Xzfz7lVJn1dxYPE
         hgCejaFfhrvGF/LO5cqZQQ+/wWoar51zNO1QDEG5vOb4Mw21ekb8VonmtLcntxVSkzUb
         pOhdXHmlIZ9bzpMO9xvx0durIwLb9qNh0tkNUUvOQCJ6XyS4mdLZt5n3S3dConMvSOGs
         62gqogaTY/hvCsD22NSmJmtM+jbtWMUSRQdgHNrrYtGzjlVHSxOuNI9UyR5MJtZqKhDl
         8QfnQHBvXkFBeJs3JLAzrPlH1TuNbxGRMqarEU9vlGkKJB3zvOYnbSwo1WfXaoXF56Pd
         sJRw==
X-Gm-Message-State: AOAM5329xmoAKOrgo2DcGle48BW8YUavtYDNjSlLgdee820FBklGQZPP
        Ma8Cz6c5QHSmAwEv+2M4cjjZpAYe8nOJ5A==
X-Google-Smtp-Source: ABdhPJzUplOYCCpBIP7HPJMb8z9JjKFKfxTZoNnut9NrCdsHgehpOduEV/HjLmFf905jcUmVzMOtUA==
X-Received: by 2002:a17:902:b7c1:b0:15b:3c09:3ed3 with SMTP id v1-20020a170902b7c100b0015b3c093ed3mr30053180plz.73.1651091429660;
        Wed, 27 Apr 2022 13:30:29 -0700 (PDT)
Received: from smtp.gmail.com ([2620:15c:202:201:482e:60bc:84d1:bf5c])
        by smtp.gmail.com with ESMTPSA id 7-20020a17090a000700b001da3920d985sm3858552pja.12.2022.04.27.13.30.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Apr 2022 13:30:29 -0700 (PDT)
From:   Stephen Boyd <swboyd@chromium.org>
To:     Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc:     linux-kernel@vger.kernel.org, patches@lists.linux.dev,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        "Joseph S. Barrera III" <joebar@chromium.org>
Subject: [PATCH 1/2] dt-bindings: google,cros-ec-keyb: Introduce switches only compatible
Date:   Wed, 27 Apr 2022 13:30:25 -0700
Message-Id: <20220427203026.828183-2-swboyd@chromium.org>
X-Mailer: git-send-email 2.36.0.rc2.479.g8af0fa9b8e-goog
In-Reply-To: <20220427203026.828183-1-swboyd@chromium.org>
References: <20220427203026.828183-1-swboyd@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

If the device is a detachable, this device won't have a matrix keyboard
but it may have some button switches, e.g. volume buttons and power
buttons. Let's add a more specific compatible for this type of device
that indicates to the OS that there are only switches and no matrix
keyboard present.

Cc: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: <devicetree@vger.kernel.org>
Cc: Benson Leung <bleung@chromium.org>
Cc: Guenter Roeck <groeck@chromium.org>
Cc: Douglas Anderson <dianders@chromium.org>
Cc: Hsin-Yi Wang <hsinyi@chromium.org>
Cc: "Joseph S. Barrera III" <joebar@chromium.org>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---
 .../bindings/input/google,cros-ec-keyb.yaml          | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml b/Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml
index e8f137abb03c..edc1194d558d 100644
--- a/Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml
+++ b/Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml
@@ -15,14 +15,20 @@ description: |
   Google's ChromeOS EC Keyboard is a simple matrix keyboard
   implemented on a separate EC (Embedded Controller) device. It provides
   a message for reading key scans from the EC. These are then converted
-  into keycodes for processing by the kernel.
+  into keycodes for processing by the kernel. This device also supports
+  switches/buttons like power and volume buttons.
 
 allOf:
   - $ref: "/schemas/input/matrix-keymap.yaml#"
 
 properties:
   compatible:
-    const: google,cros-ec-keyb
+    oneOf:
+      - items:
+          - const: google,cros-ec-keyb-switches
+          - const: google,cros-ec-keyb
+      - items:
+          - const: google,cros-ec-keyb
 
   google,needs-ghost-filter:
     description:
@@ -50,7 +56,7 @@ examples:
   - |
     #include <dt-bindings/input/input.h>
     cros-ec-keyb {
-        compatible = "google,cros-ec-keyb";
+        compatible = "google,cros-ec-keyb-switches", "google,cros-ec-keyb";
         keypad,num-rows = <8>;
         keypad,num-columns = <13>;
         google,needs-ghost-filter;
-- 
https://chromeos.dev

