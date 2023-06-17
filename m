Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3AA5F7343C1
	for <lists+devicetree@lfdr.de>; Sat, 17 Jun 2023 22:41:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229515AbjFQUlj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 17 Jun 2023 16:41:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44830 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346485AbjFQUl3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 17 Jun 2023 16:41:29 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A9BE31FF6
        for <devicetree@vger.kernel.org>; Sat, 17 Jun 2023 13:41:28 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-98220bb31c6so321606166b.3
        for <devicetree@vger.kernel.org>; Sat, 17 Jun 2023 13:41:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687034487; x=1689626487;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0YMohJWhk2sPmAd88p9LdyGWgkzdVwbfUdAqnb6H2VE=;
        b=cE1eusYADr7vRUpNFcqt0nQuoXX4oWfGd8Mbi+v7wYMZydVDiAVSOllaxD/EnkcYly
         rM6fZTSUFMkGTdd2Gjs5j2xCEGAaMQZKEKHbmE956KQe0LzqASww9muAuGOQboHHdzwX
         upa2ix7x5+JrK6ZTvF7gGp407OXD3WHtZrBJt8mpZ8faBjtNXNeDokrv08Btj+nfmiIe
         5glojJXxSIQueE0sQcj0XRrton/LeOSKB0+Ro7fqkbkakn8DxAsw9O50ezuZZ4MkOl/8
         EDZ92eT7YNyIiuliujhRInhYEgJ7GWM4+3n+5z6LhBqiyUtOVETtwY/25r3KVf8NaBmS
         btvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687034487; x=1689626487;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0YMohJWhk2sPmAd88p9LdyGWgkzdVwbfUdAqnb6H2VE=;
        b=Ficf4G3ssWHn7CUHaW7bThk43KwYCA94Z+857Lx/pptVcw0AEG/G+WRgVHATvxTgT7
         Ld9PO9Zop3whtCurllLkYeYOMbhOkc5sQpWt6Kn2tBdR6OllYr4T/tlNanf+nAgS0tEp
         vahSd542UM0zrbPmsn+ZEap38jvy2UTFm+L8PTlVGK2EiI1JD+tgbPewkj6KugrdS3gY
         bx/1GmUzfqJhEfminvs5AoWYWyLQl4vzKgfzCPgUo+vfw3Jf3KKeuJSOHCcGgCFiBdYW
         076pezhuGcuNZyq0aU3lTWGu9MM2V1md0oJi/1+JeHOxOJKTAVIKNB1vU1X+YbBHZmTO
         EkGQ==
X-Gm-Message-State: AC+VfDznnKij7HvGrcfIK5DgTwCHrbdyurhN331N+T8Hx7IZeGBJHq7q
        Qu3ucSZr1f7yTukud+Ylvt5Zmw==
X-Google-Smtp-Source: ACHHUZ5Gpx59p807a0VPtzDT1W0oByYpr/1RXTu1WKeTtPOX0qmZAin6Xk889vlq45xUJ8s6GFtVVQ==
X-Received: by 2002:a17:907:86ac:b0:96f:88a3:3a0e with SMTP id qa44-20020a17090786ac00b0096f88a33a0emr6422515ejc.0.1687034487174;
        Sat, 17 Jun 2023 13:41:27 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id qn18-20020a170907211200b00982c33ea394sm3349203ejb.97.2023.06.17.13.41.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Jun 2023 13:41:26 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Abel Vesa <abel.vesa@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 3/3] arm64: dts: qcom: sc8180x: Fix OSM L3 compatible
Date:   Sat, 17 Jun 2023 22:41:18 +0200
Message-Id: <20230617204118.61959-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230617204118.61959-1-krzysztof.kozlowski@linaro.org>
References: <20230617204118.61959-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Since commit c70edc067739 ("dt-bindings: interconnect: Add sm8350,
sc8280xp and generic OSM L3 compatibles") OSM L3 compatible should have
generic fallback:

  sc8180x-primus.dtb: interconnect@18321000: compatible: 'oneOf' conditional failed, one must be fixed:

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8180x.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8180x.dtsi b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
index b02e14c96874..204deefbfa8b 100644
--- a/arch/arm64/boot/dts/qcom/sc8180x.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
@@ -3564,7 +3564,7 @@ rpmhpd_opp_turbo_l1: opp10 {
 		};
 
 		osm_l3: interconnect@18321000 {
-			compatible = "qcom,sc8180x-osm-l3";
+			compatible = "qcom,sc8180x-osm-l3", "qcom,osm-l3";
 			reg = <0 0x18321000 0 0x1400>;
 
 			clocks = <&rpmhcc RPMH_CXO_CLK>, <&gcc GPLL0>;
-- 
2.34.1

