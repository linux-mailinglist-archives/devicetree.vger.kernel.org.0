Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C8427744DC6
	for <lists+devicetree@lfdr.de>; Sun,  2 Jul 2023 15:43:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229631AbjGBNn0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 Jul 2023 09:43:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41502 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229952AbjGBNnZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 Jul 2023 09:43:25 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E8FAE6C
        for <devicetree@vger.kernel.org>; Sun,  2 Jul 2023 06:43:24 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-2b5c2433134so44698851fa.0
        for <devicetree@vger.kernel.org>; Sun, 02 Jul 2023 06:43:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688305402; x=1690897402;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k1Y1IRv5D7qP29mdVFTxcgI7R6hEH2Hd2mk1Wr0MsVw=;
        b=av9JgTf++Zf0rCKhgeyx9PWm3edwO/gYGPyGUE256aXocB/SGFU0zrHbd0YswRfQde
         JQb4Bxb3jsd1J05m63yb1L7pMd8nWbuTCGdMdA4hsR5OCJHUdcNrmiLGMjAe5ucI04MB
         HdO80jlLwH0TR8dSlCqgk/kLHqHSesg3ZAXa6ZskSh+rAK5SLmFyRfVnRVgx2JtpUE+p
         j5DOyiczVFA1pjAkYUiZRjdDBNc5Gazg60A0cvnaQInBKi1LrwgUfRLUC8WmKFcrPGE/
         oh3LVvem9A1tMISC9SzMF8ySRzm+MsHINg4Xg1aY3bQse7aZbgc/yMd0blicd4DDkWOg
         SmnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688305402; x=1690897402;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k1Y1IRv5D7qP29mdVFTxcgI7R6hEH2Hd2mk1Wr0MsVw=;
        b=SdsZeZZOGNGUZh1tik1RWK0olDUPMMkL15RTsbdMcXn6Z0vnAaHKoS8FOREIzF23X/
         XAUBQ/3D7cZ0ghwdiKT/59ryrkIxzJQA4RWpWtWJm4cBLsIoIjFFAMTfGKfxOYDoG48/
         iJCSHvqR4hlBbXE1J8DRqUdSCr4fpR86OoFVBDAzLhf7qAXQecqCkTeJpT5dM+GU7N1Q
         pD4Y/icyYIg3Vx+mBfY02zgD2D9eAl1umAyTzcdhc332f2nSYETC+n2BP0Lix3PLTybj
         6Sw/Ye3LzRSYG2iAttCCb9zofXCRS5IOies/RvVSWH2AMMUbjrA+hkWddwqKekvxcfbW
         f+pA==
X-Gm-Message-State: AC+VfDzL5/jymGgG6qzzzmfrC5KgPfAzSa70Rgo5bOtZuzmHV0+JzYbD
        yi5LyFSsc407NUSLFJ/Ji0KEXA==
X-Google-Smtp-Source: ACHHUZ7yFgN53fhYd006uVcCUlfQ8NSOgxKTzf5Zu5N1Zm4vjB22HbzPiKgXF0CSuKVaO29geQWqAA==
X-Received: by 2002:a05:651c:10b0:b0:2b6:9e1d:cd0f with SMTP id k16-20020a05651c10b000b002b69e1dcd0fmr4205067ljn.12.1688305402380;
        Sun, 02 Jul 2023 06:43:22 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id d9-20020a2e96c9000000b002b6988ca476sm4310650ljj.101.2023.07.02.06.43.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Jul 2023 06:43:21 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH v2 01/27] ARM: dts: qcom: apq8064: correct XOADC register address
Date:   Sun,  2 Jul 2023 16:42:54 +0300
Message-Id: <20230702134320.98831-2-dmitry.baryshkov@linaro.org>
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

The XOADC is present at the address 0x197 rather than just 197. It
doesn't change a lot (since the driver hardcodes all register
addresses), but the DT should present correct address anyway.

Fixes: c4b70883ee33 ("ARM: dts: add XOADC and IIO HWMON to APQ8064")
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom/qcom-apq8064.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi b/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
index d2289205ff81..4f4393e11580 100644
--- a/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
@@ -766,7 +766,7 @@ pwrkey@1c {
 
 				xoadc: xoadc@197 {
 					compatible = "qcom,pm8921-adc";
-					reg = <197>;
+					reg = <0x197>;
 					interrupts-extended = <&pmicintc 78 IRQ_TYPE_EDGE_RISING>;
 					#address-cells = <2>;
 					#size-cells = <0>;
-- 
2.39.2

