Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8FC624F23D1
	for <lists+devicetree@lfdr.de>; Tue,  5 Apr 2022 08:58:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231270AbiDEHAB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Apr 2022 03:00:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53382 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231268AbiDEHAA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Apr 2022 03:00:00 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4E4827EA19
        for <devicetree@vger.kernel.org>; Mon,  4 Apr 2022 23:58:02 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id n6so10589332ejc.13
        for <devicetree@vger.kernel.org>; Mon, 04 Apr 2022 23:58:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=6a4whhXq8xdge76IgYoCHrL2FoyW/DFqlQKK+cWx+tE=;
        b=ZJHLcRL1YakrmvRFLp+ZmgaXLIrXF09PvNE0fog849Gfwq0K/2YZqFhVASIXjKLsa8
         /2tMxswNPcZN/5CIUGMZ5rxk5qKvvFyMlLtBWIm0DdXUyevLAIf4lMjmJKYLvUb71y31
         zXXrlewGt+iqiAcLU/vY3RfxO/TH7rSbeZCXq3AAME9i2dvIzKpgWsDQQkiUQaXosqEr
         DynSQu7JKbeHVU5wihC68XGNAxxtA3znpnqE2r9ycfPBUt7O15hVRh9noWO/ykkVInVq
         XlIMaPxP7iQF2N6ZQTHQen6ucu5cXOvSwSch62+eck2V/918Gt8MoZyEuvHoGWZpU4wo
         LReA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=6a4whhXq8xdge76IgYoCHrL2FoyW/DFqlQKK+cWx+tE=;
        b=dgU3DU2Xbx9M8tmXxXBkryF2RtWXex7GpH9+x8Ls+b7HdPIoBUMeY0uP10WADDisy1
         Q1d86Xbh6k9DnM7M6VjwDYFOIfdr/JZp4bTp+ePoEUuH6gOWdOhLT2RVID+H9RNBfbKn
         nd4j/18BaVbiLJ70XaA7Uu1UhpOVyNduLamzBND9DCF5Up0drkz6pg/V0H0iuuj1XvA3
         tGBbvbkpxBhi+pxcj1PFSnlpn43qoTR61llDlBSfp2UtjY5Jl3nufooD6vEdXGgiCIn3
         RVdNTtdSwOrM4gf+IfPs0Swsl3OJUwwAvyN51ZTy+W+iCfkM4weNxJyz6VQZlW7ttIX6
         q+WA==
X-Gm-Message-State: AOAM532Pg3OHD2pfBVQhkIYYAKkHjPlAUsi5SJOI8upc6/OXaJki7SjZ
        JSGR8UyxIEYtisPtJ7ifkxCs+g==
X-Google-Smtp-Source: ABdhPJyfNzFcFmbqujbKXQBjJG49OBM/Nn2E4LiD8zF9LmxpEc1HW4phIcgCY72UAywHtZnsOGPjrw==
X-Received: by 2002:a17:906:3042:b0:6cd:20ed:7c5c with SMTP id d2-20020a170906304200b006cd20ed7c5cmr1994575ejd.241.1649141880927;
        Mon, 04 Apr 2022 23:58:00 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id f17-20020a056402355100b0041925e80963sm6367419edd.41.2022.04.04.23.58.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Apr 2022 23:58:00 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 2/3] arm64: dts: qcom: msm8916: rename WCNSS child name to bluetooth
Date:   Tue,  5 Apr 2022 08:57:51 +0200
Message-Id: <20220405065752.27389-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220405065752.27389-1-krzysztof.kozlowski@linaro.org>
References: <20220405065752.27389-1-krzysztof.kozlowski@linaro.org>
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

The "bluetooth" is more popular and more descriptive than "bt", for a
Bluetooth device.  The WCNSS DT schema will expect such naming.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes since v1:
1. None.
---
 arch/arm64/boot/dts/qcom/msm8916.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8916.dtsi b/arch/arm64/boot/dts/qcom/msm8916.dtsi
index cf0482fdf69d..9a496b7b78fb 100644
--- a/arch/arm64/boot/dts/qcom/msm8916.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8916.dtsi
@@ -1788,7 +1788,7 @@ wcnss_ctrl: wcnss {
 
 					qcom,mmio = <&pronto>;
 
-					bt {
+					bluetooth {
 						compatible = "qcom,wcnss-bt";
 					};
 
-- 
2.32.0

