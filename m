Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C711440B698
	for <lists+devicetree@lfdr.de>; Tue, 14 Sep 2021 20:14:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229464AbhINSQE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Sep 2021 14:16:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35886 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230035AbhINSQD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Sep 2021 14:16:03 -0400
Received: from mail-ot1-x333.google.com (mail-ot1-x333.google.com [IPv6:2607:f8b0:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 16DC5C061764
        for <devicetree@vger.kernel.org>; Tue, 14 Sep 2021 11:14:46 -0700 (PDT)
Received: by mail-ot1-x333.google.com with SMTP id i8-20020a056830402800b0051afc3e373aso19826301ots.5
        for <devicetree@vger.kernel.org>; Tue, 14 Sep 2021 11:14:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kali.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=sYTvZJAxHGhzzHy9MbB9JE2/ATEqAjDDP6ye5nyr/vE=;
        b=DTgCe1uEB8ugrI4Uve6EgB8s+22KurxbPhxGKDbFnRkAUiIzTUFljDAf2cGtCQOzxx
         zW4sOSF2cJzsyTSoSWzdHz7qWGeQbLEnLF2GuUuFOQqBbvzlrWNc2VhZpJCWYdyPHgFy
         U03jpb3rz9UIy3fvEsXfLc5KX2gQtU4idIv2VkqONw5jVK5/6wUDAGJxawKcYT0f1eDt
         xzdqKieOo+hCnNYJTKJTag2s127zSH+HxddoipCe3JVXRgPelbVEcruBXIFLkhXBKhFQ
         AQJEe8aqh2CnTk9u77jHdGjoO+Fdx6lvME6aTFy/eWU9DNpFrU1lyQzuvdqN1xlRfyKY
         vmfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=sYTvZJAxHGhzzHy9MbB9JE2/ATEqAjDDP6ye5nyr/vE=;
        b=Wr37/PnaFMyZ75+0oh35JomXEp8wJfr/55M/7yd/af/EpLXFVup+EAM0K6go+ZgVi4
         0wvVTEuQE784rbxRMw9+E5zgPOpy5SeIQXXiBETvw0eqV/y8ygtthbBl0aRqwl+ylqQn
         Jl4ogOWuNg88Z08opRC2/HRVhhQJQY1VVZtWtlRtjT6Y6ognShfb3oZ2alkSj9+BkJ3e
         0OwdxBQjJFxJ2Dkrk6IEAgH0Qj2BumVMme+cWRbvvp0MHOrjqYb7Tj/nNeWuYcqD54d/
         dNN785bB1s9Dzt7mSnUU86rggZIovV2Qsy197iGyFc7l6V2Qcjc78H/Q844lp0IPK8HD
         A+GQ==
X-Gm-Message-State: AOAM533rPnAgF+UBJeFWg+en9gLSmFAXZ6TCbEuN3xVSgVUcCOkZ0laR
        TmMXOB5rvSXijDxqU5A2rFCxIQ==
X-Google-Smtp-Source: ABdhPJzAapFP1GYfQM+h+eExDIQ09L8TCYZprsclHv54zKcSa9rwQ66as5TbcALddgz9QnkppHaYuA==
X-Received: by 2002:a05:6830:2093:: with SMTP id y19mr16018501otq.349.1631643285404;
        Tue, 14 Sep 2021 11:14:45 -0700 (PDT)
Received: from DESKTOP-UL9N8HT.localdomain (cpe-173-173-107-246.satx.res.rr.com. [173.173.107.246])
        by smtp.gmail.com with ESMTPSA id w15sm2578954oiw.19.2021.09.14.11.14.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Sep 2021 11:14:45 -0700 (PDT)
From:   Steev Klimaszewski <steev@kali.org>
To:     Steev Klimaszewski <steev@kali.org>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2] arm64: dts: qcom: c630: add second channel for wifi
Date:   Tue, 14 Sep 2021 13:16:03 -0500
Message-Id: <20210914181603.32708-1-steev@kali.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210914162439.31113-1-steev@kali.org>
References: <20210914162439.31113-1-steev@kali.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On the Lenovo Yoga C630, the WiFi/BT chip can use both RF
channels/antennas, so add the regulator for it.

Signed-off-by: Steev Klimaszewski <steev@kali.org>
---
 arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
index d7591a4621a2..531b88d4a1a2 100644
--- a/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
+++ b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
@@ -230,6 +230,9 @@ vreg_l22a_2p85: ldo22 {
 		};
 
 		vreg_l23a_3p3: ldo23 {
+			regulator-min-microvolt = <3300000>;
+			regulator-max-microvolt = <3312000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
 		};
 
 		vdda_qusb_hs0_3p1:
@@ -610,6 +613,7 @@ bluetooth {
 		vddxo-supply = <&vreg_l7a_1p8>;
 		vddrf-supply = <&vreg_l17a_1p3>;
 		vddch0-supply = <&vreg_l25a_3p3>;
+		vddch1-supply = <&vreg_l23a_3p3>;
 		max-speed = <3200000>;
 	};
 };
@@ -724,6 +728,7 @@ &wifi {
 	vdd-1.8-xo-supply = <&vreg_l7a_1p8>;
 	vdd-1.3-rfa-supply = <&vreg_l17a_1p3>;
 	vdd-3.3-ch0-supply = <&vreg_l25a_3p3>;
+	vdd-3.3-ch1-supply = <&vreg_l23a_3p3>;
 
 	qcom,snoc-host-cap-8bit-quirk;
 };
-- 
2.33.0

