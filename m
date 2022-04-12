Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 477C84FEACE
	for <lists+devicetree@lfdr.de>; Wed, 13 Apr 2022 01:47:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230093AbiDLXaD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Apr 2022 19:30:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39408 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230095AbiDLX2p (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Apr 2022 19:28:45 -0400
Received: from mail-oa1-x2b.google.com (mail-oa1-x2b.google.com [IPv6:2001:4860:4864:20::2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 832389F3A1
        for <devicetree@vger.kernel.org>; Tue, 12 Apr 2022 15:14:16 -0700 (PDT)
Received: by mail-oa1-x2b.google.com with SMTP id 586e51a60fabf-e2442907a1so193053fac.8
        for <devicetree@vger.kernel.org>; Tue, 12 Apr 2022 15:14:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=n2t5ELawI3mUGg5tVhQenYNK1LUgXG/kP/zI61cw9fw=;
        b=dlFBx561eGgl6eUR5ImhHgVTKuYkXl/ojvlX22n3XxtoPeqLJaRB/1gDSynytpJ/y4
         pKsjINyyo5j6bEF3tXEzfdEiqp2M7UykVGgQ3bxgjpGbM4x1Q0oYKdRbXBi4VPwUU/KQ
         z50kgTSPe+N/xzlXcXuqbB4v0Pkjrgfx+ceJ7iVmwnEMvvzEuM3UJKc6Sn53CK6h6hE+
         qExCYE5PKCfhumGnT6RDoOeEGMyJV4Eby8DQNFRy+XXU72QMTRToOipl0namuD8ZHMB7
         MyynSZUVEKN34YHGMqDZ7HtdFvxAmDjG6YuOXQ2lvJWujZQ5PNJceGPZHCPMewzeUW1s
         U3Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=n2t5ELawI3mUGg5tVhQenYNK1LUgXG/kP/zI61cw9fw=;
        b=tbtUBjzcwjE+xkmbH0E3PIbN93x/BCGThl7KblR9AvIa9twnGQlLe/xRcZkeIhZGd7
         C4/QNtuiOZbrpIAOpY5wpHQw2i1tZ3hrieBMSqcNqTSdMv0z32ziWyDBmWFThQYa2VXV
         y0AQ+TqEpWdfa18n+KkdrBF6HtZGhfnELGEvBzyozFQkdJjqKsgybBc4hNcMzZmxcPHG
         D+sar5XNpCevHiAFi9wr6F0UpUtB0lIV+83zeaqcm1NUttbR84df40DcOJV1w1Etb2tJ
         SWAb4PNZ+WJbsqyHrNC8+VuBaSWCLNubHVsTEScknvbLz54fcsugu4FJfPTlBoXSaHNz
         8uKg==
X-Gm-Message-State: AOAM532Ch+LyjXkOA0NQvnV98p5IRyrWvEQCY77FmH979rNgZ61S6TBc
        7PP4fjhUj4LctBgAzkua/9SzH0iz0rlr2gBf
X-Google-Smtp-Source: ABdhPJyTnRuP1yacOaJWVIrnwQcAXI1nG3rUeVaXhd+WJFZfwEo1k8Wg6LjUniaWx2FofkEzD7TgEQ==
X-Received: by 2002:a05:6808:11ca:b0:2d9:a01a:488b with SMTP id p10-20020a05680811ca00b002d9a01a488bmr2892353oiv.214.1649800165960;
        Tue, 12 Apr 2022 14:49:25 -0700 (PDT)
Received: from ripper.. ([2600:1700:a0:3dc8:205:1bff:fec0:b9b3])
        by smtp.gmail.com with ESMTPSA id k10-20020a4abd8a000000b00324907b406fsm12809059oop.21.2022.04.12.14.49.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Apr 2022 14:49:25 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Vinod Koul <vkoul@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 3/3] arm64: dts: qcom: sm8350-hdk: Enable &gpi_dma1
Date:   Tue, 12 Apr 2022 14:51:37 -0700
Message-Id: <20220412215137.2385831-3-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220412215137.2385831-1-bjorn.andersson@linaro.org>
References: <20220412215137.2385831-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Some versions of the firmware for the SM8350 Hardware Development Kit
(HDK) has FIFO mode disabled for i2c13 and must thus use GPI DMA. Enable
&gpi_dma1 to allow this.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8350-hdk.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8350-hdk.dts b/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
index 8c33fce0b414..246006ab4a2b 100644
--- a/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
+++ b/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
@@ -213,6 +213,10 @@ &cdsp {
 	firmware-name = "qcom/sm8350/cdsp.mbn";
 };
 
+&gpi_dma1 {
+	status = "okay";
+};
+
 &gpu {
 	status = "okay";
 };
-- 
2.35.1

