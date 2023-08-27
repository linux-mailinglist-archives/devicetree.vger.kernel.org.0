Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 56CBB789DE3
	for <lists+devicetree@lfdr.de>; Sun, 27 Aug 2023 14:29:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229761AbjH0M3H (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 27 Aug 2023 08:29:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39664 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229765AbjH0M2t (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 27 Aug 2023 08:28:49 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E7BC9188
        for <devicetree@vger.kernel.org>; Sun, 27 Aug 2023 05:28:46 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-99c1d03e124so302149066b.2
        for <devicetree@vger.kernel.org>; Sun, 27 Aug 2023 05:28:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693139325; x=1693744125;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Yre2f9fVZ6ai/a0mptpH3eErz97R0W3oywtkJtSV3Ew=;
        b=vDXwvttJAxGSSsxm2+GimppFbbxFeFHkHUBJQzxr8m0str/7Wdw3X5u2rjS8YLey+L
         l/+Z26krmjRopyG66RzRgbCpiTW7AbXlLCxd38sUwNjgfhkZZrOqenKknRYX5R5Rjr91
         xlh27gmoFW8GCDQKeadYM6bn3NOVtkz0SDm3JUUOcLp/QWkCpvO7ih3zsjLYfXwAJN0Y
         uBPilUPC2aQbnO3OiRG6lLCXdtzYPIvKFmUZIBj6n6aJFhUboRlwR7FTh69XAp/UeWFp
         pLYXGBcxz60Zjhr1v9a/KRDZN4AEk5uHwfWuNyuvPnUeOl7wo8HQgfn7eA2Ao46CnW1Z
         mRiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693139325; x=1693744125;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Yre2f9fVZ6ai/a0mptpH3eErz97R0W3oywtkJtSV3Ew=;
        b=JENhMK4cLa+Q7v6BONRiJ3b14GpXZMxjRd6CTzIQ5hXadUqrKrnU2maO6mKDq6ubwv
         A/4CKN6YT5QyKsOtlWawYbJ0ORSJedCs+SJ6yxbWWKYdTlkUZwg3PtnkKs6OAx7K/d7c
         LCxJQNpukHMt98sSxaAam2kS/NuNmlHEaujXMseGGgfBtKGN5mFzsPB/UX029C5985Ja
         NdLF0T0ro+yvrG8MwihvXVb8TPffxjjmdenUK75qDGECp0QBTJhgHcXEYGQtxMpptlci
         tDEIvWI9GEiySu/rWnIOVUNFwASNcqYj/StUvPgBu2GHDq1GTlpvw8wYJAS8xPU+dpCo
         IFVg==
X-Gm-Message-State: AOJu0YwzIz4LTelFRKjGDJkOri8d4vSZ0chY0hcBDcCZ4389YeY8Isbo
        rhgRb2HUwqju6Ol/VFdXKTrdbg==
X-Google-Smtp-Source: AGHT+IGToWailvSldU2w9yx3hQWQuxLTeWHjSmM/bQdA8LGmefQm889AJtrx0CVxLHwvnejxWTCGNw==
X-Received: by 2002:a17:906:ca:b0:9a1:688f:cf21 with SMTP id 10-20020a17090600ca00b009a1688fcf21mr16624744eji.43.1693139325497;
        Sun, 27 Aug 2023 05:28:45 -0700 (PDT)
Received: from krzk-bin.. ([77.252.47.225])
        by smtp.gmail.com with ESMTPSA id rp25-20020a170906d97900b00993150e5325sm3384826ejb.60.2023.08.27.05.28.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Aug 2023 05:28:45 -0700 (PDT)
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
Subject: [PATCH 2/3] arm64: dts: qcom: sc8180x: drop incorrect cell-index from SPMI
Date:   Sun, 27 Aug 2023 14:28:41 +0200
Message-Id: <20230827122842.63741-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230827122842.63741-1-krzysztof.kozlowski@linaro.org>
References: <20230827122842.63741-1-krzysztof.kozlowski@linaro.org>
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

The SPMI controller (PMIC Arbiter) does not use nor allow 'cell-index'
property:

  sc8180x-primus.dtb: spmi@c440000: Unevaluated properties are not allowed ('cell-index' was unexpected)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8180x.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8180x.dtsi b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
index 8fa296142eab..344ba444fcba 100644
--- a/arch/arm64/boot/dts/qcom/sc8180x.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
@@ -3299,7 +3299,6 @@ spmi_bus: spmi@c440000 {
 			#size-cells = <0>;
 			interrupt-controller;
 			#interrupt-cells = <4>;
-			cell-index = <0>;
 		};
 
 		apps_smmu: iommu@15000000 {
-- 
2.34.1

