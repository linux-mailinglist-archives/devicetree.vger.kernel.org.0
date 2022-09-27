Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A8CE45EC19E
	for <lists+devicetree@lfdr.de>; Tue, 27 Sep 2022 13:38:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231840AbiI0Lip (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Sep 2022 07:38:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42902 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232069AbiI0Lif (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Sep 2022 07:38:35 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2088414C044
        for <devicetree@vger.kernel.org>; Tue, 27 Sep 2022 04:38:31 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id o2so15224417lfc.10
        for <devicetree@vger.kernel.org>; Tue, 27 Sep 2022 04:38:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=fsvySvv5M9V3xQBXuCnLy2D+B90t0AmGqa1i1Z9WwTg=;
        b=pgZNPdDlu78web2YSWdRD++2SpRZV4F9J+k5on9NlF8nezvxj85vnvdZ8H1RkEDfna
         4J4dmcdUW+akozjb1X/BXwS5HFrrrt7BmSXJmjAW7q90kqfSYn28UftXKJL+sEmDb/2A
         HnQpOs2IX4Ug2idpJuIeOeM74VwKcKOU61FCnnHA7uIMKHbl7OHlgM1VF0xx3XKscwPx
         8hya53+0IzgA4vSuKCv2SLtMe2z6yrOgR1i2LCcPffU8MbTRDryu+YnX5FbI20VO+HuL
         TVI6EIfJRuK6pFUUBKZmOJRUzXpwu9sjqqncdpq3qq0FYRonAUkBpgTZ5ahb0Jm3agXH
         AZxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=fsvySvv5M9V3xQBXuCnLy2D+B90t0AmGqa1i1Z9WwTg=;
        b=HG15PtgwYPxkDCPzuUxvAnv954fbtTo6cPME82r6Ys030eQ/QCbS20jY2wYn6LmO7O
         1zacOB/S24ZXXJAtVy3s6ojj2N1HJPGyH8qay3KPVkAvZ0pPoT7LodE+kK6owTVd21kc
         axGfZXvTqHykven5DDCu7sFJXKaSoPbVh7wSH/+xxTbe16YdUFPDU+mzaY9rrl+AkrHF
         h3csSDc3/r1/NCJOPLQwwqdCD5XPEzIwSzWB3+k1gVO5XQS3ClcnwFqPUCwXejOVSzqM
         cAe+V8xyfkE2wOvNZR8BUTMBRJkhSCx5Ti+hKWrnhzb+bY8bWL6N8yOCB2kQ/xY1q9V6
         U2fA==
X-Gm-Message-State: ACrzQf0VbignX11/wiuj9mu3K9h64+8FfnDd6nE4J3rvkMO+wXtNXAqX
        pyLT24fINZCUnAuX3uYZ36jHRQ==
X-Google-Smtp-Source: AMsMyM5Y0cLzSNYGobE3uvN1ksI0VMgd/oKeSZsmjeTYz4+W9GO/lE6Bl7v8N0JQ52pdhZfd+VKEkg==
X-Received: by 2002:a05:6512:ad0:b0:497:a620:157d with SMTP id n16-20020a0565120ad000b00497a620157dmr11650761lfu.643.1664278708766;
        Tue, 27 Sep 2022 04:38:28 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id t12-20020a056512208c00b00492dfcc0e58sm142165lfr.53.2022.09.27.04.38.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Sep 2022 04:38:28 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org,
        Christian Marangi <ansuelsmth@gmail.com>
Subject: [PATCH v2 1/3] dt-bindings: clock: qcom,gcc-ipq8064: add pll4 to used clocks
Date:   Tue, 27 Sep 2022 14:38:24 +0300
Message-Id: <20220927113826.246241-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220927113826.246241-1-dmitry.baryshkov@linaro.org>
References: <20220927113826.246241-1-dmitry.baryshkov@linaro.org>
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

On IPQ8064 (and related platforms) the GCC uses PLL4 clock provided by
the LCC clock controller. Mention this in the bindings.

To remain compatible with older bindings, make it optional, as the
driver will fallback to getting the `pll4' clock from the system clocks
list.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/clock/qcom,gcc-ipq8064.yaml      | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/qcom,gcc-ipq8064.yaml b/Documentation/devicetree/bindings/clock/qcom,gcc-ipq8064.yaml
index 9eb91dd22557..d1f93ee9ff69 100644
--- a/Documentation/devicetree/bindings/clock/qcom,gcc-ipq8064.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,gcc-ipq8064.yaml
@@ -27,14 +27,18 @@ properties:
       - const: syscon
 
   clocks:
+    minItems: 2
     items:
       - description: PXO source
       - description: CXO source
+      - description: PLL4 from LCC
 
   clock-names:
+    minItems: 2
     items:
       - const: pxo
       - const: cxo
+      - const: pll4
 
   thermal-sensor:
     type: object
@@ -51,13 +55,14 @@ unevaluatedProperties: false
 
 examples:
   - |
+    #include <dt-bindings/clock/qcom,lcc-ipq806x.h>
     #include <dt-bindings/interrupt-controller/arm-gic.h>
 
     gcc: clock-controller@900000 {
       compatible = "qcom,gcc-ipq8064", "syscon";
       reg = <0x00900000 0x4000>;
-      clocks = <&pxo_board>, <&cxo_board>;
-      clock-names = "pxo", "cxo";
+      clocks = <&pxo_board>, <&cxo_board>, <&lcc PLL4>;
+      clock-names = "pxo", "cxo", "pll4";
       #clock-cells = <1>;
       #reset-cells = <1>;
       #power-domain-cells = <1>;
-- 
2.35.1

