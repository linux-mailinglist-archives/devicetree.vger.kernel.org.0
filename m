Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 70F2666789B
	for <lists+devicetree@lfdr.de>; Thu, 12 Jan 2023 16:07:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240353AbjALPHs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Jan 2023 10:07:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54302 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240101AbjALPGt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 Jan 2023 10:06:49 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A9C8E574F7
        for <devicetree@vger.kernel.org>; Thu, 12 Jan 2023 06:55:40 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id m3so13396042wmq.0
        for <devicetree@vger.kernel.org>; Thu, 12 Jan 2023 06:55:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0PZmQdqSd+0aQvVRPY0Zhs8Yzr1xgEW04gBOSVGXblk=;
        b=r25oCopoNkIeX3PSmYBCj527lFmJgtv1ESE374T1KJYynR/yYWMxc/xqYMk0/TgOPQ
         MwSbnT/UxJ7p+vPGbfcKxdvOU1GHb50vaI6pcj32sIy14+Yfn9lnU0K7IGpha922c70Y
         w8TetzkIVuk9PqlrlhI+urUPzQX1ojnommYsA1Rl9pkiA+xK6RE3EnKDWFCK8cMmzhTL
         /sCVVpdYAPc0E+QC+viIzVM5yWA2faBrxN7s4dZbuuw+ORmNZEUriPbJZCD1iq2WDm1x
         oFaK5Tjl8ik3ROeCNzS9p8+st3DgNAhpmw+STM+RkiOVR9oWuB7lZydqyN/HPdwdiBf5
         qUAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0PZmQdqSd+0aQvVRPY0Zhs8Yzr1xgEW04gBOSVGXblk=;
        b=oXuTs6BTcAnVhGQVgvaZVBgfC5AUyI+vcGUn8r1TY0A4zQKbB46YQ3zP2CIX49onIM
         Vz3f3Oy/15PI8jH27Y9jcxJ3WzePtQWFRz/ki7XD2Ee55XdIdAhblB6c879PF5+/ELt+
         ESadNef0M6Ss9mvv/EiuzILsz+RcGvx7xvnC2cwb+e2W3yr6Cg4xJ8d1/expmtlYJWtw
         7oYrdFnahKEBd8ZPhbesfX1XASKnU5zd0ljK1dufSiS72wQhM/NM+P3cMWgaofzHd+hW
         O6OtFiDfdi6CGqbv+9GciakE5qo/aPTDKbYUmKyqCQdrThwp+R6AZqAvwsRVPsV8V3Rt
         95+g==
X-Gm-Message-State: AFqh2kpHQMaDeJd+33il81Lt2TP9mapLAcIJVsBRvD/A9yCQXyuE2KuB
        V+CulobptL1TRDiu594aEm8Fxg==
X-Google-Smtp-Source: AMrXdXtRXyUaci7tCX5s6PeBV8jCoPfmJRexOD0Kvd+sp0HhrttjG8RXTeTDw7j/dRGoxSLQvvXNvA==
X-Received: by 2002:a05:600c:22d4:b0:3cf:82b9:2fe6 with SMTP id 20-20020a05600c22d400b003cf82b92fe6mr65827720wmg.8.1673535339224;
        Thu, 12 Jan 2023 06:55:39 -0800 (PST)
Received: from lmecxl1178.lme.st.com ([80.215.38.209])
        by smtp.gmail.com with ESMTPSA id v14-20020adff68e000000b002365730eae8sm16599779wrp.55.2023.01.12.06.55.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Jan 2023 06:55:38 -0800 (PST)
From:   Etienne Carriere <etienne.carriere@linaro.org>
To:     linux-kernel@vger.kernel.org
Cc:     Jens Wiklander <jens.wiklander@linaro.org>,
        Sumit Garg <sumit.garg@linaro.org>,
        Marc Zyngier <maz@kernel.org>,
        op-tee@lists.trustedfirmware.org, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Etienne Carriere <etienne.carriere@linaro.org>
Subject: [PATCH 2/3] dt-bindings: arm: optee: add interrupt controller properties
Date:   Thu, 12 Jan 2023 15:54:23 +0100
Message-Id: <20230112145424.3791276-3-etienne.carriere@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230112145424.3791276-1-etienne.carriere@linaro.org>
References: <20230112145424.3791276-1-etienne.carriere@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Adds optional interrupt controller properties used when OP-TEE generates
interrupt events optee driver shall notified to its registered
interrupt consumer. The example shows how OP-TEE can trigger a wakeup
interrupt event consumed by a gpio-keys compatible device.

Signed-off-by: Etienne Carriere <etienne.carriere@linaro.org>
---
 .../arm/firmware/linaro,optee-tz.yaml         | 19 ++++++++++++++++++-
 1 file changed, 18 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/firmware/linaro,optee-tz.yaml b/Documentation/devicetree/bindings/arm/firmware/linaro,optee-tz.yaml
index d4dc0749f9fd..42874ca21b7e 100644
--- a/Documentation/devicetree/bindings/arm/firmware/linaro,optee-tz.yaml
+++ b/Documentation/devicetree/bindings/arm/firmware/linaro,optee-tz.yaml
@@ -40,6 +40,11 @@ properties:
       HVC #0, register assignments
       register assignments are specified in drivers/tee/optee/optee_smc.h
 
+  interrupt-controller: true
+
+  "#interrupt-cells":
+    const: 1
+
 required:
   - compatible
   - method
@@ -48,12 +53,24 @@ additionalProperties: false
 
 examples:
   - |
+    #include <dt-bindings/input/input.h>
     #include <dt-bindings/interrupt-controller/arm-gic.h>
     firmware  {
-        optee  {
+        optee: optee {
             compatible = "linaro,optee-tz";
             method = "smc";
             interrupts = <GIC_SPI 187 IRQ_TYPE_EDGE_RISING>;
+            interrupt-controller;
+            #interrupt-cells = <1>;
+        };
+    };
+
+    wake_up {
+        compatible = "gpio-keys";
+
+        button {
+            linux,code = <KEY_WAKEUP>;
+            interrupts-extended = <&optee 0>;
         };
     };
 
-- 
2.25.1

