Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E1B0E4261BC
	for <lists+devicetree@lfdr.de>; Fri,  8 Oct 2021 03:25:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237070AbhJHB12 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Oct 2021 21:27:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38864 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236145AbhJHB11 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Oct 2021 21:27:27 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6ECF3C061762
        for <devicetree@vger.kernel.org>; Thu,  7 Oct 2021 18:25:32 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id r19so30680212lfe.10
        for <devicetree@vger.kernel.org>; Thu, 07 Oct 2021 18:25:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=clR0pd2rxG7rsbJsSmT96iRGAfExlfxhlmBSBtDpU+E=;
        b=cHPcGJugcIEIj7qiruq9EapjU3rzcxhYWG1TXzY5AkX8rE7pjc7vDrHq0+jrce34xn
         eJiQmKEInBCpIn/R3g4ex0+cBPs5zxxe8FnMcJtdGIKigtycCx0ei6anMchp7kmh6xXM
         I/t21gX/nAOd1+S8796p1iD6LcTI+3hPYIgJ1nqpU6dg+YLqTfG8KZOyMEvTq5P5ad/8
         a0sfRvenRwiQ5BZKKX4KTq8h22WuEt+SMxu+XZNoyTpariS2cuP4pHyXO6NElm32gnEp
         j4FlqLgczmxO9iIIh+jB3w008Y0qTBH6u3S2YIfGZSsZIShvEytAAyRZ617WTKx40x6J
         tyog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=clR0pd2rxG7rsbJsSmT96iRGAfExlfxhlmBSBtDpU+E=;
        b=XyzcPSmOf9Zyy3/L9TgNIgoGvyyWXOGVuZt5Pq+lm9asGsarPyZRyHEd3nwfI/Puuc
         AkMMMGxjHonkRQHp3JNzpjrEU5EhHxybx/0ZgRirQjTiB/heLQJP85vhjIxLExwLiE4h
         56cA29udbLcc3ip/iLJGPYii54ZTAOZ5mSKiKGoiWp7yzKZlSJrkPewetAnkwJ6kwuS4
         f47tAw/MxNgaWNL/ad7VP668+bxze4cy6bISz2uWkbGVV5mTPVE+KjeRn3sCmdNgg73x
         QiLYCCOACwXCirfnXwKaf0Wjzom2ZEqGL/LYB8ynhxqHfkBmjdmJc/52gBaGIHY/2xCL
         kXGA==
X-Gm-Message-State: AOAM531p4ugxzHeGpq4g11kRk0RrRvEdvu8MPcPRIYZGXrlRMgACmeCV
        bieJfu/ojLquV8S3JeYaqOANSg==
X-Google-Smtp-Source: ABdhPJyGM7o5G0i6hoOpaUrxWb56kXiSMqcM/MjOQzctlUK3zFXekZ7gV0F0bQ7nQglo6H38HlhhcA==
X-Received: by 2002:a2e:550:: with SMTP id 77mr377760ljf.478.1633656330786;
        Thu, 07 Oct 2021 18:25:30 -0700 (PDT)
Received: from umbar.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id s4sm112875ljp.115.2021.10.07.18.25.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Oct 2021 18:25:30 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Subject: [PATCH v3 04/25] ARM: dts: qcom-msm8660: add gpio-ranges to mpps nodes
Date:   Fri,  8 Oct 2021 04:25:03 +0300
Message-Id: <20211008012524.481877-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211008012524.481877-1-dmitry.baryshkov@linaro.org>
References: <20211008012524.481877-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add gpio-ranges property to mpps device tree nodes, adding the mapping between
pinctrl and GPIO pins.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom-msm8660.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/qcom-msm8660.dtsi b/arch/arm/boot/dts/qcom-msm8660.dtsi
index 480fc08cbe8e..d404d386d392 100644
--- a/arch/arm/boot/dts/qcom-msm8660.dtsi
+++ b/arch/arm/boot/dts/qcom-msm8660.dtsi
@@ -307,6 +307,7 @@ pm8058_mpps: mpps@50 {
 					reg = <0x50>;
 					gpio-controller;
 					#gpio-cells = <2>;
+					gpio-ranges = <&pm8058_mpps 0 0 12>;
 					interrupt-parent = <&pm8058>;
 					interrupts =
 					<128 IRQ_TYPE_NONE>,
-- 
2.30.2

