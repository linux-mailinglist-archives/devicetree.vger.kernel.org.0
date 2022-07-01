Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A10705630EF
	for <lists+devicetree@lfdr.de>; Fri,  1 Jul 2022 12:04:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232001AbiGAKEg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Jul 2022 06:04:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57036 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234227AbiGAKEg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Jul 2022 06:04:36 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 50FE374349
        for <devicetree@vger.kernel.org>; Fri,  1 Jul 2022 03:04:33 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id n185so974258wmn.4
        for <devicetree@vger.kernel.org>; Fri, 01 Jul 2022 03:04:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=WVWYtq9qgpkICN1wpy8/eRBhp82z5RdrXpx5rdm1/pM=;
        b=bPB1oTsiALdh1aHAewG8DDcM7Y6A308OEyrAZWkwEvXTz5xweEJTwuKxEwlfjKUdKh
         0rY5dc8uQwpO6CTGdtjYbNYLlgyed69w2KRyoxIJlQPsXaWtAwbznwGLycU2Tpd38M/X
         iW8U/gj+q8msZlBrTuxOSLaAq3e6NYJAr05Rc8FXRjBEJkexj8f17PRk1WkNVrK+DmqS
         SzosC856omyRf+FiTX2o4vDKU5mxWcg1Fvwjy2IyBT27Ki6a6rgihS16bhFh8zxyxZRr
         3FJvK5OsNNB4MqaYgUFIDAXrZ6tFufcOfvuPwtzxNLqQZlHMCwXrMhxLfAGcbS7Z/fvm
         FXQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=WVWYtq9qgpkICN1wpy8/eRBhp82z5RdrXpx5rdm1/pM=;
        b=vcw6Ydt5qvKhkX/rXK6sNAilyD5HOsPgdMEcU97HYAWGy74yDDOKEb8zitHM6M1Xc6
         ioseiIChtnHjg9kCG5crKabGDS8dly61rzX95l7jG4DzbYXRAFkkX7eOAPiIOkoFw2kC
         +28tpgO32BNt/X9dgL2zZ9IoKOOoRpco9Sdsyj/o2yMWC1bej628VaBKJUj5sAwCNTwC
         9wHgNaUaW6NsDEtgH48ivY5W8qMPrmOx4ys70LvfymL0BSpa8uBNVZGVmPhMNgyxaiGb
         dTFkzGFAYDnRACD2Zkb+ynSneZHP7VS/QS/A2UwOsiJYWaGxT9Wtm+z+eL44wdcr5Zkd
         w/qA==
X-Gm-Message-State: AJIora8I+6oYrfYjzp2dpzaQffT85ZO6KW+v/ql88z5n4Bk6Cs8Glyfo
        UVipFVPMgqAQTUq2BTc3z2AzdQ==
X-Google-Smtp-Source: AGRyM1uPuOCbP0a6mF/0olXBoqm4K2ERnhaH8Qv2XtSK2cfhaQt8X/8B8T3N/FCTkxmypHAt2j+g7Q==
X-Received: by 2002:a7b:c1d2:0:b0:3a0:4c75:87cf with SMTP id a18-20020a7bc1d2000000b003a04c7587cfmr17126392wmj.200.1656669871886;
        Fri, 01 Jul 2022 03:04:31 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id l34-20020a05600c1d2200b003a03e63e428sm7834172wms.36.2022.07.01.03.04.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Jul 2022 03:04:31 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     agross@kernel.org, bjorn.andersson@linaro.org,
        myungjoo.ham@samsung.com, cw00.choi@samsung.com,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        stephan@gerhold.net, marijn.suijten@somainline.org
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        bryan.odonoghue@linaro.org
Subject: [PATCH v2] dt-bindings: pm8941-misc: Fix usb_id and usb_vbus definitions
Date:   Fri,  1 Jul 2022 11:04:05 +0100
Message-Id: <20220701100405.3586820-1-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.36.1
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

dts validation is throwing an error for me on 8916 and 8939 with
extcon@1300. In that case we have usb_vbus but not usb_id.

It wasn't immediately obvious if there was a valid use-case for the
existing code for usb_id in isolation, however discussing further, we
concluded that usb_id, usb_vbus or (usb_id | usb_vbus) are valid
combinations as an external IC may be responsible for usb_id or usb_vbus.

Expand the definition with anyOf to capture the three different valid
modes.

Fixes: 4fcdd677c4ea ("bindings: pm8941-misc: Add support for VBUS detection")
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

