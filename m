Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3664C2039F5
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2020 16:50:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729264AbgFVOuA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Jun 2020 10:50:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60204 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729415AbgFVOty (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Jun 2020 10:49:54 -0400
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com [IPv6:2607:f8b0:4864:20::642])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C6146C061795
        for <devicetree@vger.kernel.org>; Mon, 22 Jun 2020 07:49:53 -0700 (PDT)
Received: by mail-pl1-x642.google.com with SMTP id y18so7681495plr.4
        for <devicetree@vger.kernel.org>; Mon, 22 Jun 2020 07:49:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=dUniTzAKqCPQpf9oS3XuHMumlyRTIvXV/Rp0eWZlxpw=;
        b=kYMZvtfWXob0wV12X4KVQwdKRXcNHNmwT7hJP9ui08bSDWovAUU1yU4kJ4F3fLpEX9
         lCU1pYG+0GWX1oVXAyyj6f6TiTDOhofSs0Exdzzh9I8Q7wE4BypcMdzeEYmt6pBqv84Z
         q2evvrkRgHBP4+RvbKs8puTUX70l+yGiXJy3w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=dUniTzAKqCPQpf9oS3XuHMumlyRTIvXV/Rp0eWZlxpw=;
        b=lXhAhCTIRZlAnUtq7F6T0kZyP5MxuGDj55JFPkf/ISkji18VgB8gB5BB/Edga8aai+
         h/sIGASmHVyYBJHHbdMMVhPDK4/Y9b8C1K7uBoh1KywGAF13HFrFM7Bde49YVZ5TR8ZC
         lu28m7un9ZC43J5sLJkfTdFTeAqnoMYpiuuispX+m7TxDRRgiDFWFJ/R8IO2UrBRant5
         4iY0DArnYb0gYDV2Sw09sg6eXQElw9D9+i5I5NQBcc9d/H4RiEZiFQ5d0iUjLdrnkdJH
         JG5I1FhrA7pj3O8uQpOj/gH7E3dLgmSmUrlcVifawH4+BY8MMRVa7yhVMUMsXh+Q/Tmd
         bSVg==
X-Gm-Message-State: AOAM530Nauo2ffpp/1uaSSy+kMoVW7esvTd8Lvxp2bJ2ROD5kp/lcq27
        Uqy4uejsWPvJDcmmmb706plHPgDtXUw=
X-Google-Smtp-Source: ABdhPJzG2QFII4Jy9i5AiqKeZMFh3eLd4CkzjO/ZTKVdSSId/pWIWe0QO0AdrDrZWq281+67uBS44Q==
X-Received: by 2002:a17:90a:7347:: with SMTP id j7mr19257698pjs.128.1592837393387;
        Mon, 22 Jun 2020 07:49:53 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:1:24fa:e766:52c9:e3b2])
        by smtp.gmail.com with ESMTPSA id 77sm13903018pfu.139.2020.06.22.07.49.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jun 2020 07:49:52 -0700 (PDT)
From:   Douglas Anderson <dianders@chromium.org>
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Andy Gross <agross@kernel.org>
Cc:     mturney@codeaurora.org, Jeffrey Hugo <jhugo@codeaurora.org>,
        rnayak@codeaurora.org, dhavalp@codeaurora.org,
        saiprakash.ranjan@codeaurora.org, sparate@codeaurora.org,
        linux-arm-msm@vger.kernel.org, mkurumel@codeaurora.org,
        Ravi Kumar Bokka <rbokka@codeaurora.org>,
        Douglas Anderson <dianders@chromium.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v4 4/4] arm64: dts: qcom: sc7180: Add properties to qfprom for fuse blowing
Date:   Mon, 22 Jun 2020 07:49:29 -0700
Message-Id: <20200622074845.v4.4.I70c17309f8b433e900656d7c53a2e6b61888bb68@changeid>
X-Mailer: git-send-email 2.27.0.111.gc72c7da667-goog
In-Reply-To: <20200622144929.230498-1-dianders@chromium.org>
References: <20200622144929.230498-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Ravi Kumar Bokka <rbokka@codeaurora.org>

This patch adds properties to the qfprom node to enable fuse blowing.

Signed-off-by: Ravi Kumar Bokka <rbokka@codeaurora.org>
Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

Changes in v4:
- Clock name is "core", not "sec".

Changes in v3:
- Name is now 'efuse' to match what schema checker wants.
- Reorganized ranges to match driver/bindings changes.
- Added 4th range as per driver/binding changes.
- No more reg-names as per driver/binding changes.
- Clock name is now just "sec" as per driver/binding changes.

 arch/arm64/boot/dts/qcom/sc7180-idp.dts |  4 ++++
 arch/arm64/boot/dts/qcom/sc7180.dtsi    | 10 ++++++++--
 2 files changed, 12 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7180-idp.dts b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
index 39dbfc89689e..4b3c6ebdc8d8 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-idp.dts
+++ b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
@@ -287,6 +287,10 @@ vreg_bob: bob {
 	};
 };
 
+&qfprom {
+	vcc-supply = <&vreg_l11a_1p8>;
+};
+
 &qspi {
 	status = "okay";
 	pinctrl-names = "default";
diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
index 3a8076c8bdbf..bfbdace2d29c 100644
--- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
@@ -498,9 +498,15 @@ gcc: clock-controller@100000 {
 			#power-domain-cells = <1>;
 		};
 
-		qfprom@784000 {
+		qfprom: efuse@784000 {
 			compatible = "qcom,qfprom";
-			reg = <0 0x00784000 0 0x8ff>;
+			reg = <0 0x00784000 0 0x8ff>,
+			      <0 0x00780000 0 0x7a0>,
+			      <0 0x00782000 0 0x100>,
+			      <0 0x00786000 0 0x1fff>;
+
+			clocks = <&gcc GCC_SEC_CTRL_CLK_SRC>;
+			clock-names = "core";
 			#address-cells = <1>;
 			#size-cells = <1>;
 
-- 
2.27.0.111.gc72c7da667-goog

