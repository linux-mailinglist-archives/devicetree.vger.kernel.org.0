Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DCD516E39DA
	for <lists+devicetree@lfdr.de>; Sun, 16 Apr 2023 17:39:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229717AbjDPPjf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 16 Apr 2023 11:39:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44438 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229547AbjDPPje (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 16 Apr 2023 11:39:34 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2DBC2D4A
        for <devicetree@vger.kernel.org>; Sun, 16 Apr 2023 08:39:33 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-504e232fe47so4236268a12.2
        for <devicetree@vger.kernel.org>; Sun, 16 Apr 2023 08:39:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681659572; x=1684251572;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=E17WEg49le+klxTuomeJeEdwGWIDnQJMq0IOIIIQHco=;
        b=cbOSxVQUuH0TmnR/wMG+aV/jT6kR96WA9eXEZYRhn2HhZyOSjc6k3/sqt1vQSEloZC
         7FOZ9LQ2duwBDfuxwKi04MFdcN1s/MvtWfR3caktknX3Dq6oZixGL0uj7bsCSLNsemtd
         1ZyfF1I0Sl2N+Ha1jwr8kgA1Kvuyl3fJMOL3dgmMXcQ3QUk6s092DruBX5VdeMva/DAE
         iH80fhj7RSgmijPC+N7V8dVqbeVgZ+MLHMlBq/YwL5wRlalG5QQtdYvmpEAFdH2BV/t7
         sTEmugUwUomTp8fgB3MWK5LnKcnaeFXBQK+18pfeWo+xgSehkdJinVX2UxX4tBFnQDoM
         Pedw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681659572; x=1684251572;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=E17WEg49le+klxTuomeJeEdwGWIDnQJMq0IOIIIQHco=;
        b=VtkzEJ9qY6fpeHswO4XtnIWOlClysO+UrYNmZ4U0X9iakMtFTxnjFFunFxXFpZAEOZ
         JoKDC/p4+YhPqsudvpQkrmVqWqErWGrezYNBtZCGM/nocAXIA/JrV2OySHi57xNgWbZB
         NBYODF8b+DD+OdmFxYOljFXeKmlk4z79LdwOIH371HkZbN9IM5pxqBoqe8ACzfO0glky
         J7UBCxIKKNFaAKPyfS4Z0ujNpfVSBpp5m567aVFqYm5j7qwy6bzuJXofAI9dbIADK3Yv
         MuBez0UQsuThSnOYj+U1zI3YwWbqjw73h/6rXKZx+eMndZkv2ru8Vkl/2x4D3Y+4coN7
         S4Hw==
X-Gm-Message-State: AAQBX9dvJURfeErJ1yNAZ+N6/nKNIHfokkEmw6vx6qzxPIEj+AUjalGD
        Xs8UOtej1e6b+xkkNA3Nnka4Tw==
X-Google-Smtp-Source: AKy350by7taFTgtiCyZogWFSQ3eKjCKTK54ZrMsi+pF+mkBrWI+iCsXIEt06LT1BLpFiZrbrzYjGrQ==
X-Received: by 2002:aa7:cd4f:0:b0:506:9ece:60cb with SMTP id v15-20020aa7cd4f000000b005069ece60cbmr2188353edw.38.1681659572188;
        Sun, 16 Apr 2023 08:39:32 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:ba4d:301c:484d:5c9])
        by smtp.gmail.com with ESMTPSA id h3-20020a170906530300b0093a0e5977e2sm5217259ejo.225.2023.04.16.08.39.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Apr 2023 08:39:31 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Neil Armstrong <neil.armstrong@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>
Subject: [PATCH] dt-bindings: display: panel: add common definition of ports
Date:   Sun, 16 Apr 2023 17:39:29 +0200
Message-Id: <20230416153929.356330-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Few panel bindings for dual-link connections just type "ports: true",
which does not enforce any type.  Add common definition of ports, so the
type will be fixed.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Cc: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 .../bindings/display/panel/panel-common.yaml     | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-common.yaml b/Documentation/devicetree/bindings/display/panel/panel-common.yaml
index 5b38dc89cb21..ad62d34e6fa3 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-common.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-common.yaml
@@ -70,6 +70,16 @@ properties:
   port:
     $ref: /schemas/graph.yaml#/properties/port
 
+  # For dual-link connections
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+    patternProperties:
+      "^port@[0-9a-f]+$":
+        $ref: /schemas/graph.yaml#/$defs/port-base
+
+    required:
+      - port@0
+
   ddc-i2c-bus:
     $ref: /schemas/types.yaml#/definitions/phandle
     description:
@@ -154,6 +164,12 @@ dependencies:
   width-mm: [ height-mm ]
   height-mm: [ width-mm ]
 
+allOf:
+  - not:
+      required:
+        - port
+        - ports
+
 additionalProperties: true
 
 ...
-- 
2.34.1

