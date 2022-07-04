Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 38F20564B0E
	for <lists+devicetree@lfdr.de>; Mon,  4 Jul 2022 03:07:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230354AbiGDBHH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 3 Jul 2022 21:07:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38422 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229450AbiGDBHG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 3 Jul 2022 21:07:06 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 57D965FA4
        for <devicetree@vger.kernel.org>; Sun,  3 Jul 2022 18:07:05 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id d2so14147447ejy.1
        for <devicetree@vger.kernel.org>; Sun, 03 Jul 2022 18:07:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=2uCwmHdjg21zPOoZO9GyiM8A7cUULvVI0yDuz4f3uYI=;
        b=bS7RcMoEft/5NjhWNeRimGLsTQ+Wg0UZPDQzUxvdMyoMeRKchuqpc+mJ2oE2gWenuk
         T1P980rkW10S8CBIC6wSCTa1gnEEzrR33lkx7GsXFDsmEWib18aYK4d0OVcqIkwX+8aq
         9M1T4LmblBTEsdiWmBrPhwh5B45+52mf3TK9Q1Eg5YS6cE3vbHgEUxv1bDshjAp0cc0C
         W6b7ErrhqqMaKWm20RcMarE3nw8k1dt7f5gV3fFV1R9zjMngK+2E4c4/cowO+zXxwQ8z
         pW1+qRuAGAvMU+qqSsH7Jk08x7b5L7D15lSkLPH03WhL8Pm+1czu7PKflbzR1DceNvMx
         XH0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2uCwmHdjg21zPOoZO9GyiM8A7cUULvVI0yDuz4f3uYI=;
        b=O+eHgU/5afKL0RcJugZDUUeo7pQz7agXIyQCh2D6qC6+VWWeIn0rYMlVJ26WDEdjVY
         IJvXrgoafAC9I3za7xiusOpMheo5D/MkTDOutRarL/OoCxGQBcsIxoXNuf9blrECmA+3
         B2p317mPPK0ldyEcSymJN7SOSXcIp3oowbbEiDySYB/Hwa6RzX0Zvx0EAe2/EL3JNev0
         sDjW0XrUlYq+TksDuMtPaJQdyBv58VAotzeQ/RUS3FNJsI//Yj7oveF+iz6QK9AyzrAE
         7WkoZXbimYBxTj55V+hJJtE7r0SDBoBoDkLgeRHBGeWthlt9sstk6HVAEV3qLG1AhAjq
         4Qew==
X-Gm-Message-State: AJIora/ZeqUqe6b8rax3Yq+YH+2FxGpuMv0XpX1L5zE7TpOABaIqLBlR
        oXvCL3SQyU72sPUBGdW+whR3Sg==
X-Google-Smtp-Source: AGRyM1szTyfoz9drJjJ1gIz9yqZ/HmCYzgbwCHm3azSy/cMq02SmmaZKLpilTJDQD1+fHf3Zt0SELQ==
X-Received: by 2002:a17:907:7283:b0:727:b4c0:b1f6 with SMTP id dt3-20020a170907728300b00727b4c0b1f6mr26449877ejc.197.1656896823887;
        Sun, 03 Jul 2022 18:07:03 -0700 (PDT)
Received: from localhost.localdomain ([146.70.96.66])
        by smtp.gmail.com with ESMTPSA id lu4-20020a170906fac400b006fec69696a0sm13466082ejb.220.2022.07.03.18.07.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 03 Jul 2022 18:07:03 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     agross@kernel.org, bjorn.andersson@linaro.org,
        myungjoo.ham@samsung.com, cw00.choi@samsung.com,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        stephan@gerhold.net, marijn.suijten@somainline.org
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        bryan.odonoghue@linaro.org, Rob Herring <robh@kernel.org>
Subject: [PATCH v3 1/2] dt-bindings: pm8941-misc: Fix usb_id and usb_vbus definitions
Date:   Mon,  4 Jul 2022 02:06:58 +0100
Message-Id: <20220704010659.223596-2-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220704010659.223596-1-bryan.odonoghue@linaro.org>
References: <20220704010659.223596-1-bryan.odonoghue@linaro.org>
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

