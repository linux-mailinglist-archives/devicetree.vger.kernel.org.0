Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7DCF5506019
	for <lists+devicetree@lfdr.de>; Tue, 19 Apr 2022 01:10:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234346AbiDRXMp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Apr 2022 19:12:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33622 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234377AbiDRXMn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Apr 2022 19:12:43 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9F2B21CFF9
        for <devicetree@vger.kernel.org>; Mon, 18 Apr 2022 16:10:02 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id r187-20020a1c44c4000000b0038ccb70e239so399390wma.3
        for <devicetree@vger.kernel.org>; Mon, 18 Apr 2022 16:10:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Ma+BI04gWQ/Gx/6CZ1w2tfFPMhM4LqfFZ+0ix0uokDc=;
        b=sn995jmC9GwrvezwLe/wPpk9HKgCzMu5unxZVJSGWlsh/1sppWsfFVyua1x9Fvx4wE
         Oc5RAzmQUO3zAYbmoX8dB3yNfj1M7std5yQURF1F9EhdLwnPa092GMOh+kBnRowY3CDP
         0F6z/T4dLsYimB4ety6yryRzZkb9SEotDufFbwGdTlltEDE3Myk1mQ55SOa1dQYYXKxK
         e+qnBmVu+oYLqMLeghYG0LkA25MJlcXDjRoeJq0upgCiaXbBPL9VU93yXxVzyE7gY4zU
         dUSrMmi7f+9C+z2CW8jqc1CLn6/iFf8L04whaEFD4+kpQKSC4PAii3sjz0hevbJ9PE4g
         9yBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Ma+BI04gWQ/Gx/6CZ1w2tfFPMhM4LqfFZ+0ix0uokDc=;
        b=cFvhv+3W6HSFWsIE24Zcc91kjJtIkefSV2jwR7YDtrKF4OAFINWdNv2Ng72lpAmMZW
         WoAQq0cNcXjKl5Quhd4N8CtzYu5Lf7NxcNoTcqc7frPNPtlYdGPlnb2MFqfvBqi1WZcy
         yDpIRQPWzMboP7rj765mk0mpgc6snsSSUHXw+WUGOzOTyCKhtnV4Cnkr398REdzqV3+S
         QyM1aAPppMWKJDc7fsJkpx8ggDSVQoNePDkIiE0edZ3fXf15PtOrYPPoLGC25b33HTrM
         bhVZymy5YPzrtA0aj5/gBQ1gdQKejIYG9GVgr6Gno5BcvhTZzHxre3u2lV6F8GW3qVd8
         LQHg==
X-Gm-Message-State: AOAM532u//tbhsWqdkXvvY5SM7Tkeg5ngGJ8wEs3L+7VKS1P9TX9xUFU
        /NbIlwYgPY3V7O9nJoFoW7gyhQ==
X-Google-Smtp-Source: ABdhPJxZoakdFldpRtcq6a2ls92ZkmEbJCnPj7ftc/9xkMmnC+iEseDaL40CILgi9S2lK4t9TpdYxA==
X-Received: by 2002:a05:600c:4ecb:b0:392:88ed:1ef9 with SMTP id g11-20020a05600c4ecb00b0039288ed1ef9mr13078107wmq.68.1650323401217;
        Mon, 18 Apr 2022 16:10:01 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id f14-20020a5d568e000000b00207ae498882sm11187567wrv.32.2022.04.18.16.09.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Apr 2022 16:10:00 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     srinivas.kandagatla@linaro.org, robh+dt@kernel.org,
        krzk+dt@kernel.org
Cc:     alsa-devel@alsa-project.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, bryan.odonoghue@linaro.org
Subject: [PATCH 2/2] arm64: dts: qcom: Fix apq8016 compat string to match yaml
Date:   Tue, 19 Apr 2022 00:09:56 +0100
Message-Id: <20220418230956.3059563-3-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220418230956.3059563-1-bryan.odonoghue@linaro.org>
References: <20220418230956.3059563-1-bryan.odonoghue@linaro.org>
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

The documented yaml compat string for the apq8016 is
"qcom,apq8016-lpass-cpu" not "qcom,lpass-cpu-apq8016". Looking at the other
lpass compat strings the general form is "qcom,socnum-lpass-cpu".

We need to fix both the driver and dts to match.

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

