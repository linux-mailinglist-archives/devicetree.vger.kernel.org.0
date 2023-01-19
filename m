Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3287567383C
	for <lists+devicetree@lfdr.de>; Thu, 19 Jan 2023 13:22:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229775AbjASMWT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Jan 2023 07:22:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45818 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229630AbjASMWN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Jan 2023 07:22:13 -0500
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7CFB848A13
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 04:22:12 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id f25-20020a1c6a19000000b003da221fbf48so1134039wmc.1
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 04:22:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5jdOB7KgnnfI9X2pzafaZF1pWo7CVHhzfl7tm93onvk=;
        b=zX1FzUTtvYpFZ3DVYnC7s25mNBdDTuuakyMrePpjxJEvUYZObX6219H+yjNaO6h74c
         2QdE0iw2eXnRuT12Pfn63qYym5hS/jacr5N8C7qY04rMytEuIUKw0LhbHdvLODbfqvVP
         gFU5/CaVwGHpLGFkfRr4myjBylhQl86y532BGzyAGUJZ/BwtXs/jBJ5ie2nTS7Kul6eB
         cbwGmfiKg1Ao/qd1IqFBqOtb7YBBwL88819D4Dvuz+NiK7n6Zvvr2fHnxpVvXdCv8b2V
         I7F8eAIwL2/4pSm3+QFCCrwj/xK3Knm6QPBYPmfOqbXdAk8Ji0loE4KKhv6y34b8lw6F
         PRQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5jdOB7KgnnfI9X2pzafaZF1pWo7CVHhzfl7tm93onvk=;
        b=rOB07o+p6m6e57h9EnLIzI9V8fYUiie+mqlz1R3DyANkhyzmmbZu3xJLLZo+RokHs9
         Z+Bd5MFv3UNrVfxK1W93g9uNDaRhRNeVc8Bn1Jw1eukhKZBsKy6W/u0o+IYRKgJJzxD0
         IzfkketfYprhvqj6at5NF4twrncO+r9qoULJswF9fzIa5vxIHEE49JcdFdow9HITApMt
         i4iLYkSAaYMoGVN/MGlRGLL+8s7TZqDkRjP1LtXP3n1rRBE+uTojX1plgVARRZfapA8P
         UZ4kLw9HmG13XvGnG2T60kJX0enUry/oYRWRrTJU8uJW2h82xEruP4qpBYMBnPAfxyYT
         hj9g==
X-Gm-Message-State: AFqh2kq99pZNwRvvn1FzmXxZWNf14NiMuJT+/HOB356KJda+0Ir8st5O
        gK+4xOEI5rgcgykP5GwU2JqCmA==
X-Google-Smtp-Source: AMrXdXu0HlHRnsXmocbQ3i1TMG2xEJqDuoR5uPL0uSZPHGkR4stCoqyw0yDmomI37gfJRhW03E8ooQ==
X-Received: by 2002:a05:600c:3d8d:b0:3db:2c8:d7e1 with SMTP id bi13-20020a05600c3d8d00b003db02c8d7e1mr10237760wmb.20.1674130931091;
        Thu, 19 Jan 2023 04:22:11 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id v13-20020a5d678d000000b002bbe8686d6fsm34118401wru.117.2023.01.19.04.22.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jan 2023 04:22:10 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>
Subject: [PATCH 2/2] arm64: dts: qcom: sc7280-idp: drop incorrect properties
Date:   Thu, 19 Jan 2023 13:22:05 +0100
Message-Id: <20230119122205.73372-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230119122205.73372-1-krzysztof.kozlowski@linaro.org>
References: <20230119122205.73372-1-krzysztof.kozlowski@linaro.org>
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

The sound card does not expose DAIs and does not use custom qcom
properties, so drop '#sound-dai-cells', 'qcom,msm-mbhc-gnd-swh' and
'qcom,msm-mbhc-hphl-swh':

  sc7280-idp.dtb: sound: '#sound-dai-cells', 'qcom,msm-mbhc-gnd-swh', 'qcom,msm-mbhc-hphl-swh' do not match any of the regexes: '^dai-link@[0-9a-f]$', 'pinctrl-[0-9]+'

Reported-by: Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc7280-idp.dtsi | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
index 43e61a1aa779..8b5293e7fd2a 100644
--- a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
@@ -113,12 +113,8 @@ sound: sound {
 			"TX SWR_DMIC6", "DMIC7_OUTPUT",
 			"TX SWR_DMIC7", "DMIC8_OUTPUT";
 
-		qcom,msm-mbhc-hphl-swh = <1>;
-		qcom,msm-mbhc-gnd-swh = <1>;
-
 		#address-cells = <1>;
 		#size-cells = <0>;
-		#sound-dai-cells = <0>;
 
 		dai-link@0 {
 			link-name = "MAX98360A";
-- 
2.34.1

