Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A0795770634
	for <lists+devicetree@lfdr.de>; Fri,  4 Aug 2023 18:45:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230005AbjHDQpP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Aug 2023 12:45:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52816 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229534AbjHDQpO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Aug 2023 12:45:14 -0400
Received: from mail-yw1-x1135.google.com (mail-yw1-x1135.google.com [IPv6:2607:f8b0:4864:20::1135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D1D1BE7
        for <devicetree@vger.kernel.org>; Fri,  4 Aug 2023 09:45:13 -0700 (PDT)
Received: by mail-yw1-x1135.google.com with SMTP id 00721157ae682-583ae4818c8so24535797b3.3
        for <devicetree@vger.kernel.org>; Fri, 04 Aug 2023 09:45:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691167513; x=1691772313;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XZtH2kloa6QLDzCHyNDaNCnwyfiQCQAHnn2Es3d2qE4=;
        b=Fqtm7RUL/LlO5i2G8bayyJG5clPUcpemhU0uXK9YSzX6f2/5j4QjybpOJh0c37qar8
         hPN5mNULhzwhW3IVcrGJU65uaV4isWGciHdbZzMjLa/AcrRDyLrFvF54CRwKLfUMehdo
         +T5a7ZiU+XCAn3O2AR6a64SyjHoIh8qd1aFQIhDq3wmVfhZZVI54j7Wqo6SO5hWSgHV9
         XDbfCv91tB+ynGglXgarI4HUh1sGzhBTb4hC8B6RklZTpj0ZzFsoR8DaxRIozt9Xj30k
         odmOFlurXJrjpxNkKv2dB/ovF/Kqy3NJGUWBIvFbWwouhLzOXalqO/H5rPZ9mxS5n7il
         gk4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691167513; x=1691772313;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XZtH2kloa6QLDzCHyNDaNCnwyfiQCQAHnn2Es3d2qE4=;
        b=R3vH+7tzuYSOwAjM6ZU5KAJIKiIYOaQA2oeZe72OXkztx/hcDwK70QPGYqxAhGZLz2
         NQTk9tJiCS7cAwsqjLUOLTSjWcOaC6ZpheLcc2EYjmlECL8zV4BjhSjpEQrJ+6rUd64w
         uvbIrn+M7+kTYnr3Wbzrj/U5yuX0oMliblr9BDnhAJCeI9xRHA7PgwUyz97SElo50D7t
         0aWRhlsShQxaJKRdMszx8zKRfI3phiiGrOEtktneUeA+PiyA5hINu+jhCtm1l3ULolWN
         DRWdU5SlrVmKOhcJaRj6R90Iv0GqYeOjedk60lVRpfP39YbP0CcbBKr+Shjsd/Wlizqt
         1IGw==
X-Gm-Message-State: AOJu0YyyCqow/JPXSprFr4m/RUoyDsYtS+zADgPSIJDIB1roolmGq6z2
        eLS+57SJWVSWtk6CKn7ZOsg=
X-Google-Smtp-Source: AGHT+IEqpDsYuMfSaI3R4E5uhLP79V7LLfP1Lir+pGyO5HSv1afCGj9DTHJJC6o+NmWc+KfkWvMypQ==
X-Received: by 2002:a81:a18d:0:b0:586:cf7:2207 with SMTP id y135-20020a81a18d000000b005860cf72207mr2296911ywg.14.1691167513019;
        Fri, 04 Aug 2023 09:45:13 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id j63-20020a816e42000000b00582fae92aa7sm825248ywc.93.2023.08.04.09.45.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Aug 2023 09:45:12 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     dri-devel@lists.freedesktop.org
Cc:     devicetree@vger.kernel.org, conor+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org,
        neil.armstrong@linaro.org, Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 1/2] dt-bindings: display: newvision,nv3051d: Add Anbernic 351V Support
Date:   Fri,  4 Aug 2023 11:45:02 -0500
Message-Id: <20230804164503.135169-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230804164503.135169-1-macroalpha82@gmail.com>
References: <20230804164503.135169-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
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
 .../display/panel/newvision,nv3051d.yaml       | 18 +++++++++++-------
 1 file changed, 11 insertions(+), 7 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml b/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml
index 116c1b6030a2..1226db3613e6 100644
--- a/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml
+++ b/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml
@@ -8,8 +8,8 @@ title: NewVision NV3051D based LCD panel
 
 description: |
   The NewVision NV3051D is a driver chip used to drive DSI panels. For now,
-  this driver only supports the 640x480 panels found in the Anbernic RG353
-  based devices.
+  this driver only supports the 640x480 panels found in the Anbernic RG351
+  and 353 based devices.
 
 maintainers:
   - Chris Morgan <macromorgan@hotmail.com>
@@ -19,11 +19,15 @@ allOf:
 
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

