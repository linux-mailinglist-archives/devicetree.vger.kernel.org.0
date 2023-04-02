Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5D4106D36EA
	for <lists+devicetree@lfdr.de>; Sun,  2 Apr 2023 12:08:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230517AbjDBKIC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 Apr 2023 06:08:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60896 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230241AbjDBKHp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 Apr 2023 06:07:45 -0400
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com [IPv6:2607:f8b0:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE1A97EC4
        for <devicetree@vger.kernel.org>; Sun,  2 Apr 2023 03:07:38 -0700 (PDT)
Received: by mail-pf1-x432.google.com with SMTP id z11so17322772pfh.4
        for <devicetree@vger.kernel.org>; Sun, 02 Apr 2023 03:07:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680430057;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6lP0xe1rpfhrIkLyhMnO9naLS5LLel1l/TortX66fNI=;
        b=LOeyIFsKKy+XJsARfcWNpshFn/LPEX5tD9i0y4HEgVmpcGcjFZQfrhiEeFh1crOarP
         LeODmuYnWJSUfm2jkBFZGFkI/ZKUhwVz48wtzDo2z+U0daZHI00OZWn4tQ9jzCBeP1Hd
         fXNeEaag1+EBfEpMtCD2yZS71S/skJANIJnfd/3ohJBV8anNyURCse9PbmmZrMEDObPc
         5yQSGeV+lZXH7aJn8L+4ApedbvxjbTRKAm/3TcPyI/+f7nsfhojSZNCDIsKilXkohKKu
         uAEftXcB+ZxeeynaSmkjDz0YMG/ObXFLFf0SO1Hvd0gkY7rSXl6jCI6fcgVnM69/xVHn
         9DyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680430057;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6lP0xe1rpfhrIkLyhMnO9naLS5LLel1l/TortX66fNI=;
        b=xKF8cYGAuC7Zz7ul2V7chKeSZHJ1FGeNiJ4u10EUl3S1JoWQ1m+jK1dCbZAo+szplP
         8xCjSO7EM+YdGQc8RDsHzD2lvLwR4aNTRO9/2iUgtryHBhjbHPKCAzUng8Cr6Dpjd+qS
         Wwk3bNE/RWKvx+6uSWUhcQUxBWx5lksA5mgSUnqTlVMxYbWxzreJ/UJ0pJCzkuz0r9qH
         8udpYoGL19A979H6UaUX/fymstHTvqUDc+/+Jka7QsyEIDfHQ1pb9t7Uxy6oAJ/9fKjK
         c1lKA726T6IRJ9v96oY98KG3+3HbuoIiUANz5aGhWPfWgMfyL8VW8YiTfnYJOMpVHS+X
         lEBA==
X-Gm-Message-State: AAQBX9cbwKq42f3rlLjbBamJhXHlAyMnH+CMvRj4iZhL4R9bJqIjLUTk
        97K0uaLa5DguTgukn9VVVI4Ocg==
X-Google-Smtp-Source: AKy350bHvBOhHQi22FwQX30G/FBgwKKrZXUcNR9akk5kEj4Q69bQwQyfQzjIvOEsLz6uGxgi3LYR7g==
X-Received: by 2002:aa7:93c4:0:b0:626:6a3:6b81 with SMTP id y4-20020aa793c4000000b0062606a36b81mr31183118pff.15.1680430057624;
        Sun, 02 Apr 2023 03:07:37 -0700 (PDT)
Received: from localhost.localdomain ([223.233.66.184])
        by smtp.gmail.com with ESMTPSA id a26-20020a62bd1a000000b0062dba4e4706sm4788739pff.191.2023.04.02.03.07.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Apr 2023 03:07:37 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Cc:     agross@kernel.org, linux-kernel@vger.kernel.org,
        linux-crypto@vger.kernel.org, andersson@kernel.org,
        bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
        krzysztof.kozlowski@linaro.org, robh+dt@kernel.org,
        konrad.dybcio@linaro.org, vladimir.zapolskiy@linaro.org,
        rfoss@kernel.org, neil.armstrong@linaro.org
Subject: [PATCH v5 04/11] arm64: dts: qcom: sdm845: Fix the slimbam DMA engine compatible string
Date:   Sun,  2 Apr 2023 15:35:02 +0530
Message-Id: <20230402100509.1154220-5-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230402100509.1154220-1-bhupesh.sharma@linaro.org>
References: <20230402100509.1154220-1-bhupesh.sharma@linaro.org>
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

As per documentation, Qualcomm SDM845 SoC supports SLIMBAM DMA
engine v1.7.4, so use the correct compatible strings.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index 2f32179c7d1b..17a29184884c 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -5152,7 +5152,7 @@ msi-controller@17a40000 {
 		};
 
 		slimbam: dma-controller@17184000 {
-			compatible = "qcom,bam-v1.7.0";
+			compatible = "qcom,bam-v1.7.4", "qcom,bam-v1.7.0";
 			qcom,controlled-remotely;
 			reg = <0 0x17184000 0 0x2a000>;
 			num-channels = <31>;
-- 
2.38.1

