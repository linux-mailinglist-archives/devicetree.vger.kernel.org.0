Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E45396BD1FA
	for <lists+devicetree@lfdr.de>; Thu, 16 Mar 2023 15:13:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231292AbjCPONb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Mar 2023 10:13:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33938 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231175AbjCPONX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Mar 2023 10:13:23 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1C389D5A53
        for <devicetree@vger.kernel.org>; Thu, 16 Mar 2023 07:13:11 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id by8so629067ljb.12
        for <devicetree@vger.kernel.org>; Thu, 16 Mar 2023 07:13:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678975990;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xQTyZcO6FNqmddoHzVzEIHqpO3JKFdaOcoa693p0iLI=;
        b=uS4wq+xKNCEvqiZXswSmneBjQX7KBSBv1Lk8frtCuVcAc0jnVlF/9xMlpE4P09dB6i
         u27gi8wU8pjUIYIhZkMfr6rXJS2g0fBvA6TxTv1HvA43kcOEWit3a+HNsWwOwczuVR3G
         1uEHipxTfb80D0dbglX079LFfgwpKSIbwH0fi6aGnMv+RbLP7Gb7vHykFN8aCKsuxCnh
         yV9Hi5u+WU9onKFg0+zbK5T2o01IAwcabHyBL0uQRlJbnCC6876ntgGuli6WyjXsYefb
         jToKT/VnbUWmmJA0ptRsV1dtdcv27/FjSbQIpejLGXvVb9L2LPN5X/n5pE6rI5qebH5t
         A42w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678975990;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xQTyZcO6FNqmddoHzVzEIHqpO3JKFdaOcoa693p0iLI=;
        b=KmjGWogAW5fMJWLTgHaYCASelqbvhIuPx3lfAmGG+n0sOsDWBkY1PdEEwhaoTfNJZL
         X0m/JJmRwK75GPt4WVCZ4fxjD6qYtC1tebk8W1xcdFehLN6XuWf7hMcM7cYObWypcm6J
         F9aoQoBMQI23Q3wkg7hf0ceYmF1iHD53HzAzUx3Jn7CAbY9cpyufFbsYIXyEmkOnK1af
         SIKEeyYiKbeqQ0aFscH48ryt5Oqh5IRNkRSBp03fkUKsREY+zn/Cbx2vDg/wln+hYGoZ
         CZ+WYs1OIFCKgR8AkxxhCtLszX2X+rkq/dy93q70qPQfl7BEXm8qtSPcD1hytbq1puxX
         Oh/w==
X-Gm-Message-State: AO0yUKX3WvibelyHgPD7ZM2KUQQ0K5D8lEqJMNdNWboY7obIjHAOkFnK
        ogySbykFmv1Z5TjUcm3guQCFHQ==
X-Google-Smtp-Source: AK7set87m8VEe6Z2Sp8pLWoGNcXAk1IbfpTvGXKukmkeOEgbXjvaATbk3XSEHh/ExnV07AKDNI4iqg==
X-Received: by 2002:a2e:8e7a:0:b0:293:45dc:8b0f with SMTP id t26-20020a2e8e7a000000b0029345dc8b0fmr1938550ljk.26.1678975990101;
        Thu, 16 Mar 2023 07:13:10 -0700 (PDT)
Received: from [192.168.1.101] (abyj16.neoplus.adsl.tpnet.pl. [83.9.29.16])
        by smtp.gmail.com with ESMTPSA id a9-20020a2eb549000000b00295735991edsm1261639ljn.38.2023.03.16.07.13.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Mar 2023 07:13:09 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Thu, 16 Mar 2023 15:12:55 +0100
Subject: [PATCH v2 06/14] arm64: dts: qcom: sm6375: Add RMTFS
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230303-topic-sm6375_features0_dts-v2-6-708b8191f7eb@linaro.org>
References: <20230303-topic-sm6375_features0_dts-v2-0-708b8191f7eb@linaro.org>
In-Reply-To: <20230303-topic-sm6375_features0_dts-v2-0-708b8191f7eb@linaro.org>
To:     Amit Kucheria <amitk@kernel.org>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Zhang Rui <rui.zhang@intel.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Georgi Djakov <djakov@kernel.org>,
        Sibi Sankar <quic_sibis@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1678975978; l=1141;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=uH0RgNHZmHlst/xmB30MnTlB0owLxkAZmTcQ5HED9bM=;
 b=myD29cipZPZDW0mklvNMbfsnMLtY2QUzlb0Rp6t1E9KcOy1eXJytD1B2F8bFvtEbNh9IKI5wTgzw
 SzfAgBVUDlvabpD4VRSgDvlVqixgcME12yPfe2ZBeu3+p78LgOTF
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_SORBS_HTTP,RCVD_IN_SORBS_SOCKS,SPF_HELO_NONE,SPF_PASS
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a node for RMTFS on SM6375.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6375.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm6375.dtsi b/arch/arm64/boot/dts/qcom/sm6375.dtsi
index 5a0abb7f7124..2cdd000a4e2b 100644
--- a/arch/arm64/boot/dts/qcom/sm6375.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6375.dtsi
@@ -6,6 +6,7 @@
 #include <dt-bindings/clock/qcom,rpmcc.h>
 #include <dt-bindings/clock/qcom,sm6375-gcc.h>
 #include <dt-bindings/dma/qcom-gpi.h>
+#include <dt-bindings/firmware/qcom,scm.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/mailbox/qcom-ipcc.h>
 #include <dt-bindings/power/qcom-rpmpd.h>
@@ -424,6 +425,15 @@ removed_mem: removed@c0000000 {
 			no-map;
 		};
 
+		rmtfs_mem: rmtfs@f3900000 {
+			compatible = "qcom,rmtfs-mem";
+			reg = <0 0xf3900000 0 0x280000>;
+			no-map;
+
+			qcom,client-id = <1>;
+			qcom,vmid = <QCOM_SCM_VMID_MSS_MSA QCOM_SCM_VMID_NAV>;
+		};
+
 		debug_mem: debug@ffb00000 {
 			reg = <0 0xffb00000 0 0xc0000>;
 			no-map;

-- 
2.39.2

