Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 072D24261CD
	for <lists+devicetree@lfdr.de>; Fri,  8 Oct 2021 03:25:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230305AbhJHB1d (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Oct 2021 21:27:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38870 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237264AbhJHB1b (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Oct 2021 21:27:31 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E18AAC061762
        for <devicetree@vger.kernel.org>; Thu,  7 Oct 2021 18:25:36 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id i24so30955497lfj.13
        for <devicetree@vger.kernel.org>; Thu, 07 Oct 2021 18:25:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=y8Kd+xfjEORBsc4n3BHzpntVG1Hf41evxmwe7Q2QRKE=;
        b=lCqUcM67pzlHiAgtQf7DThs1V02qml9XsYsykqJuO9bO4pqrtKSpRNE6Vix9wzFr+i
         G3e35aULKRtlM1eL6Uba/fti8dmqhRQxfTxAmT1RwFQnv1P/gu9e6G9OsRXIK7+IpzWF
         TDrRHAHK/v5tglF6Tk3LuK6dazkZLklskVUTODbH0a8owKNzVQC0c8of/tn1mJz41gW2
         mM5iT6lG13VEdvQxELS+1jmz0L5halJwMPklKAGhl2+8Wds9B27zBAJLV6ZLfdky9w6c
         UWJ6w/lfXcYeMQRAF7vJVcQNVPlmheYAI7K/C6ZMpQC8Sg0aDFnSYXrD527DSDGCSxVD
         SM7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=y8Kd+xfjEORBsc4n3BHzpntVG1Hf41evxmwe7Q2QRKE=;
        b=vO2QYOmmAgPMBUMg5E5GtdndgcEU0lxdA2Iy1xsguIW6S4lOEbvIsRj6wbvwPcsu5z
         sEZNrO7875HJsUkAnAm6Bp52/2I1Vklnvorm3JBVdcAzn0ssnpS7hzylAlQQMxkzuaKP
         7Rb0eFT34NrfcJutBhZF0UptvyOSKDwzxaPWmLILg+Q+cVMqSMsFBNHysGiJZ6Iqg34L
         JSArpegM7IvkSfKnFkqbwxye90KyQ8ikD2/djuM30JxCrlXg18lS7Qjz8/Mlpy2T0iK+
         0/NhdoZa0xoowEIB/wKLEiwlogYJP3BRkL0c+n0pnOSZetoXHsAzXKmxLgaSZ/47xdIk
         3NvA==
X-Gm-Message-State: AOAM530aLufD6XIVsscn54zzW+YPXyZWRaRVV6PER/AR/y3QRWGlGM7r
        pxv9Xj0L44/qCJm0LL+QgeyXxw==
X-Google-Smtp-Source: ABdhPJwEzudtRN+UIRr5UjSZt36BotkT/oqZHPeRL1+Y8hKKotIxmNoTgLuKsSa/3NgQtg732V8QlQ==
X-Received: by 2002:a2e:2f1b:: with SMTP id v27mr357533ljv.448.1633656335324;
        Thu, 07 Oct 2021 18:25:35 -0700 (PDT)
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
Subject: [PATCH v3 11/25] arm64: dts: qcom: pm8994: fix mpps device tree node
Date:   Fri,  8 Oct 2021 04:25:10 +0300
Message-Id: <20211008012524.481877-12-dmitry.baryshkov@linaro.org>
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
 arch/arm64/boot/dts/qcom/pm8994.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/pm8994.dtsi b/arch/arm64/boot/dts/qcom/pm8994.dtsi
index ad19016df047..88a9d19b60ac 100644
--- a/arch/arm64/boot/dts/qcom/pm8994.dtsi
+++ b/arch/arm64/boot/dts/qcom/pm8994.dtsi
@@ -119,10 +119,11 @@ pm8994_gpios: gpios@c000 {
 		};
 
 		pm8994_mpps: mpps@a000 {
-			compatible = "qcom,pm8994-mpp";
+			compatible = "qcom,pm8994-mpp", "qcom,spmi-mpp";
 			reg = <0xa000>;
 			gpio-controller;
 			#gpio-cells = <2>;
+			gpio-ranges = <&pm8994_mpps 0 0 8>;
 			interrupts = <0 0xa0 0 IRQ_TYPE_NONE>,
 				     <0 0xa1 0 IRQ_TYPE_NONE>,
 				     <0 0xa2 0 IRQ_TYPE_NONE>,
-- 
2.30.2

