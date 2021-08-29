Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B6FE23FACC7
	for <lists+devicetree@lfdr.de>; Sun, 29 Aug 2021 17:51:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235626AbhH2Ps4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 29 Aug 2021 11:48:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53156 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235671AbhH2Psz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 29 Aug 2021 11:48:55 -0400
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1A3CC0617A8
        for <devicetree@vger.kernel.org>; Sun, 29 Aug 2021 08:48:02 -0700 (PDT)
Received: by mail-lj1-x22d.google.com with SMTP id c12so21284335ljr.5
        for <devicetree@vger.kernel.org>; Sun, 29 Aug 2021 08:48:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=FTbSV1E56r1NVZnQXDLnD85O88p/XKd1hFPjXfdyNKM=;
        b=fUKbEOZOe8ciXUu+L1aPDtOfETIX4lcjQ4ye+RO8Tb0n1yBBGrGTWsfykF/igiM2ti
         JsntY4K3BnJ0JSV52cElEARTVg7hjXxeOm/ObhO+4voF5W8gZCVj5cAPpFviz2dXL5z2
         ZkyHOsYV343oMOambqC74/BCeIHJ9tAJvvGvWYWW5JOEcPkbM+pVOGBdfeC+B3VAC8Nx
         qkH7BTiwbSGg2hoQbJnZJcDlc7MxGQXTguFaXElriA/Kjq0fmfAu3sp3VaYRHuShlgjJ
         McJntFk9Ecn3hcYI8GEbPTqTICpCH0JGAV/g04Xx3ANQFhFakicsFmRUMbjirUWIn5yU
         rzJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=FTbSV1E56r1NVZnQXDLnD85O88p/XKd1hFPjXfdyNKM=;
        b=ct0nM2QCvE14r4Eixsi4dXyPtjeqPSMaiaCmfdwAFCgAryC4GTYgc08iz1kQcRkVvN
         lCwibikdK7/ZSTyGkZjgaE62afaZQZrm9lsfVZGahD/7lr3lR2PlXVD4N+QGfwj9wPr6
         d+WV5ZX3rztStMtZoqVUpGFglCJrl9bq5z1hFzkieDx9rFheCijUInDa1tls5gquZLNn
         tlX1D9JOVCf0IUsC3BHyHCAsq3xCkcaNyo33jJQoWaDGRotZwTTEZwPzVR1ybRatS/ww
         SuQ2agIz6hW+HH3yrK73vpQshU8NlrkrDGI++0LrzEMpYcsFY64ZxBBtHGK8mWPLL/Qu
         HLxg==
X-Gm-Message-State: AOAM5303DHbE3QaJ2Gtz5Qp6U/uTSsaF0QXAUUP1k5Cp4QoX+F3GDp2r
        5IrBkOgwlSucUSxeZsMDLZA+1w==
X-Google-Smtp-Source: ABdhPJwu1w8Ez8V1SSEP1iN9iT0vYNZi4Mw24O1Bs5AWrkAvlJWFDrzy8Pzs0mcDOxQoHdV1ODa9ww==
X-Received: by 2002:a2e:bb93:: with SMTP id y19mr16468601lje.79.1630252080977;
        Sun, 29 Aug 2021 08:48:00 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id y5sm1481243ljd.38.2021.08.29.08.48.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Aug 2021 08:48:00 -0700 (PDT)
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
Subject: [PATCH v7 2/8] dt-bindings: clock: qcom,videocc: add mmcx power domain
Date:   Sun, 29 Aug 2021 18:47:51 +0300
Message-Id: <20210829154757.784699-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210829154757.784699-1-dmitry.baryshkov@linaro.org>
References: <20210829154757.784699-1-dmitry.baryshkov@linaro.org>
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
 .../devicetree/bindings/clock/qcom,videocc.yaml     | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,videocc.yaml b/Documentation/devicetree/bindings/clock/qcom,videocc.yaml
index 567202942b88..5d7053503435 100644
--- a/Documentation/devicetree/bindings/clock/qcom,videocc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,videocc.yaml
@@ -47,6 +47,16 @@ properties:
   reg:
     maxItems: 1
 
+  power-domains:
+    description:
+      A phandle and PM domain specifier for the MMCX power domain.
+    maxItems: 1
+
+  required-opps:
+    description:
+      A phandle to an OPP node describing required MMCX performance point.
+    maxItems: 1
+
 required:
   - compatible
   - reg
@@ -61,6 +71,7 @@ additionalProperties: false
 examples:
   - |
     #include <dt-bindings/clock/qcom,rpmh.h>
+    #include <dt-bindings/power/qcom-rpmpd.h>
     clock-controller@ab00000 {
       compatible = "qcom,sdm845-videocc";
       reg = <0x0ab00000 0x10000>;
@@ -69,5 +80,7 @@ examples:
       #clock-cells = <1>;
       #reset-cells = <1>;
       #power-domain-cells = <1>;
+      power-domains = <&rpmhpd SM8250_MMCX>;
+      required-opps = <&rpmhpd_opp_low_svs>;
     };
 ...
-- 
2.33.0

