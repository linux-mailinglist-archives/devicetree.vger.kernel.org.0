Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BD6A84261E3
	for <lists+devicetree@lfdr.de>; Fri,  8 Oct 2021 03:25:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242001AbhJHB1o (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Oct 2021 21:27:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38918 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241462AbhJHB1l (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Oct 2021 21:27:41 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CFA15C06177B
        for <devicetree@vger.kernel.org>; Thu,  7 Oct 2021 18:25:40 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id t9so31418987lfd.1
        for <devicetree@vger.kernel.org>; Thu, 07 Oct 2021 18:25:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=NtooTKuWfsI0QCrRlrRKhhoPIOiA7SRZqluNA4mW06Y=;
        b=aWDxB0PYpCY15yhKsVmwv19eqWn2uKkjYNC+hE5Y+PDeZc7fwSQiGu3sbolIqy2ZEq
         ZsPvV82uihaE0zJtKej20IDyWT8qLXJ21oCCkNfobAzjxHmXyVVD9f2POwp64TsPKc2K
         urQng8pCPAyn2Q/a07tf+6xq6nMM/1WlaTdDjSighn1bxZqWjZBa2i+q8uX1F/HEXin3
         vbhZzfWeaShos8o0wiLnPIiDHgS3ebBNM2SljMyhuzcYFhzBaadgUJ0h5bimrIbI5AiY
         maicZ/6R/5AldxAi3fsOE+mEhu2mT0PoZsUaMRKnOz2SmzZ71Hk9V05wd/7GLxoA5HSP
         ip4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=NtooTKuWfsI0QCrRlrRKhhoPIOiA7SRZqluNA4mW06Y=;
        b=4THGQ/lUJblNg41qWS6etkc0p9LwoIarh/9r2RXvR0lVXxBGaZ/bTMjPiiGKiCchOq
         jcfQupTT7pELGSdaapc4tyoIKMaSHd0ozp+TUJce71Cmu1eOSIuryYlvdCYSH8arWP6z
         I+7o8PQrFocVn3jiprIgYeEsaANsxAEcyA9YlEUUTxslX5E3NfDMXPKbgi8hrhZYcdzw
         vkiZBnSEg/+t2TcSHps2o3506GHV7pxUBkr3WSTU91qYwT/XFOkbHpam4zJKvlaAz1GL
         /wgdZPFKrAvMJh/8ADK5gY7K0Run3MoTSTMoKY0GtKa4QfwiXjJ/jaihdfJ5wyFWta7g
         l6OQ==
X-Gm-Message-State: AOAM530kNkNIz/kWei5jWQkWZf1M7UjuB1m3Dc/n/wKGIpIz0ZxxM3hc
        zM4/OJSMreIZVAPmjlcRhap6qA==
X-Google-Smtp-Source: ABdhPJzntHd55qa6ke5V7eAsBc9OkPo8cs4GQcXbUGDmvvm1Us4jJr53MrgcGazf+fXbelVI+Jr/YQ==
X-Received: by 2002:a2e:a41c:: with SMTP id p28mr330737ljn.293.1633656339216;
        Thu, 07 Oct 2021 18:25:39 -0700 (PDT)
Received: from umbar.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id s4sm112875ljp.115.2021.10.07.18.25.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Oct 2021 18:25:38 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Subject: [PATCH v3 17/25] dt-bindings: pinctrl: qcom,pmic-mpp: switch to #interrupt-cells
Date:   Fri,  8 Oct 2021 04:25:16 +0300
Message-Id: <20211008012524.481877-18-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211008012524.481877-1-dmitry.baryshkov@linaro.org>
References: <20211008012524.481877-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Stop specifying individual interrupts properties. Use #interrupt-cells
instead as we are switching qcom,spmi-mpp and qcom,ssbi-mpp to
hierarchical IRQ setup.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/pinctrl/qcom,pmic-mpp.yaml | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,pmic-mpp.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,pmic-mpp.yaml
index 475733cabb02..35c846f59979 100644
--- a/Documentation/devicetree/bindings/pinctrl/qcom,pmic-mpp.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,pmic-mpp.yaml
@@ -40,12 +40,10 @@ properties:
   reg:
     maxItems: 1
 
-  interrupts:
-    minItems: 1
-    maxItems: 12
-    description:
-      Must contain an array of encoded interrupt specifiers for
-      each available MPP
+  interrupt-controller: true
+
+  '#interrupt-cells':
+    const: 2
 
   gpio-controller: true
   gpio-line-names: true
@@ -67,6 +65,7 @@ required:
   - gpio-controller
   - '#gpio-cells'
   - gpio-ranges
+  - interrupt-controller
 
 patternProperties:
   '-state$':
@@ -164,7 +163,8 @@ examples:
       gpio-ranges = <&pm8841_mpp 0 0 4>;
       gpio-line-names = "VDD_PX_BIAS", "WLAN_LED_CTRL",
               "BT_LED_CTRL", "GPIO-F";
-      interrupts = <4 0xa0 0 0>, <4 0xa1 0 0>, <4 0xa2 0 0>, <4 0xa3 0 0>;
+      interrupt-controller;
+      #interrupt-cells = <2>;
 
       pinctrl-names = "default";
       pinctrl-0 = <&pm8841_default>;
-- 
2.30.2

