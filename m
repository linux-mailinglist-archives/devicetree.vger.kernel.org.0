Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C92F84A53DA
	for <lists+devicetree@lfdr.de>; Tue,  1 Feb 2022 01:11:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230209AbiBAALI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jan 2022 19:11:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58290 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230183AbiBAALI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jan 2022 19:11:08 -0500
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com [IPv6:2607:f8b0:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 38D71C06173D
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 16:11:08 -0800 (PST)
Received: by mail-pl1-x62f.google.com with SMTP id d1so13927350plh.10
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 16:11:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ATL74pFESfBpBVkQXmsV4M2B6h+NphNUg0/LX0n/suU=;
        b=h3DcTNAWfgElvVoq8kYYU5k4CozfcdTudPNkViRPOW6T/plEnptuS9DhnNp9hD3+26
         /ubmJjU5uwzh+WhRIw0vAfFbbI9rnjJzmPMoguc2P6PRjFJHmaCIXtnbzAULIJknQRoh
         lUk0gnvImCcdWp26S3tOuuCQZ3IEfcBQ7ARkM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ATL74pFESfBpBVkQXmsV4M2B6h+NphNUg0/LX0n/suU=;
        b=BOqaWrwAYvzBYi5TpKBQm7cYCLy4NWSdSlg7we7l7jVlKkDWGGi3xRMrR8aVKX41nq
         1B+/vVAGmywIa3hmpIlMtp2JLIm33cdR6qeI7jrcp84L4wXvp9XSXfhYYZC47+eebk+1
         nGncsUtONzFkRcHeNWfZpTmSrQ0jO/kOCouYsTiNAkmWcbEVTyzKHffetUgJTflf4Hdz
         pgYM1m6JII3tdlUvTNFk84rrlWidLHI8I91UOSP/GoqzVDDxXguXxlGzyKhNqV8jSluk
         lThsGbzHxxZOpL3jc76ieLmyER5P1TG2R5JUk+mm99NIRI0zvUa5L12voAS8uf/o3Khv
         +19g==
X-Gm-Message-State: AOAM5313jGfnVV95KbVsviHKfHo/9JKag01WpYKjVLtDRonVfGAp7ZVE
        a9NUZpZVykZm0YepVjloKJeQBw==
X-Google-Smtp-Source: ABdhPJzhky1qBnKtaQyj3xSaMT0/Zj9SsDM2eX3bv60kHevdwHpSMajshCbIocivJ9mxXf2PiajP/Q==
X-Received: by 2002:a17:902:be0e:: with SMTP id r14mr9962675pls.121.1643674267763;
        Mon, 31 Jan 2022 16:11:07 -0800 (PST)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:201:c47e:986d:769b:ead2])
        by smtp.gmail.com with ESMTPSA id oj5sm424024pjb.53.2022.01.31.16.11.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jan 2022 16:11:07 -0800 (PST)
From:   Douglas Anderson <dianders@chromium.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Shaik Sajida Bhanu <sbhanu@codeaurora.org>, mka@chromium.org,
        swboyd@chromium.org, Douglas Anderson <dianders@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/5] arm64: dts: qcom: sc7280-herobrine: Consistently add "-regulator" suffix
Date:   Mon, 31 Jan 2022 16:10:39 -0800
Message-Id: <20220131161034.2.I627e60c5488d54a45fd1482ca19f0f6e45192db2@changeid>
X-Mailer: git-send-email 2.35.0.rc2.247.g8bbb082509-goog
In-Reply-To: <20220201001042.3724523-1-dianders@chromium.org>
References: <20220201001042.3724523-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Some of the fixed regulators were missing the "-regulator" suffix. Add
it to be consistent within the file and consistent with the fixed
regulators in sc7180-trogdor.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 .../boot/dts/qcom/sc7280-herobrine-herobrine-r0.dts  | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r0.dts b/arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r0.dts
index ad4fe288b53c..f159b5a6d7ef 100644
--- a/arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r0.dts
+++ b/arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r0.dts
@@ -177,7 +177,7 @@ pp3300_tp: pp3300-tp-regulator {
 		vin-supply = <&pp3300_z1>;
 	};
 
-	pp2850_uf_cam: pp2850-uf-cam {
+	pp2850_uf_cam: pp2850-uf-cam-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "pp2850_uf_cam";
 
@@ -192,7 +192,7 @@ pp2850_uf_cam: pp2850-uf-cam {
 		vin-supply = <&pp3300_cam>;
 	};
 
-	pp2850_vcm_wf_cam: pp2850-vcm-wf-cam {
+	pp2850_vcm_wf_cam: pp2850-vcm-wf-cam-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "pp2850_vcm_wf_cam";
 
@@ -207,7 +207,7 @@ pp2850_vcm_wf_cam: pp2850-vcm-wf-cam {
 		vin-supply = <&pp3300_cam>;
 	};
 
-	pp2850_wf_cam: pp2850-wf-cam {
+	pp2850_wf_cam: pp2850-wf-cam-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "pp2850_wf_cam";
 
@@ -251,7 +251,7 @@ pp1800_fp: pp1800-fp-regulator {
 		status = "disabled";
 	};
 
-	pp1800_uf_cam: pp1800-uf-cam {
+	pp1800_uf_cam: pp1800-uf-cam-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "pp1800_uf_cam";
 
@@ -271,7 +271,7 @@ pp1800_uf_cam: pp1800-uf-cam {
 		vin-supply = <&pp1800_l19b>;
 	};
 
-	pp1800_wf_cam: pp1800-wf-cam {
+	pp1800_wf_cam: pp1800-wf-cam-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "pp1800_wf_cam";
 
@@ -291,7 +291,7 @@ pp1800_wf_cam: pp1800-wf-cam {
 		vin-supply = <&pp1800_l19b>;
 	};
 
-	pp1200_wf_cam: pp1200-wf-cam {
+	pp1200_wf_cam: pp1200-wf-cam-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "pp1200_wf_cam";
 
-- 
2.35.0.rc2.247.g8bbb082509-goog

