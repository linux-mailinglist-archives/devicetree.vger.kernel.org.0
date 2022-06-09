Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6B720544BBC
	for <lists+devicetree@lfdr.de>; Thu,  9 Jun 2022 14:24:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245385AbiFIMYC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Jun 2022 08:24:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39882 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245362AbiFIMX7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Jun 2022 08:23:59 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8202A245AB
        for <devicetree@vger.kernel.org>; Thu,  9 Jun 2022 05:23:57 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id a2so31594720lfg.5
        for <devicetree@vger.kernel.org>; Thu, 09 Jun 2022 05:23:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=lCTRhbt4okJRARx9L2zabx0wSnnKkG9VZWoKlVnWoCI=;
        b=FxBHFuNNV6g2mDYqLVI8qNabQ5bAOYPreZrHx9tNp+QakZlANSFHu59alRdTlo+g/H
         XrwNOWLPsgitI8krbzF0RsDzSOXPKEIDap96kF1MImZpCmIhnpQJghOGivhTxUcCSr+7
         v3/R20+yMbPsSZl4FyEcQqqeYNSZXGzZht07KXmGDPPketkf3COzVgxwHiAiEUAL8lnS
         ARDhM2yNhjOpUqs0z2vzssgCP6QdiTBDTiaxLFsajOX4bR5JP7bi9Hwt/IpCwuVqm7me
         ohZ9Nnbg4C/csUUmokNVdGOCVhKouab2ktRAEFLozXQtryfHglgE1Sx3tgySz8Son8W9
         C7iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=lCTRhbt4okJRARx9L2zabx0wSnnKkG9VZWoKlVnWoCI=;
        b=aKXWfJhSSCKu0F6HyEtrcmK5qPwY47W5/1cZ/TMe+19/PIyWwZrEinkqFsabUXBSdk
         951d77Wyx2eKxKMJoIJHavTLn/Vy/I5vLXCVW9a5RBNaf8bAgrfQjyyT/VgZIJM8PjR5
         /pWMu8V61en1usseoIXlHuVF5+AftgtZbutkeddvB+xmF5pQRRnaadgZGUZfdVTfUKwC
         rveMzOA9Jc8FbJ6HuK4qJ9wwar+qLqI9x1eOY42aNsUHqYpTJoi5xokksnAsMiZkpYiH
         33Xm/me42ltmhtLwQEDNEtae2rrcPXM7QA4URqXS24bMVSTYkAPz6BAq2VIKC3pmRg1I
         Ey4w==
X-Gm-Message-State: AOAM533r3LzaGHWcJbFnKuiLihFLWJ/j4YyNOTbQ+6c8HWZ/ssVcTNVD
        9imPTz6dhJVDgZU8W3nOset0Vw==
X-Google-Smtp-Source: ABdhPJwa9xE9mTnD2qCTO5hii7wZiGfDsJYgAE7WCXsQJ9ks73Rt75W2ZMDJfEiduInDO+yL59QUKg==
X-Received: by 2002:a19:7708:0:b0:47a:bff:509c with SMTP id s8-20020a197708000000b0047a0bff509cmr3995533lfc.299.1654777435530;
        Thu, 09 Jun 2022 05:23:55 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id f11-20020a056512360b00b0047daa133decsm32421lfs.166.2022.06.09.05.23.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jun 2022 05:23:55 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
Subject: [PATCH v3 04/14] ARM: dts: qcom: apq8064-ifc6410: drop hdmi-mux-supply
Date:   Thu,  9 Jun 2022 15:23:40 +0300
Message-Id: <20220609122350.3157529-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220609122350.3157529-1-dmitry.baryshkov@linaro.org>
References: <20220609122350.3157529-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The HDMI circuitry on the IFC6410 is not powered by the 3v3. Drop the
hdmi-mux-supply property.

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom-apq8064-ifc6410.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/qcom-apq8064-ifc6410.dts b/arch/arm/boot/dts/qcom-apq8064-ifc6410.dts
index 2638b380be20..eb6b1a1ff117 100644
--- a/arch/arm/boot/dts/qcom-apq8064-ifc6410.dts
+++ b/arch/arm/boot/dts/qcom-apq8064-ifc6410.dts
@@ -341,7 +341,6 @@ hdmi-tx@4a00000 {
 			status = "okay";
 
 			core-vdda-supply = <&pm8921_hdmi_switch>;
-			hdmi-mux-supply = <&ext_3p3v>;
 
 			hpd-gpios = <&tlmm_pinmux 72 GPIO_ACTIVE_HIGH>;
 
-- 
2.35.1

