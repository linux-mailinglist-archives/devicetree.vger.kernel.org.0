Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 87CAD3D7F0A
	for <lists+devicetree@lfdr.de>; Tue, 27 Jul 2021 22:20:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232261AbhG0UUX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Jul 2021 16:20:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45182 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232181AbhG0UUW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Jul 2021 16:20:22 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C084BC0613D5
        for <devicetree@vger.kernel.org>; Tue, 27 Jul 2021 13:20:20 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id f18so23863008lfu.10
        for <devicetree@vger.kernel.org>; Tue, 27 Jul 2021 13:20:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=EIpScdiCXHtz5HFKS+jehHcY8/9fE5GMmH0c5uPACAU=;
        b=nYvQb6W555wl2V6qSzIGTVspbx408MqdKucy3dCzQ4yXvijpf5V7cL6KL1+gYCeoNh
         73kz4Kd26K2eLz0+o5lT0KDyh3SJLRHcmZHJDyiySF5N4cITPhtkbgvqcFeIQFcA0SUY
         hGIFbf6MjbfTOyKF8ulwwWPNwH4eYNm66Lf3aHo1KGUPDhylmLpI62vWhdL0JEkRjI5P
         9utgmcivV+JnRF5b4FKI0+e2xzdxpIPICIRsCoyzxo0UQqA+3qgtO3IMhaSIMZ726fZ5
         dAlCAP6fQiFHox8Q4e6UazGUV3YikbwIMqcs0ypJ2+sOTfV6rpVSmUDK9S4CtAjzLOYg
         GDGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=EIpScdiCXHtz5HFKS+jehHcY8/9fE5GMmH0c5uPACAU=;
        b=WyH4GFSzT02FJe/Ik5MOOjD2C/yWN5bRJmVNJEQXX2QPZhk236tSZWw3PIUPz4lcPX
         7LFKQv1jWcdEg2qGPbTJXfiI9NBgklSUU3sTWjsW02MNHD5HktpzpqvQdKtl5oQ3n0xe
         FLV/SQxUgn5eJe0Ei6kP1odWH9zyrQfIaJXGdd7aC+rtqQ4TOO6yQwAsWH68Y0o6pH4j
         0Tvp9Fv/JlQe64/CkFhWUiyUfip7jYjPBNFVeiZplBncNilcFmr+4aTMdyp4z5lVo/J4
         Qjpqso0VeQjVgq4XA6vsmC2W8dUGx68iD2QMX5WZqERG+yBromGQYiPWpVWLQL+aHPcz
         AFgw==
X-Gm-Message-State: AOAM530/VkRY/sXr9qtN94IheoPJjGs/cQjEOIaGBoAXQViYAcPFFdTS
        ipBUuKDuCwxdOrgaHf8iBLWsNg==
X-Google-Smtp-Source: ABdhPJzaTMep7BtxnZA7h6E2VYvnScNJNSBj17Kk409jF+FhgYLfGq5cC1gWhh2xNYJfdJ0EQgEZ1g==
X-Received: by 2002:a05:6512:604:: with SMTP id b4mr18708423lfe.184.1627417218990;
        Tue, 27 Jul 2021 13:20:18 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id i11sm376502lfe.215.2021.07.27.13.20.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 13:20:18 -0700 (PDT)
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
Subject: [PATCH v6 2/8] dt-bindings: clock: qcom,videocc: add mmcx power domain
Date:   Tue, 27 Jul 2021 23:19:58 +0300
Message-Id: <20210727202004.712665-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210727202004.712665-1-dmitry.baryshkov@linaro.org>
References: <20210727202004.712665-1-dmitry.baryshkov@linaro.org>
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

