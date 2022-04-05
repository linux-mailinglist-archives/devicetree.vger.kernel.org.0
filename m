Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 968FB4F2347
	for <lists+devicetree@lfdr.de>; Tue,  5 Apr 2022 08:35:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230318AbiDEGh1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Apr 2022 02:37:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48854 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230294AbiDEGhO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Apr 2022 02:37:14 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9AE9186EA
        for <devicetree@vger.kernel.org>; Mon,  4 Apr 2022 23:35:15 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id qh7so14508210ejb.11
        for <devicetree@vger.kernel.org>; Mon, 04 Apr 2022 23:35:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=0FPva/xF5QWD9GuBZmkDF4zJMJFtPU9JUPVfss7wEgA=;
        b=sgs8fnLUD89sfYTrE+ztbdtKCYlSgQ+3jxn5yhXrqMc5/ygGoNFT9KdojhBNjhW5sQ
         3FZFGS7u9p4kre51GpHTdZxhjcsDBDal75fVqCM+V2KJ0MInK+oHGpzcCogOau2/4suk
         Zzk35Zfvr4MM/M+bTbcE+hFMvsKhrNrHoXvylaUb9lewRt2e3cZIfg3307dIFH8TcjqB
         xCXVXe14n48fLpEZiRTKH1DHmsnnQVXbWf9BjxlcFZ9wjbbLurOCm+E4/aUniwvNUFTX
         9NHxIInARpWhVFOC7I3QJoIN204dgvT6gf+i5PYIZUcmulal5wLFADust1lEx+J/Mdp/
         INjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0FPva/xF5QWD9GuBZmkDF4zJMJFtPU9JUPVfss7wEgA=;
        b=lDmjGmnzB+oND3h2jHfES+wFz57oMIdQPXBmG4h8HdZbxLXpRc9cjpJkPcqMHaqLzS
         uoed0f5f2K+qvQRG4Yx9mc2b8SQD3ZbxWfRFZmnSmQAkDigsJTbV/ILuSraPWO1GbgOc
         KGYOkkmNc6uUX8idp94mc0d7bto+LE2MOu5IhGB4xjPlFq2jvprnu0iVkB1qdjQrKupb
         t//6ObjwfYUPsv2a9CDm3z5cpCkrDXdZu6QqsECIOuQfG/I7C5arRwm/ok1G+UWGWAYV
         MKQ5kJmzHV3gqoWJQAQFrCrsK8SxzlZ9NZ8AZSHXqHeDnOkJJGwCbTPAlslSj0VH1VZb
         T/Vw==
X-Gm-Message-State: AOAM530hqm+fxR72827ifoe5PhqsNz8QhgJId6K4OH93vqx1zyl3c4oy
        eXeE+1pS1avMQi6YGNlQQgZVGw==
X-Google-Smtp-Source: ABdhPJzRmLtL4M11x2CZ4rufphPdePuc0MVn8NdfZVbdMzqOXEYcT4hpNY+as9aYXAgrEeEOH0BLQg==
X-Received: by 2002:a17:907:168b:b0:6e7:f2a5:bb0f with SMTP id hc11-20020a170907168b00b006e7f2a5bb0fmr1991664ejc.162.1649140514379;
        Mon, 04 Apr 2022 23:35:14 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id bs7-20020a056402304700b004197e5d2350sm6086543edb.54.2022.04.04.23.35.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Apr 2022 23:35:13 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Mark Brown <broonie@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org,
        linux-spi@vger.kernel.org
Cc:     Kuldeep Singh <singh.kuldeep87k@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 5/9] ARM: dts: qcom: msm8660: disable GSBI8
Date:   Tue,  5 Apr 2022 08:34:47 +0200
Message-Id: <20220405063451.12011-6-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220405063451.12011-1-krzysztof.kozlowski@linaro.org>
References: <20220405063451.12011-1-krzysztof.kozlowski@linaro.org>
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

The GSBI8 child node (I2C controller) is disabled, so as parent GSBI
node should be the same.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/qcom-msm8660.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/qcom-msm8660.dtsi b/arch/arm/boot/dts/qcom-msm8660.dtsi
index a258abb23a64..47b97daecef1 100644
--- a/arch/arm/boot/dts/qcom-msm8660.dtsi
+++ b/arch/arm/boot/dts/qcom-msm8660.dtsi
@@ -212,6 +212,7 @@ gsbi8: gsbi@19800000 {
 			ranges;
 
 			syscon-tcsr = <&tcsr>;
+			status = "disabled";
 
 			gsbi8_i2c: i2c@19880000 {
 				compatible = "qcom,i2c-qup-v1.1.1";
-- 
2.32.0

