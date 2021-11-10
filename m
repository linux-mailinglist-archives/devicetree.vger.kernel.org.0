Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0E84B44BF65
	for <lists+devicetree@lfdr.de>; Wed, 10 Nov 2021 11:59:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231433AbhKJLCk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Nov 2021 06:02:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50226 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231445AbhKJLCi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Nov 2021 06:02:38 -0500
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com [IPv6:2607:f8b0:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C21AC061208
        for <devicetree@vger.kernel.org>; Wed, 10 Nov 2021 02:59:51 -0800 (PST)
Received: by mail-pl1-x62f.google.com with SMTP id q17so2626009plr.11
        for <devicetree@vger.kernel.org>; Wed, 10 Nov 2021 02:59:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=xmXHtUph5kI3A4THoshYaiB9SXE1WqSgPuWSYTceQ14=;
        b=XMGVuBzJ9Ua636COgZ7s+PAk3M23S6fAVhvJYTfxGzerPvlwM1qTsepNn8Fq4x+Y6l
         KDt/KPHMyXLN1S/Jnp9dgOm4t9KBrO+iqImjtjru4DILZdMpWzuTe/6zlOU5xA47lMpi
         me77Ax88fBqKXc9QIgb3zXEnUKJUQH+EwcbAqz6iQ9A3MYMCa3hCiw94u7G7cLB5LRm9
         UJNuznl09pdVaCuxNwWljMrhaav1Jj7QotTO9e8Vej/L4TrbyjNj9Azg0zlkztjbzbN+
         ARNq4RjsGN/AR5VMvVHAlcr5yNqbdv3Idq1GGoKd9MFWRxO0f5rNa9ZpvF9TvRyxhYbY
         albg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=xmXHtUph5kI3A4THoshYaiB9SXE1WqSgPuWSYTceQ14=;
        b=zEgn9SrKeoKIoRL/j09ITuzq5s+lYnXd2UHToeQ25KGZYUrkbqQ9HSMCLKXzpM5jYo
         OUqoJbzeX9cfrWB+Vg3v4IT8davYxiL5djKoaUtjAkz6oDZ3KpezQhol3RbgNfSq5Fah
         LGzNB58f8m8mzOOwq2D085vBajjASQ97E90ASqFIEhiC+RJbrIgSoDB30B7dk/pqBOCJ
         Jbr/jM96C/8D4w19sp1R12FDA70riwibbzFRCAF39vGIgPG0ZZtQu6o4iYL2NE18E7eb
         URmifiTQe4Ijsu606+R9D9JPbEioGS6hnkY+lmRuL+b4hTeJmdKaei2sQ+l7VhwxaUu7
         R0SQ==
X-Gm-Message-State: AOAM533ahiiQqIwz1kbCLFHDhzicP1MrCJObXGcKaapngXhAddmGeNuH
        +KICuW5svTl2gjI4XsM2r8ORNsaFNtm+yw==
X-Google-Smtp-Source: ABdhPJy4ts8w7Xkiy9SPbaVv/tdNYX5gLSvj68Q0W/rZCt0biWFoqI2+HODRQOYEkFQFNXDuG/+AFA==
X-Received: by 2002:a17:902:8505:b0:142:892d:918 with SMTP id bj5-20020a170902850500b00142892d0918mr14860752plb.39.1636541991083;
        Wed, 10 Nov 2021 02:59:51 -0800 (PST)
Received: from localhost.name ([122.161.52.143])
        by smtp.gmail.com with ESMTPSA id e11sm5585282pjl.20.2021.11.10.02.59.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Nov 2021 02:59:50 -0800 (PST)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org
Cc:     bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        robh+dt@kernel.org, agross@kernel.org, herbert@gondor.apana.org.au,
        davem@davemloft.net, stephan@gerhold.net,
        Thara Gopinath <thara.gopinath@linaro.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: [PATCH v5 02/22] arm64: dts: qcom: msm8996: Fix 'dma' nodes in dts
Date:   Wed, 10 Nov 2021 16:29:02 +0530
Message-Id: <20211110105922.217895-3-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211110105922.217895-1-bhupesh.sharma@linaro.org>
References: <20211110105922.217895-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Preparatory patch for subsequent patch in this series which
converts the qcom_bam_dma device-tree binding into YAML format.

Correct dma-controller node inside msm8996 dts, which
leads to following errors with 'make dtbs_check':

     dma@164400: $nodename:0: 'dma@164400' does not match
     '^dma-controller(@.*)?$'

Fix the same.

Cc: Thara Gopinath <thara.gopinath@linaro.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8996.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
index 27683d7fdfe6..508cd9d06350 100644
--- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
@@ -705,7 +705,7 @@ tsens1: thermal-sensor@4ad000 {
 			#thermal-sensor-cells = <1>;
 		};
 
-		cryptobam: dma@644000 {
+		cryptobam: dma-controller@644000 {
 			compatible = "qcom,bam-v1.7.0";
 			reg = <0x00644000 0x24000>;
 			interrupts = <GIC_SPI 206 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.31.1

