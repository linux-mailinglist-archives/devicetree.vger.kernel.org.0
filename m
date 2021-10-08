Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B586F4261E7
	for <lists+devicetree@lfdr.de>; Fri,  8 Oct 2021 03:25:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240863AbhJHB1p (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Oct 2021 21:27:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38938 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236131AbhJHB1m (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Oct 2021 21:27:42 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 65CF4C0613E6
        for <devicetree@vger.kernel.org>; Thu,  7 Oct 2021 18:25:41 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id m3so32596573lfu.2
        for <devicetree@vger.kernel.org>; Thu, 07 Oct 2021 18:25:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=qQKiFrIlu4aY0PWyyaI2rChbhDxGEcd2OHWvmY22ZAo=;
        b=VdvRqe+u6Yol+YioW6CZJicr70CDuUrGovPClHwleRc85YBA/N4i1jWSvugRV8FgF9
         cVsJ9q3YpOspPP4X6vqPU0ox7pnYbduXrW2GtMXdFaBnDdf3gQMwDYLMya88QAHue7Xr
         5XdvfheaytUhZ2af/y1vQ3TkwAikTmUjdTWpW1AP7wyj1eVmfWHDx5DMCFPDeGfhmc2V
         sRwfZ6lgs+3HmCllSNXiUUAXWnEU0KOhUgKjF489DZxJobbOKM9CC8ejMlsb6e8u0Kur
         A2l2/PS7Rj8EPPsqnl4dZ1B0PyJyjOijELe/Ug4+MzylD8RwFW3WezfbFbWRLWQ2QKOR
         IUDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=qQKiFrIlu4aY0PWyyaI2rChbhDxGEcd2OHWvmY22ZAo=;
        b=XqJW89SPpRyBY1HcYSeprWiNPz6gRTLyyJ95xM2vgPp7oUYVEweOTFOoWhXGIij2J1
         5vWbqOyLSXiYqyiDK9dORV1x+j0DHvaASL1/6ZkUiQdCTUBtcy/iML3+XBG9gqrrgdi+
         1E5qdX8bxERJG07W2iLQ1+iZQZ1xQzT1H5hEnmYjBE1uoUDlahwqShI0Dv2RrG4FmLvF
         pg0jSXCTdhJfJXhT4QBoxsU59qm7/1c/5VBxpyasNtgcYfaEYKx2ozr2uj33M1Zf734Y
         q9dxFz/+ffEWsQzZOv0PyvOio36pMafLORv3utx50OlySE5YgYBN8TcLZTH7Nv5TOe6f
         YrEw==
X-Gm-Message-State: AOAM530jRSfKqlLJGWyxgMjHjunHMDwDCStG6trvfZBVe7+kncpOBNyM
        0/FnCvU8qfVihElWZOvxEdNR1w==
X-Google-Smtp-Source: ABdhPJz/yPBXt97ilRGNphY8eRn9Wa01/2mCI/Ojy/r5UqbQdnZSfb21/Umrj86ttO00zKEC1BBR7A==
X-Received: by 2002:a19:674c:: with SMTP id e12mr7862935lfj.679.1633656339824;
        Thu, 07 Oct 2021 18:25:39 -0700 (PDT)
Received: from umbar.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id s4sm112875ljp.115.2021.10.07.18.25.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Oct 2021 18:25:39 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Subject: [PATCH v3 18/25] ARM: dts: qcom-apq8064: add interrupt controller properties
Date:   Fri,  8 Oct 2021 04:25:17 +0300
Message-Id: <20211008012524.481877-19-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211008012524.481877-1-dmitry.baryshkov@linaro.org>
References: <20211008012524.481877-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Now that the pmic-mpp is a proper hierarchical IRQ chip, add interrupt
controller properties ('interrupt-controller' and '#interrupt-cells').
The interrupts property is no longer needed so remove it.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom-apq8064.dtsi | 21 ++++-----------------
 1 file changed, 4 insertions(+), 17 deletions(-)

diff --git a/arch/arm/boot/dts/qcom-apq8064.dtsi b/arch/arm/boot/dts/qcom-apq8064.dtsi
index cbc9be8a69cd..5aebbeb5eb07 100644
--- a/arch/arm/boot/dts/qcom-apq8064.dtsi
+++ b/arch/arm/boot/dts/qcom-apq8064.dtsi
@@ -683,10 +683,8 @@ pm8821: pmic@1 {
 				pm8821_mpps: mpps@50 {
 					compatible = "qcom,pm8821-mpp", "qcom,ssbi-mpp";
 					reg = <0x50>;
-					interrupts = <24 IRQ_TYPE_NONE>,
-						     <25 IRQ_TYPE_NONE>,
-						     <26 IRQ_TYPE_NONE>,
-						     <27 IRQ_TYPE_NONE>;
+					interrupt-controller;
+					#interrupt-cells = <2>;
 					gpio-controller;
 					#gpio-cells = <2>;
 					gpio-ranges = <&pm8821_mpps 0 0 4>;
@@ -728,19 +726,8 @@ pm8921_mpps: mpps@50 {
 					gpio-controller;
 					#gpio-cells = <2>;
 					gpio-ranges = <&pm8921_mpps 0 0 12>;
-					interrupts =
-					<128 IRQ_TYPE_NONE>,
-					<129 IRQ_TYPE_NONE>,
-					<130 IRQ_TYPE_NONE>,
-					<131 IRQ_TYPE_NONE>,
-					<132 IRQ_TYPE_NONE>,
-					<133 IRQ_TYPE_NONE>,
-					<134 IRQ_TYPE_NONE>,
-					<135 IRQ_TYPE_NONE>,
-					<136 IRQ_TYPE_NONE>,
-					<137 IRQ_TYPE_NONE>,
-					<138 IRQ_TYPE_NONE>,
-					<139 IRQ_TYPE_NONE>;
+					interrupt-controller;
+					#interrupt-cells = <2>;
 				};
 
 				rtc@11d {
-- 
2.30.2

