Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A5B96635ABE
	for <lists+devicetree@lfdr.de>; Wed, 23 Nov 2022 11:58:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236148AbiKWK4E (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Nov 2022 05:56:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54614 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236260AbiKWKzW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Nov 2022 05:55:22 -0500
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C0A2103D
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 02:44:47 -0800 (PST)
Received: by mail-lf1-x12d.google.com with SMTP id s8so27556083lfc.8
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 02:44:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Bda09macuyK5fYNXnbLx3WrcVV5Sb23aKOiNbSvBd8U=;
        b=jekgNuCk4zXNuk2nmghYikACoNtSbi0eNG1Jw+T0c8um+N5/b8wVcIxQRkJ9UC3A8m
         3vh1tLuWfCeHVTitGT34LR0GdfbEgwzPIJjrhc4+4LcNkOGUTosfGDDZJvGCFC5ghJvP
         kIHBVEVwE+fvQDt1gWE7xnm20lutYhBCKHx5WCdxUE83ZJakKBLSEvERuJMiWbCkNqE0
         D/4Rjxf9/OODoDtkqes6/VXxaTOzQawJksqFqJLtLlV0OuXy5hJmzceevAXxiqPtrl6L
         YO1eLtrGY4SyI0CfW5MpEeeilrqUrajXg/ljOwrnGgR9E1NQB+Xt+t0qe2LiwqkcBh36
         sgnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Bda09macuyK5fYNXnbLx3WrcVV5Sb23aKOiNbSvBd8U=;
        b=YzS4/4Bp+Mi618y/K88kO30Dn4Tv25Fzgd6QSXr6liBvAmIGmNw/2s+i3JG4sEF9x6
         xFO9bCnn4ejSpahbEQtzVoKcSbXb4klfuCVX8j3LqWYt7FNh2dKhagQIFcmwwNmHA+EI
         qszAwCDB+SOiD79LsCD5AU63otVDssZt7K7iYRkl1WRCZwSrI0Z4WGMSHTV/kqQptiHn
         Jd7whdA9nS9DD3oRzTvj1AFkF2u/JzMLowO+G+3L1I+9aV/y5B9Z2cSn36WSFmQUAdzV
         KIC9mc/ShbKTIaRovDzhyhDRoStK6EnqJ3iDHqmT7FVIxsZOWYa6RcHiptNwR4Ah8pVo
         S7lw==
X-Gm-Message-State: ANoB5plHQTdtAKGcIzI0hWU+sa6ZfHFawlLwosNgEGz6iZD1/wZ/xJvU
        YOcBS5del+i+BFe/mlYUgeXoPg==
X-Google-Smtp-Source: AA0mqf7uZQF9lF8kL/6lDrvTcWEXHH6BbiADC5ssM2O7V5T3YpNFuTa0V8H8trm8n2YcJunSky2bhw==
X-Received: by 2002:a05:6512:32d3:b0:4a2:500e:2bfa with SMTP id f19-20020a05651232d300b004a2500e2bfamr8808224lfg.629.1669200285576;
        Wed, 23 Nov 2022 02:44:45 -0800 (PST)
Received: from eriador.lumag.spb.ru (dzpbg0ftyyyyyyyyyyyyt-3.rev.dnainternet.fi. [2001:14ba:a302:5f12::1])
        by smtp.gmail.com with ESMTPSA id be34-20020a056512252200b0049e9122bd1bsm2869082lfb.164.2022.11.23.02.44.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Nov 2022 02:44:45 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Johan Hovold <johan@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v9 1/4] dt-bindings: phy: qcom,*-qmp-ufs-phy: add clock-cells property
Date:   Wed, 23 Nov 2022 12:44:40 +0200
Message-Id: <20221123104443.3415267-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221123104443.3415267-1-dmitry.baryshkov@linaro.org>
References: <20221123104443.3415267-1-dmitry.baryshkov@linaro.org>
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

Add #clock-cells property to the QMP UFS PHYs to describe them as clock
providers. The QMP PHY provides rx and tx symbol clocks for the GCC.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/phy/qcom,msm8996-qmp-ufs-phy.yaml      | 3 +++
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml     | 3 +++
 2 files changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-ufs-phy.yaml
index be41acbd3b6c..80a5348dbfde 100644
--- a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-ufs-phy.yaml
@@ -75,6 +75,9 @@ patternProperties:
         minItems: 3
         maxItems: 6
 
+      "#clock-cells":
+        const: 1
+
       "#phy-cells":
         const: 0
 
diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
index dde86a19f792..32ed1886fbae 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
@@ -43,6 +43,9 @@ properties:
 
   vdda-pll-supply: true
 
+  "#clock-cells":
+    const: 1
+
   "#phy-cells":
     const: 0
 
-- 
2.35.1

