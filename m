Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6883C568BE7
	for <lists+devicetree@lfdr.de>; Wed,  6 Jul 2022 16:54:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233304AbiGFOyV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Jul 2022 10:54:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42796 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233259AbiGFOyU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Jul 2022 10:54:20 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B2ADCF3
        for <devicetree@vger.kernel.org>; Wed,  6 Jul 2022 07:54:19 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id m18so7906577lfg.10
        for <devicetree@vger.kernel.org>; Wed, 06 Jul 2022 07:54:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=fm4OcH2AhvUHG8RvGZm2cagZEbCvfsw90a/UJnltOw4=;
        b=n/QYOLTML6ju4heZ9LXDhp+OsBDAwpX6ntX+e55nu0dxEOxA/a6XxrSx8FQMqbm/6S
         mqLZDpKXKdLTgqJt0guJreTydOA6P0aBrcY3Ji/PxyayNaG5sqP1MfYWEPa+wlV6Tx5d
         EgyVfZeeTU9T5AdD0u0DyMfx9dgW00CGT5Bg5uUQntfUezfxL8qqdCEM5XPIU7um9NSj
         i0I7qYXuuj91Uc2jAFrmr0DTZXS71d1qHz4XIvLybMSIaSilSTZGaygQb2Vp9M581hvg
         7CNUGF6/Y4bqxpQL+ywroCWQfLurp87N5zdlcKkZhnjlHrHH2NCaiJaJsSYS9n/XT0o7
         QE5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=fm4OcH2AhvUHG8RvGZm2cagZEbCvfsw90a/UJnltOw4=;
        b=eYs7SnUvO+9Bp8gHZss3uqoaFyZ/owxcTzZ52HYcmNgIagpq3KVgwtDDiJeZUD+lFK
         lVFEknQLGVxlZhdp6hIMdZAootvJaGmjzQSnRBIaPL0aHbGBGuFqS8QIKXzJwwCwcaKS
         YWxNiQl+1KSoM6tnE6ozaHPXzffz9ZTF2zdKH4BJ/AnAh6gv15689btWu7BerCngYAHW
         Cx5kS42lW/UrPSVkrhJa7VQN1o4DtKIQhR18AUs3tbUCPRlx1zKX3EFjwRayh9M73cuY
         9sQbC1RnazUenWGHiUeNKgiaHYS8/openZPhu3YkfZpqH5xJLt3jTsjXqgflUxNLzHaB
         OXXA==
X-Gm-Message-State: AJIora9nlUB7qQ2zpxvOWocQcEoBTqTEkCGHWHoO3OurV7Bh1Lg2pqOM
        EJ95840lXCQ22ahagkcXECwfzA==
X-Google-Smtp-Source: AGRyM1tRiJHtvepM97x13Y1yIw9VKO7TeTyK4jhEouwHkbSGL29O8PmYAZxTVyp7UDo74Qtg7EOe8Q==
X-Received: by 2002:a05:6512:3503:b0:481:4470:4134 with SMTP id h3-20020a056512350300b0048144704134mr24716000lfs.42.1657119257979;
        Wed, 06 Jul 2022 07:54:17 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id i28-20020a056512007c00b0048650aee2b2sm359374lfo.144.2022.07.06.07.54.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Jul 2022 07:54:17 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 4/6] arm: dts: qcom: apq8064: rename DSI PHY iface clock
Date:   Wed,  6 Jul 2022 17:54:10 +0300
Message-Id: <20220706145412.1566011-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220706145412.1566011-1-dmitry.baryshkov@linaro.org>
References: <20220706145412.1566011-1-dmitry.baryshkov@linaro.org>
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

Follow the usual scheme and use name 'iface' rather than 'iface_clk' for
the interface clock. The DSI PHY driver can cope with both of them, so
there is no breakage.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom-apq8064.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/qcom-apq8064.dtsi b/arch/arm/boot/dts/qcom-apq8064.dtsi
index 91adcbd54b17..4b264cf7eccc 100644
--- a/arch/arm/boot/dts/qcom-apq8064.dtsi
+++ b/arch/arm/boot/dts/qcom-apq8064.dtsi
@@ -1299,7 +1299,7 @@ dsi0_phy: dsi-phy@4700200 {
 				<0x04700300 0x200>,
 				<0x04700500 0x5c>;
 			reg-names = "dsi_pll", "dsi_phy", "dsi_phy_regulator";
-			clock-names = "iface_clk", "ref";
+			clock-names = "iface", "ref";
 			clocks = <&mmcc DSI_M_AHB_CLK>,
 				 <&pxo_board>;
 		};
-- 
2.35.1

