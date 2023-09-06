Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 65862793A44
	for <lists+devicetree@lfdr.de>; Wed,  6 Sep 2023 12:48:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238256AbjIFKsH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Sep 2023 06:48:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60466 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237982AbjIFKsG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Sep 2023 06:48:06 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0DD2810C8
        for <devicetree@vger.kernel.org>; Wed,  6 Sep 2023 03:47:53 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-986d8332f50so548857566b.0
        for <devicetree@vger.kernel.org>; Wed, 06 Sep 2023 03:47:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693997271; x=1694602071; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i9a+I/T8pHXcETluERQk8Q1yxoUFpG8Qywz9d7YetYE=;
        b=VSgDbatlTq+2YdBYMvg/o2HyAl6rbmeWVfzQVbq0jRp4I6qyE2MOV59fzR31urwD/V
         SVzhF0avFaNcLnLxuIAZdC9m0DzBHG0bovushalgEFtwIRyugkmcR0SzmqDlGjY2cvmI
         YgcVsQq0AYlzjk4gi27/DfHIdGpHFby1FZNVVLVK0b2Ynl7prPugkWobALLjhE7kVVUc
         wnk3l1UMyDaFR9u4EMIZCG8q8yZGj5I6U84nx1TGutknzMKdH994jPYTG8B2iLXKwgR+
         Lw2HiEby9fMEASZfNYYKeL/CMeV2TLvePUoJmh+aZIAaWqiS1uxMr6D3cpTc6STTT4Uk
         u1Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693997271; x=1694602071;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i9a+I/T8pHXcETluERQk8Q1yxoUFpG8Qywz9d7YetYE=;
        b=YK//hgsQjP4JzMp5uJxMbLtEoEnbfn3uFRoas9f9CBLXG76PrjUUqlO842mRpKOA23
         We4uNwJfjGS9xSqh1JJFA9RCjN4f8hlGBTpasBlHwGu6UgjXz3+prmngZJpMH8SlyTXw
         aFRJWhyD84KEuM8lIiZnHgOb2reOMlyj1rQzILGK8t2bzuq9L5be5NSwTFeEr8NY0DNN
         ZpIQizztJzLUpD/XiWY4g3ESflDrLJMuXWK0nokQ8xZmLxxTRW0HQoV0AQ9i0imyu5+A
         YeFZfTSfhe8DaZOxUGoSj9JrmdgLhX7xIE2IVUloQrS+I3o/u1HQmE6mELAbuF9vgdFb
         Mlxw==
X-Gm-Message-State: AOJu0Yxgk8gU85uzFKPPeS/67OK2wkas4bgZluaR+ADQiAqx+IUPRe0U
        eeerZmnZbsDhI9qOFqA5OyI7hA==
X-Google-Smtp-Source: AGHT+IHIsEEYzCnnkJ822RhOIaqJhXAn97GXV/9H72ktnE2qwA/1m49B8ho7awAnR057OFh/1ADWKg==
X-Received: by 2002:a17:907:780b:b0:9a2:16e2:35c with SMTP id la11-20020a170907780b00b009a216e2035cmr2024567ejc.31.1693997271585;
        Wed, 06 Sep 2023 03:47:51 -0700 (PDT)
Received: from krzk-bin.. (77-252-46-238.static.ip.netia.com.pl. [77.252.46.238])
        by smtp.gmail.com with ESMTPSA id e7-20020a170906248700b0099cc15f09a0sm8791163ejb.55.2023.09.06.03.47.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Sep 2023 03:47:51 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 5/6] arm64: dts: qcom: sm8350-hdk: add UFS host controller supply
Date:   Wed,  6 Sep 2023 12:47:43 +0200
Message-Id: <20230906104744.163479-5-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230906104744.163479-1-krzysztof.kozlowski@linaro.org>
References: <20230906104744.163479-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

According to schematics the L9B regulator supplies VCCQ (already in DTS)
and the UFS controller pads (VDD_PX10, missing vdd-hba).  Add the
missing supply for full hardware description, even though it should not
have functional impact.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8350-hdk.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8350-hdk.dts b/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
index 4013d25a7df3..dd2cb0ccd3cb 100644
--- a/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
+++ b/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
@@ -760,6 +760,7 @@ &ufs_mem_hc {
 	vcc-max-microamp = <800000>;
 	vccq-supply = <&vreg_l9b_1p2>;
 	vccq-max-microamp = <900000>;
+	vdd-hba-supply = <&vreg_l9b_1p2>;
 };
 
 &ufs_mem_phy {
-- 
2.34.1

