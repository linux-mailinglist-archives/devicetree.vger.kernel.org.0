Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 293CB5ECB52
	for <lists+devicetree@lfdr.de>; Tue, 27 Sep 2022 19:41:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233232AbiI0RlG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Sep 2022 13:41:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44452 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233294AbiI0RkI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Sep 2022 13:40:08 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 93B7B1E8008
        for <devicetree@vger.kernel.org>; Tue, 27 Sep 2022 10:38:57 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id a2so16776163lfb.6
        for <devicetree@vger.kernel.org>; Tue, 27 Sep 2022 10:38:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=uQBQubZDQ7K3yOnczh8/VeEfY3Wku/sI1yMfxa3VpJg=;
        b=A9Xhda4UO0F0NdXOFsfSYdwExCyoDcyqIXbBlGnzGFTyRa8PZCIlpzQ63RS5WwYt/R
         rMdkylQ97FiaU+e41iGSNN9nxuJ5Vj/AI3U3honh8WAkibpUmNAv1zJRKtJd/rapZVeO
         Ds1XaJcmTemQf98o6BPzcY9uStlX5VtJVhoaFMlbSS68rT6IH90E/Xf9DHmawepL0cX5
         ZDXybnlkbQ829zRLyR7uhxhxNzyl9+m1h7SvgY8hePs46EpyGGU7kBbG1vTm+sxPSFa4
         MG0ngpYm8c8WVTeQSHgm5NbGRnKkiCO3JmDDQvYjPn4FF0tBPUx7gWfgRd0FawKhxTr9
         W2xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=uQBQubZDQ7K3yOnczh8/VeEfY3Wku/sI1yMfxa3VpJg=;
        b=UE0NwqQTkqbLKuxhqTPZRqFW0HorUKeEtMlQRvbEMZMZJP5M889cwWH9qSbKMGWF1s
         m+cpIGZgouuIach86jD6Qg6PyAQqfXS5AW+fSvZ/GqxuBysgYRc4VQaH4bLdMGm2yTeG
         AUkQr1ijZLcas6LBQveWU5w8DsxuHgc+icd5+80TduGCxlll+fx5OAeX6sTZ5hJRkk6o
         G2H6Py1HhOLVaQxE8L7p7Y/sxtQ3dNdw4UoBIoAtDR/oSnghjw/tqczjSnNUMgG6zPD/
         j4LCX1vBMj0kQ3dvNE2MELSNsxX0XCnd6VRS+z0WOCcH2ebkuSv7+fuZIIxyDM9BzdqP
         b40A==
X-Gm-Message-State: ACrzQf3Re7l3DyoaF517Rm3UEvMCfxlDgDz3Qe0NP1lmDluBQCR+etF1
        LjiWfRuMpS06zY96PzVIjVNwjw==
X-Google-Smtp-Source: AMsMyM5Du/H5bhSAVXq5u/SibEUZr58gVH3iQ8idnq/YChag1KrkFB+EGTMuiUj9NS7LWPcJN98fGg==
X-Received: by 2002:a05:6512:3409:b0:499:f8f1:8322 with SMTP id i9-20020a056512340900b00499f8f18322mr11820080lfr.459.1664300336964;
        Tue, 27 Sep 2022 10:38:56 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id q12-20020ac246ec000000b00498f570aef2sm218879lfo.209.2022.09.27.10.38.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Sep 2022 10:38:55 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Stephan Gerhold <stephan@gerhold.net>,
        Shawn Guo <shawn.guo@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        krishna Lanka <quic_vamslank@quicinc.com>,
        Sivaprakash Murugesan <sivaprak@codeaurora.org>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 26/34] dt-bindings: pinctrl: qcom,qcm2290: fix matching pin config
Date:   Tue, 27 Sep 2022 19:36:54 +0200
Message-Id: <20220927173702.5200-27-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220927173702.5200-1-krzysztof.kozlowski@linaro.org>
References: <20220927173702.5200-1-krzysztof.kozlowski@linaro.org>
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

The TLMM pin controller follows generic pin-controller bindings, so
should have subnodes with '-state' and '-pins'.  Otherwise the subnodes
(level one and two) are not properly matched.  This method also unifies
the bindings with other Qualcomm TLMM and LPASS pinctrl bindings.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Bjorn Andersson <andersson@kernel.org>
---
 .../bindings/pinctrl/qcom,qcm2290-pinctrl.yaml           | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,qcm2290-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,qcm2290-pinctrl.yaml
index 3f4f1c0360b5..5324b61eb4f7 100644
--- a/Documentation/devicetree/bindings/pinctrl/qcom,qcm2290-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,qcm2290-pinctrl.yaml
@@ -50,8 +50,9 @@ patternProperties:
     oneOf:
       - $ref: "#/$defs/qcom-qcm2290-tlmm-state"
       - patternProperties:
-          ".*":
+          "-pins$":
             $ref: "#/$defs/qcom-qcm2290-tlmm-state"
+        additionalProperties: false
 
 '$defs':
   qcom-qcm2290-tlmm-state:
@@ -146,19 +147,19 @@ examples:
         gpio-ranges = <&tlmm 0 0 127>;
 
         sdc2_on_state: sdc2-on-state {
-            clk {
+            clk-pins {
                 pins = "sdc2_clk";
                 bias-disable;
                 drive-strength = <16>;
             };
 
-            cmd {
+            cmd-pins {
                 pins = "sdc2_cmd";
                 bias-pull-up;
                 drive-strength = <10>;
             };
 
-            data {
+            data-pins {
                 pins = "sdc2_data";
                 bias-pull-up;
                 drive-strength = <10>;
-- 
2.34.1

