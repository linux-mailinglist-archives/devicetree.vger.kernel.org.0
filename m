Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2818E52FF72
	for <lists+devicetree@lfdr.de>; Sat, 21 May 2022 22:35:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345777AbiEUUfc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 21 May 2022 16:35:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59806 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229832AbiEUUfa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 21 May 2022 16:35:30 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD334393CE
        for <devicetree@vger.kernel.org>; Sat, 21 May 2022 13:35:29 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id f4so19508980lfu.12
        for <devicetree@vger.kernel.org>; Sat, 21 May 2022 13:35:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=NikKax1TY449HcRi8lZ9MlsO8yEVEfcjkxzb8ZcULgo=;
        b=O/RRBcYY/bPHmEN+np/9vlrRuefSdq2JQqhkUk04++cqHAuzxWyCU5iY4DbkckED6G
         XkVjqvtw/1QPNLnxZl+YcHPqTFhRsod5zRq1uUcxXE8OZJ9KaSycnJf/6Dn6IZ8wK//I
         3b/WmoOhZjxrotRwcSXUdnV6uBeEQSK+EVDjNeB7K1cJPWCudK7Izd3k/f+SMVmHbE14
         E5sQLsE7esQG5exxY0iiXHayIRl/oM358apHBraf5ZxUgsdWAyCH90mLfJbUJ8A6LHPY
         vi6wIpcCiz+wsEWmxnWRRp/AdODvHjZ94RhOc0r42GsUXbFzMDtJlGYeq8n9aXJu+9sm
         dXYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=NikKax1TY449HcRi8lZ9MlsO8yEVEfcjkxzb8ZcULgo=;
        b=OkxLW7lH5NCwL3L1sLXzwCz+wg64b1RHh/J8GrKsZocbQryC9FD6BT+yYORT7kF73V
         JqZ2y/AUY8sh9uemtEiSWDrvHIXaODmYIncatWmbYocXR17AYYsx9WuSgkOWBU4qqAVT
         mEBF+gqfODinMrR+qO314DFgbgcrz0FlF/FEXVBuQz8VTW0nJRHPk9vKFzRHIGANYN2R
         HheOCHu0W7/ljkGLGeQuBvDKbwsahFa3GdUXgPputdmuacu7/JOnxaH/gIXuzdpVQ3li
         q+J0lkW/9HVL/xImxy/6YP5yePY5sqfthYuzJmn+XiLUdBNdjPwdx8vUjOBp5HAApEDX
         vW7Q==
X-Gm-Message-State: AOAM533Noh0Lobvvuu1kBcX2Igor/X7TWaN3f1CgfQ6puDixEvkUzbCB
        6Vn+PZ9tMweDy+1NtJF3HQFrzg==
X-Google-Smtp-Source: ABdhPJxD+UZZs7+foO+tu1pmUUY7hWuW8wVO+fP8W9lEEH1F6hxpje5cJ3XzOe822Y3X0W528xowOg==
X-Received: by 2002:a05:6512:1311:b0:474:315e:8aaf with SMTP id x17-20020a056512131100b00474315e8aafmr11350115lfu.421.1653165327776;
        Sat, 21 May 2022 13:35:27 -0700 (PDT)
Received: from eriador.lan ([2001:470:dd84:abc0::8a5])
        by smtp.gmail.com with ESMTPSA id q18-20020a056512211200b00477930c48dasm1179729lfr.184.2022.05.21.13.35.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 May 2022 13:35:27 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Marijn Suijten <marijn.suijten@somainline.org>
Subject: [PATCH v2 4/4] arm64: dts: qcom: sda660-inforce-ifc6560: enable cdsp and modem
Date:   Sat, 21 May 2022 23:35:20 +0300
Message-Id: <20220521203520.1513565-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220521203520.1513565-1-dmitry.baryshkov@linaro.org>
References: <20220521203520.1513565-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
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
index 28050bc5f081..0bf9c86aaefe 100644
--- a/arch/arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts
+++ b/arch/arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts
@@ -183,6 +183,11 @@ bluetooth {
 	};
 };
 
+&cdsp_pil {
+	status = "okay";
+	firmware-name = "qcom/ifc6560/cdsp.mbn";
+};
+
 &dsi0 {
 	status = "okay";
 	vdda-supply = <&vreg_l1a_1p225>;
@@ -206,6 +211,11 @@ &mmss_smmu {
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

