Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 53305718163
	for <lists+devicetree@lfdr.de>; Wed, 31 May 2023 15:23:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236396AbjEaNW7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 May 2023 09:22:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43588 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236371AbjEaNWx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 May 2023 09:22:53 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 29B4FA0
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 06:22:52 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-4f122ff663eso6624223e87.2
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 06:22:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685539370; x=1688131370;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ofn+y+PGmsgVQL53Qyo7xRQqsOY2ldRcLbPHWF8Ex50=;
        b=ar0oLQdwCyoTg4+4Vm94VPv4TNwrDHD+dDpoMUqRwn9fFLxJBiDvsDMTSc+fw1/IjF
         Pcgok4c/qqCJjExCjFyeRfj/nzhTg6kP8HLsVZdl6tafKZpQ5fpk5HXwwGjyZNme6qRs
         dvQb+l011lHg1Ztk+agtcn0KGWDUMxAVc1NshZBi9/CtYx/ZZtAAB4zTVp4uttvdDAGl
         wgBnZziyrpK5rYmiTSe+8XvPDhZGqAD4tQLj7z/IohF/0K0xoa2Y187rgNrR77Mj6vBJ
         25TBxXT3LjhkWgrqf9X+Rwjnn/ZfFjYWSTlczQBgXk4MdERqrV5fdMjoZK7TTPJQJ28p
         FZ/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685539370; x=1688131370;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ofn+y+PGmsgVQL53Qyo7xRQqsOY2ldRcLbPHWF8Ex50=;
        b=cSjPsFoKaHpnOIddYCkkeHVhzQxYmG++LQnWMVDa9vZRZ9nctfuvTFIzQnAhDWxDC4
         qirmjsvYOLsVk7YlptBIOD/MJ8w/UK7B0aX323rl6+6yrLO7b14woQYnwCZaB5xCi6q/
         b+91a7hXsLSItiPHYZoeRbrr2RXmn1gvrFjEYCHl3QAJ3GqveYraemz2qGv4CzFeCY+h
         4AWwsqiUDAzxRVCHULyb37SMItTo94vMvoyeMSvKTF9f8dN7A4DHz5DlFv34D4MhXMnB
         Nz6z2PtYOmM1xFQCKTVVRV64b8psIfHPJshuKnL36j3jvWlEucTwL78C5SmK4vUi3bY2
         Y15w==
X-Gm-Message-State: AC+VfDyWl2aVHxNJYMWU04ZWVKhDuM6x8bru6/RA3gzcDMkCXTbyBurA
        F+9XQepBrMAhi8cljMffOcF6pA==
X-Google-Smtp-Source: ACHHUZ4tuT1gnRZKjhJiiDqEeYOxTr040+EXB8lVn3cc8+vVSJNaOXxUKQXk6hB354n6VjIGtLGcmg==
X-Received: by 2002:a05:6512:41b:b0:4f3:a812:5ae with SMTP id u27-20020a056512041b00b004f3a81205aemr2601995lfk.37.1685539370547;
        Wed, 31 May 2023 06:22:50 -0700 (PDT)
Received: from [192.168.1.101] (abyj77.neoplus.adsl.tpnet.pl. [83.9.29.77])
        by smtp.gmail.com with ESMTPSA id w8-20020ac24428000000b004eb0c51780bsm720138lfl.29.2023.05.31.06.22.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 May 2023 06:22:49 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Wed, 31 May 2023 15:22:38 +0200
Subject: [PATCH 4/8] arm64: dts: qcom: sc8180x: Flush RSC sleep & wake
 votes
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230531-topic-rsc-v1-4-b4a985f57b8b@linaro.org>
References: <20230531-topic-rsc-v1-0-b4a985f57b8b@linaro.org>
In-Reply-To: <20230531-topic-rsc-v1-0-b4a985f57b8b@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Melody Olvera <quic_molvera@quicinc.com>,
        Vinod Koul <vkoul@kernel.org>,
        Richard Acayan <mailingradian@gmail.com>,
        Lina Iyer <ilina@codeaurora.org>,
        Douglas Anderson <dianders@chromium.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Abel Vesa <abel.vesa@linaro.org>,
        Sai Prakash Ranjan <quic_saipraka@quicinc.com>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Andy Gross <andy.gross@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1685539362; l=971;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=cKOapMBIii+fL2wQU7lC3ue35ogY5raQDF5oY+5d6gw=;
 b=Q+osHJ0Dqpj6i+/TSyJc4+DBCPPXg5metQbQTebGzUk2lqRBcOQyi8USKRHKdlq+j4gEQhgdR
 SHePggS83qYD+dUfe9fvU4uvSt41aCOOXwmBhE1R0KOjYW0ePJB5nc3
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The rpmh driver will cache sleep and wake votes until the cluster
power-domain is about to enter idle, to avoid unnecessary writes. So
associate the apps_rsc with the cluster pd, so that it can be notified
about this event.

Without this, only AMC votes are being commited.

Fixes: 8575f197b077 ("arm64: dts: qcom: Introduce the SC8180x platform")
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8180x.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/qcom/sc8180x.dtsi b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
index e8613a00fcab..573c542b1ce8 100644
--- a/arch/arm64/boot/dts/qcom/sc8180x.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
@@ -3495,6 +3495,7 @@ apps_rsc: rsc@18200000 {
 					  <WAKE_TCS    1>,
 					  <CONTROL_TCS 0>;
 			label = "apps_rsc";
+			power-domains = <&CLUSTER_PD>;
 
 			apps_bcm_voter: bcm-voter {
 				compatible = "qcom,bcm-voter";

-- 
2.40.1

