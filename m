Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5E6575B339D
	for <lists+devicetree@lfdr.de>; Fri,  9 Sep 2022 11:22:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232139AbiIIJUz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Sep 2022 05:20:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43730 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230290AbiIIJUv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Sep 2022 05:20:51 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E87D8B56DF
        for <devicetree@vger.kernel.org>; Fri,  9 Sep 2022 02:20:49 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id p5so1070615ljc.13
        for <devicetree@vger.kernel.org>; Fri, 09 Sep 2022 02:20:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=jWF6n+I4kNaTh0+wS5ew6McBkQX1vr8gLcwhdcZ+294=;
        b=p/KHTvVCaHHsa1z5hA8NiL8sWfLu9+dvBaijKn0LwxnPkZ9OiT2fgdfGT+9q50325K
         7RZcgevCY+Zp+gsGVaCrhiW1xHy7G5phx4y9zX/oueYpfcFgi5JLfeT3BzrKRlv7Y/0k
         lyNHBlnppSi0kyaisH+iROqaYiG7sJFcOyXzOz6W7JSEwTnRYovg0wl6fRtRyXkjYI6S
         VYQbLOci1HY3sCrqAtKmkTjRuden/lRqmjCpU+8nBgS+/qOarBdRI8AdquLrWmNQnZbq
         u/2AY6rBApBszRgvQQMRih9X7MvJ/x7dxpt3ELNynaN/Gp9rLT8FRguULnFb2pGKB7C9
         eFxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=jWF6n+I4kNaTh0+wS5ew6McBkQX1vr8gLcwhdcZ+294=;
        b=PrjX3M+AdGZ/5jqC6R8IVYT/rmnct6w5YuBAlK8bFHEIfs4o4a+3QwkfhcmpCGD+Fu
         PfOVaBGmh4bjD+dKkP7uc90kTOZyZBvj9ld0guMPQzM0/tH8I18qyyIJ238MvjvX5y24
         8qmBo4PDBNPZUfr6kHgYFH56AzITIvrXoaQAdbxUrFO/NhaXPTt81r8qQXlB2Xbcmp9v
         pghmnzLApAoTPdgVTUWyUR7Gwa+/glhxSh/dYmqsyFBj4Dq+8hsxhoTKBEyO5IYX6Y8D
         Qd7P4G5uw/FqAH7tadLbv17RankhYc8lGG+WqAN7g0PzZwT+82mq3rUzGv27hCIikDx1
         Be4A==
X-Gm-Message-State: ACgBeo0tzFGywjeJIGu8kGwByFjI2wfY+8Il8TS8EXMiJDBBT8lclw/q
        9/8CJ2pIHYeffMtuh2ZnJ21eLA==
X-Google-Smtp-Source: AA6agR4FGCIgKhPxgDZqQQFdea85jQ8MsnkmV+eyMlkFRqIl+6nLMXxmKwImZf8TOlNOOljexAPtJg==
X-Received: by 2002:a2e:9b46:0:b0:26a:ed14:d808 with SMTP id o6-20020a2e9b46000000b0026aed14d808mr2550309ljj.506.1662715249355;
        Fri, 09 Sep 2022 02:20:49 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id s6-20020a056512214600b00498fe38ea0fsm2170lfr.174.2022.09.09.02.20.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Sep 2022 02:20:48 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Ohad Ben-Cohen <ohad@wizery.com>,
        Baolin Wang <baolin.wang@linux.alibaba.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 07/15] arm64: dts: qcom: qcs404: add missing TCSR syscon compatible
Date:   Fri,  9 Sep 2022 11:20:27 +0200
Message-Id: <20220909092035.223915-8-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220909092035.223915-1-krzysztof.kozlowski@linaro.org>
References: <20220909092035.223915-1-krzysztof.kozlowski@linaro.org>
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

TCSR syscon node should come with dedicated compatible.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/qcs404.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/qcs404.dtsi b/arch/arm64/boot/dts/qcom/qcs404.dtsi
index 3a94eb2cc448..c79600c28398 100644
--- a/arch/arm64/boot/dts/qcom/qcs404.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcs404.dtsi
@@ -727,7 +727,7 @@ tcsr_mutex: hwlock@1905000 {
 		};
 
 		tcsr: syscon@1937000 {
-			compatible = "syscon";
+			compatible = "qcom,qcs404-tcsr", "syscon";
 			reg = <0x01937000 0x25000>;
 		};
 
-- 
2.34.1

