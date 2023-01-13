Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 785B3669123
	for <lists+devicetree@lfdr.de>; Fri, 13 Jan 2023 09:37:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240334AbjAMIha (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Jan 2023 03:37:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46904 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239903AbjAMIh3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Jan 2023 03:37:29 -0500
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1D25559E0
        for <devicetree@vger.kernel.org>; Fri, 13 Jan 2023 00:37:28 -0800 (PST)
Received: by mail-lf1-x12b.google.com with SMTP id bp15so32089216lfb.13
        for <devicetree@vger.kernel.org>; Fri, 13 Jan 2023 00:37:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=s8TVxtJdg2h5XhTVxxFJGPtkt+HMuIyEWNXdD88o9m4=;
        b=WfLmaKYQeSGM9P6tgCLJkezq5ShsNyq9wnzM+A2likM44ed+GQUTQYYEBBoIu0t5P6
         uY8ochmFRZy29qcuZsochkJkS9vHL+BnKXA6FO35ossjWLEDrM7/dtVmIf94epwLlu0W
         X52Fj2LdxeMD00uBC+c0TxFMdA/i+eGac9D8GQKLaGWILayk9VzMclTF3Sn7yHeW04F1
         NafYhdiwGHm76sW2tdMk+77uDhjwCnIHgu4TcD3gnsJv9Dg0//+VfHpjEZB/c/NbT0QU
         ZT88012E52zl3ZQ7n/1wfuuwcekcFmeCtXwoNdP62AU/1tmcfOaPY0wxUTtU2DkMWzIV
         A1uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=s8TVxtJdg2h5XhTVxxFJGPtkt+HMuIyEWNXdD88o9m4=;
        b=MFIpLF8bZRr1aGUXWwBW5wkeVIIJ07ergSeFa/88cVtfA/Ll5gHgZ0+G/Cbf+2Nge3
         FmvXRbdKWsvP6LN6qj3/YmYJyOhnz384L52mSW0pYCXlVWW7I+HpBakvqKuL99HEnyWl
         g17BpgT9V8ca4f7GTOaSoWkyE6i9aXhZOxE7X7QXX2MBkZPbtOD0A5FhQzd/sWb/+uuz
         4GxkBQxIIVZj1Lpn/QcxOJSbjc4ilU6F6ekdVz1pHfrfbRiOW7FnZ3CLaHC5xd9IfVve
         q6eT4CiyW7aCbYAnYtcA+65r+sGzEeSHyTFFu91MZ8iIZK7lQygOgPxKLx64tIDvzWXX
         d6GQ==
X-Gm-Message-State: AFqh2kpfAWSULx6wcC9aQZ/AFKLVjlgE6ZQK3bRntGl3TPrp3e+f00Ev
        Fojswa5h0nWXtuLaQu7JIUJV4g==
X-Google-Smtp-Source: AMrXdXtB2YEHCAdS50P4fV1zUDlLyBdhXucLwdD3JaKYcIdl+ECMK511wK8DblpGZs+KW/iRZpeBJg==
X-Received: by 2002:a19:f514:0:b0:4b5:61e8:8934 with SMTP id j20-20020a19f514000000b004b561e88934mr20438626lfb.64.1673599047061;
        Fri, 13 Jan 2023 00:37:27 -0800 (PST)
Received: from eriador.lumag.spb.ru ([194.204.33.9])
        by smtp.gmail.com with ESMTPSA id o6-20020a05651205c600b004994117b0fdsm3748038lfo.281.2023.01.13.00.37.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Jan 2023 00:37:26 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
Subject: [PATCH v6 03/11] dt-bindings: display/msm: add core clock to the mdss bindings
Date:   Fri, 13 Jan 2023 10:37:12 +0200
Message-Id: <20230113083720.39224-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230113083720.39224-1-dmitry.baryshkov@linaro.org>
References: <20230113083720.39224-1-dmitry.baryshkov@linaro.org>
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

Add (optional) core clock to the mdss bindings to let the MDSS driver
access harware registers before MDP driver probes.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../bindings/display/msm/qcom,mdss.yaml       | 34 ++++++++++++++-----
 1 file changed, 26 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/qcom,mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,mdss.yaml
index dcde34ffc8d0..6948ae3ac7bc 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,mdss.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,mdss.yaml
@@ -45,17 +45,11 @@ properties:
 
   clocks:
     minItems: 1
-    items:
-      - description: Display abh clock
-      - description: Display axi clock
-      - description: Display vsync clock
+    maxItems: 4
 
   clock-names:
     minItems: 1
-    items:
-      - const: iface
-      - const: bus
-      - const: vsync
+    maxItems: 4
 
   "#address-cells":
     const: 1
@@ -69,6 +63,30 @@ properties:
     items:
       - description: MDSS_CORE reset
 
+oneOf:
+  - properties:
+      clocks:
+        minItems: 3
+        maxItems: 4
+
+      clock-names:
+        minItems: 3
+        items:
+          - const: iface
+          - const: bus
+          - const: vsync
+          - const: core
+  - properties:
+      clocks:
+        minItems: 1
+        maxItems: 2
+
+      clock-names:
+        minItems: 1
+        items:
+          - const: iface
+          - const: core
+
 required:
   - compatible
   - reg
-- 
2.39.0

