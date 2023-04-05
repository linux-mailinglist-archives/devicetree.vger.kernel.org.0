Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9CE236D7433
	for <lists+devicetree@lfdr.de>; Wed,  5 Apr 2023 08:09:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237041AbjDEGJ3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Apr 2023 02:09:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55748 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237051AbjDEGJS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Apr 2023 02:09:18 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7D1B14203
        for <devicetree@vger.kernel.org>; Tue,  4 Apr 2023 23:09:14 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id w9so138406613edc.3
        for <devicetree@vger.kernel.org>; Tue, 04 Apr 2023 23:09:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680674953;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KTARyjbA9HHZxEptX/YxUmGndRPMKWlLXqPsf7UDIq4=;
        b=G+1aDLSeN5pHjlD2znOVASlP+jdalJBMt8Qfny2x702+SNEP0XKZO1jx/phwFQZ3xU
         Umw7JKZ79jGMkS9F3Gcm46tQUTXHb3aE96C1MTikeAsOaHPASswibZS62Oh4pZwiBOUP
         vknZysTpWl5FO+aD0tiMaGpwF14aYDS2ErHwGoaqyv4xiTdwpjAx56xb4ubdu0dKafTe
         vttIxA/7JcZeH1/ZbqqNUb7jeX5cD2PDzGJaV3yDCwjUFTJpVnBGd3Pt6eCxzKi82ZK8
         eNfR94y0aXpDzON9+JUQeAyQ0REPKC/mqqca8E7MjbF0OBNlKQLcbtDTYbadCPTVp6Lr
         Ci4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680674953;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KTARyjbA9HHZxEptX/YxUmGndRPMKWlLXqPsf7UDIq4=;
        b=TNlFyzJtIqpJnFidVnjBiVR+vP/7vpS0oOkkRk4tvvzZ9MpF/EDfuU1VQjbTSc7RMC
         rmdHuM9BzBUG6wg69uBtDXn74Lzlz9f3skj+TOoDOt4WcDjqVWxnfuo1Vjn5iA2TWQja
         9z83WYzguWXjI0c0Vd0GHgFVs0AmkGkqwDG8jiFRBApVpU2PJqW9LiIYhGcDhWv1scmD
         3ip8bjMzCh5lbhN3aUix6Ub8l7GLXJgnFTBA1B+UywxaWzuD59d7X3Co08wvuPhmkA0C
         LIm7MQ2Maf82qYhgFXUiqbKam4s1KK/H0iOV0p1RB7MFg4Nuxqrp/3UKgDoy255g4Wfy
         k2Mg==
X-Gm-Message-State: AAQBX9cNYfSYMQs+cST2Ew79WFj7QNdSHeb3O9qQzbEeh6591VTBBWJI
        sAMq45Gi/zkOzKXjHGid4Vu/3bIgzWEjukgsJ3g=
X-Google-Smtp-Source: AKy350Z7IcLcBX2c/n+pCVziu38BjdVyq57xOIDaaUYKdRNj9m7QUC4GObtR9svnvkBIwwjykHuisQ==
X-Received: by 2002:a17:906:8244:b0:93d:e141:e958 with SMTP id f4-20020a170906824400b0093de141e958mr1809761ejx.15.1680674953012;
        Tue, 04 Apr 2023 23:09:13 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:3f:6b2:54cd:498e])
        by smtp.gmail.com with ESMTPSA id z12-20020a1709064e0c00b00882f9130eafsm6784643eju.26.2023.04.04.23.09.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Apr 2023 23:09:12 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 4/5] arm64: dts: qcom: sm8250: simplify interrupts-extended
Date:   Wed,  5 Apr 2023 08:09:05 +0200
Message-Id: <20230405060906.143058-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230405060906.143058-1-krzysztof.kozlowski@linaro.org>
References: <20230405060906.143058-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The parent controller for the interrupt is GIC, so no need for
interrupts-extended.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index 7b78761f2041..fae30dc58eb5 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -2366,7 +2366,7 @@ txmacro: txmacro@3220000 {
 		swr2: soundwire-controller@3230000 {
 			reg = <0 0x03230000 0 0x2000>;
 			compatible = "qcom,soundwire-v1.5.1";
-			interrupts-extended = <&intc GIC_SPI 297 IRQ_TYPE_LEVEL_HIGH>;
+			interrupts = <GIC_SPI 297 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-names = "core";
 			status = "disabled";
 
-- 
2.34.1

