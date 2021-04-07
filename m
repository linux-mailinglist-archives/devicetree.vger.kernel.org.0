Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 753E5356FA3
	for <lists+devicetree@lfdr.de>; Wed,  7 Apr 2021 17:02:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353253AbhDGPCS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Apr 2021 11:02:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55308 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349063AbhDGPCR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Apr 2021 11:02:17 -0400
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D15DC06175F
        for <devicetree@vger.kernel.org>; Wed,  7 Apr 2021 08:02:06 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id u20so21029321lja.13
        for <devicetree@vger.kernel.org>; Wed, 07 Apr 2021 08:02:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=UReEYo213vcg++rM9BnCxXvPAz9Gqu2yc6+O99aZXpU=;
        b=t9yU4v5QFQrksboxmgqw9CMDc3UhgK8w4UHj6YAEjjuUlA3SO4xhp+ykJv0YgaITyz
         3Pdf3NFCMzVvv0eypJIvSgnU+2f2n3Cq56lpUguxIW/KX92KPBXyQUDjViBk1wYvLklj
         syAqMQK2rL79Ln/PLRrMFDLbMHGjMiNxJfhN2NeRyIWdgkFtReSHJmGsRg1F2ZNHXdgz
         Lh9BkKyAD40vLGzi3lWY+kpDHuOxxg9n33ACAimjJTsat3A0eniO7TV8ZcQ4IKb+R5dK
         Jyhzp/oN7XKwI4oyByu6BUEbiEOaECCXcLTTlNzIcDxMuSagrGUzNhSFIC29gX9sHplk
         vxXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=UReEYo213vcg++rM9BnCxXvPAz9Gqu2yc6+O99aZXpU=;
        b=SSmwracXDfa5HtYWdmcdLO0rutl3E1aZ2aleM9BS3VpJUxF+bALYrUyAaDXUMDb9KR
         cUDfBFZHIUcHYXfAZ3PcHWCEc+sZ77Cy2PWA+sb41pfgnS5ThsmT9PqwT9+dLI4Wxdrf
         i0BaAHacIDHQwmK0ROYs/PzPHkypQISU1sc49cgidgz185w7dGKLt3MIQAVbx88OENvm
         gJWsoOW70OzcmANmFTrUGC3ZaXXVnBvJCla9y/Z6H9J+nLVAk/7lvUu1a/TFeloPEJXV
         42wtvORZIqSyns11P/VoYAoNxCZLxAQggEoddRUcQpXK8++ufujDegHN8bc3BGv9fTtl
         tQGQ==
X-Gm-Message-State: AOAM533AbJIGKnbEF06F3iFja3tycgRU9Qfa3Tp28YjISXNTkaFYkHew
        zycG1Lwop+jUUo5alC59YXoNcA==
X-Google-Smtp-Source: ABdhPJxSlyf28SdfZfzsSLBQwJ0rK4f8aI77/+PnV7y9HKV9YtL3A4USpqOmNrcRfil2GQu8M9xpyw==
X-Received: by 2002:a2e:a60a:: with SMTP id v10mr2479817ljp.267.1617807724545;
        Wed, 07 Apr 2021 08:02:04 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id o11sm2552142ljg.42.2021.04.07.08.02.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Apr 2021 08:02:04 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Jonathan Marek <jonathan@marek.ca>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org
Subject: [PATCH v2 4/4] arm64: dts: sm8250: move bus clock to mdp node for sm8250 target
Date:   Wed,  7 Apr 2021 18:01:57 +0300
Message-Id: <20210407150157.801210-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210407150157.801210-1-dmitry.baryshkov@linaro.org>
References: <20210407150157.801210-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Move the bus clock to mdp device node,in order to facilitate bus band
width scaling on sm8250 target.

The parent device MDSS will not vote for bus bw, instead the vote will
be triggered by mdp device node. Since a minimum vote is required to
turn on bus clock, move the clock node to mdp device from where the
votes are requested.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index 394973e778f7..60fe2eaf06c5 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -2294,10 +2294,9 @@ mdss: mdss@ae00000 {
 			power-domains = <&dispcc MDSS_GDSC>;
 
 			clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
-				 <&gcc GCC_DISP_HF_AXI_CLK>,
 				 <&gcc GCC_DISP_SF_AXI_CLK>,
 				 <&dispcc DISP_CC_MDSS_MDP_CLK>;
-			clock-names = "iface", "bus", "nrt_bus", "core";
+			clock-names = "iface", "nrt_bus", "core";
 
 			assigned-clocks = <&dispcc DISP_CC_MDSS_MDP_CLK>;
 			assigned-clock-rates = <460000000>;
-- 
2.30.2

