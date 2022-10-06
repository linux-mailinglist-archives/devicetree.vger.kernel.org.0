Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 005AB5F66C6
	for <lists+devicetree@lfdr.de>; Thu,  6 Oct 2022 14:49:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231631AbiJFMts (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Oct 2022 08:49:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231688AbiJFMso (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Oct 2022 08:48:44 -0400
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 759CFA3476
        for <devicetree@vger.kernel.org>; Thu,  6 Oct 2022 05:47:41 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id j23so1981322lji.8
        for <devicetree@vger.kernel.org>; Thu, 06 Oct 2022 05:47:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=7tlOCAYHN2Y3xhk9dkRfACKtc8xJakVTM1MhtXVqD2k=;
        b=h6eKJMBwdqEDbYhlDNvQMGzlvN8Pa38wra1+xznZsxMnN19YeNfaMgb6HBKXpzPjY9
         6aF3RdewoNONIgx+DUMHXi3gcYS3RgqCJqmE+cM4EJxvQziRGGM32g9ORI2KcTlG/otc
         bjLP9sVNtxZpRO/V69FsIzXnf/h0i7ykTclWTpdupfEndx3XQpZCM3H2LazzbSryazeL
         xXyXWvpK3B3aHS4JPwI0J7zKpuaebWwIESNuYejSvcuHstHNG2Yq6mF/ZJaZdMJgn8oJ
         kAx+qhYGmkBr/wJBlz5pZKnTpGfiAbDOCIWPI0UgeV0HJmeJhyZrilPscrdFnMYaPUFN
         xn+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=7tlOCAYHN2Y3xhk9dkRfACKtc8xJakVTM1MhtXVqD2k=;
        b=QBOTaaQkMjvD/H4SgIOJ7K7gw71LQrocKB9qKjB24qR0h3lAahK7R1ocvFwuBsksR1
         7Scqu3Ex/NHc0E8X/+AjfVVxhCNyLTC18HicFxgD44456nvuXJT3gqvIweMum0gTOpd8
         GDuP1ZTAvkanuvPB63RJcHMulrHNkrs3T8VSAkJuH2MXNEEPPAmVTUoGsABQmIcvsNKT
         Fb2M7OyMi+0MFAIlZhPGTwo3jVD3KPbbCGOKwGR/Ov9T3iOWlGxqrnYzmLpI4PBEOKc/
         JinpKeE13a7ReXpUpX1+a8zGbUFQI1dFkEGzFWSXyJPzf0B1HZ0Q3nVQjcRvud3VYAsC
         alBQ==
X-Gm-Message-State: ACrzQf320OqJPc4W2E3sPdM/iYMMbdEz4FdDa3/dgrnUTCdTQ9Zv487h
        7MDa482BHtgycywZPzjGoXvY5A==
X-Google-Smtp-Source: AMsMyM6KB4PUR76oRiqHSfHeSpFj4MsWPum8TlsqfYEZxykqXezsZsEKCGvLVpxvpoX3bGnm+yB47Q==
X-Received: by 2002:a2e:9f41:0:b0:26d:ee3d:ea0c with SMTP id v1-20020a2e9f41000000b0026dee3dea0cmr1795404ljk.328.1665060460579;
        Thu, 06 Oct 2022 05:47:40 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id br32-20020a056512402000b00497a3e2a191sm2687659lfb.112.2022.10.06.05.47.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Oct 2022 05:47:40 -0700 (PDT)
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
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v4 33/34] dt-bindings: pinctrl: qcom,sc7280: fix matching pin config
Date:   Thu,  6 Oct 2022 14:46:58 +0200
Message-Id: <20221006124659.217540-34-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221006124659.217540-1-krzysztof.kozlowski@linaro.org>
References: <20221006124659.217540-1-krzysztof.kozlowski@linaro.org>
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

The TLMM pin controller follows generic pin-controller bindings, so
should have subnodes with '-state' and '-pins'.  Otherwise the subnodes
(level one and two) are not properly matched.  This method also unifies
the bindings with other Qualcomm TLMM and LPASS pinctrl bindings.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Bjorn Andersson <andersson@kernel.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../bindings/pinctrl/qcom,sc7280-pinctrl.yaml      | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,sc7280-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,sc7280-pinctrl.yaml
index ad3496784678..4606ca980dc4 100644
--- a/Documentation/devicetree/bindings/pinctrl/qcom,sc7280-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,sc7280-pinctrl.yaml
@@ -47,9 +47,17 @@ properties:
 
   wakeup-parent: true
 
-#PIN CONFIGURATION NODES
 patternProperties:
-  '-pins$':
+  "-state$":
+    oneOf:
+      - $ref: "#/$defs/qcom-sc7280-tlmm-state"
+      - patternProperties:
+          "-pins$":
+            $ref: "#/$defs/qcom-sc7280-tlmm-state"
+        additionalProperties: false
+
+$defs:
+  qcom-sc7280-tlmm-state:
     type: object
     description:
       Pinctrl node's client devices use subnodes for desired pin configuration.
@@ -162,7 +170,7 @@ examples:
         gpio-ranges = <&tlmm 0 0 175>;
         wakeup-parent = <&pdc>;
 
-        qup_uart5_default: qup-uart5-pins {
+        qup_uart5_default: qup-uart5-state {
             pins = "gpio46", "gpio47";
             function = "qup13";
             drive-strength = <2>;
-- 
2.34.1

