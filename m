Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A5ECF3CC887
	for <lists+devicetree@lfdr.de>; Sun, 18 Jul 2021 12:49:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232972AbhGRKwK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 18 Jul 2021 06:52:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59670 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232845AbhGRKwJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 18 Jul 2021 06:52:09 -0400
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D38EEC061767
        for <devicetree@vger.kernel.org>; Sun, 18 Jul 2021 03:49:10 -0700 (PDT)
Received: by mail-lj1-x233.google.com with SMTP id h9so21213025ljm.5
        for <devicetree@vger.kernel.org>; Sun, 18 Jul 2021 03:49:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=EIpScdiCXHtz5HFKS+jehHcY8/9fE5GMmH0c5uPACAU=;
        b=AGXbjUn/f3tkWKTzx4g2vWUI5rxD3aacaiAgepT1wJ8AKNjwnPE5WAK2X84qlhjCwy
         RffR+Zr0Eu0JY1AyUZqurpCwnbWzFpsN0pBSLtD2Q9p10oDl6qo8guwUYrtq24voA0SU
         AaIxvQJ6vxPo0JjrEiPW+Nve9JDFOBUPKfHBuA0Ev+j01idNpH47tue4U4M9usRkv2WV
         vxG73R8vqG8GEPZ6LQXRpvDnOvB8a42enrn67mqn5ZN46rPOhH19ezQ6fM4SW0ocKKON
         cO5yCGPcs69TvgvuSo5vftylRTkvc8sOQr5BDJOmPtRheY1xKPsgDD3UIwMBECPtWMO4
         XqXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=EIpScdiCXHtz5HFKS+jehHcY8/9fE5GMmH0c5uPACAU=;
        b=Gu04VtVA3Kp7WTRfbg3LakRWdxBWU4d0/+jM9yfThluV25xhEuiiBzAm/oz4BY7InW
         woZaIgKhIDGT6wJogNIZ1DLAu+fcZXY5WDyGAoGj5BgoW3zQBcDtu3OtJTtfA9sgAoXW
         2G/crdtZ1GgzyIJ1SLiAAisKNwU6kArpq1O0R5CJQSEk0MPu9XjeZRtB7AG+hfQpY7uc
         y/lhS60HXnDzRXr8UOLqUYgS1JrE7P875K3jBOolC9w1AgXt579bfVTLyKXuuWWnnfy0
         5/ZRbd2yM8MA04IKK/0rWSDUpQ4BCe6+JitPORCzUTPlT3i4H1c/CEc8JAAXW/eI5r3X
         +Uqw==
X-Gm-Message-State: AOAM5308chrIROUTLg4euD/QbvBBq/57FLcscx7ZpHmbciptAdZoT6MS
        zXE2+7PbGHJ17YvvcdaySrriCA==
X-Google-Smtp-Source: ABdhPJzOptY7RHE6Ww4LdDbyp0j9IiGHw27LBAjoow5E5fHJnPAUgsG68vtXCYXp/sQC8rHd10KVoA==
X-Received: by 2002:a2e:7f1e:: with SMTP id a30mr18322867ljd.2.1626605349117;
        Sun, 18 Jul 2021 03:49:09 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id y22sm1039528lfh.154.2021.07.18.03.49.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Jul 2021 03:49:08 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Taniya Das <tdas@codeaurora.org>,
        Jonathan Marek <jonathan@marek.ca>,
        Michael Turquette <mturquette@baylibre.com>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-clk@vger.kernel.org,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Mark Brown <broonie@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>
Subject: [PATCH v5 2/9] dt-bindings: clock: qcom,videocc: add mmcx power domain
Date:   Sun, 18 Jul 2021 13:48:54 +0300
Message-Id: <20210718104901.454843-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210718104901.454843-1-dmitry.baryshkov@linaro.org>
References: <20210718104901.454843-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On sm8250 videocc requires MMCX power domain to be powered up before
clock controller's registers become available. For now sm8250 was using
external regulator driven by the power domain to describe this
relationship. Switch into specifying power-domain and required opp-state
directly.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/clock/qcom,videocc.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,videocc.yaml b/Documentation/devicetree/bindings/clock/qcom,videocc.yaml
index 567202942b88..db4ada6acf27 100644
--- a/Documentation/devicetree/bindings/clock/qcom,videocc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,videocc.yaml
@@ -47,6 +47,11 @@ properties:
   reg:
     maxItems: 1
 
+  power-domains:
+    description:
+      A phandle and PM domain specifier for the MMCX power domain.
+    maxItems: 1
+
 required:
   - compatible
   - reg
@@ -61,6 +66,7 @@ additionalProperties: false
 examples:
   - |
     #include <dt-bindings/clock/qcom,rpmh.h>
+    #include <dt-bindings/power/qcom-rpmpd.h>
     clock-controller@ab00000 {
       compatible = "qcom,sdm845-videocc";
       reg = <0x0ab00000 0x10000>;
@@ -69,5 +75,6 @@ examples:
       #clock-cells = <1>;
       #reset-cells = <1>;
       #power-domain-cells = <1>;
+      power-domains = <&rpmhpd SM8250_MMCX>;
     };
 ...
-- 
2.30.2

