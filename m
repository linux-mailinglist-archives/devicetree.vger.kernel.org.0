Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BC781744DEE
	for <lists+devicetree@lfdr.de>; Sun,  2 Jul 2023 15:43:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230005AbjGBNnp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 Jul 2023 09:43:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41994 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229569AbjGBNno (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 Jul 2023 09:43:44 -0400
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F3AE10C1
        for <devicetree@vger.kernel.org>; Sun,  2 Jul 2023 06:43:39 -0700 (PDT)
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2b6a662b9adso52414231fa.2
        for <devicetree@vger.kernel.org>; Sun, 02 Jul 2023 06:43:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688305417; x=1690897417;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tBdDFNajtkBJBPBKaf5wof3PQ51TKlUtVousRlstpzg=;
        b=H06HmHcru7KdRIAZA0ZZqwI1610XgYllQ7mowD1rlssmF7k9t9GZN1vVp673FmQRLL
         sfHZzoZHa0YN+XgU0U7HbD+ExK8WVP8CXA68REGx90ENS0pQfZagz65U3oxffOFChuti
         4TbZW42Q7Plrw8ycz6iHT5xBKcICkv9F3l/PyUvXfdl4oL5gfeWqRpUjmxbXP4DGUOl+
         9BTfaSYHQX7izsgH/gdKVPj+CEEFvQATithM/+iW6IXmFO9C1KDFZ+G1FpfQel2qBF6X
         rFSwf5xw09pHyb5aWf011ny90iBWNGD/p5gmZCx0Z7ZfPZFW/S//moC1cfmDH+nueisx
         mVVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688305417; x=1690897417;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tBdDFNajtkBJBPBKaf5wof3PQ51TKlUtVousRlstpzg=;
        b=GI21dSZo75/a3aMmGdAbgfkQVyKDdxWwMxBXIpXSOc70BQk0lpjTZnk8Hty2B7fxd9
         sM6NYGTtrIiBWieQoAHi8BCJDSKkTesgO2fRozu5MLnbrwRJc7NuEb8UDoiVRmjDbcOd
         J4fCTXJ/Y9QpLwB0sgq1Bwa9Ot0BDtKt2CgUlyhZ8JfBw4GkdXOXVBkDGKskkP5wYteG
         s+KK9pkokEtEq6xP4xTyKMc4iOVNn4QRJv42h0PKvkzsh/jTixitAJ36NE++puC3ANjI
         u4uN7o7KAtYXoy55UC20FvT0s1g58KtCNp8WVa7M9fqbPRSMBvz5qd0Byh0CRbR4Ha8t
         Rj4w==
X-Gm-Message-State: ABy/qLYcWlsZd+/1LAU+ga2QjDWMxODGqC1ZvFP4FSh3k+13STzZRyXP
        IUlfygAVaC5+oA/66rvbowdLXpX+V7D7tIXtSMs=
X-Google-Smtp-Source: APBJJlH8YKfuiY5eKlgArB+vfmaTOB2VuI3jsr4vGQfbFjA1gq2V2SDvDUS81ov1LRolG29Z//sXWQ==
X-Received: by 2002:a2e:965a:0:b0:2b6:d495:9467 with SMTP id z26-20020a2e965a000000b002b6d4959467mr3785913ljh.6.1688305417375;
        Sun, 02 Jul 2023 06:43:37 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id d9-20020a2e96c9000000b002b6988ca476sm4310650ljj.101.2023.07.02.06.43.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Jul 2023 06:43:36 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH v2 21/27] ARM: dts: qcom: pm8018: switch to interrupts-extended
Date:   Sun,  2 Jul 2023 16:43:14 +0300
Message-Id: <20230702134320.98831-22-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230702134320.98831-1-dmitry.baryshkov@linaro.org>
References: <20230702134320.98831-1-dmitry.baryshkov@linaro.org>
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

Merge interrups and interrupt-parent properties into a single
interrupts-extended property.

Suggested-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom/pm8018.dtsi | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/pm8018.dtsi b/arch/arm/boot/dts/qcom/pm8018.dtsi
index 85ab36b6d006..22f3c7bac522 100644
--- a/arch/arm/boot/dts/qcom/pm8018.dtsi
+++ b/arch/arm/boot/dts/qcom/pm8018.dtsi
@@ -18,9 +18,8 @@ pwrkey@1c {
 			compatible = "qcom,pm8018-pwrkey",
 				     "qcom,pm8921-pwrkey";
 			reg = <0x1c>;
-			interrupt-parent = <&pm8018>;
-			interrupts = <50 IRQ_TYPE_EDGE_RISING>,
-				     <51 IRQ_TYPE_EDGE_RISING>;
+			interrupts-extended = <&pm8018 50 IRQ_TYPE_EDGE_RISING>,
+					      <&pm8018 51 IRQ_TYPE_EDGE_RISING>;
 			debounce = <15625>;
 			pull-up;
 		};
@@ -38,8 +37,7 @@ pm8018_mpps: mpps@50 {
 		rtc@11d {
 			compatible = "qcom,pm8018-rtc", "qcom,pm8921-rtc";
 			reg = <0x11d>;
-			interrupt-parent = <&pm8018>;
-			interrupts = <39 IRQ_TYPE_EDGE_RISING>;
+			interrupts-extended = <&pm8018 39 IRQ_TYPE_EDGE_RISING>;
 			allow-set-time;
 		};
 
-- 
2.39.2

