Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6AC2A5157D3
	for <lists+devicetree@lfdr.de>; Sat, 30 Apr 2022 00:04:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1381157AbiD2WHQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 Apr 2022 18:07:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37412 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346618AbiD2WHP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 29 Apr 2022 18:07:15 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BE9B7DC5A9
        for <devicetree@vger.kernel.org>; Fri, 29 Apr 2022 15:03:55 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id n126-20020a1c2784000000b0038e8af3e788so5457607wmn.1
        for <devicetree@vger.kernel.org>; Fri, 29 Apr 2022 15:03:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ngAHAx8KCTZqbA/wVhf/k9wvjiY7TwrBlQ520mj9F/4=;
        b=aBZ84A6XYuRroZXuADMKuVKuiABfQxp6erm24iGZxALBSAsyoJg8sVqbwTb3ELkHRW
         RTAnZ5w9yk5l2zE2KaF7KMxIaYBc7+G6wkuaXhyhsZSAAQxY4HvUgfQ0YDLjcM2n/GK4
         EpvWmWTI+ax79bzPrVXkYY0pDp1Z4ATWp2ANK7I2teOnJ3gFwXRnSfnWMZBy/c4v2lCh
         TD/BdAZIPm+MqCuDqSPszjMhaepnn4wYFqj0/dKRJNDHSseXLrkIAEqTtX7mX3AGdDg9
         z9ut9RF+dMddYLFfDPzRDCr2jRUXcUvA5+VWVDxV5Rz4o+ykBIoPOLlKKL4qXs+UIJC9
         zM4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ngAHAx8KCTZqbA/wVhf/k9wvjiY7TwrBlQ520mj9F/4=;
        b=rI0unmrJzYaA9BkiFS/Wi0q2UIQp4oYS1AlAt3BD5bB/UxD/pghlOOM/1SjKagbqcH
         5H6tRtcsNLJlMtwLklM/nCwqBp3Pc0yvK4syB4IrTyCH+s0Qty8rcf8fA+LJKqJVgzYj
         sb0jGuorFXXsK9txX17NOljQ/6cm+DtGj2Gn8y5NZ1tsEpHZ9KtKN3zKgNQsbO+svQhZ
         vvYMh7sqCZRFEc5WPdQQBCW8J2T1fQYHwZAAO8JzF8pbU5+YLmE9LHhAJ5sPbFlXALkm
         PXRrVQe5ezDyhypJvcfytpmK7QuHUEyg5OAhNP1cQl4TUDy7K90yboRC3H4P49aGyUhb
         iHxw==
X-Gm-Message-State: AOAM530tX4/bG9Hl/Dc+TacElcBCBAqwi1Zn5T5FX0H/N+ixM3D971DQ
        CRy1GCp+TqrvO8SD4qe6v5KpmQ==
X-Google-Smtp-Source: ABdhPJyKUSsewMfq0OpVMM/q5rmJHwonDZeVA4hBkJow4pGLOm7E+ezi81qsjihjWs3T6BQNDzW7+w==
X-Received: by 2002:a7b:c181:0:b0:392:b34a:96a2 with SMTP id y1-20020a7bc181000000b00392b34a96a2mr877535wmi.48.1651269834379;
        Fri, 29 Apr 2022 15:03:54 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id k15-20020adfc70f000000b0020c5253d90dsm338311wrg.89.2022.04.29.15.03.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Apr 2022 15:03:53 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     srinivas.kandagatla@linaro.org, bjorn.andersson@linaro.org,
        robh+dt@kernel.org, krzk+dt@kernel.org
Cc:     alsa-devel@alsa-project.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, bryan.odonoghue@linaro.org
Subject: [PATCH v3 2/2] arm64: dts: qcom: Fix apq8016 compat string to match yaml
Date:   Fri, 29 Apr 2022 23:03:49 +0100
Message-Id: <20220429220349.1142759-3-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220429220349.1142759-1-bryan.odonoghue@linaro.org>
References: <20220429220349.1142759-1-bryan.odonoghue@linaro.org>
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

The documented yaml compat string for the apq8016 is
"qcom,apq8016-lpass-cpu" not "qcom,lpass-cpu-apq8016". Looking at the other
lpass compat strings the general form is "qcom,socnum-lpass-cpu".

We need to fix both the driver and dts to match.

Fixes: 3761a3618f55 ("arm64: dts: qcom: add lpass node")
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8916.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8916.dtsi b/arch/arm64/boot/dts/qcom/msm8916.dtsi
index e34963505e07..452cdfbf8ef9 100644
--- a/arch/arm64/boot/dts/qcom/msm8916.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8916.dtsi
@@ -1392,7 +1392,7 @@ sound: sound@7702000 {
 
 		lpass: audio-controller@7708000 {
 			status = "disabled";
-			compatible = "qcom,lpass-cpu-apq8016";
+			compatible = "qcom,apq8016-lpass-cpu";
 
 			/*
 			 * Note: Unlike the name would suggest, the SEC_I2S_CLK
-- 
2.35.1

