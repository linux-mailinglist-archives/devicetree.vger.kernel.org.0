Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DFE8674B0FE
	for <lists+devicetree@lfdr.de>; Fri,  7 Jul 2023 14:32:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232360AbjGGMap (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Jul 2023 08:30:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59382 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232617AbjGGMal (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Jul 2023 08:30:41 -0400
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3E851212D
        for <devicetree@vger.kernel.org>; Fri,  7 Jul 2023 05:30:34 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2b703d7ed3aso29264371fa.1
        for <devicetree@vger.kernel.org>; Fri, 07 Jul 2023 05:30:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688733032; x=1691325032;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3lvtanpZ92WUBFRdOaKgxHw3kXibz5BcF/5lJ267JFA=;
        b=r6DjFYU7TMrk48/8ywwWcJpg299u+3E78tM569vbym+0k7JJdQDGDumTJEzbbFzJu1
         NsFG7ejlFoKomS+19cayMojb4Tf8A7hL64HjCor1MfAY0iSNWx/XD0+GrN3MVcWLnBvy
         3j5IOqm+9tbnYZs1LF+zZ4QD8IR+vIYokhsqII43darEdhPhOx6ulZ2JTK1T/siaCKDe
         GBsX/dj5UW6ccOcO+VaV1O3O/fz3LPMPQEBC2DkPP8pgUN6oZoJqIcb9dPZdA1oMcTys
         YoS03Hph3i5+9oP6/YQqZKsT/EoQL4tvRN89tAtBx/UyGPj7bM6uKIKhH9WABeGmW0VV
         2iyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688733032; x=1691325032;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3lvtanpZ92WUBFRdOaKgxHw3kXibz5BcF/5lJ267JFA=;
        b=CFRfZn85RnBaRmCUzn0612oIEEBwbdL4irlRO9pGVGMSNEljU0gtrhi+2q8LUEp1PA
         HtkmfYb626+d62tDRIVt3/MyKHNrD/n0VxxljBxtOxTt8FjIWzRWDZmD8mxVAOrzUjDN
         ebZzcNrINj5HgC64EoDA2750bvlHDbvkYTHDsHcen6huyHRRgKZjY+Q0yy8/weKGjv7q
         W+1MoSbOOuIB2bLIMzhvMJmoy/LVwbDb0pwSnH68gZXHcgvnUugEzWoJd9EAnVd+obMv
         vRp8hgfsNaMaJsafk3pgeyUMrHmX9vvELDP8rPhoNuxHiOW6ZfezVisnOyfWuuAi4qUJ
         wmdQ==
X-Gm-Message-State: ABy/qLZZXN0FFddXNAktHodAatN6x5rDHXKNGg1lPxLIp3v9x51euIiy
        bmQQ5SX8yM0/T/QRw0gkG5SRNA==
X-Google-Smtp-Source: APBJJlGObOywR0a8IYbmlxF4Ssy6sZF9mRZeSMKzVzYcGYrzKhaJwi+ml9/JicMgvXlctFWgPNn9TA==
X-Received: by 2002:a2e:3313:0:b0:2b6:fa3e:f2fa with SMTP id d19-20020a2e3313000000b002b6fa3ef2famr3704396ljc.32.1688733032364;
        Fri, 07 Jul 2023 05:30:32 -0700 (PDT)
Received: from eriador.lan (dzdqv0yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::8a5])
        by smtp.gmail.com with ESMTPSA id l5-20020a2e8685000000b002b6ee99fff2sm756803lji.34.2023.07.07.05.30.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Jul 2023 05:30:31 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>, linux-iio@vger.kernel.org
Subject: [PATCH v2 5/8] arm64: dts: qcom: pmk8350: fix ADC-TM compatible string
Date:   Fri,  7 Jul 2023 15:30:24 +0300
Message-Id: <20230707123027.1510723-6-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230707123027.1510723-1-dmitry.baryshkov@linaro.org>
References: <20230707123027.1510723-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The commit b2de43136058 ("arm64: dts: qcom: pmk8350: Add peripherals for
pmk8350") for the ADC TM (thermal monitoring device) have used the
compatible string from the vendor kernel ("qcom,adc-tm7"). Use the
proper compatible string that is defined in the upstream kernel
("qcom,spmi-adc-tm5-gen2").

Fixes: b2de43136058 ("arm64: dts: qcom: pmk8350: Add peripherals for pmk8350")
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/pmk8350.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/pmk8350.dtsi b/arch/arm64/boot/dts/qcom/pmk8350.dtsi
index bc6297e7253e..1eb74017062d 100644
--- a/arch/arm64/boot/dts/qcom/pmk8350.dtsi
+++ b/arch/arm64/boot/dts/qcom/pmk8350.dtsi
@@ -59,7 +59,7 @@ pmk8350_vadc: adc@3100 {
 		};
 
 		pmk8350_adc_tm: adc-tm@3400 {
-			compatible = "qcom,adc-tm7";
+			compatible = "qcom,spmi-adc-tm5-gen2";
 			reg = <0x3400>;
 			interrupts = <PMK8350_SID 0x34 0x0 IRQ_TYPE_EDGE_RISING>;
 			#address-cells = <1>;
-- 
2.40.1

