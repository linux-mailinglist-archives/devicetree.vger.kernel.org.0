Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 28B255130FC
	for <lists+devicetree@lfdr.de>; Thu, 28 Apr 2022 12:11:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239582AbiD1KNU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Apr 2022 06:13:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51354 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233186AbiD1KMv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Apr 2022 06:12:51 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D17FA43ACD
        for <devicetree@vger.kernel.org>; Thu, 28 Apr 2022 03:04:34 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id k2so6043688wrd.5
        for <devicetree@vger.kernel.org>; Thu, 28 Apr 2022 03:04:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=e3gOCTIIDp+zo/s2ci9K8aggty1O76+cuFFTSEagk90=;
        b=YaOedmJnA8pY2cyQ24b0YKt7sRDTe+kV9929GThrJYh9OCqHH5tqbhRVkE8iUUaZFT
         02GfBaHh6ze/FLcdR8qSIwcWO0UP6SsHPjAo1ZbRkXvcljpk7CtsN05YDr1MVBtFAruB
         RN0oxGbwbuEH/o4ajSCTBwo6ewZw8D1IyNQnM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=e3gOCTIIDp+zo/s2ci9K8aggty1O76+cuFFTSEagk90=;
        b=ktvMnXOnP90n7gVw9tom6invmI43XPODwasR+rHQpv354B24d3Vzlf67wDthFC6QWr
         98UcrzVRRvwN6tFyQx4Sr54J3er80Onlj8wxXoMwDZjtxJ+fVi4lDwyb94UQBfC53qmR
         nxkqQoC30QhGELBfuaS0DABgmJOWgUnwU8xBGTnKFNN9yZDsq955sDIY+t8oDSVgcPx5
         D2xb7WPcgOojF0/ErQ4CrvnQZk4vvpp74inA5k0zbWL8iDG7oD6LIcEBfVlzDaKmRPiD
         8+QJSGZCghEITc//eO7Oc4vbK+BBgP5An6U9dkJ0rdbh6gxYBdKQKeAq0cTRyF7dBPJ9
         Y06w==
X-Gm-Message-State: AOAM530qIXInizOP297ApCquj2lwjHSmUs+DBS7VNNPaFkTYgO7lv4Tn
        +mbOG5SWOV1DrXI8WLbRk0da5w==
X-Google-Smtp-Source: ABdhPJwFHT5999/FCNS998YMaSCMGhbKS8KtT1+JqembRRJyw3StMCJIcMEH0bHB3M9aYi1zeefucA==
X-Received: by 2002:adf:fe84:0:b0:20a:dc0b:4f2d with SMTP id l4-20020adffe84000000b0020adc0b4f2dmr15695694wrr.229.1651140273120;
        Thu, 28 Apr 2022 03:04:33 -0700 (PDT)
Received: from fabiobaltieri-linux.lan ([37.228.205.1])
        by smtp.gmail.com with ESMTPSA id v5-20020a5d6785000000b0020a792848eesm15080449wru.82.2022.04.28.03.04.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Apr 2022 03:04:32 -0700 (PDT)
From:   Fabio Baltieri <fabiobaltieri@chromium.org>
To:     Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>, Lee Jones <lee.jones@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        chrome-platform@lists.linux.dev, linux-pwm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Fabio Baltieri <fabiobaltieri@chromium.org>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v6 3/4] dt-bindings: google,cros-ec-pwm: add the new -type compatible
Date:   Thu, 28 Apr 2022 10:04:20 +0000
Message-Id: <20220428100421.247471-4-fabiobaltieri@chromium.org>
X-Mailer: git-send-email 2.36.0.rc2.479.g8af0fa9b8e-goog
In-Reply-To: <20220428100421.247471-1-fabiobaltieri@chromium.org>
References: <20220428100421.247471-1-fabiobaltieri@chromium.org>
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

Update google,cros-ec-pwm node documentation to mention the
google,cros-ec-pwm-type compatible as a valid alternative.

Signed-off-by: Fabio Baltieri <fabiobaltieri@chromium.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/pwm/google,cros-ec-pwm.yaml      | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pwm/google,cros-ec-pwm.yaml b/Documentation/devicetree/bindings/pwm/google,cros-ec-pwm.yaml
index 7ab6912a845f..c8577bdf6c94 100644
--- a/Documentation/devicetree/bindings/pwm/google,cros-ec-pwm.yaml
+++ b/Documentation/devicetree/bindings/pwm/google,cros-ec-pwm.yaml
@@ -21,7 +21,14 @@ allOf:
 
 properties:
   compatible:
-    const: google,cros-ec-pwm
+    oneOf:
+      - description: PWM controlled using EC_PWM_TYPE_GENERIC channels.
+        items:
+          - const: google,cros-ec-pwm
+      - description: PWM controlled using CROS_EC_PWM_DT_<...> types.
+        items:
+          - const: google,cros-ec-pwm-type
+
   "#pwm-cells":
     description: The cell specifies the PWM index.
     const: 1
-- 
2.36.0.rc2.479.g8af0fa9b8e-goog

