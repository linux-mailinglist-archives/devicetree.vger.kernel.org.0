Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ADE3374EEAB
	for <lists+devicetree@lfdr.de>; Tue, 11 Jul 2023 14:23:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231915AbjGKMW7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jul 2023 08:22:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52284 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232327AbjGKMWl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Jul 2023 08:22:41 -0400
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD535173E
        for <devicetree@vger.kernel.org>; Tue, 11 Jul 2023 05:20:59 -0700 (PDT)
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2b700e85950so85741591fa.3
        for <devicetree@vger.kernel.org>; Tue, 11 Jul 2023 05:20:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689077968; x=1691669968;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IQLBnYw5pfVzQylFNgskr7H7oEW4uSiPIu84jcjkQCk=;
        b=VuL7tBUVpKwm0E8VYa3YxI4GLD3j9N+kI7pdvvPJj/+jxXvrfTFuxOy12F2CaBz/HF
         sN0z5yMN9SQ4RLjBjiJSK+RP2jDbcXKyWpDyVprDeiCicPUtkP28bTHnoH/6GIaElnvk
         l1MazyYCLLnZXkMfyxUQOCYkQMmByamThDVsRvQ342OHg7hWo8PsAPc4cVWFhv6RgRjS
         Vk62VuCZ7XvPZYsAsX8G0sBw387elQNYidznrlY96WT16f8qQ/PK4mEqopOqM3OCb9tO
         BLT/9Bf6DG2IJzr9obCW5Bqqnm2swgLDHQHUcHWvdtXP8jq3vM1e9/fbTkwVRdk6iLty
         dhCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689077968; x=1691669968;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IQLBnYw5pfVzQylFNgskr7H7oEW4uSiPIu84jcjkQCk=;
        b=ioKCzMzrp+01BmS4o/0iLGpM8L/BIRaqsRB8nfxvRjphzeeMLTbdTZjNxmoZ1VNjlF
         a4LzPYyalT7BXciez0VSCUzI9m/c6qIUUdw9AyB65V26jPD/YOukngNcmpWDCjpw6We1
         +M5RhovEi+JhCQXtDhfNjPwa3YDwMeNZg5BVE12OCgceV9aLrl/jDP7SuptXzINcq1c6
         axxXNQzIdwF8637z9FKrkWE0/hwRzKrlDGzqxWplL2tURVrnd31nGRnuDtVVm4ZJYDZd
         AqcCft/I8lyYTVadD9qaaOKxqRZgKGPFA1F15ZHZVqLcCI0EgOvoY3Qp6gOTvzuedYcQ
         xRgA==
X-Gm-Message-State: ABy/qLbJAMT3Vxm4v7WkhtTW0zcY0wHPvidzWWQMage8pDhkNR5QmKSd
        vuQZ4NsYq6DoJtbdoUBdiTqonw==
X-Google-Smtp-Source: APBJJlH5jgTV6clHkuAbdLyaxwSZbX0NQWlWbozqxx3ivhQVSBF6LhXWQmS5O3CgizbKk35ErOwtyA==
X-Received: by 2002:a2e:6a04:0:b0:2b7:14d4:ce6d with SMTP id f4-20020a2e6a04000000b002b714d4ce6dmr7721930ljc.48.1689077968298;
        Tue, 11 Jul 2023 05:19:28 -0700 (PDT)
Received: from [192.168.1.101] (abyl96.neoplus.adsl.tpnet.pl. [83.9.31.96])
        by smtp.gmail.com with ESMTPSA id d18-20020a2e96d2000000b002b708450951sm435563ljj.88.2023.07.11.05.19.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jul 2023 05:19:27 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Tue, 11 Jul 2023 14:18:46 +0200
Subject: [PATCH 47/53] arm64: dts: qcom: sm8550: add qcom,bcm-voter-idx
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230708-topic-rpmh_icc_rsc-v1-47-b223bd2ac8dd@linaro.org>
References: <20230708-topic-rpmh_icc_rsc-v1-0-b223bd2ac8dd@linaro.org>
In-Reply-To: <20230708-topic-rpmh_icc_rsc-v1-0-b223bd2ac8dd@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Georgi Djakov <djakov@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1689077904; l=1014;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=2n73VwmB8gd6z5jxJWL0kWv1/JV05PWG3zpj6M//Tvs=;
 b=6cAucdktEPv499aSOqbmljlM2KKvs2eSJ07hrXrAq/GVNAj6ilgikTUSIcX93dYozWDDDBb7g
 UwYMsvaySf6AKgM7Tyt09TTWQN7rdv3hVkop9AW3R7L1dPXgX0KPAkN
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

To improve the representation and ease handling, identify each BCM voter

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
index 6e8aba256931..d54b0ac6d0a3 100644
--- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
@@ -12,6 +12,7 @@
 #include <dt-bindings/dma/qcom-gpi.h>
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/interconnect/qcom,icc.h>
 #include <dt-bindings/interconnect/qcom,sm8550-rpmh.h>
 #include <dt-bindings/mailbox/qcom-ipcc.h>
 #include <dt-bindings/power/qcom-rpmpd.h>
@@ -3714,6 +3715,7 @@ apps_rsc: rsc@17a00000 {
 
 			apps_bcm_voter: bcm-voter {
 				compatible = "qcom,bcm-voter";
+				qcom,bcm-voter-idx = <ICC_BCM_VOTER_APPS>;
 			};
 
 			rpmhcc: clock-controller {

-- 
2.41.0

