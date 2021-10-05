Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 91035422B54
	for <lists+devicetree@lfdr.de>; Tue,  5 Oct 2021 16:43:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235096AbhJEOpd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Oct 2021 10:45:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48756 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235218AbhJEOp3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Oct 2021 10:45:29 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BAD8DC061762
        for <devicetree@vger.kernel.org>; Tue,  5 Oct 2021 07:43:38 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id x27so87408933lfu.5
        for <devicetree@vger.kernel.org>; Tue, 05 Oct 2021 07:43:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=eb7cvTiXllNW2wJwYsGoR2tpvILpnhXsuAIehYc3HJU=;
        b=ViN3AXWf9Zcsb6/WPIK8EYFxRwaeVN7xS+ehn/nRG90cPZoHHFdxuQ1lZh6I09M9cL
         j8kJnjrwCgP2vIYhmWjvTn6awt2E9CzFKWx2tjBDD8/Zp8igQR2JYq0jAMw/hlM4ExEq
         YIBNScmU8dMxI1bva9AINi4bmqqUOoEzc8Dh0+JoKWhsMb3vS6bGAZmItuG39meAH8ix
         56XkP9KWsXdbH1AeVoLinAe838tYBw7ebvcpLdDUcG+dWT0Pl54ALgcoIET/U7UdB2UM
         bNg1amlEULaSbsG+Xw+CwqVeyySk4VrTvkWppGQqKM76zKnDrGtvdVehUnTHS9zZKkE4
         kQuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=eb7cvTiXllNW2wJwYsGoR2tpvILpnhXsuAIehYc3HJU=;
        b=5BjK3tn11qqzF9YdZnV2ldehKVoO0YJS1xn8XaZvZ7+Ifx4DzKapxIF0IPhi2IDPUX
         kcrZbrDJBHkFGsD/Dealke+chYzabjr2MTOfPv2xY5/m1mLzKaNghnj4AafjURgV6w4s
         pAy4AUNxzQ0PhYIbljLIUGiW1ygsr83w0/JjSeBwjLXfnOYJMUidBeZlww3h5W7Nj+8D
         jjyPbMzU+msIfARXVnU0+xWrQU9kQCq4TNUgliMjiXAys2rw3rRQRXB1ZAu/hIXUMFR7
         9epC5TPWKCls0DoPSCMr1TjjWH4ioR5hC7/QaxTX42JV4Jlpvgsioo/+0bP29N6Kq86C
         YPUQ==
X-Gm-Message-State: AOAM532Tb0AK5FTTSZbkXRxDUrr9d59BaPwjmOT1QSZkK/7gopgtJRSf
        8AqKCRJo8tZJgGUJJ9myrJntOT/ob1p0zQ==
X-Google-Smtp-Source: ABdhPJylKuhxFgyH5Vzh9Q50gFqyoCKEaaYNaHrg0W3hGYe42i8sVk1RERpXmdRvoqigA8cNuW89MA==
X-Received: by 2002:ac2:5e9c:: with SMTP id b28mr3863549lfq.468.1633445015822;
        Tue, 05 Oct 2021 07:43:35 -0700 (PDT)
Received: from umbar.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id t22sm1987173ljc.120.2021.10.05.07.43.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Oct 2021 07:43:33 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Subject: [PATCH v2 2/6] dt-bindings: pinctrl: qcom,pmic-mpp: switch to #interrupt-cells
Date:   Tue,  5 Oct 2021 17:43:25 +0300
Message-Id: <20211005144329.2405315-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211005144329.2405315-1-dmitry.baryshkov@linaro.org>
References: <20211005144329.2405315-1-dmitry.baryshkov@linaro.org>
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
index 6066857b5964..8a01a9b22e07 100644
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
@@ -163,7 +162,8 @@ examples:
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

