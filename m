Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EF6DD70D73D
	for <lists+devicetree@lfdr.de>; Tue, 23 May 2023 10:23:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232466AbjEWIXV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 May 2023 04:23:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41986 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236171AbjEWIW2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 May 2023 04:22:28 -0400
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D4941702
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 01:19:39 -0700 (PDT)
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-4f4b2bc1565so1857865e87.2
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 01:19:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684829918; x=1687421918;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+njLtj9xbvOIFM7dHEkaORkCFR8dY1HcWLWxadiCjHQ=;
        b=kQHD1eM1LIxBcWwNsn3QEX+P/uhhRMS3CpW8BXsjfJMucdY1nzfepmoVdNrjfxO3Yz
         tGORTFV0HNpytND3HKfX0UITj4yez54i1Pam42EDLXV6C+llDufEBnrp5l8Fol0HNVu+
         aUDfXIPG+74ot/9JmZRap6Bte5kAizWXy+lOkz5RZGmUIWTm5M0A+dHc9WRyhzwibkgG
         SKKZCFtPz7pJOIiIfzHB3HZcBjIO1TU+fQgjbIN2nKpE8q0W++zCYHrZVfTdOJmJq2bH
         yfrZsno7f8jvEwWQPMW37H4XKgxTLl/66VdkJC0KJX5skba4Bt1Sye+OtNa1d2BKDdW/
         5YdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684829918; x=1687421918;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+njLtj9xbvOIFM7dHEkaORkCFR8dY1HcWLWxadiCjHQ=;
        b=HldZ1x/669CUCJ+YQiT/pcdX+kcnpTE3AZeQsNUsIg2ulM7LJ/r2gFfjdbi4MZUb9u
         VM+Afl/fSyyf/bpjh2XPoUCYWajEJrGEfHgeRs6U36w7GGmtFzVxa5GrmDHu/hoBkeHR
         8cq7EETzbdPLZEOj9ey1nhrxFEPx5aSl1vVJ/fplvmXYgiXAQYuQg2ZApkqNyRuptLww
         LQdngA/w4zUAhJIJAlBx412ojnvj5wmUydn1GtLo2ab7IxJesnscgZ7/cZ6xnuNZoPIj
         ZjRHzjamQu0goY2EikWSy7bmlJLdDCuyAmKFyU1KRTnNypzdk/xj1HByT36CX/T4Zqx7
         KiHQ==
X-Gm-Message-State: AC+VfDzBqPRHB/bu0lO6k35dPZxUGmP5zKL3iiuB265AtdafmkhvJSWE
        RgaCX1UKsjAzPrB2Sl0HFdUgIELwVEQzTkeYQVE=
X-Google-Smtp-Source: ACHHUZ6Z1IporAEVTmntbzww2mlpou5nSlMKw864voVy8UcwTx7EkZjpX4C/Gxnrt4UFoN9aF+FP5Q==
X-Received: by 2002:a19:ad02:0:b0:4f3:7b3c:2e16 with SMTP id t2-20020a19ad02000000b004f37b3c2e16mr4243599lfc.39.1684828008720;
        Tue, 23 May 2023 00:46:48 -0700 (PDT)
Received: from [192.168.1.101] (abyk138.neoplus.adsl.tpnet.pl. [83.9.30.138])
        by smtp.gmail.com with ESMTPSA id t9-20020ac25489000000b004eb0c51780bsm1257070lfk.29.2023.05.23.00.46.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 May 2023 00:46:48 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Tue, 23 May 2023 09:46:13 +0200
Subject: [PATCH v5 02/12] dt-bindings: display/msm: dsi-controller-main:
 Add SM6375
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230411-topic-straitlagoon_mdss-v5-2-998b4d2f7dd1@linaro.org>
References: <20230411-topic-straitlagoon_mdss-v5-0-998b4d2f7dd1@linaro.org>
In-Reply-To: <20230411-topic-straitlagoon_mdss-v5-0-998b4d2f7dd1@linaro.org>
To:     Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        iommu@lists.linux.dev, Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh@kernel.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1684828003; l=1145;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=1vb4mQXJIaOy+L2bFISsNkN0kUA69WSBSqQBJvQrOv8=;
 b=CBoqH84rn/pGKj9+tRprI5mq7KUtB5xc8n/iP2tnHJB7nuo3bD0S+ruz8fSKu0FIa/VAcT8yg
 /AEykRyGeNKCgjUs5bmGWxRpZkDJKXvjg9dSfvoyQFAbIoAeaTXT/oR
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the DSI host found on SM6375.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
index 43f801a94d79..0cb1198eb3d0 100644
--- a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
@@ -27,6 +27,7 @@ properties:
               - qcom,sdm845-dsi-ctrl
               - qcom,sm6115-dsi-ctrl
               - qcom,sm6350-dsi-ctrl
+              - qcom,sm6375-dsi-ctrl
               - qcom,sm8150-dsi-ctrl
               - qcom,sm8250-dsi-ctrl
               - qcom,sm8350-dsi-ctrl
@@ -366,6 +367,7 @@ allOf:
             enum:
               - qcom,sdm845-dsi-ctrl
               - qcom,sm6115-dsi-ctrl
+              - qcom,sm6375-dsi-ctrl
     then:
       properties:
         clocks:

-- 
2.40.1

