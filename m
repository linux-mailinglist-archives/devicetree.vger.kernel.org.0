Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C19CD67937C
	for <lists+devicetree@lfdr.de>; Tue, 24 Jan 2023 09:50:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233329AbjAXIuG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Jan 2023 03:50:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36654 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233259AbjAXIuC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 Jan 2023 03:50:02 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 865573EFE0
        for <devicetree@vger.kernel.org>; Tue, 24 Jan 2023 00:50:01 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id f25-20020a1c6a19000000b003da221fbf48so10348225wmc.1
        for <devicetree@vger.kernel.org>; Tue, 24 Jan 2023 00:50:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oD52YgTCemzXDaGqkXika2VPrKf8oXYMlqk9+OcA3a0=;
        b=fb8siKApjjN82Y79a4FaMmlnBqfE9/H75opK/f+BiT+gO+kwA1oN1Lerem+/XP9TPa
         tB7wKiA5CIn0uyEmpEAIuu8P8up1wNzfdTmPP2QBpHwTPx4coDJLNG3iDwRj1U7VLJVZ
         e3PHLTW33hUx/ogizpxIWqL0vYQnkhIl1C75a0F3Ipb/3jz7CSUlZKSaMJU4Cr2pTXjM
         7QM37Vab/DuCIXj3miWb730VWkxQOlK5Kya8Hm/fMKg6D7G76BcInKWDAbbxr+tHVeHg
         skyc7chFX53yZZWQwKHZPRI5hg9LLmJw9fJ53IvinsQ7t6cMZoNQwpceeUmsGP/qvHP9
         ksiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oD52YgTCemzXDaGqkXika2VPrKf8oXYMlqk9+OcA3a0=;
        b=GVM17kyFlJSH4eyzoh0Siv51SZg8b4IT96TaORDshACjz+hbgg3TsAum1X1wItomSo
         QMxYcOC3HxHq5918Al6YIHliT5qxfvy2WSvJAV/5X3iFSgQKVAoe2WX2lT2/uBBV95DJ
         FTaGIJtcX2unfsQMEdRIJswcXc3ypM69L45lMVAgedSZvzT9EtOZOW1OCm1meFKs6vvl
         /PDPX+KdDlXKIQSnnqfhu3oV7NqL9DcO9Pxza3T+B2uy0NaADdhCLIBwv7msVJuOdQZq
         sqt5ZmzDlh04cOqgi3AB6IR65rohKaw+tuYkCOYaUVISGYUKV4KCCPv+Jm4fult5lKit
         lF2g==
X-Gm-Message-State: AFqh2koCh95PumNiRkC+mBGpjR6OdxE11TAo6GdZ3b0Iw6Q7Mp2SJ4fh
        sVWke/EmEhxvRJRgAEG3LgXERA==
X-Google-Smtp-Source: AMrXdXtz0Z3lKjCTtHVwHjLx/OF0OYLE6Qqbyu693AjZj7Epf9NcbIQvDwOTDl1IHJZQi5ByQDH1TA==
X-Received: by 2002:a05:600c:a29e:b0:3d9:ee01:ae5b with SMTP id hu30-20020a05600ca29e00b003d9ee01ae5bmr26905766wmb.12.1674550200082;
        Tue, 24 Jan 2023 00:50:00 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id p18-20020a05600c431200b003dab40f9eafsm1340036wme.35.2023.01.24.00.49.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Jan 2023 00:49:59 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 3/4] arm64: dts: qcom: sm8450: drop incorrect cells from serial
Date:   Tue, 24 Jan 2023 09:49:50 +0100
Message-Id: <20230124084951.38195-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230124084951.38195-1-krzysztof.kozlowski@linaro.org>
References: <20230124084951.38195-1-krzysztof.kozlowski@linaro.org>
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

The serial/UART device node does not have children with unit addresses,
so address/size cells are not correct.

Fixes: f5837418479a ("arm64: dts: qcom: sm8450: add uart20 node")
Fixes: 5188049c9b36 ("arm64: dts: qcom: Add base SM8450 DTSI")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

---

Changes since v2:
1. Add tag
2. Correct typo in commit msg

Changes since v1:
1. None
---
 arch/arm64/boot/dts/qcom/sm8450.dtsi | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index 5ba65780166e..873bc9c412f2 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -1007,8 +1007,6 @@ uart20: serial@894000 {
 				pinctrl-names = "default";
 				pinctrl-0 = <&qup_uart20_default>;
 				interrupts = <GIC_SPI 587 IRQ_TYPE_LEVEL_HIGH>;
-				#address-cells = <1>;
-				#size-cells = <0>;
 				status = "disabled";
 			};
 
@@ -1401,8 +1399,6 @@ uart7: serial@99c000 {
 				pinctrl-names = "default";
 				pinctrl-0 = <&qup_uart7_tx>, <&qup_uart7_rx>;
 				interrupts = <GIC_SPI 608 IRQ_TYPE_LEVEL_HIGH>;
-				#address-cells = <1>;
-				#size-cells = <0>;
 				status = "disabled";
 			};
 		};
-- 
2.34.1

