Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 32FAF74EEF6
	for <lists+devicetree@lfdr.de>; Tue, 11 Jul 2023 14:32:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231217AbjGKMcs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jul 2023 08:32:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36794 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232382AbjGKMcr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Jul 2023 08:32:47 -0400
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F3D9FE5F
        for <devicetree@vger.kernel.org>; Tue, 11 Jul 2023 05:32:11 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-2b701e1c80fso85951111fa.2
        for <devicetree@vger.kernel.org>; Tue, 11 Jul 2023 05:32:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689078671; x=1691670671;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tO2vJbTBxTqUwo+iDtN9cED0N0PugFhOskIkVSgcZoE=;
        b=LDHF2AuYQgLH/yvqvBy7Vhmt/tHvQ+zZh2lHRLxuw4jKVzflBr2qIVm12AlkkjiBGD
         QjW7nZxaweCD63LhOwmqnIe7HMPZrALlHZ8ykGijW14zOmstDRb6DpiceFlr/lYcws8L
         Yd/m6qdPZubangaVUOskzqHfmIOrSHHkWxM0EOOzZiyBYFAZMilTltEUGuqBFEqoyRHh
         oap7PR7WFmyzFz/U7opcIDrCkyfdaKvGf9+qhrHO6rJvsHcW0OFyGd/BjQxTRs9/SBVm
         tjMU2UNSrvcnMoxF6vsewHfQHMgZOyhGNe7gibSMkeRE8J8tStWd5CvcV7aOOisWw8Dy
         xV/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689078671; x=1691670671;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tO2vJbTBxTqUwo+iDtN9cED0N0PugFhOskIkVSgcZoE=;
        b=jT6tK82/S2E1TDI7KBXdp+hr5SwNKeXeK1kapbQc0Vm5srLqsWn67tlapMI2hiYFfe
         HCy+7cFqbCq7lJr1uMoCaH9CtuRUYGv2IjISKAaOsZxNHC4i9KPlqnrs8lEqKjJJ6lvB
         Tklt6u3tVIBLqCMsOmBMKtS9c1nhPQPFlaCuVx7rl5gyPp90F6zNHsZSDF6dyZ3V1uux
         kfG18fEfIZQOFu973ITQEXwmoxHzBzSk1QWVpIcRgC4TShzUcMJeaQt6FtFD9WiImTwt
         IEpkdhr8VAQ/3yRi2zW1z9kPCmoRQ06SXuHQkMP8W7It+rH7RRuKE3t0UuRJL2HIqVSC
         b4DA==
X-Gm-Message-State: ABy/qLa/nt1cINX4ibZyf4mGv3ofbYDs1Emc0GvBZhrXHKmRLJNvUjp0
        uVf4dyBpeyqHscAuXxCSJFhgFEYR2EKDHauo1n1jeg==
X-Google-Smtp-Source: APBJJlHNsNXP3jQQq1fy4YfORvSV68I8r5L1JF7OUxsZTSrTBKxKrW5XrMOsxibOaatxVd9HmtLFGQ==
X-Received: by 2002:a2e:8784:0:b0:2b4:7f2e:a42d with SMTP id n4-20020a2e8784000000b002b47f2ea42dmr13840703lji.41.1689077965633;
        Tue, 11 Jul 2023 05:19:25 -0700 (PDT)
Received: from [192.168.1.101] (abyl96.neoplus.adsl.tpnet.pl. [83.9.31.96])
        by smtp.gmail.com with ESMTPSA id d18-20020a2e96d2000000b002b708450951sm435563ljj.88.2023.07.11.05.19.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jul 2023 05:19:25 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Tue, 11 Jul 2023 14:18:44 +0200
Subject: [PATCH 45/53] arm64: dts: qcom: sm8350: add qcom,bcm-voter-idx
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230708-topic-rpmh_icc_rsc-v1-45-b223bd2ac8dd@linaro.org>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1689077904; l=921;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=zd8n6/BI+I7iSUydn8vszsfz3OyuMkqkyuxPFIRsJhE=;
 b=E57CxKs72PQD3kiuEmwIYLAntDVsPXBSfYzwul/8gYNvLIixxKL1h9182RVK5JNqZz+6KgOal
 yDZg5Nh7opvDSGBwll1qr94NW+/GRz5K7PzqECKnGB2muUSSiDiiq8n
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
 arch/arm64/boot/dts/qcom/sm8350.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
index 557a3d8e889b..fc8779a2fa96 100644
--- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
@@ -3,6 +3,7 @@
  * Copyright (c) 2020, Linaro Limited
  */
 
+#include <dt-bindings/interconnect/qcom,icc.h>
 #include <dt-bindings/interconnect/qcom,sm8350.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/clock/qcom,dispcc-sm8350.h>
@@ -3397,6 +3398,7 @@ rpmhpd_opp_turbo_l1: opp10 {
 
 			apps_bcm_voter: bcm-voter {
 				compatible = "qcom,bcm-voter";
+				qcom,bcm-voter-idx = <ICC_BCM_VOTER_APPS>;
 			};
 		};
 

-- 
2.41.0

