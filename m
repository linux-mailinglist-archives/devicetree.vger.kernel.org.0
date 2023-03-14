Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1B7E86B8CC9
	for <lists+devicetree@lfdr.de>; Tue, 14 Mar 2023 09:14:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229493AbjCNILm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Mar 2023 04:11:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50222 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229464AbjCNILE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Mar 2023 04:11:04 -0400
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6CC9D9926A
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 01:09:34 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id x3so58394593edb.10
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 01:09:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678781367;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SpWxR/gTt4DLuz+zmuazaeln3zBoZsZPPWaZcqn2/bQ=;
        b=iPFACAwG7069uLQvEwT6Fh96K36au6BrTpRs8YNOyCY7ZDzWSCqBNHIaH6K3Z7uq/E
         MrQcRTTxHFKS8wiza9yshVYzDm8d7L3D6SuSWYNiOnzO+LIvqwcqifCUuw2/d1DXlj52
         pwR5Suq5CHGdMg3nIQ85HWD0rqo0DZ8tZcgiQFi1Su2rwTKsJzz5A58OalgunlgcfpIc
         4C4YCtnLChJMFspkg7OR+R5p73EamVX9cpSyNwZL14ni6kEvEYyTDzK8WRLLvpRDlze/
         RvHC9fPqtnr6WFgTmgTVPxC+SwKOWjI+f3Cz+fXabCSPGikhHHEIAwlaauiZVdTnsunW
         hVWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678781367;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SpWxR/gTt4DLuz+zmuazaeln3zBoZsZPPWaZcqn2/bQ=;
        b=QmCP0CiE9en+0jZxmJ2YMWLjVm0T4Y/2JBXWaAsEJRaeiTvZoPr/Gfwu/Snz224IIe
         c+fpwcAcwSpUyGqv9CXfVhcphnUZf2hsc8ArLzlGH7WArh9fTaNyFERt+sL+NZiP54nu
         Nux7KZWTd0skfLppG6Iq02h8ax1nY+QADXJX/LbW9FM0OdEeumvFn/jg4nwNJBZZhu2W
         ghQq5cUCWrM5G4DMPd2lb15HanQSQoonHGDU0rZb3eUM5+BW8uV1KQ2CpPRqr93RUjF5
         ibSTbYS0PhOnGYrmRw9HKddE/5tHxtoFL+ymK+2LsUU3SBsO4X9n7xMCpXzBj//Dh53Q
         hGTQ==
X-Gm-Message-State: AO0yUKVpLyu9hcMPG9t9nsigzfkhF2ccHxwDvaQX4TJ6DuWh5NtRBqeY
        WSwk10P9w18G/s+58oeEiMMEew==
X-Google-Smtp-Source: AK7set/ltpM8+7rH4kXUlTAQuO8ROI5W5/lhopquEMhrFs4rdX2v0T276b0trl8U2drt+jB9IfmGQw==
X-Received: by 2002:aa7:d6c9:0:b0:4fa:13b2:716 with SMTP id x9-20020aa7d6c9000000b004fa13b20716mr12401588edr.13.1678781367116;
        Tue, 14 Mar 2023 01:09:27 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:6932:5570:6254:9edd])
        by smtp.gmail.com with ESMTPSA id co2-20020a0564020c0200b004fce9ff4830sm584872edb.88.2023.03.14.01.09.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Mar 2023 01:09:26 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Jassi Brar <jassisinghbrar@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 08/13] arm64: dts: qcom: sdm630: add compatible fallback to mailbox
Date:   Tue, 14 Mar 2023 09:09:12 +0100
Message-Id: <20230314080917.68246-9-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230314080917.68246-1-krzysztof.kozlowski@linaro.org>
References: <20230314080917.68246-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

SDM630 mailbox is compatible with MSM8994.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm630.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm630.dtsi b/arch/arm64/boot/dts/qcom/sdm630.dtsi
index 5827cda270a0..e9169876da6f 100644
--- a/arch/arm64/boot/dts/qcom/sdm630.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm630.dtsi
@@ -2268,7 +2268,8 @@ gnoc: interconnect@17900000 {
 		};
 
 		apcs_glb: mailbox@17911000 {
-			compatible = "qcom,sdm660-apcs-hmss-global";
+			compatible = "qcom,sdm660-apcs-hmss-global",
+				     "qcom,msm8994-apcs-kpss-global";
 			reg = <0x17911000 0x1000>;
 
 			#mbox-cells = <1>;
-- 
2.34.1

