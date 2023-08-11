Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2FF07779B98
	for <lists+devicetree@lfdr.de>; Sat, 12 Aug 2023 01:48:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237330AbjHKXsB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Aug 2023 19:48:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46426 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237286AbjHKXrx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Aug 2023 19:47:53 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A55C02123
        for <devicetree@vger.kernel.org>; Fri, 11 Aug 2023 16:47:48 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-3fe45481edfso24006025e9.1
        for <devicetree@vger.kernel.org>; Fri, 11 Aug 2023 16:47:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691797667; x=1692402467;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0+a4lz4T74h+eYbYNmfeTxhH+D7Fl42deuC857/CnFg=;
        b=bFJ/tdAZ+z9lt2lZU9+jZwrP+kpADKzpud/WBA5eibzPfGRSZ47EOx5E67cYjtLIFZ
         AqtiAJZS8A7vPFKG/GlrPhDIQO4X1HlnhCee5LSpKu3w0L0LC3YfaU2nZqzzvGEcOXK7
         XsFureCI8mC8FwKaVRxFpSUPYLI5D9qoIXjWJq7zYV5wgiC/qciqTxNVXNxnYZLywSOU
         otEA/gQNDnlRACYU9rrdvOAZ797bcygoDcVjyxT3lvoCeo2CZnwHB6D6IbhcA7it0Do0
         jMOWxD7JfUqLMtmkX5Y93fBXxcihW28QTKezN8nmHDtgzCOfNQ9M6fXNcrSzg4JD5rSH
         lP5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691797667; x=1692402467;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0+a4lz4T74h+eYbYNmfeTxhH+D7Fl42deuC857/CnFg=;
        b=BwgP77K67RhADTmX3+v99912wFld815BOfXOm94yJtrUALik1epVd3ubcoiLEeGwxo
         x0SrWSMM/BPV46hHpJrn9mCynEi4dXwkO7cDWmHYMVgNPP4a2JUm4EcsAyt7R+eCU9U+
         fbIp3L0G4qm5KuKdbBw7YNKwJOpC5635j/rC07jhFk7Eq4FbYM1JTAGHkoVRODwcaZ6L
         4DakfOgPAQ7mTJZsIgdvaevz2Gu7L84C2oVKnp+gRc/Gifu0yKZNB1qfDzKOx26YuVVG
         C0b/TuAx4TtPEdHJOuRQJHx5kMSw0+O0RdONjG1097C8f0nmQ4tfcGH5/IPUP2wRf3Yz
         SonQ==
X-Gm-Message-State: AOJu0Yx1Ce+C+dwfSs1QFp5Q6c+L8UB5LC/MS5NGGW2+h3f6mcScBsJJ
        c59wyOwgT9fp5GWSpcjdnUPhzA==
X-Google-Smtp-Source: AGHT+IGCsyHfTxHHTdmiOG5pf/h5SJJ2uUZ7YzUZnBCjfcCpKCFLw8dbw25wHksguM5WZgEazlJAxQ==
X-Received: by 2002:a7b:cc1a:0:b0:3fe:179a:9ee2 with SMTP id f26-20020a7bcc1a000000b003fe179a9ee2mr2592514wmh.0.1691797667023;
        Fri, 11 Aug 2023 16:47:47 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id 20-20020a05600c025400b003fa98908014sm9599051wmj.8.2023.08.11.16.47.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Aug 2023 16:47:46 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, bryan.odonoghue@linaro.org
Subject: [PATCH v3 5/7] arm64: dts: qcom: apq8016-sbc: Rename ov5640 enable-gpios to powerdown-gpios
Date:   Sat, 12 Aug 2023 00:47:36 +0100
Message-ID: <20230811234738.2859417-6-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230811234738.2859417-1-bryan.odonoghue@linaro.org>
References: <20230811234738.2859417-1-bryan.odonoghue@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

There are two control lines controlled by GPIO going into ov5640

- Reset
- Powerdown

The driver and yaml expect "reset-gpios" and "powerdown-gpios" there has
never been an "enable-gpios".

Fixes: 39e0ce6cd1bf ("arm64: dts: qcom: apq8016-sbc: Add CCI/Sensor nodes")
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/apq8016-sbc.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/apq8016-sbc.dts b/arch/arm64/boot/dts/qcom/apq8016-sbc.dts
index ada0777567623..ddb19709a9eee 100644
--- a/arch/arm64/boot/dts/qcom/apq8016-sbc.dts
+++ b/arch/arm64/boot/dts/qcom/apq8016-sbc.dts
@@ -273,7 +273,7 @@ camera_rear@3b {
 		compatible = "ovti,ov5640";
 		reg = <0x3b>;
 
-		enable-gpios = <&tlmm 34 GPIO_ACTIVE_HIGH>;
+		powerdown-gpios = <&tlmm 34 GPIO_ACTIVE_HIGH>;
 		reset-gpios = <&tlmm 35 GPIO_ACTIVE_LOW>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&camera_rear_default>;
-- 
2.41.0

