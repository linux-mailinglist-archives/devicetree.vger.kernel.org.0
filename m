Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 30A2952FDB7
	for <lists+devicetree@lfdr.de>; Sat, 21 May 2022 17:21:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350776AbiEUPVM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 21 May 2022 11:21:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45572 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1355360AbiEUPVB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 21 May 2022 11:21:01 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3325B64DB
        for <devicetree@vger.kernel.org>; Sat, 21 May 2022 08:20:59 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id br17so6497585lfb.2
        for <devicetree@vger.kernel.org>; Sat, 21 May 2022 08:20:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=M0l8uf13lS8T2BMe8oGUirk3JiCk+Q/7ugdeXN9BOAM=;
        b=sjpoWre+GNEhw2ACw8DVo4epexEnyVuC1sBX4TC4o7tLosOWDWKG2mlNsj9KwOvxtm
         AXX9srIrfvTZzTSEOIque0bGorQrde5hEqrBFc6KLRCFnz6Z+otOI0VDdWQELE/p/s+R
         j9x4aHAN+yuqWbJM+9+wReD5tnRgbTWUszyO67WDkMK9K/WnHDiL1+KvlRS0fmdJ6A7R
         Tdjm4kWZAYqcDw3weI7d9NpjZBLosgaIC5CZg7CCvyFFthgE0nNnZEPN4Vfb9qaM2GQJ
         9vL8YnlRMe5TMNucEtisO0JcNpb6GLOdux9t1F3xo9SCUxus8HKQqkFuWWlzrdsMl5yA
         wETg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=M0l8uf13lS8T2BMe8oGUirk3JiCk+Q/7ugdeXN9BOAM=;
        b=zrXveeGgDbwhB7NwSZ9PQiSo/7kE4Pr5/87xVdMnc9zYLM8AK3JjBUnYtHqynj2Ud3
         svQiOIjsgb0T06HzIAm67Y1ATSrM4NsHi99XHMIX0TXJ1aS6ZF7A3Ep4nq1MPNf1JAAX
         F7t8nHCHnuE8jEHu2ejwadDY5Oq+akp3rsTp4GnWr7yoQs1sdDBKVMhn4CYiaFhV45c/
         VxJysOs/PqYfauBhUGim4V6Z6xQNK6Z1/d8u8DRzqyznyiJi+Pu/20aKNqxrFbRb2/F9
         VzMKjMpV1bCX/7cyWwywiDgBy0+nw5JF7G+KlwmME/M6ew/jwgXe+5OnWUeVl/qYarSF
         Z6wg==
X-Gm-Message-State: AOAM533EBcwGcvz42GYDy8chncSID7/i6KXNEM0dnFom2kYRJbCmcoQ+
        9DAjpGC8UI5zDI1NEsgwwS70ag==
X-Google-Smtp-Source: ABdhPJzIJF9DCpDv+brBnMK+X2iUur/5PPcF+hQSdWcWSgLAxQmCCw+1HNUQmF/qc7Y6ZdShvA58HA==
X-Received: by 2002:a05:6512:695:b0:478:591f:b391 with SMTP id t21-20020a056512069500b00478591fb391mr4522263lfe.643.1653146457538;
        Sat, 21 May 2022 08:20:57 -0700 (PDT)
Received: from eriador.lumag.spb.ru ([94.25.229.156])
        by smtp.gmail.com with ESMTPSA id k8-20020a2e92c8000000b0024f3d1daeccsm739933ljh.84.2022.05.21.08.20.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 May 2022 08:20:57 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Marijn Suijten <marijn.suijten@somainline.org>
Subject: [PATCH v6 04/11] arm64: dts: qcom: sdm630: fix the qusb2phy ref clock
Date:   Sat, 21 May 2022 18:20:42 +0300
Message-Id: <20220521152049.1490220-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220521152049.1490220-1-dmitry.baryshkov@linaro.org>
References: <20220521152049.1490220-1-dmitry.baryshkov@linaro.org>
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

According to the downstram DT file, the qusb2phy ref clock should be
GCC_RX0_USB2_CLKREF_CLK, not GCC_RX1_USB2_CLKREF_CLK.

Fixes: c65a4ed2ea8b ("arm64: dts: qcom: sdm630: Add USB configuration")
Cc: Konrad Dybcio <konrad.dybcio@somainline.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@somainline.org>
Reviewed-by: Marijn Suijten <marijn.suijten@somainline.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm630.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm630.dtsi b/arch/arm64/boot/dts/qcom/sdm630.dtsi
index e8bb170e8b2f..5be0ec06ed86 100644
--- a/arch/arm64/boot/dts/qcom/sdm630.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm630.dtsi
@@ -1262,7 +1262,7 @@ qusb2phy: phy@c012000 {
 			#phy-cells = <0>;
 
 			clocks = <&gcc GCC_USB_PHY_CFG_AHB2PHY_CLK>,
-				<&gcc GCC_RX1_USB2_CLKREF_CLK>;
+				 <&gcc GCC_RX0_USB2_CLKREF_CLK>;
 			clock-names = "cfg_ahb", "ref";
 
 			resets = <&gcc GCC_QUSB2PHY_PRIM_BCR>;
-- 
2.35.1

