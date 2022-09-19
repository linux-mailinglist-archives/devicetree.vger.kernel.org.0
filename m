Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5F8785BD506
	for <lists+devicetree@lfdr.de>; Mon, 19 Sep 2022 21:00:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229586AbiISTAx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Sep 2022 15:00:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33476 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229617AbiISTAt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Sep 2022 15:00:49 -0400
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 122F02B601
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 12:00:47 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id q17so252906lji.11
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 12:00:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=8E7xyaZBs0uO/mU+OfkUDfOQxO4FEhmf2DAV+eM4AOM=;
        b=bxSFp55pS/fOh0KOzTuYdG0RtinhAFVo3slNQ4UWb+3KC5RGdNTLqs4Acretz7CKzq
         DvEUQX3RaUhoSNzNCEnbg2pniJ9EYbzUjEgCKshu6O8xQZWJNLZMfZAMmMXTHP0IbVBQ
         Lf68P7AeROYJhYCflH4tn0TVccSgD0cO4QSWOIvcJ3zGwqVptzpwJigrPDtR4utGRPOD
         AR6k+mRIkujkjmYU9z5vE038Kvffwfmxp6fgVoe3FlpxLBRZR/5EKRQtPKH9dsqz/YTz
         o7hS4sATXQrUlNBaYLybrPlsh5/vWpiWS16sajWgMhBAcKsOIic8Tk8q5e+kwR9hbq4f
         SACg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=8E7xyaZBs0uO/mU+OfkUDfOQxO4FEhmf2DAV+eM4AOM=;
        b=VWHzDu/01n/BhoQYS00CklRT49E3oeb7Ee+XvM30GK7huFicT5jXAAa212yj8W/Ox/
         5Yrr8hSKwkR0Kri42vmLSGcZuDZQSzVn3fTPa34TQpphdywMRZ4Fn7JpVBjsTovNUZY5
         HBlIv1LwcUelsQD8yP6Iof6NDHpmREes4ggF7Mvxo8leNhfKEAVcSDQLCfIxKSoQfd/9
         9tSjaSmLoX+rwJtHyIF6zgNDaNBCWicsZvpaUOUrcEdhOWG2X2R6dSI4hoOfkOXmmxja
         TrJ9/mrw002pi2+YPcKfGP0YMzIWa+nBufYDK714j1yIx7bWT8b3TZxDr3cMolN6PKDB
         GwJQ==
X-Gm-Message-State: ACrzQf1vB9I4yqE04OQYxwGLrZthm5HNbxZGC4pbQY3R4haERO4Lz/O6
        y+Th+kUqHO3wy3WCj2YWdU1vSg==
X-Google-Smtp-Source: AMsMyM6KQvnfmLQI+ESGGywR5RJ/FC1WLpNr/B8dJyN2OLlpL3Q3JNyUfp8Umo6Hu6qIWodrKeOueQ==
X-Received: by 2002:a2e:be8d:0:b0:26c:f4b:47a0 with SMTP id a13-20020a2ebe8d000000b0026c0f4b47a0mr5446172ljr.92.1663614045098;
        Mon, 19 Sep 2022 12:00:45 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id u12-20020a05651220cc00b0049a747d6156sm4878907lfr.287.2022.09.19.12.00.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Sep 2022 12:00:44 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH v1 6/6] arm64: qcom: dts: nile: correct firmware paths
Date:   Mon, 19 Sep 2022 22:00:37 +0300
Message-Id: <20220919190037.2122284-7-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220919190037.2122284-1-dmitry.baryshkov@linaro.org>
References: <20220919190037.2122284-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Correct firmware paths for the Sony Xperia Nile devices to include the
SoC name.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm630-sony-xperia-nile.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm630-sony-xperia-nile.dtsi b/arch/arm64/boot/dts/qcom/sdm630-sony-xperia-nile.dtsi
index 09c07800793a..026375e74113 100644
--- a/arch/arm64/boot/dts/qcom/sdm630-sony-xperia-nile.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm630-sony-xperia-nile.dtsi
@@ -155,7 +155,7 @@ extcon_usb: extcon-usb {
 };
 
 &adsp_pil {
-	firmware-name = "adsp.mdt";
+	firmware-name = "qcom/sdm630/Sony/nile/adsp.mdt";
 };
 
 &blsp_i2c1 {
-- 
2.35.1

