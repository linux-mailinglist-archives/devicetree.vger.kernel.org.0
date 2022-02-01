Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D2B0F4A53D6
	for <lists+devicetree@lfdr.de>; Tue,  1 Feb 2022 01:11:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230202AbiBAALI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jan 2022 19:11:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58278 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230188AbiBAALH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jan 2022 19:11:07 -0500
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com [IPv6:2607:f8b0:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 148C3C06173B
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 16:11:07 -0800 (PST)
Received: by mail-pl1-x629.google.com with SMTP id h14so13986461plf.1
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 16:11:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=9+cijBLvhJxxRYTV1vDRfsp76gMHCb5POk8j3TEiH8M=;
        b=Jm2CaDN2N7qqGbiD2LddLHmzL00xLkXv3Y3pOSGVcnR7GXM8amxWj2yM/Sle/RNG+S
         f0i0SumDRisGYCqyxMGl4b1wnjKO3oBK8VAKQEOjXmriLtMaL4N+usgJvc2y7F532veE
         IEZcTA3+GAq//gjof5wktp2Ofbrf2vXKPkBuA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=9+cijBLvhJxxRYTV1vDRfsp76gMHCb5POk8j3TEiH8M=;
        b=k4YIxGGMLvgIPezjisIl7CEKvD2koTpVOesf5CVl++wnxkmdOzQgbo3Joi2VRkTZDO
         YsF5aOOmYdW+A8iWSzRTbOgxDD6qJ9fGirz2CLG/+wfcv1Zu+eNpVtQBF2HQ+r9tNr58
         j6NEKLzEiunJSYNRlX4FQKEddBWCYXG6mfq9ZW55M9X+UtSRfaeOb1tZ21JE46sW2b27
         q0UBqgiRn1qsGQ7dS5RuzENd+rbuue+QIY/X/kijM9jhfDoUm1hDAw5B9IrAt92fg+y6
         WchEjzWbGihjGoJwmfioRs3WW2w/VHhNFjbTSYfSaZ7rNmnOajBVdq9PsfE/jc9NAA+j
         nrTw==
X-Gm-Message-State: AOAM5325IU4TJvR+wVcBA+uvjlfKeutAJQSoz4cbkmKb3o8VFQ9s1LPE
        u5INTFOK1t1aiTkR7+oUG1K5Uw==
X-Google-Smtp-Source: ABdhPJxTTHmLgX2FBxja2v32QILtVmEmRq+EQJCtJOkQ8TcW1LZIjWolmzbSDg7hA1u4ZNmSzIyxrw==
X-Received: by 2002:a17:90b:4c43:: with SMTP id np3mr36977906pjb.88.1643674266633;
        Mon, 31 Jan 2022 16:11:06 -0800 (PST)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:201:c47e:986d:769b:ead2])
        by smtp.gmail.com with ESMTPSA id oj5sm424024pjb.53.2022.01.31.16.11.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jan 2022 16:11:06 -0800 (PST)
From:   Douglas Anderson <dianders@chromium.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Shaik Sajida Bhanu <sbhanu@codeaurora.org>, mka@chromium.org,
        swboyd@chromium.org, Douglas Anderson <dianders@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/5] arm64: dts: qcom: sc7180-trogdor: Add "-regulator" suffix to pp3300_hub
Date:   Mon, 31 Jan 2022 16:10:38 -0800
Message-Id: <20220131161034.1.I7b284531f1c992932f7eef8abaf7cc5548064f33@changeid>
X-Mailer: git-send-email 2.35.0.rc2.247.g8bbb082509-goog
In-Reply-To: <20220201001042.3724523-1-dianders@chromium.org>
References: <20220201001042.3724523-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

All of the other fixed regulators have the "-regulator" suffix. Add it
to pp3300_hub to match.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
index 7d8bf66e8ffe..78296ed6fd29 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
@@ -284,7 +284,7 @@ pp3300_fp_tp: pp3300-fp-tp-regulator {
 		vin-supply = <&pp3300_a>;
 	};
 
-	pp3300_hub: pp3300-hub {
+	pp3300_hub: pp3300-hub-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "pp3300_hub";
 
-- 
2.35.0.rc2.247.g8bbb082509-goog

