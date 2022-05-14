Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DA5F0526F7E
	for <lists+devicetree@lfdr.de>; Sat, 14 May 2022 09:15:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229769AbiENCfg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 May 2022 22:35:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53712 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229481AbiENCfg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 May 2022 22:35:36 -0400
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 21B0B33B5D2
        for <devicetree@vger.kernel.org>; Fri, 13 May 2022 17:37:02 -0700 (PDT)
Received: by mail-lj1-x22f.google.com with SMTP id l19so12038078ljb.7
        for <devicetree@vger.kernel.org>; Fri, 13 May 2022 17:37:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=6xHwMp2GjMLCtRgHvLeJhsJBgeLi1U+fn/JxefeSa5g=;
        b=t4Z4degRkSMSLcDe19rXju8Y5ZvZX7w1l8wj49AjpcEcFduJog/L23Yi3eIUIKFYte
         1MxeRHF4IjkdGVp+ZpU8FV3jlQ33+/vDrzbxbND0xiP85awMxYAuq3ZXgXPjQs3Yk3lK
         nC1/yQnvMi8nZyhlFnZtwIahS8BvyGy0U6f8gxlO5DCBAPX9frWfOcEJLaw1uAkl9Jgm
         WW7QJzqpHpwJ/prENp1ShJIiGpAr6FYvwJWCbINWemrhtsbZR4YjQE6Jw130IeC+9U/l
         gIZ77UoZhac52CiEYITDg/BRuvszD1uBmuOA6t/lJfVU6DH9Z/JGLhyILI4KpYsz+7ke
         vufQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=6xHwMp2GjMLCtRgHvLeJhsJBgeLi1U+fn/JxefeSa5g=;
        b=znynk9eSpRL/Owh9Fu2VGpCihEJpkO3ZzRYxPNSGJIwJSnTMR3JqtxiydNZXc2byV7
         uRXZU7Fu7r4PpOzBqULHQhwaarLzzpGmf8g/We5Nih8zZOOAjln9ppn+ZXKlAx1GjPEk
         6d93eNpx7tnzL0PxfyIA7tvbfPnbfyChFTIoROFL2BIm2ToMMeDVL18KMU0upanNG16R
         lVrDPYDIpPqKLwJgKxRMr0sP4yN+mxuBzOuk/MKxoW4hVF+DI6SqzKUSjC6vyFkJvgcG
         pe9Q4CkjU1PrmQmqHaI0wGjl+gJzUvaVxmnV6JcugV0YcVcabD+apqp3z1Uwl7yhhbe7
         9Lmg==
X-Gm-Message-State: AOAM531uIaVr66bXi693N83slFDUy1jjr+Hp3DPvWJsXdAzfiHiZ3TnY
        bZMo9EjU1kJMvNxlGBbGc/nHMIoLCj/FMw==
X-Google-Smtp-Source: ABdhPJwVLJhERxZo8wGuRJdOjpgH3e90ALydSoTimxLZOZu5WM0xcBikJZDpuqrdMiWoKr9ge5ItnQ==
X-Received: by 2002:a05:6512:39c1:b0:471:b37e:fe5a with SMTP id k1-20020a05651239c100b00471b37efe5amr4868072lfu.527.1652486593551;
        Fri, 13 May 2022 17:03:13 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id r10-20020a19ac4a000000b0047255d211c3sm529231lfc.242.2022.05.13.17.03.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 May 2022 17:03:13 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 3/3] arm64: dts: qcom: sda660-inforce-ifc6560: enable cdsp and modem
Date:   Sat, 14 May 2022 03:03:10 +0300
Message-Id: <20220514000310.3070578-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220514000310.3070578-1-dmitry.baryshkov@linaro.org>
References: <20220514000310.3070578-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable CDSP and modem devices on the Inforce IFC6560 board.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts b/arch/arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts
index dc6e4de02b42..c2f98863c27c 100644
--- a/arch/arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts
+++ b/arch/arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts
@@ -102,6 +102,11 @@ &adsp_pil {
 	firmware-name = "qcom/ifc6560/adsp.mbn";
 };
 
+&cdsp_pil {
+	status = "okay";
+	firmware-name = "qcom/ifc6560/cdsp.mbn";
+};
+
 &blsp_i2c6 {
 	status = "okay";
 
@@ -194,6 +199,11 @@ &mmss_smmu {
 	status = "okay";
 };
 
+&mss_pil {
+	status = "okay";
+	firmware-name = "qcom/ifc6560/mba.mbn", "qcom/ifc6560/modem.mbn";
+};
+
 &pon_pwrkey {
 	status = "okay";
 };
-- 
2.35.1

