Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 991DC4261B5
	for <lists+devicetree@lfdr.de>; Fri,  8 Oct 2021 03:25:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235819AbhJHB10 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Oct 2021 21:27:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234407AbhJHB1Z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Oct 2021 21:27:25 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3164CC061762
        for <devicetree@vger.kernel.org>; Thu,  7 Oct 2021 18:25:31 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id j5so32412121lfg.8
        for <devicetree@vger.kernel.org>; Thu, 07 Oct 2021 18:25:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=UuQnsS7c2xArKsKKLwccup/8SD8/wP5roqMnNvhNkqg=;
        b=E13jSEhDxD4rOmzfAZh42wsrEU5QroTrJe8IGz90IyNqilL5ZfYnNbpRIkMGnydBf6
         LYh6mizO9LF7BfNBwbkk63mTH7Ac8PXDV/EPqN+i64fALy8FGEPios/OGA8sMxxHNPui
         cftJq9GH9ry41pP96XMoP8JYWBnXr4sZY2b5VKDRnlSSoH0o5oKnyCLotZLgAe5PnCPm
         RCqEzEAHVqEp5j6ixqA2s+j9vr7QVJdAh3sHXXAfCUoiixrBwDbeIUGMmpWTEGayjnJU
         7WIbVEiyNI5UspvS0sjOJr+gHjbd0SsraF0txpRyWWnpaHtifrC6TYEfNRVo6xqQxY59
         bkGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=UuQnsS7c2xArKsKKLwccup/8SD8/wP5roqMnNvhNkqg=;
        b=a+V2TEwc0aRdil5+wDOmV45eF4KJ6pt7eA9KjhdcRPUvMTtJLVL+AIMmBXSLxqK5Kz
         eUaxRjy103WfLP0zdqR9ugxhuDeh4loKRCLh3OwBWEN8pgSanj5mmTNGQADP9vtUP6Zr
         xPu/MxyU204XBYGP+9/P86rd9FolunzJMs3EEk7eSesYoo249vKy1LO1sap+jm1BryAy
         4Tqu4JbeIhrzRmY2mhMMLp59fdSaRhqKU+/rfyf876ozVsZJB7uWMybqNQ97dCIHRZpY
         GZnd5xyXbDfDUmOJpFvaMcQxH5itemoo/dWtg0oadVx/dV+tqGO0JnrFTgrOdAfzVhbv
         bZEw==
X-Gm-Message-State: AOAM530EzYYjCPu9COQXwiM1D2qopW5Kk2wLRLvmysH4Jv9lpGK5wl6U
        XOaDph21DtgJL1TnCxxoyScslNI9wn7wWw==
X-Google-Smtp-Source: ABdhPJz6+ZEHinJlcz5hayK+whrKBtIzfUnZfN7/UhuwDZUFCKC8D8+UdtOhAh9m+28HSd41GqLY/w==
X-Received: by 2002:ac2:5c48:: with SMTP id s8mr7435912lfp.336.1633656329498;
        Thu, 07 Oct 2021 18:25:29 -0700 (PDT)
Received: from umbar.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id s4sm112875ljp.115.2021.10.07.18.25.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Oct 2021 18:25:29 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Subject: [PATCH v3 02/25] dt-bindings: mfd: qcom-pm8xxx: add missing child nodes
Date:   Fri,  8 Oct 2021 04:25:01 +0300
Message-Id: <20211008012524.481877-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211008012524.481877-1-dmitry.baryshkov@linaro.org>
References: <20211008012524.481877-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add gpio@[0-9a-f]+, mpps@[0-9a-f]+ and xoadc@[0-9a-f]+ as possible child
nodes of qcom,pm8xxx, referencing existint schema files. Schema for
other possible nodes does not exist yet.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/mfd/qcom-pm8xxx.yaml         | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/qcom-pm8xxx.yaml b/Documentation/devicetree/bindings/mfd/qcom-pm8xxx.yaml
index 9065ec53e643..10021eb7103e 100644
--- a/Documentation/devicetree/bindings/mfd/qcom-pm8xxx.yaml
+++ b/Documentation/devicetree/bindings/mfd/qcom-pm8xxx.yaml
@@ -38,10 +38,22 @@ properties:
   interrupt-controller: true
 
 patternProperties:
+  "gpio@[0-9a-f]+$":
+    type: object
+    $ref: "../pinctrl/qcom,pmic-gpio.yaml"
+
+  "mpps@[0-9a-f]+$":
+    type: object
+    $ref: "../pinctrl/qcom,pmic-mpp.yaml"
+
   "rtc@[0-9a-f]+$":
     type: object
     $ref: "../rtc/qcom-pm8xxx-rtc.yaml"
 
+  "xoadc@[0-9a-f]+$":
+    type: object
+    $ref: "../iio/adc/qcom,pm8018-adc.yaml"
+
 required:
   - compatible
   - '#address-cells'
-- 
2.30.2

