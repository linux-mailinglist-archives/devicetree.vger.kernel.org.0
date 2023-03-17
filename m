Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 489026BEC43
	for <lists+devicetree@lfdr.de>; Fri, 17 Mar 2023 16:05:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231416AbjCQPFJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Mar 2023 11:05:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50198 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231434AbjCQPEr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Mar 2023 11:04:47 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D7B1145B6E
        for <devicetree@vger.kernel.org>; Fri, 17 Mar 2023 08:04:32 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id v16so4749612wrn.0
        for <devicetree@vger.kernel.org>; Fri, 17 Mar 2023 08:04:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679065471;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6rVvABTU02+Rtyy/Qih7T8rgJ/JIJYUn4nN2d26Tjag=;
        b=rXPA2nnw9gsiBl04J6SMbdg31k9lyseZv/FGJM+nW6f7JvsFRTH4xG1kES4rt532II
         jB9GIiye7fW9E/5OflCqoyu9Nq2ZYFbbkAuLJSeGppVivUq816lZhe0Djn/RpVkS8t1r
         Rvf1+xSq5m3T7i2VY2JxyXUEkpbFnXwvElnOcLmJCvFefEvBFOWERR3Nm8x4Qg44ZS2m
         1rId9ms9bSBW3oWL1ErbUZt5nwzA9Ro1jyqQ34lD/yin4I0iCXQYQwd6C18gwHdBEPED
         dP7e6qoj/VZV/7JVFV1eOSgbIy6Qt5vLVKMxruCAQ1YwRfC6EU3ghrjNmoE4k1CUK3o1
         U3pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679065471;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6rVvABTU02+Rtyy/Qih7T8rgJ/JIJYUn4nN2d26Tjag=;
        b=jrhhL/PrTxPmuWjDBhHSejkhYB29dsaOXDmzXXYZ8KnvZ95DHpMf99otcq9mmvehOk
         auvmD6K7TUhchU/ZmKiok4om2BqFW/O01suEDyttQQ7DqKfxfkNf1ZvN2FakbpuNJFBV
         QjciZjQrZqxsbdBePCQtIX/4HaURjv3VxYrFgGKSa5qw+OSHgeatwK/7rM0JCnbG7aEt
         TCBu4nTlzgY7jsy06P1m1v+HrISqN9aBHryqaZRCZJWABkgl93ASNF9XMdQiPm9vOOqP
         1fe1fBUgvL2zw/Wa0OLp5HhYM2IKSE5KHawwyFKEDcNO7KAzXXq8qwidMoS29QwNicla
         ND6A==
X-Gm-Message-State: AO0yUKXxwS+rSJDNxpYyjIThOdQrfih7koSXrGMLORN0uSfPM2XLZFAD
        99IwSlA9mNJDmfHYNLzyPmGgAQ==
X-Google-Smtp-Source: AK7set/FOFk3wAIGeEm/ZEv4eZqOeXKF88Z4u+Cr9+TUKD1OFUCu5TtuXBCm2YwBsz+6azua2OgPUw==
X-Received: by 2002:a5d:66ca:0:b0:2cf:e3d8:5df9 with SMTP id k10-20020a5d66ca000000b002cfe3d85df9mr7031464wrw.58.1679065471313;
        Fri, 17 Mar 2023 08:04:31 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id q14-20020a05600000ce00b002be505ab59asm2133773wrx.97.2023.03.17.08.04.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Mar 2023 08:04:31 -0700 (PDT)
From:   Neil Armstrong <neil.armstrong@linaro.org>
Date:   Fri, 17 Mar 2023 16:04:23 +0100
Subject: [PATCH v4 07/12] arm64: dts: qcom: sm8450: add port subnodes in
 dwc3 node
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230130-topic-sm8450-upstream-pmic-glink-v4-7-38bf0f5d07bd@linaro.org>
References: <20230130-topic-sm8450-upstream-pmic-glink-v4-0-38bf0f5d07bd@linaro.org>
In-Reply-To: <20230130-topic-sm8450-upstream-pmic-glink-v4-0-38bf0f5d07bd@linaro.org>
To:     Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc:     linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.1
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add ports subnodes in dwc3 node to avoid repeating the
same description in each board DT.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8450.dtsi | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index 69695eb83897..d92d49a1ca2c 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -4170,6 +4170,25 @@ usb_1_dwc3: usb@a600000 {
 				snps,dis_enblslpm_quirk;
 				phys = <&usb_1_hsphy>, <&usb_1_ssphy>;
 				phy-names = "usb2-phy", "usb3-phy";
+
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					port@0 {
+						reg = <0>;
+
+						usb_1_dwc3_hs: endpoint {
+						};
+					};
+
+					port@1 {
+						reg = <1>;
+
+						usb_1_dwc3_ss: endpoint {
+						};
+					};
+				};
 			};
 		};
 

-- 
2.34.1

