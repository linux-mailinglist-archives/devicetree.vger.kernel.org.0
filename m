Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 75F7060649A
	for <lists+devicetree@lfdr.de>; Thu, 20 Oct 2022 17:33:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229904AbiJTPdC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Oct 2022 11:33:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34688 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230416AbiJTPc6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Oct 2022 11:32:58 -0400
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com [IPv6:2607:f8b0:4864:20::102d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A13E1B1554
        for <devicetree@vger.kernel.org>; Thu, 20 Oct 2022 08:32:56 -0700 (PDT)
Received: by mail-pj1-x102d.google.com with SMTP id z5-20020a17090a8b8500b00210a3a2364fso2621614pjn.0
        for <devicetree@vger.kernel.org>; Thu, 20 Oct 2022 08:32:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:author:mime-version:message-id:date
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=J8kLTeSmfMCZ7W5nv8dEkfy8Er4qT7D6uW91rQpuUnI=;
        b=J99RzTtsCx0dQIYYCbRkyL3+jSOh0MylJtc5NtdTUVN+3ZG3cFJZgCixn5HvHLWlka
         n2zjYLoke0SZcjzUu+MgcgTfcrKuKVOHH8dkH+58KbcXgO8xk85u8CMEMbgcLieyOveS
         4Wd2avQRPUTgjuLwlf/RQpCFz7XFXHARMJWXX4UK3YE7BMOymHPzLfe/q9pwO04PyZwv
         O/+kHL+lxtQC3/nEVALnxFgEXkyLr76g46s8IwHUOLjVXNP7D/Kn+pNBNiABh0fIix3w
         sqOU2ufzqoj6eZLvorPUFXD7ajADz57ZxVTPzNxr67PKqZhk5M0JCjHurwHoq1Qi12X6
         d+dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:author:mime-version:message-id:date
         :subject:cc:to:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J8kLTeSmfMCZ7W5nv8dEkfy8Er4qT7D6uW91rQpuUnI=;
        b=oHxtU0+CPOM1zl2D1Iq9vSJd8v6hYJEIkZxr2SugJdNNj2zSNT6Rs9mHxQbl/uPmrb
         +UsaNQDtpfy+hlc3QgPSa4WijKPLoBsERmGjU4QONHTYeMGgHbzY3ZdftXKr/a9N7/ZH
         OVouuI3xMA+kk0uE3ZUdZuPtoWsLsV3EOkLzknvo/X7toK0wJyzcOgVdNopcgdmRP96d
         FOJWd7X0tLI5VlVrTY1Vt33HpD76BTs4IJvVvxegOjoIiRIzOUEY2xtk4gomLAOt5JPB
         UQ9FFGSYCPkIb+QHnBDzkDZeo7At5SfAZbGmFbNN9zcJVWEghjS68gxjjky2NeeAIZLl
         i+eQ==
X-Gm-Message-State: ACrzQf1vThUIYLOmk+eXDhY56HcBQnKfXDW4v8s6acvAyl49Z92fDp+0
        bcm7IzkTHF4aB9jlfKXppVBCujKj9BxB1Q==
X-Google-Smtp-Source: AMsMyM7G//3UmXQ1yeXYgYwJwlnuwcXdumpMfkx+NzsZ5xxp3FlDwNXB+4HBho9B/F8pGyH2Ff/oOg==
X-Received: by 2002:a17:902:7481:b0:180:58d7:24e0 with SMTP id h1-20020a170902748100b0018058d724e0mr14480095pll.49.1666279975000;
        Thu, 20 Oct 2022 08:32:55 -0700 (PDT)
Received: from localhost.localdomain ([122.171.19.137])
        by smtp.gmail.com with ESMTPSA id y5-20020aa78f25000000b0053ae018a91esm13977278pfr.173.2022.10.20.08.32.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Oct 2022 08:32:54 -0700 (PDT)
From:   Amit Pundir <amit.pundir@linaro.org>
To:     Sudeep Holla <sudeep.holla@arm.com>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Maulik Shah <quic_mkshah@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        dt <devicetree@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>
Subject: [PATCH] arm64: dts: qcom: sm8250: drop idlestate for the CPU cluster
Date:   Thu, 20 Oct 2022 21:02:38 +0530
Message-Id: <20221020153238.3444787-1-amit.pundir@linaro.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Author: Amit Pundir <amit.pundir@linaro.org>
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Recently added cpuidle states made RB5 (sm8250) devboard
highly unstable and it runs into the following crash
frequently during the boot process:

[    T1] vreg_l11c_3p3: failed to enable: -ETIMEDOUT
[    T1] qcom-rpmh-regulator 18200000.rsc:pm8150l-rpmh-regulators: ldo11: devm_regulator_register() failed, ret=-110
[    T1] qcom-rpmh-regulator: probe of 18200000.rsc:pm8150l-rpmh-regulators failed with error -110

Removing idlestate for the CPU cluster fixes this crash for
the time being, while a proper fix is being worked upon.

Fixes: 32bc936d7321 ("arm64: dts: qcom: sm8250: Add cpuidle states")
Suggested-by: Sudeep Holla <sudeep.holla@arm.com>
Suggested-by: Ulf Hansson <ulf.hansson@linaro.org>
Signed-off-by: Amit Pundir <amit.pundir@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index a5b62cadb129..c2d964bc3a39 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -700,7 +700,6 @@ CPU_PD7: cpu7 {
 
 		CLUSTER_PD: cpu-cluster0 {
 			#power-domain-cells = <0>;
-			domain-idle-states = <&CLUSTER_SLEEP_0>;
 		};
 	};
 
-- 
2.25.1

