Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 93E41577623
	for <lists+devicetree@lfdr.de>; Sun, 17 Jul 2022 14:33:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229815AbiGQMdR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 17 Jul 2022 08:33:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58742 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229487AbiGQMdQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 17 Jul 2022 08:33:16 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A474615A2C
        for <devicetree@vger.kernel.org>; Sun, 17 Jul 2022 05:33:15 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id e15so8001863wro.5
        for <devicetree@vger.kernel.org>; Sun, 17 Jul 2022 05:33:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=2uCwmHdjg21zPOoZO9GyiM8A7cUULvVI0yDuz4f3uYI=;
        b=t32K0zJnrJk84Oroej5+duxaqm9tE5E/z9ohHiatAtOz0K9wrvwbIbXSP8oUZX3yU3
         Idflt8y7m7oVEDfymBlfVzJKdR0iFa03OQJVN4hNxDOEunTqS+Wnn9BYvsvrzbHLjtk8
         cM1cj9V4ZO7Y6jHRvwUGNnOxQXXmp2qn1VNufvPhMgBQMk3aCneUs55XCW6yzRDUcVf1
         CQ1ARAYVHUCb1BOvVeD9GsKuB9NrcywXserD+qiH88lHk6d/4mS1EQZQwhSW6ovxYsc3
         xYtpbqq7vu0vd+5a1KuikKyqemhqPS9iaAo7e6PjwRQVZddRuswuvAADy8zht61+8m/G
         NkCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2uCwmHdjg21zPOoZO9GyiM8A7cUULvVI0yDuz4f3uYI=;
        b=Hp2u0rIpvAgMKKBq4XKMliSibt8NeDI/GWlLPXj8IK1kXtVFvOh91WQO1Rk5hSt+8U
         yDOdIy/o/2rZt8VUh9hNKAaxXdR0FIwmO3k5chMsD7RRYmoGvhXIenVnQO8hK4ZTkB/Q
         AE3OKNPRCSkPRvH0Fml5sIryicjasZOIlayTYrtx9zmIDs4zYKx1Swkmaz+AvDPXiENj
         63gKQBp2trS2ApaC5lNt+LECUqrYqLOc/IOjZLqk5PCp4tm0QNkPpJEN0aKs1FBaU/QK
         3gE8eRO3ztBwLHg5YLQsOwhE0SmTHX00EyOSV0MvjgUnJiwgSFSAd7HwG68NYytfdxgk
         DZ/g==
X-Gm-Message-State: AJIora95NYbQ8g6gAopajNyrxGNh5Kjjm7laPR3eFlED3UDRLt4cTN0/
        yeNNEkJsHnIElJOw4wFmCpbUVQ==
X-Google-Smtp-Source: AGRyM1ujSirm/jZ8J8Xz8yhFRzFmuzdM5ekAtCUG9NdHduCUcRFsy6B14AY8FTjzyClLzEpZyVs/sQ==
X-Received: by 2002:a5d:5a9d:0:b0:21b:8247:7ec4 with SMTP id bp29-20020a5d5a9d000000b0021b82477ec4mr19225709wrb.561.1658061194249;
        Sun, 17 Jul 2022 05:33:14 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id m9-20020adfe949000000b0021d4694fcaesm8146790wrn.107.2022.07.17.05.33.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Jul 2022 05:33:13 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     agross@kernel.org, bjorn.andersson@linaro.org,
        konrad.dybcio@somainline.org, myungjoo.ham@samsung.com,
        cw00.choi@samsung.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        marijn.suijten@somainline.org, bryan.odonoghue@linaro.org,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v4 1/2] dt-bindings: pm8941-misc: Fix usb_id and usb_vbus definitions
Date:   Sun, 17 Jul 2022 13:33:03 +0100
Message-Id: <20220717123304.938259-2-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220717123304.938259-1-bryan.odonoghue@linaro.org>
References: <20220717123304.938259-1-bryan.odonoghue@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

dts validation is throwing an error for me on 8916 and 8939 with
extcon@1300. In that case we have usb_vbus but not usb_id.

It wasn't immediately obvious if there was a valid use-case for the
existing code for usb_id in isolation, however discussing further, we
concluded that usb_id, usb_vbus or (usb_id | usb_vbus) are valid
combinations as an external IC may be responsible for usb_id or usb_vbus.

Expand the definition with anyOf to capture the three different valid
modes.

Fixes: 4fcdd677c4ea ("bindings: pm8941-misc: Add support for VBUS detection")
Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Marijn Suijten <marijn.suijten@somainline.org>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 .../devicetree/bindings/extcon/qcom,pm8941-misc.yaml | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/extcon/qcom,pm8941-misc.yaml b/Documentation/devicetree/bindings/extcon/qcom,pm8941-misc.yaml
index 6a9c96f0352ac..1bc412a4ac5e6 100644
--- a/Documentation/devicetree/bindings/extcon/qcom,pm8941-misc.yaml
+++ b/Documentation/devicetree/bindings/extcon/qcom,pm8941-misc.yaml
@@ -27,10 +27,14 @@ properties:
 
   interrupt-names:
     minItems: 1
-    items:
-      - const: usb_id
-      - const: usb_vbus
-
+    anyOf:
+      - items:
+          - const: usb_id
+          - const: usb_vbus
+      - items:
+          - const: usb_id
+      - items:
+          - const: usb_vbus
 required:
   - compatible
   - reg
-- 
2.36.1

