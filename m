Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 58B9974EF0D
	for <lists+devicetree@lfdr.de>; Tue, 11 Jul 2023 14:35:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232651AbjGKMfh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jul 2023 08:35:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39110 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230351AbjGKMf3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Jul 2023 08:35:29 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C8BBF1713
        for <devicetree@vger.kernel.org>; Tue, 11 Jul 2023 05:35:05 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-3fbc59de0e2so58376675e9.3
        for <devicetree@vger.kernel.org>; Tue, 11 Jul 2023 05:35:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689078802; x=1691670802;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mouIVN5aOfpssmEDC+p5ObsXA9SRTIu++fiUoxbGev4=;
        b=WlAPVT7201o5RIiVS3pPAHMCywmATrJsIVp3IbD/ajg6dimPeF8Ld17fUK9hlXlNyM
         SLcFB6yEDnmMsy29xz9WCnfzMchq6HaaMAD2o6ksSpVALUo3V5gQ1YxFTWtQjSrZdVb9
         gzgo53RgmkD8DULBQvPX1eMxqXhkv6g5PmJcxHGt8F3VztZ/t0jCqmc7la2asT1cX8dk
         4JAh+Oms3PGj2iEHHWDDp+50MW6jk4GdfiLQhPn+FYsaA2xUDH2OlCrId9NPP+zb6ZDw
         83lHhGX1JHimVit1DG8b4ddM0rj+ybfov1xZmexbm/0kmCb6LAcPPEi5gr3aC3zBrfqF
         uHrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689078802; x=1691670802;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mouIVN5aOfpssmEDC+p5ObsXA9SRTIu++fiUoxbGev4=;
        b=jO6GPzz87mMX9yS3xcuUMzhXZePgIAfmxvB8N6coAwf1gVuf1XY8AE4p12xINo16op
         k4q5vwe7ajiZX89l6rtc1hcLiLvUjLZ50I05uaLAXPlb7w6hzNn46fOX16XJs34Q/FaT
         +wzOvz5m4hM3ebay2j3MUVJMYKIbTHHOfOLsrno+w+oRBy7UQwhwkHUy9h918asm8G7m
         GTYF3i+2/3hdVdQ5d6LkvLKaYvvK78AgF2vbfvascFOBjtyx1Ms32Vl9iXa06H0os6pO
         M1BDqOq+mcb9BvGYtuLtuxEC0GdUAx0BrQmemdncSZhNKy/qt4/n993M9SOTWbTRhRY4
         Zouw==
X-Gm-Message-State: ABy/qLZUSxxFIh2lyDv6gArhWc7FgiV+8CdvsGYsQqmWZLfujGwIz5XM
        /dUNc9uuq+YG8pI1cZXKoGF0Ex9OBosG79wrgHbB0A==
X-Google-Smtp-Source: APBJJlHf7yZI2vtKJX4P2V9vqBIPPM59NaTPvsu2eRHNcNAUC+aIqXx/owlrcF2ZViyku+o0Bd677w==
X-Received: by 2002:a2e:6e0e:0:b0:2b6:eb5a:d377 with SMTP id j14-20020a2e6e0e000000b002b6eb5ad377mr12645471ljc.5.1689077963176;
        Tue, 11 Jul 2023 05:19:23 -0700 (PDT)
Received: from [192.168.1.101] (abyl96.neoplus.adsl.tpnet.pl. [83.9.31.96])
        by smtp.gmail.com with ESMTPSA id d18-20020a2e96d2000000b002b708450951sm435563ljj.88.2023.07.11.05.19.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jul 2023 05:19:22 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Tue, 11 Jul 2023 14:18:42 +0200
Subject: [PATCH 43/53] arm64: dts: qcom: sm8150: add qcom,bcm-voter-idx
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230708-topic-rpmh_icc_rsc-v1-43-b223bd2ac8dd@linaro.org>
References: <20230708-topic-rpmh_icc_rsc-v1-0-b223bd2ac8dd@linaro.org>
In-Reply-To: <20230708-topic-rpmh_icc_rsc-v1-0-b223bd2ac8dd@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Georgi Djakov <djakov@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1689077904; l=1013;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=x0zGLJs0yoPS/RlnCeGNLi2dqlpoVvi8tNVTarjGkbE=;
 b=FSfXcsHn89MM1aKOUdCdC6mngIske/lMAzWCWPFQwrEpmxxUCYs9/p7KkltfVx0irKTji+kGL
 lJuu/TUXpvyD7WNEkqwsIUPvSbBK8HeL20eBfb7txG1n4B36T2oWkBK
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

To improve the representation and ease handling, identify each BCM voter

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8150.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
index 0cd580920a92..151cc60de9cd 100644
--- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
@@ -12,6 +12,7 @@
 #include <dt-bindings/clock/qcom,dispcc-sm8150.h>
 #include <dt-bindings/clock/qcom,gcc-sm8150.h>
 #include <dt-bindings/clock/qcom,gpucc-sm8150.h>
+#include <dt-bindings/interconnect/qcom,icc.h>
 #include <dt-bindings/interconnect/qcom,osm-l3.h>
 #include <dt-bindings/interconnect/qcom,sm8150.h>
 #include <dt-bindings/thermal/thermal.h>
@@ -4332,6 +4333,7 @@ rpmhpd_opp_turbo_l1: opp11 {
 
 			apps_bcm_voter: bcm-voter {
 				compatible = "qcom,bcm-voter";
+				qcom,bcm-voter-idx = <ICC_BCM_VOTER_APPS>;
 			};
 		};
 

-- 
2.41.0

