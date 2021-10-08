Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EF2264261CB
	for <lists+devicetree@lfdr.de>; Fri,  8 Oct 2021 03:25:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238359AbhJHB1c (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Oct 2021 21:27:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38846 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238501AbhJHB1a (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Oct 2021 21:27:30 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39572C06176A
        for <devicetree@vger.kernel.org>; Thu,  7 Oct 2021 18:25:36 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id z11so24038022lfj.4
        for <devicetree@vger.kernel.org>; Thu, 07 Oct 2021 18:25:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=N1fDvr411Sym7LpWWuQWuBZ0aeO9/HmmaZ6tC+1sj4g=;
        b=ZCazwiO1we07+uKMoAa7RwVQbCbUF9UKfbtkFo2Mmk+VOVvy/+ae6BDuvQdyF1EQAL
         KYMgzbnKSAhN1q/yomhgubVP7RAKJ8ohBxP3ODuboYxgkUrIHzHLNNLBH2Jkgwc+87vz
         eo+fU8SgS3BuGap2BZSRBQ8BK7l7RLisJ24NkcbeLKbH9CZhx6+/prRvHcJrmEgXT6/V
         2UemRyGg5+tq6MtpVEJw26wkd/TCOU4V+9h5obvLDsXuRf7SFD10RVQ+Vetl2yEm2X8i
         ulMVDu9qWieV7bf32riRWtpHxiRIGTx2Qqf0N2uMmuxkTA9HWJMsqd61D9JPsuqhRfqK
         JB4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=N1fDvr411Sym7LpWWuQWuBZ0aeO9/HmmaZ6tC+1sj4g=;
        b=S71GrKy3tNRQWkQFO86X5IUu0DNoGaFguwTHev1NWhOOlpXwrs0+LY19RxZCi1+NW9
         XQLyjWLcFTwAzYEJsp8AeGAmYc3Gw3J4g4jOZmbZKC1IUQRp/ufnuwff7v1st+Cf6KUo
         Txpnrzf6212vZeCBv0JAkvI187iOzMkhwlnI0iIB7kjqjkoWF7W13v8uzrN1VM0dY0y7
         ya0gma65cp25qLWrXmEPhZmW9qQzpMCnqYvy1RutJY27srB0JhBKx+Gd5B06vIh2jQ2P
         DSXtHxcbYYj9VC2PtW3Wi4YyYRqmlztD6CEjOd+A8nqU5KdRLexCkRgop9bi5bnsAUNe
         GZqQ==
X-Gm-Message-State: AOAM531J027zG5TyXf0I63A+wh43ZxgL6eApV0HJnSGQW+LG3io6ukZ5
        UDNbrMVyvRSNH9pLGe8uRwzgX+GKFw2GTA==
X-Google-Smtp-Source: ABdhPJy1PwY9wFw5I6HLxquQsYiQDQ7Wz4P9jG7QZ7mH/UqeE2jxqqAPcM4IHoemrhfQ2baaZbT1qA==
X-Received: by 2002:a2e:544a:: with SMTP id y10mr338686ljd.323.1633656334612;
        Thu, 07 Oct 2021 18:25:34 -0700 (PDT)
Received: from umbar.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id s4sm112875ljp.115.2021.10.07.18.25.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Oct 2021 18:25:34 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Subject: [PATCH v3 10/25] arm64: dts: qcom: pm8916: fix mpps device tree node
Date:   Fri,  8 Oct 2021 04:25:09 +0300
Message-Id: <20211008012524.481877-11-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211008012524.481877-1-dmitry.baryshkov@linaro.org>
References: <20211008012524.481877-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add missing "qcom,spmi-mpp" to the compatible list as required by the
node description. Also add gpio-ranges property to mpps device tree
node, adding the mapping between pinctrl and GPIO pins.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/pm8916.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/pm8916.dtsi b/arch/arm64/boot/dts/qcom/pm8916.dtsi
index f931cb0de231..7d9e25dd9e3a 100644
--- a/arch/arm64/boot/dts/qcom/pm8916.dtsi
+++ b/arch/arm64/boot/dts/qcom/pm8916.dtsi
@@ -91,10 +91,11 @@ rtc@6000 {
 		};
 
 		pm8916_mpps: mpps@a000 {
-			compatible = "qcom,pm8916-mpp";
+			compatible = "qcom,pm8916-mpp", "qcom,spmi-mpp";
 			reg = <0xa000>;
 			gpio-controller;
 			#gpio-cells = <2>;
+			gpio-ranges = <&pm8916_mpps 0 0 4>;
 			interrupts = <0 0xa0 0 IRQ_TYPE_NONE>,
 				     <0 0xa1 0 IRQ_TYPE_NONE>,
 				     <0 0xa2 0 IRQ_TYPE_NONE>,
-- 
2.30.2

