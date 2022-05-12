Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0F24452589C
	for <lists+devicetree@lfdr.de>; Fri, 13 May 2022 01:44:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1359620AbiELXn7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 May 2022 19:43:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44936 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1359610AbiELXn4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 May 2022 19:43:56 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DAE1D289BF5
        for <devicetree@vger.kernel.org>; Thu, 12 May 2022 16:43:53 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id d19so11733400lfj.4
        for <devicetree@vger.kernel.org>; Thu, 12 May 2022 16:43:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=i1goeg2wYzcHMfXO9CDFGJF9XLqANUBaSoksUz5XNRc=;
        b=AUSOaxGf4QvWFnxYykvOb6GQPte8Hm2nflFvbpNrV7v5k+oCT2+2v0h539XWv0UgtQ
         wx4FStpqIoFYYAI3xlJ3VNqXC0Kr5d8aoL/OTRci37kJXNq7/UuPS/Jm+AhmDOJgdi6u
         NHLll7b1x481IvBqecZqPHxTbN8WtovaBjjFq7gC2fomdbHV5ulL+zC2qYf5W22bsoqm
         KaFYaqy/2u042xxOWrIs4Chu5N/aoFso9QcgwHgb0wNOYc9GYAAIiwyunJrjSGnOTqhw
         tEJ01OB9H2SKIkS7NOXnqDBuH8spDSThVkMlB2q9mHqsLbyan+UTq4r0Glir36QAxrCM
         6zwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=i1goeg2wYzcHMfXO9CDFGJF9XLqANUBaSoksUz5XNRc=;
        b=W3WCh02meW/vgOZwLlwgHNvuNTtFH4binqjEfV/HINVBfFhP9/pxMIy5/ly6bsnb9F
         SSSrOW9SBc60sYRORHwvJuE0SslDHNAhXKNTMzqKGJ6toWtoJVJY2dxcEa88kBgqp0kB
         4jJ9YhNPCJefp8LsgQhzpfU+7lecmSMnDvVtZNlVYOrfPkGhA2Qjl3nNXYMEHERTHUBX
         UCKqC2z9jPjfdDJu2R33Kz9TPckjRpESl8xid6vB3uOqwAmpHYnRerCWT4LhlHe/aQhZ
         zgyBNI2rYMlFcKBVFgKaeAhfV501awX6Qctj9Le9ZP0wxuox8wdf0k1xOJxN23qnJxaq
         LxuA==
X-Gm-Message-State: AOAM531ywX1fR3fZjmJQcmLsCJ5mq5AzMM3JrAzd7m56ud+56ol3rNSX
        bhLJ9jdlBCj6FKRcguYWS5rHTLe7tBm5LQ==
X-Google-Smtp-Source: ABdhPJyZ4/wxLf8HN+jjarLtkCBweIJPNbWeRtrKWtIvGUJkDeQ6jmIG4vH6gc+Bz8rcNEESwYWV0g==
X-Received: by 2002:a19:4315:0:b0:474:1ca5:c8e2 with SMTP id q21-20020a194315000000b004741ca5c8e2mr1503314lfa.4.1652399032285;
        Thu, 12 May 2022 16:43:52 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id u10-20020ac248aa000000b0047255d211b8sm129976lfg.231.2022.05.12.16.43.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 May 2022 16:43:51 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [RESEND v2 3/8] arm64: dts: qcom: sdm630: disable GPU by default
Date:   Fri, 13 May 2022 02:43:44 +0300
Message-Id: <20220512234349.2673724-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220512234349.2673724-1-dmitry.baryshkov@linaro.org>
References: <20220512234349.2673724-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The SoC's device tree file disables gpucc and adreno's SMMU by default.
So let's disable the GPU too. Moreover it looks like SMMU might be not
usable without additional patches (which means that GPU is unusable
too). No board uses GPU at this moment.

Fixes: 5cf69dcbec8b ("arm64: dts: qcom: sdm630: Add Adreno 508 GPU configuration")
Reviewed-by: Konrad Dybcio <konrad.dybcio@somainline.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm630.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm630.dtsi b/arch/arm64/boot/dts/qcom/sdm630.dtsi
index 8697d40e9b74..e8bb170e8b2f 100644
--- a/arch/arm64/boot/dts/qcom/sdm630.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm630.dtsi
@@ -1050,6 +1050,8 @@ adreno_gpu: gpu@5000000 {
 
 			operating-points-v2 = <&gpu_sdm630_opp_table>;
 
+			status = "disabled";
+
 			gpu_sdm630_opp_table: opp-table {
 				compatible  = "operating-points-v2";
 				opp-775000000 {
-- 
2.35.1

