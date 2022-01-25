Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6E77A49BEC1
	for <lists+devicetree@lfdr.de>; Tue, 25 Jan 2022 23:44:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234028AbiAYWoq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Jan 2022 17:44:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39234 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233979AbiAYWoq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Jan 2022 17:44:46 -0500
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com [IPv6:2607:f8b0:4864:20::1031])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EEADDC061747
        for <devicetree@vger.kernel.org>; Tue, 25 Jan 2022 14:44:45 -0800 (PST)
Received: by mail-pj1-x1031.google.com with SMTP id h20-20020a17090adb9400b001b518bf99ffso3087347pjv.1
        for <devicetree@vger.kernel.org>; Tue, 25 Jan 2022 14:44:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=EZGm0MaNJxAMfb/7pwPJBUSOCgRjQhE6bgY2ZPyNesk=;
        b=BaeEOzyeMjop7c632xbiR6uP2jqptMMaKdz4LnTmKH1oxk81XTPfLKur9xaAZ9BYSZ
         FxpaczYhqoh9nke2yhFUAuZgnVD5XjqD2ekoxe3oL3pmoq3hFv8PLyTc+BRczF084JxA
         q8sPtlXRhaOk+C3VrRMxSDHZz6q69oqY01SNc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=EZGm0MaNJxAMfb/7pwPJBUSOCgRjQhE6bgY2ZPyNesk=;
        b=5nPBgvhj0jXOug14t8z9LKvy7Qdp1vcBuRiaqCAOGUVv9+z2f6QQ1soVkm2DghOIYh
         uMwDD+ek+7k9P2oduKVTHmVe+3vRWC3RCW3km+BV3/tM+tDvftl4G7W4o5mruigGfJ1/
         xUv7ahU4oNd1RQF7sbPfyXyml70/qlJFaLhYc+MXTf5OIHsjONZM4/J9Rq96fQ15GcH9
         uKTjN+r8KarqqLH4dLOlcr6Bi8TTldJgSDEeNcy3PiJJo7FxYpXj03hzx+eAyuiX0a76
         ljZiTinkeUqMImsnd6X/Y7ZKxVZwYbmdgxh1TpN7neJli6ZU02AlUbK5lCe5XriVgFrC
         +Ppg==
X-Gm-Message-State: AOAM533+sv/OAobm1g0S2VdG+gx2jfhLe2ObY3732gyRM1LJbOx8ngaI
        sM0U7U8giIQqsNEDQMQZ5hEOcA==
X-Google-Smtp-Source: ABdhPJyAWiYE/ZAwc6fGCQCqkzagXMstzNJ0s6bMyw0uxX4tW24KUQtf4jfQ/jMaxSWaC3gi2v0o0w==
X-Received: by 2002:a17:902:e805:b0:14b:18a:ace2 with SMTP id u5-20020a170902e80500b0014b018aace2mr20777208plg.93.1643150685498;
        Tue, 25 Jan 2022 14:44:45 -0800 (PST)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:201:f313:ff03:9fc5:6152])
        by smtp.gmail.com with ESMTPSA id p12sm1322335pjj.55.2022.01.25.14.44.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jan 2022 14:44:45 -0800 (PST)
From:   Douglas Anderson <dianders@chromium.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     konrad.dybcio@somainline.org, swboyd@chromium.org,
        kgodara@codeaurora.org, mka@chromium.org, sibis@codeaurora.org,
        pmaliset@codeaurora.org, quic_rjendra@quicinc.com,
        Douglas Anderson <dianders@chromium.org>,
        Akhil P Oommen <quic_akhilpo@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/5] arm64: dts: qcom: sc7280: Fix gmu unit address
Date:   Tue, 25 Jan 2022 14:44:18 -0800
Message-Id: <20220125144316.v2.1.I19f60014e9be4b9dda4d66b5d56ef3d9600b6e10@changeid>
X-Mailer: git-send-email 2.35.0.rc0.227.g00780c9af4-goog
In-Reply-To: <20220125224422.544381-1-dianders@chromium.org>
References: <20220125224422.544381-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

When processing sc7280 device trees, I can see:

  Warning (simple_bus_reg): /soc@0/gmu@3d69000:
    simple-bus unit address format error, expected "3d6a000"

There's a clear typo in the node name. Fix it.

Fixes: 96c471970b7b ("arm64: dts: qcom: sc7280: Add gpu support")
Signed-off-by: Douglas Anderson <dianders@chromium.org>
Reviewed-by: Stephen Boyd <swboyd@chromium.org>
Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
---

(no changes since v1)

 arch/arm64/boot/dts/qcom/sc7280.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
index 937c2e0e93eb..eab7a8505053 100644
--- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
@@ -1790,7 +1790,7 @@ opp-550000000 {
 			};
 		};
 
-		gmu: gmu@3d69000 {
+		gmu: gmu@3d6a000 {
 			compatible="qcom,adreno-gmu-635.0", "qcom,adreno-gmu";
 			reg = <0 0x03d6a000 0 0x34000>,
 				<0 0x3de0000 0 0x10000>,
-- 
2.35.0.rc0.227.g00780c9af4-goog

