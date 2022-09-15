Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 842C05B9EC0
	for <lists+devicetree@lfdr.de>; Thu, 15 Sep 2022 17:26:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230210AbiIOP0j (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Sep 2022 11:26:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58278 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230099AbiIOP0g (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Sep 2022 11:26:36 -0400
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 10E2D3686C
        for <devicetree@vger.kernel.org>; Thu, 15 Sep 2022 08:26:36 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id s10so21996172ljp.5
        for <devicetree@vger.kernel.org>; Thu, 15 Sep 2022 08:26:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=88q0uaT0W4PSqz2n21mo6iTJbvDrBb3jnu7RufIt4VY=;
        b=wAN3FOF3hEFpYwMWYvqhPq39vrGFisBaJs6FFMbc0nL0pasCA2qwhlgcKBhoL+VUlG
         aWOkno162V8jGTtXffKCBZsLspiuS/7+WDTXBMIGwBQx40gbo+x8becGOM0l1Q+5fXwx
         aiROw9qcGcmQWvcQ4tBPr6G5s7ul4YDB+A9m3l9jAGnT3nGm43MjtbM36Agd3uab2i4Y
         hOKGFwgvvUE1JV9jwLvBpTjqISD0RU/3f9L3aHLW1h9i+r8W9A6hx40ZhInxab1aSzJ+
         4aDIkPU6hGEUmYIChY3uVfd5AICuWmkPB1P2z1uUqY1I7vQJ6QRZ6byK8fvx4QzND/zC
         MArQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=88q0uaT0W4PSqz2n21mo6iTJbvDrBb3jnu7RufIt4VY=;
        b=ZrQfRwrBbsughtGZf7BGo7btbfsqjVvC5AbzTRfAN9GnV3afcMteZUC4xhAuZT3dGA
         9QPYq6Zbh1ofCfP49pkK68pu/S3NcQiAtKZ5RL0zaIPN5lLY5rUkpCVLo2Di69JkjwFw
         r54ndaYK/Pnlzyl4ES6IyhKcYKrMPeF92B15cPRwd8ezYJ3eeyF/QB8NU6NgWrsf/uDw
         pmkIGJDhIPm1IoJIzE8GyHH8RJP+/os/uyOLAghUdDD/kt7+VIeI3wZq9B5YtCvy0XsG
         opnBGs18x7pHzBw2BiS7rVL37SXUSKNXulPC7sboS5XjdbNTAaWLdOl/3+ThEXJRSLTR
         ZrBg==
X-Gm-Message-State: ACrzQf1cmVFx4Zjl0bSLWrIJEgyfO8E6mF5L25oinLQo3z1LWcoQuU6h
        0nx96iZNOabImwh+2Di8tnoz9g==
X-Google-Smtp-Source: AMsMyM4lw10VeFu3E0HomBRlpIzoYW2T+ifnf18dQ20lZ7pmTiiozldysVSFXWginnN7HGaIiMFcUQ==
X-Received: by 2002:a05:651c:158e:b0:26b:46a6:bf63 with SMTP id h14-20020a05651c158e00b0026b46a6bf63mr80483ljq.21.1663255595584;
        Thu, 15 Sep 2022 08:26:35 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id a18-20020a056512201200b00494813c689dsm3012653lfb.219.2022.09.15.08.26.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Sep 2022 08:26:35 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [RFC PATCH 6/7] arm64: qcom: dts: pdx223: correct firmware paths
Date:   Thu, 15 Sep 2022 18:26:29 +0300
Message-Id: <20220915152630.133528-7-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220915152630.133528-1-dmitry.baryshkov@linaro.org>
References: <20220915152630.133528-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Correct firmware paths for the Sony Xperia 1 IV to include the SoC name.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../boot/dts/qcom/sm8450-sony-xperia-nagara-pdx223.dts      | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8450-sony-xperia-nagara-pdx223.dts b/arch/arm64/boot/dts/qcom/sm8450-sony-xperia-nagara-pdx223.dts
index d68765eb6d4f..ae867dbe4762 100644
--- a/arch/arm64/boot/dts/qcom/sm8450-sony-xperia-nagara-pdx223.dts
+++ b/arch/arm64/boot/dts/qcom/sm8450-sony-xperia-nagara-pdx223.dts
@@ -523,17 +523,17 @@ &pcie0_phy {
 };
 
 &remoteproc_adsp {
-	firmware-name = "qcom/adsp.mbn";
+	firmware-name = "qcom/sdm8450/pdx223/adsp.mbn";
 	status = "okay";
 };
 
 &remoteproc_cdsp {
-	firmware-name = "qcom/cdsp.mbn";
+	firmware-name = "qcom/sdm8450/pdx223/cdsp.mbn";
 	status = "okay";
 };
 
 &remoteproc_slpi {
-	firmware-name = "qcom/slpi.mbn";
+	firmware-name = "qcom/sdm8450/pdx223/slpi.mbn";
 	status = "okay";
 };
 
-- 
2.35.1

