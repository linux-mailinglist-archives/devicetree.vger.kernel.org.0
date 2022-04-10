Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EA90C4FB047
	for <lists+devicetree@lfdr.de>; Sun, 10 Apr 2022 22:59:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241028AbiDJVBT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 10 Apr 2022 17:01:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50046 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242394AbiDJVBS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 10 Apr 2022 17:01:18 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 64A531AB
        for <devicetree@vger.kernel.org>; Sun, 10 Apr 2022 13:59:05 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id u7so6321912lfs.8
        for <devicetree@vger.kernel.org>; Sun, 10 Apr 2022 13:59:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=6jtqewFPMsxnLjGRnErtncZ30YDC8tDjxZxlMXPLk1k=;
        b=b31gxl0p7pDzLjWYuQWUCcocGXkIuaDYEIxiXTYx8MAUFYT5GVKk03IMvs1DUtlhW8
         WnOBB0UdhVURZL8WDkXRrIakCKAil4yerDxydVUcFhQZ4IZK/kiNs5istDSQbeVMFeSt
         Q2RFwHyjzXYi5Eqkz/t98ekU0aJuLtbfes+uvIMl43pIoJhnk9zD89bsa9TSTaRn89F9
         4fb30fD6DrR0nyLSNw/Gl5SkVmCc2OqDm99QkHwzk2K0quO4fzEbsfOSn2WSq1gZxa6v
         7uwt4Eq4PU56+PjhzDuP+n/F9BcKt0JsvNVSxfqSo+/GQNyZpabgQ0IXmps5Ae+u4tkc
         BRyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=6jtqewFPMsxnLjGRnErtncZ30YDC8tDjxZxlMXPLk1k=;
        b=DxWZALbhfZCEbdb+DAohLt9sTkd9sdvdv8hvkckogSQYJbDqqnyHv/PLqxRC7x+aF8
         MDEtPQYFccrG3unli2xQKN8E0iUuws65upul850yJhtCFe05tpM/ayVBJoy6Dk4g6k6Z
         YK8sQzZBM6I/ju27axmLUli7lGrCTAzm3vrSA6ZX87Ai6Qbk+RU05GoymqkA91grVkN3
         8ixl4tRZhvC55cyZU9Uq/Rdi9RrvG01kZuhwpL/MbPWv5KxKu6Bu/qZunIECU5ooMtAx
         pqpCO4741da/KqSLKr2dBdgJlyU454RlYapFOroSgy5ZN4+eXoMM/m0Ij5hnKsIXARUk
         s/DQ==
X-Gm-Message-State: AOAM531M/Xktzeoe2Rx/2Du8xtpVWnKw3fROdKDgiIAQGwGj8F4wwhXp
        iMC58p1/d0hEZLRisKwnS7BoEb5oOQQ3og==
X-Google-Smtp-Source: ABdhPJxWfLcQpsBABdPNsAn/Ia2SJyLFTsSMG9tMe9PdWxcG5stcJt9dz4RSBFKuhLUSd+1evy9yWQ==
X-Received: by 2002:a05:6512:3b28:b0:46b:ab15:9f2a with SMTP id f40-20020a0565123b2800b0046bab159f2amr72308lfv.588.1649624343555;
        Sun, 10 Apr 2022 13:59:03 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id t17-20020a192d51000000b0044a5a9960f9sm3114809lft.236.2022.04.10.13.59.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Apr 2022 13:59:03 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 1/2] arm64: dts: qcom: sm8450-hdk: Enable remoteproc instances
Date:   Sun, 10 Apr 2022 23:59:00 +0300
Message-Id: <20220410205901.1672089-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220410205901.1672089-1-dmitry.baryshkov@linaro.org>
References: <20220410205901.1672089-1-dmitry.baryshkov@linaro.org>
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

Enable the audio, compute, sensor and modem remoteproc and specify
firmware path for these on the Qualcomm SM8450 HDK.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8450-hdk.dts | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8450-hdk.dts b/arch/arm64/boot/dts/qcom/sm8450-hdk.dts
index f0fcb1428449..34e37991c0c9 100644
--- a/arch/arm64/boot/dts/qcom/sm8450-hdk.dts
+++ b/arch/arm64/boot/dts/qcom/sm8450-hdk.dts
@@ -349,6 +349,26 @@ vreg_l7e_2p8: ldo7 {
 	};
 };
 
+&remoteproc_adsp {
+	status = "okay";
+	firmware-name = "qcom/sm8450/adsp.mbn";
+};
+
+&remoteproc_cdsp {
+	status = "okay";
+	firmware-name = "qcom/sm8450/cdsp.mbn";
+};
+
+&remoteproc_mpss {
+	status = "okay";
+	firmware-name = "qcom/sm8450/modem.mbn";
+};
+
+&remoteproc_slpi {
+	status = "okay";
+	firmware-name = "qcom/sm8450/slpi.mbn";
+};
+
 &qupv3_id_0 {
 	status = "okay";
 };
-- 
2.35.1

