Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7677C39DB95
	for <lists+devicetree@lfdr.de>; Mon,  7 Jun 2021 13:40:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230237AbhFGLmP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Jun 2021 07:42:15 -0400
Received: from mail-pf1-f182.google.com ([209.85.210.182]:43523 "EHLO
        mail-pf1-f182.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231558AbhFGLmO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Jun 2021 07:42:14 -0400
Received: by mail-pf1-f182.google.com with SMTP id t28so12852297pfg.10
        for <devicetree@vger.kernel.org>; Mon, 07 Jun 2021 04:40:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=zrsK6owk2kow8C6W/boob0YZ4Vh4KO+fRL2h89xnMCE=;
        b=T38jYMX0/r08xRHtkOEQEWpqqyuOrGZVGvLLYOC8bTeEGhl+qTAnZ9LFslh+Lj1xlD
         xuF+XnWRuPq9britTriAt1f2i3otpZhJZGaxlTikG4DpxoaKMfMajbKiVtKSXOp9YDgI
         RkqVz3vqzKNKrVCqT4/4sEbTLIgJeNow2a3iMmTdv7HPTX6nsU1AUnHkmYp55eYTX+it
         OowSRXxl7f03e+o0WboWhPyWLlMeC2sib1ijeAdm6UKUqDh3hvsd65/DOOtFs4AjnVNp
         0u3JZmXisKNpNBTQdfbKg7QFTnpni7onbvCPNK9+lNws3WmeMK57RWIHZWGWvBbllIMp
         +Xdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=zrsK6owk2kow8C6W/boob0YZ4Vh4KO+fRL2h89xnMCE=;
        b=jgsA4OWuak+t/xDQOPGFoYiwoXAGUeeAKZEh7Br+J8w3ERou9oYaqOn3Qq4oFsN/CX
         r3Y0zi5SF2Qo05UQviB6JkCyKrcNleoPVxhDd0bhMmT++ndlUVI4nkjPc7XfRjY57txd
         dD508BH3azZNivxV+Zs9gTspRuJtxtLH5xNiXi+djLJwPdK25M6vuyLeDY3HVg3vTgjR
         Uo3tSWA8HY2cAhFGUTRDCJ9w9dvVYPFT3m4wPci5RRTihbX94kbo1ECL7lFnVE3IzNNQ
         g/NnMLDN0YraagvqGWe4FHMqVLHvz+k6jcA2hJpS7DfBCXaZAOxIVFjkQWXyehnl7xy+
         ed2g==
X-Gm-Message-State: AOAM531ivPlt/SEMb7sEF0GAnLcms2zwQX4dA59iwtt1mGlBXF4t6SSb
        QvOgbDZtD5uiPyt/c71dVOrcDw==
X-Google-Smtp-Source: ABdhPJzRjBjRbRZst+j3DIMIPLbY3+2Q3WsXW5lJA9uzDhbKzEXk5GILCKC0rffIR0xKhhiDnwpqKQ==
X-Received: by 2002:aa7:8114:0:b029:2e9:c437:1121 with SMTP id b20-20020aa781140000b02902e9c4371121mr16492936pfi.7.1623065963772;
        Mon, 07 Jun 2021 04:39:23 -0700 (PDT)
Received: from localhost.localdomain.name ([122.177.177.211])
        by smtp.gmail.com with ESMTPSA id j7sm7223939pjf.0.2021.06.07.04.39.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Jun 2021 04:39:23 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org
Cc:     bhupesh.sharma@linaro.org,
        Linus Walleij <linus.walleij@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
        bhupesh.linux@gmail.com
Subject: [PATCH 3/8] dt-bindings: arm: qcom: Add compatible for SA8155p-adp board
Date:   Mon,  7 Jun 2021 17:08:35 +0530
Message-Id: <20210607113840.15435-4-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210607113840.15435-1-bhupesh.sharma@linaro.org>
References: <20210607113840.15435-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

SA8155p-adp board is based on Qualcomm Snapdragon sm8150
SoC.

Add support for the same.

Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>
Cc: Mark Brown <broonie@kernel.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Andy Gross <agross@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Cc: linux-gpio@vger.kernel.org
Cc: bhupesh.linux@gmail.com
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 9b27e991bddc..b5897f1f9695 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -42,11 +42,13 @@ description: |
         sdm660
         sdm845
         sdx55
+        sm8150
         sm8250
         sm8350
 
   The 'board' element must be one of the following strings:
 
+        adp
         cdp
         cp01-c1
         dragonboard
@@ -198,6 +200,12 @@ properties:
               - qcom,ipq6018-cp01-c1
           - const: qcom,ipq6018
 
+      - items:
+          - enum:
+              - qcom,sa8155p-adp
+              - qcom,sm8150-mtp
+          - const: qcom,sm8150
+
       - items:
           - enum:
               - qcom,qrb5165-rb5
-- 
2.31.1

