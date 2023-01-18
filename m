Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6734067125C
	for <lists+devicetree@lfdr.de>; Wed, 18 Jan 2023 05:13:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229547AbjAREM7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Jan 2023 23:12:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41042 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229582AbjAREMx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Jan 2023 23:12:53 -0500
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E0C2F54105
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 20:12:51 -0800 (PST)
Received: by mail-ej1-x62b.google.com with SMTP id qx13so21886267ejb.13
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 20:12:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Lf6psy7ntm6XZpjeMKG29URoVYD787zn4N0Bmfpn80k=;
        b=Rc5PsVd8VGbcigMI4Z3FtmNThwWSo78WsxFbP1hzIVU9g9qdiUmPtA/SBukjqngTqk
         3Kq2Eu8jLKoG/pV6cDlBq72ogNNCF7N4HlG9Eijl28xSnEt2ZalEe0U10NHGYo3gEaVn
         uYX5du0E/ONU9zPYL1o2GT10xMC+ZImsVw73pRjBfayAbi4sgPcWXayxdGPBn34XmT01
         tHJyqWsEvmoia1BdYCLIdkq1NNWEDPz8vUJ7hmwsZhSN+UqAaUWQvGPU33TEtAUsHH3d
         LytpRfVtNa86CFbk4N0T6jfdYQw+zxJLlT7QYC3XoPhvmFAagGSIwGo8sgyb++8bGfbG
         RA/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Lf6psy7ntm6XZpjeMKG29URoVYD787zn4N0Bmfpn80k=;
        b=hm6yZPPzCvyqdky7FyuLnx9LEOP2kinRb7hTTw2i3+5wV7pqIfQigpW/EKADomP3z/
         v/SsjOLok6d8H2PC04SJvAsGsyXzcuDTZsKzVt5/vt2r0E+XvROo2akeeXlho7LcZigN
         Hg7x/KNzTwwYekagXGTn3EF1M7kqsvLloewpl9dAdtOJaKGU9WtsLYcSWqFUJcr1JZMz
         tF/JWjtxUvaDfkUO/PRclNSX/eSbvsGPm6bNHF/BitGqQCq27IrvTZpMqCEK2QIJInc6
         HRvrqvFiqx3MblWZn7wYPycUf4PxK/jvtL9Mur2uO9TmPZJJ2AMtpwLFvUoRYbx9r1ZC
         P8Ng==
X-Gm-Message-State: AFqh2kphfg6TvkhzQBNAEyVjX9SUerfDjWUu8GINLbaVAMWuqnfpa9FC
        oIyTsEzBcWTnh3qWYIfYLT1CCg==
X-Google-Smtp-Source: AMrXdXvuKZhpqF2/x8IoKKviUMJGD5ImMcpEu1VkcOiN4uEhFIcUnqWSluOAI7Fcin1+IoBXBvqhnw==
X-Received: by 2002:a17:906:7185:b0:81b:fc79:be51 with SMTP id h5-20020a170906718500b0081bfc79be51mr5285245ejk.50.1674015170410;
        Tue, 17 Jan 2023 20:12:50 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id hp24-20020a1709073e1800b008720c458bd4sm2314100ejc.3.2023.01.17.20.12.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 20:12:50 -0800 (PST)
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
Subject: [PATCH v7 04/11] dt-bindings: display/msm: rename mdss nodes to display-subsystem
Date:   Wed, 18 Jan 2023 06:12:36 +0200
Message-Id: <20230118041243.1720520-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230118041243.1720520-1-dmitry.baryshkov@linaro.org>
References: <20230118041243.1720520-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Follow the 'generic names' rule and rename mdss nodes to
display-subsystem.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---

Note, this patch might generate warnings in qcom,sm6115-mdss and
qcom,qcm2290-mdss examples, but they have been fixed by the commit
e5266ca38294 ("dt-bindings: display: msm: Rename mdss node name in
example")

See https://gitlab.freedesktop.org/drm/msm/-/commit/e5266ca38294


---
 .../devicetree/bindings/display/msm/mdss-common.yaml      | 8 ++++++++
 .../devicetree/bindings/display/msm/qcom,mdss.yaml        | 5 ++++-
 2 files changed, 12 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/msm/mdss-common.yaml b/Documentation/devicetree/bindings/display/msm/mdss-common.yaml
index 59f17ac898aa..ccd7d6417523 100644
--- a/Documentation/devicetree/bindings/display/msm/mdss-common.yaml
+++ b/Documentation/devicetree/bindings/display/msm/mdss-common.yaml
@@ -15,7 +15,15 @@ description:
   Device tree bindings for MSM Mobile Display Subsystem(MDSS) that encapsulates
   sub-blocks like DPU display controller, DSI and DP interfaces etc.
 
+# Do not select this by default, otherwise it is also selected for qcom,mdss
+# devices.
+select:
+  false
+
 properties:
+  $nodename:
+    pattern: "^display-subsystem@[0-9a-f]+$"
+
   reg:
     maxItems: 1
 
diff --git a/Documentation/devicetree/bindings/display/msm/qcom,mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,mdss.yaml
index 461cb13c7092..7dceb2c54edd 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,mdss.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,mdss.yaml
@@ -15,6 +15,9 @@ description:
   encapsulates sub-blocks like MDP5, DSI, HDMI, eDP, etc.
 
 properties:
+  $nodename:
+    pattern: "^display-subsystem@[0-9a-f]+$"
+
   compatible:
     enum:
       - qcom,mdss
@@ -144,7 +147,7 @@ examples:
   - |
     #include <dt-bindings/clock/qcom,gcc-msm8916.h>
     #include <dt-bindings/interrupt-controller/arm-gic.h>
-    mdss@1a00000 {
+    display-subsystem@1a00000 {
         compatible = "qcom,mdss";
         reg = <0x1a00000 0x1000>,
               <0x1ac8000 0x3000>;
-- 
2.39.0

