Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 521376D7578
	for <lists+devicetree@lfdr.de>; Wed,  5 Apr 2023 09:31:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237181AbjDEHbX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Apr 2023 03:31:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43812 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236908AbjDEHbM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Apr 2023 03:31:12 -0400
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com [IPv6:2607:f8b0:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 60D6B4ECB
        for <devicetree@vger.kernel.org>; Wed,  5 Apr 2023 00:31:05 -0700 (PDT)
Received: by mail-pl1-x632.google.com with SMTP id ja10so33653393plb.5
        for <devicetree@vger.kernel.org>; Wed, 05 Apr 2023 00:31:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680679864;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=USgI5KIZDkQs51mZEs919xqTD9B9rGrh5rzRG7rRJwk=;
        b=yQwrH+k/05xG4Gj1pPI971BbmVSX/HibhPgrMTgpWTN3AlgtL7L0d+VhSv9tSexppL
         SOonIu+4u1iVDE40+LmukSroH3SUZAJIpWxhEPnDtlPzU4LVf96Zcwu9zb+KqBAOF58w
         BC9y3TLQ0Xeos0ZFKTaTEOEHD5bz3qTg9KRo81nWB5zsNjlSvYjdlIwzgfaqdEv4uJLh
         WPLynVcPjba+8nfFl0bNO8KjqI+zqsbT2oJPb5pkGECR2EBN/cYf7cPxHiim5MwvRkfw
         xrvaNQPR9+AZLcUDTSEcqQZQ9aygfH3ctFJODuR7vDve+NmZ+05iExyPrcGS1JyWFHqN
         AQxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680679864;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=USgI5KIZDkQs51mZEs919xqTD9B9rGrh5rzRG7rRJwk=;
        b=HISaVGQ37Iut9D17v5THcCsPSuPSdV+q9B0hzSN3TiF3gTij1yRHBKiKLMga/e5eQ2
         nm7oUJbgiqYCsb58+UZqySx+bNJPYStGv1acUnaZAWFJSi1fZ1e69hr5qcWIQt7MrKs8
         t0CHO31OxjQ7r9mgmVoSavReTrXuqkqdvEhec2dhcAsEHQUi7VtDm7o+KOwWowSNOplr
         Ih5haYEKGsehar+KqUElyfiAtavXrQkoKEaPxFutl3JjqajF11MgDO2O59oTdYOtDAoh
         +0mhLNvI2JduEXlyHN11UPAu6bLLbrHaWM09WWvgAbH7RwHqTetVssXH/LtuZl6baZTe
         gOyw==
X-Gm-Message-State: AAQBX9fhcn70yDlymb+k8I4whp1VVJnhKivVS3Jf3VUR8iDTnFMnz4CM
        /ggErDQZU+hg1pWrcsQ/OVuWAw==
X-Google-Smtp-Source: AKy350bWPoUBITKFCGJOv44IjGmoxBYO20DcqReyldCF8a5dFtKw8fgoBMT6HwXKyIMR6S+0qcZ9MQ==
X-Received: by 2002:a05:6a20:98a7:b0:da:17b4:461a with SMTP id jk39-20020a056a2098a700b000da17b4461amr4468574pzb.32.1680679864594;
        Wed, 05 Apr 2023 00:31:04 -0700 (PDT)
Received: from localhost.localdomain ([223.233.67.41])
        by smtp.gmail.com with ESMTPSA id l7-20020a635b47000000b004facdf070d6sm8781507pgm.39.2023.04.05.00.31.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Apr 2023 00:31:04 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Cc:     agross@kernel.org, linux-kernel@vger.kernel.org,
        linux-crypto@vger.kernel.org, andersson@kernel.org,
        bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
        krzysztof.kozlowski@linaro.org, robh+dt@kernel.org,
        konrad.dybcio@linaro.org, vladimir.zapolskiy@linaro.org,
        rfoss@kernel.org, neil.armstrong@linaro.org, djakov@kernel.org
Subject: [PATCH v6 03/11] arm64: dts: qcom: sdm8550: Fix the BAM DMA engine compatible string
Date:   Wed,  5 Apr 2023 12:58:28 +0530
Message-Id: <20230405072836.1690248-4-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230405072836.1690248-1-bhupesh.sharma@linaro.org>
References: <20230405072836.1690248-1-bhupesh.sharma@linaro.org>
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

As per documentation, Qualcomm SM8550 SoC supports BAM DMA
engine v1.7.4, so use the correct compatible strings.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
index 9c24af40ee61..774e3295081c 100644
--- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
@@ -1841,7 +1841,7 @@ pcie1_phy: phy@1c0e000 {
 		};
 
 		cryptobam: dma-controller@1dc4000 {
-			compatible = "qcom,bam-v1.7.0";
+			compatible = "qcom,bam-v1.7.4", "qcom,bam-v1.7.0";
 			reg = <0x0 0x01dc4000 0x0 0x28000>;
 			interrupts = <GIC_SPI 272 IRQ_TYPE_LEVEL_HIGH>;
 			#dma-cells = <1>;
-- 
2.38.1

