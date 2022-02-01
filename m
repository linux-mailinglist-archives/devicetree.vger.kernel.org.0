Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4F41B4A5ECD
	for <lists+devicetree@lfdr.de>; Tue,  1 Feb 2022 16:02:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239620AbiBAPCM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Feb 2022 10:02:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60940 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239635AbiBAPCL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Feb 2022 10:02:11 -0500
Received: from mail-io1-xd32.google.com (mail-io1-xd32.google.com [IPv6:2607:f8b0:4864:20::d32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 53681C06173E
        for <devicetree@vger.kernel.org>; Tue,  1 Feb 2022 07:02:11 -0800 (PST)
Received: by mail-io1-xd32.google.com with SMTP id e79so21476951iof.13
        for <devicetree@vger.kernel.org>; Tue, 01 Feb 2022 07:02:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=MLEfOvs0XYTBMi37IYE0nxh2vKRdvGYr4hL4oQxHa8M=;
        b=ytR9ybKf78e9r81Jz1vLmp3ngHBYNuUbyHoXl0+O4rFQB6Vs/4C7C1Ecd9rXJcbbig
         YGojHqXI/UcsZAlFVi6QT0jyJprhWEoJ6mM0GBmachNrlLMrvkuvaaDBJMcnJOtb+MT1
         l/l+UU9EAaIk/tCTmy7F6tUZhTEaJ8+KclYhuj/Xs013OY7RIcrqq6nrmGk0hw4+Evc6
         u7F+0nn+IuRWx+0lSZkx9VQXlzcutd7lJ5T+adOPdCBOQF9tSkOa/D/O5zwX5+h4p3Dw
         noH1d0V7Iv04n5Hh97cQJFj4fs1S7GK59N6L8HHZzcFNI0Uo16GuaDszeSV3e4vl1pDY
         QUdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=MLEfOvs0XYTBMi37IYE0nxh2vKRdvGYr4hL4oQxHa8M=;
        b=opT7s0h1HHKXML6BpVo4Ya4yzEh6hNqjLxwDn3J+MU3ejiMlU6fMR5ni32AsYNguRj
         HDiRZIDLru/19bRTqV6c1RIUPi2F66LSZ/PRsOJrs47XAF5bHT7bfEfXOGAcT23BNCgf
         2SdIIR5WKXmKEbC5VNs4nQ3o4cv71cg5O1ugOdD6J0fXx8rSl2/0TdO1IA8Rhr7Un+8F
         EXtse71VjIdOfrUbiUIBkbZx3cHgyqhv+0aOBXSMFdYnHO7WCyqJ5PmJ5ZZ8y7MYLgWq
         D4lMdk6mYb/VZJ4JeU3R0j/TX+0pvHrbtf9wRmwj63dV2EvSx2/BOJlbhuLrwymUMfZO
         vVLw==
X-Gm-Message-State: AOAM533l24Qp/7MI4w+TMIk3Kme55bbAUfqu72vOX7PPS+8v5Zf5XuY+
        bWEkw/K0oiAMwwQh7lL7IMLgoA==
X-Google-Smtp-Source: ABdhPJx88GjpHLi9TGbQVzWh0R/FUwA9VTi13g/mfPQwP/mDrRHrsVDnZ9O+iWUbx3B492hm38AOZA==
X-Received: by 2002:a02:9645:: with SMTP id c63mr12719886jai.260.1643727730766;
        Tue, 01 Feb 2022 07:02:10 -0800 (PST)
Received: from localhost.localdomain (c-73-185-129-58.hsd1.mn.comcast.net. [73.185.129.58])
        by smtp.gmail.com with ESMTPSA id e17sm19141307ilm.67.2022.02.01.07.02.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Feb 2022 07:02:10 -0800 (PST)
From:   Alex Elder <elder@linaro.org>
To:     robh+dt@kernel.org, davem@davemloft.net, kuba@kernel.org
Cc:     bjorn.andersson@linaro.org, agross@kernel.org, mka@chromium.org,
        evgreen@chromium.org, cpratapa@codeaurora.org,
        avuyyuru@codeaurora.org, jponduru@codeaurora.org,
        subashab@codeaurora.org, elder@kernel.org, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH net v2 1/2] dt-bindings: net: qcom,ipa: add optional qcom,qmp property
Date:   Tue,  1 Feb 2022 09:02:04 -0600
Message-Id: <20220201150205.468403-2-elder@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220201150205.468403-1-elder@linaro.org>
References: <20220201150205.468403-1-elder@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

For some systems, the IPA driver must make a request to ensure that
its registers are retained across power collapse of the IPA hardware.
On such systems, we'll use the existence of the "qcom,qmp" property
as a signal that this request is required.

Signed-off-by: Alex Elder <elder@linaro.org>
---
 Documentation/devicetree/bindings/net/qcom,ipa.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/qcom,ipa.yaml b/Documentation/devicetree/bindings/net/qcom,ipa.yaml
index b86edf67ce626..58ecc62adfaae 100644
--- a/Documentation/devicetree/bindings/net/qcom,ipa.yaml
+++ b/Documentation/devicetree/bindings/net/qcom,ipa.yaml
@@ -107,6 +107,10 @@ properties:
           - const: imem
           - const: config
 
+  qcom,qmp:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description: phandle to the AOSS side-channel message RAM
+
   qcom,smem-states:
     $ref: /schemas/types.yaml#/definitions/phandle-array
     description: State bits used in by the AP to signal the modem.
@@ -222,6 +226,8 @@ examples:
                                      "imem",
                                      "config";
 
+                qcom,qmp = <&aoss_qmp>;
+
                 qcom,smem-states = <&ipa_smp2p_out 0>,
                                    <&ipa_smp2p_out 1>;
                 qcom,smem-state-names = "ipa-clock-enabled-valid",
-- 
2.32.0

