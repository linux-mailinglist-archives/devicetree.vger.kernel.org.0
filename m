Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AD6FC735C0F
	for <lists+devicetree@lfdr.de>; Mon, 19 Jun 2023 18:19:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232215AbjFSQTH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Jun 2023 12:19:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36108 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231372AbjFSQTD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Jun 2023 12:19:03 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5BD4AE6E
        for <devicetree@vger.kernel.org>; Mon, 19 Jun 2023 09:18:58 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-4f8792d2e86so91717e87.1
        for <devicetree@vger.kernel.org>; Mon, 19 Jun 2023 09:18:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687191536; x=1689783536;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OoV/xjcktwt+INM9g5muSXeeb6bvGay0A0ymUJBmMcs=;
        b=wVfw2HzZLyB21AFz24OT1v5puatvlwL9EGXHSE6MFMhtyGjLNtUfwKxS0Sjo6JRuf9
         ChSc8/dQJySBDrl7C8OthZd3Cso7txRX6yuTHh/j50rLjCZkQwthhKgaxmVTuAAG8uYU
         sVD/waXm/WurLUIsWPVP9NZecmOcH2aOUzrji9IfxIGgneSPBqxhrDwFZ+Zm/tLVZdYn
         81RMIZjbJQxsGUNO84JIRZk8Ho4zz44M2UBx/XPO/amtSA9cpMt6AqzxsSWV9LXoHJfJ
         fpvAs1gqS4yF5CpOhZPi5K2ljzVVuAtP8sVUzMy/tAz0qgSUcqAhhnJdyygdH1796xWY
         iMrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687191536; x=1689783536;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OoV/xjcktwt+INM9g5muSXeeb6bvGay0A0ymUJBmMcs=;
        b=HYWHcIxFEaA8wBHVKdnc8t5BO2rYh0MlYQk09L3juMmLpph5/m1EkvLcFTGjzyUhPP
         iBZTkayLagBFbq0uOLi22ccNN9F0fUhwRt3QtUP/YQL/ugDXIWWGI878pKASaUJDVsty
         AvypGIMefkVOkqHUgarIV1hOzikHZTI7Xcs30c2vW/rz4kAxkueo2LhD5xHgtIG1k3dG
         F0awilDW5YpCXu+HuAKBNULcDCZMSU86cz/NtQp7+j83M/pa2BFv7G/mffZOzrG8oUiH
         B3P025LaLJuVoPU6gVM6Wa24SjmPSueqHiHR51c6An823y9ZjfKgdLHOTpBUix95Wwg0
         XUdA==
X-Gm-Message-State: AC+VfDwlSvYKVNHY5HqNo1lHUl++zPDB0YhoCYzmhD5QIhr5mO2He8XE
        mx70M4rwaQjMq98rqaRDJWiwLw==
X-Google-Smtp-Source: ACHHUZ4wEakvLWzKzjneE+3eObFu3avXN3GJ4aK+FkBke233tbvDtXsaMZOiexB1i9NuwjPzE9HB2Q==
X-Received: by 2002:a19:6d12:0:b0:4f7:604f:f4c8 with SMTP id i18-20020a196d12000000b004f7604ff4c8mr5568228lfc.18.1687191536578;
        Mon, 19 Jun 2023 09:18:56 -0700 (PDT)
Received: from [192.168.1.101] (abyl242.neoplus.adsl.tpnet.pl. [83.9.31.242])
        by smtp.gmail.com with ESMTPSA id c11-20020ac2530b000000b004b4cbc942a3sm4332824lfh.127.2023.06.19.09.18.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jun 2023 09:18:56 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Mon, 19 Jun 2023 18:18:53 +0200
Subject: [PATCH RFT RFC 1/3] arm64: dts: qcom: sc8280xp: Add lower cluster
 idle states
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230619-topic-sc8280xp-idle-v1-1-35a8b98451d0@linaro.org>
References: <20230619-topic-sc8280xp-idle-v1-0-35a8b98451d0@linaro.org>
In-Reply-To: <20230619-topic-sc8280xp-idle-v1-0-35a8b98451d0@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Johan Hovold <johan+linaro@kernel.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1687191534; l=1687;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=I32j7um6NhN2jAjxwWACUhCcYczpx9OD9HWlBlfpRFA=;
 b=0b8ZFniFCU6cYHplkHHxQukfuPUxlOA71hmCyW9OJIJTV0N9G95XNLtoemi1Laok9S1n5KQYx
 7TeuLTjesYLCJCF7TTPje5T71FtuAuf+nhWM6124/SYTmHo6Zre/alh
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Apart from a total LLCC + APSS power collapse, SC8280XP can also put
either the DSU rail (CPU + L3), or VDD_CX in power collapse.

Add support for these lower idle states to allow more flexibility.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi | 20 ++++++++++++++++++--
 1 file changed, 18 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
index ac0596dfdbc4..d524f851cb53 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
@@ -285,7 +285,23 @@ BIG_CPU_SLEEP_0: cpu-sleep-1-0 {
 		};
 
 		domain-idle-states {
-			CLUSTER_SLEEP_0: cluster-sleep-0 {
+			CLUSTER_SLEEP_L3_PC: cluster-sleep-0 {
+				compatible = "domain-idle-state";
+				arm,psci-suspend-param = <0x41000044>;
+				entry-latency-us = <2752>;
+				exit-latency-us = <3048>;
+				min-residency-us = <6118>;
+			};
+
+			CLUSTER_SLEEP_CX_OFF: cluster-sleep-1 {
+				compatible = "domain-idle-state";
+				arm,psci-suspend-param = <0x41002344>;
+				entry-latency-us = <3263>;
+				exit-latency-us = <4562>;
+				min-residency-us = <8467>;
+			};
+
+			CLUSTER_SLEEP_APSS_OFF: cluster-sleep-2 {
 				compatible = "domain-idle-state";
 				arm,psci-suspend-param = <0x4100c344>;
 				entry-latency-us = <3263>;
@@ -632,7 +648,7 @@ CPU_PD7: power-domain-cpu7 {
 
 		CLUSTER_PD: power-domain-cpu-cluster0 {
 			#power-domain-cells = <0>;
-			domain-idle-states = <&CLUSTER_SLEEP_0>;
+			domain-idle-states = <&CLUSTER_SLEEP_L3_PC &CLUSTER_SLEEP_CX_OFF &CLUSTER_SLEEP_APSS_OFF>;
 		};
 	};
 

-- 
2.41.0

