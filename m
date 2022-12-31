Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C577865A46A
	for <lists+devicetree@lfdr.de>; Sat, 31 Dec 2022 14:01:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235704AbiLaM7a (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 31 Dec 2022 07:59:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38038 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235688AbiLaM72 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 31 Dec 2022 07:59:28 -0500
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A0094A1A1
        for <devicetree@vger.kernel.org>; Sat, 31 Dec 2022 04:59:26 -0800 (PST)
Received: by mail-lf1-x133.google.com with SMTP id 1so35160979lfz.4
        for <devicetree@vger.kernel.org>; Sat, 31 Dec 2022 04:59:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Y0/yh30TX3P3thMHhy5QlVltGsQL16sP6TloiMVZS0E=;
        b=l/wOdi5FWdfG6aBmCJ/U/RcFO5TgLGkxvzkqHiY1KqvXCOks1RvL+vyFTkJpT2Un3E
         wb8zSDX3gb0FdUVHF2YtE7q017OuaFukoKm1+c3uoZULqHX+fTTUWAtG4D69ZWnNB+3I
         AgGU4A5jLXUlf2dksUWJ31K439jEGdhfzbxoI9+nIa2z5UVlv7VH904/XJtGYNOSUkhU
         0+J7/OJeUu5HwjAwSeLeLcPJJflW8HHehpstBttIU/jWw3b5O2edNC4QlGuyZvAol64A
         baza2YqFCyppWysGtP/SUHD3XX3tL2loVGzpVFm2T5E5TvBSE6BYdF/DBCrjlzgRyYe0
         xk0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Y0/yh30TX3P3thMHhy5QlVltGsQL16sP6TloiMVZS0E=;
        b=sSR4XW1XCVf2/s06XI7DR+fza7rIwr0p6jKA6Cotej2HftfuIVLhG/kE2uqm0rQISP
         9ldYpylu2fUGVI7ePDwnQo56wrcPOcVT5wNso66Rne7YDX38YFILu3QGzUlpPoa+XuCO
         9tpDcoTEZSPvUAFIB8GC8Zs6gkZfm2mYRWrqdXuDxjKBEAnQjlG0ZtWCDO0RuGuv7EAA
         jBzapm72rVrI9tMlm0QCEdcKbDbMdo87pm+kSjvo0+BQhCEzelSe5cGDd8ZHD8YP3Yca
         C4TTvcbJ1PcArczJKHcmnxjeviegYWFaJZ2NlTs8QRmnw9msePFHeisSasr6O5BNDn81
         3Xtg==
X-Gm-Message-State: AFqh2koSm8WH7cpv7U9iLgrlrlBWqPkUwc/KfdDHSmAb96dwzU3ON+0p
        cWwVzEZFXh3wOGrUtnT3hUlog1K373CZNtVD
X-Google-Smtp-Source: AMrXdXt91vEPe0kKBm0LxcyEGkFurt536HLk1tQ2Yx23+2W5UzLPgVv0pnedU3i4tLa6a7suE2PLHg==
X-Received: by 2002:a05:6512:348e:b0:4b5:8987:1db8 with SMTP id v14-20020a056512348e00b004b589871db8mr8862423lfr.59.1672491566226;
        Sat, 31 Dec 2022 04:59:26 -0800 (PST)
Received: from localhost.localdomain (abxi45.neoplus.adsl.tpnet.pl. [83.9.2.45])
        by smtp.gmail.com with ESMTPSA id d10-20020a0565123d0a00b004cb344a8c77sm22266lfv.54.2022.12.31.04.59.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Dec 2022 04:59:25 -0800 (PST)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
To:     linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org, krzysztof.kozlowski@linaro.org
Cc:     marijn.suijten@somainline.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 07/18] arm64: dts: qcom: sc8280xp: Pad addresses to 8 hex digits
Date:   Sat, 31 Dec 2022 13:59:00 +0100
Message-Id: <20221231125911.437599-8-konrad.dybcio@linaro.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20221231125911.437599-1-konrad.dybcio@linaro.org>
References: <20221231125911.437599-1-konrad.dybcio@linaro.org>
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

Some addresses were 7-hex-digits long, or less. Fix that.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
index 109c9d2b684d..a359ced4b6b4 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
@@ -1765,7 +1765,7 @@ usb_1_ssphy: usb3-phy@8903400 {
 
 		pmu@9091000 {
 			compatible = "qcom,sc8280xp-llcc-bwmon", "qcom,sc7280-llcc-bwmon";
-			reg = <0 0x9091000 0 0x1000>;
+			reg = <0 0x09091000 0 0x1000>;
 
 			interrupts = <GIC_SPI 81 IRQ_TYPE_LEVEL_HIGH>;
 
-- 
2.39.0

