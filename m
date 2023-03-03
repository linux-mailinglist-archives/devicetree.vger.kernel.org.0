Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 99EA66AA56C
	for <lists+devicetree@lfdr.de>; Sat,  4 Mar 2023 00:12:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232283AbjCCXMB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Mar 2023 18:12:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45986 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232128AbjCCXMA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Mar 2023 18:12:00 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 13DCF5D440
        for <devicetree@vger.kernel.org>; Fri,  3 Mar 2023 15:11:55 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id bw19so3691505wrb.13
        for <devicetree@vger.kernel.org>; Fri, 03 Mar 2023 15:11:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1677885113;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xQTyZcO6FNqmddoHzVzEIHqpO3JKFdaOcoa693p0iLI=;
        b=AyxfCVvhS9mAuvflA+ecn7GTAw09mXXqC7FFPCROfPBNrZjckaQW5gSIUlRa9gyOw4
         1krwQWOwcOV+H+z3ser+yk3+fd+R+ufhoMjxciCG4oonfhpVppraNdkiQvWGvTcbBuC2
         y6/U+hb/1CFd+ZLitpRSark6RFn5GUz73lBBOPI0brICS3VZzgrJtZs03yvcWaecAaLp
         pL8PID4wNxJddbVaWtq+6NBNcYLRMEa+NS7+pGYjmt8jXiT/KbRGbDxMI1vAkQjs1pLm
         KvVNhBYHHNI9hD80bfbiTlEm5xkXFkuv2bLxDClDAxxEu/kzOIh1SGrZ9vmW+Ku4CfFj
         7Qsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677885113;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xQTyZcO6FNqmddoHzVzEIHqpO3JKFdaOcoa693p0iLI=;
        b=PsJJGIiUaq5++76h9jyYcGh8452kwpLnFJ7eLlLCIpNCqaxxnfo2UXxT9zPCuIn2Nt
         LFKwrpi8sc5ivmT/v6ka2ioqX3C4c5TbKiHZg6ZEYPj9074VS0xGMCwHK8jGMPSmJGE7
         MMr7TNq2mrAj0ypfLZVJ1Pu/QwlJFu5cujWmcNO2Yh/b5AK6eWKi1jqJyZNcYVLTqrrm
         fd9EKg/CgdZryzbrTuLLCQQyjv2UQAZI4b69Tz5xjN+WR9q3M5B4lgIJTbToLWi39vAS
         e9Wfs0oHzzPG6Uuj7t+iqAZ1oZtB47MoeRJP+chohbRNOWhg+oXZJhaSblZtyi9z1z1s
         O7Fw==
X-Gm-Message-State: AO0yUKVzYHQx/ZRgAt0HMQt6HVqL0vX1R86X8ZLDWKkEG+SyNuR6Gvp9
        E4LFYVdCXgxC5D9wlI02G0N2XnTX9h7aerJPxok=
X-Google-Smtp-Source: AK7set/ceSNzp69S+7cNWbZnj09upQzochmePhhDJoDjboVTFBTe8YeTm/F/6/I76KsLj2vqbDgnCg==
X-Received: by 2002:a19:a403:0:b0:4b5:8fbf:7dd6 with SMTP id q3-20020a19a403000000b004b58fbf7dd6mr992286lfc.61.1677880700119;
        Fri, 03 Mar 2023 13:58:20 -0800 (PST)
Received: from [192.168.1.101] (abym99.neoplus.adsl.tpnet.pl. [83.9.32.99])
        by smtp.gmail.com with ESMTPSA id e27-20020ac2547b000000b004cafa01ebbfsm552670lfn.101.2023.03.03.13.58.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Mar 2023 13:58:19 -0800 (PST)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Fri, 03 Mar 2023 22:58:06 +0100
Subject: [PATCH 06/15] arm64: dts: qcom: sm6375: Add RMTFS
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230303-topic-sm6375_features0_dts-v1-6-8c8d94fba6f0@linaro.org>
References: <20230303-topic-sm6375_features0_dts-v1-0-8c8d94fba6f0@linaro.org>
In-Reply-To: <20230303-topic-sm6375_features0_dts-v1-0-8c8d94fba6f0@linaro.org>
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
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1677880689; l=1141;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=uH0RgNHZmHlst/xmB30MnTlB0owLxkAZmTcQ5HED9bM=;
 b=c1OTL8Pm7s2fqz6fkw2Q2S7TqG+CV8SbQ83c236r6ugiZYmDtO1jjb/MmcGNer7UpIO/hJW4Or7p
 yD5jPVsfAKNpR0U15c+u7qbGmyj9QcORxF6TUzxTAufmAE9w5CgN
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
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

