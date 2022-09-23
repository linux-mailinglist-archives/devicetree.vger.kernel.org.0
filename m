Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 403575E7C89
	for <lists+devicetree@lfdr.de>; Fri, 23 Sep 2022 16:09:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231903AbiIWOJr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Sep 2022 10:09:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36812 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232108AbiIWOJm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Sep 2022 10:09:42 -0400
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com [IPv6:2607:f8b0:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A544B275C1
        for <devicetree@vger.kernel.org>; Fri, 23 Sep 2022 07:09:41 -0700 (PDT)
Received: by mail-pg1-x52d.google.com with SMTP id s206so363720pgs.3
        for <devicetree@vger.kernel.org>; Fri, 23 Sep 2022 07:09:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=ZxqNeg9qYIg+s4/UlajiiC5HVdIkGrA2Kg81oKMQ+/o=;
        b=HRlcPjXyrsRRp7E+Ji3FrSrhu8QZgSFr/20EIzcYeU1s8tw40rSwnAhl2ZggEBN8HQ
         RqxPrFQeJmUhgEirBrfBLRCYNRO5/O6CnWQE62MY/PKPDcpPzQB21eFHhEuNHFPmux4b
         nKOhips5OhtFiauSQt6/wdRH4Jab6MnW4mQpU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=ZxqNeg9qYIg+s4/UlajiiC5HVdIkGrA2Kg81oKMQ+/o=;
        b=rgXe3S9RvY17ZZrFkhwtFzC9Mr4pMPOLnKu1oXtwHKgDCVCxnxEIHonvuBimvM2jFb
         46EiJu3ul9SPzFidQnvsZj3HJkN1/ejKSRGz9Mwetd7ivsJY5IOGKMmuCvWQHDnWGV2t
         jwMoto2swfGOWcj2nG5Oanf/iaxVVXmDbw3aQQ0/dn7A0I5kO8t+EYff6xiFGVXO6YpA
         q+QvSr5q1tOTS9HYUkf2TZDC2r5D7F+wJN8HAp34sGV0pwgnnfmjKg2Km5M9jvnvky1v
         CQr0TKGQcGSTNo+oZdNj/p14fpfXsxwSARroGmMoglsgBxQPqvolZbzhyPrWVSn02Jpt
         1WlA==
X-Gm-Message-State: ACrzQf3ZB9FpO+fpJ5iZ+VMkef1NE5GhWJWK68jeQW9vNhq/671nEoi5
        1T98iTsrvsCNpqQAn9hzqh3Hxg==
X-Google-Smtp-Source: AMsMyM6BuICT3vYuiW/GXBg3BTs8KJsFzcwqP4R1JTAYjnxZeptbzyZPItHFDy71mKfr7uqrUEZQ5A==
X-Received: by 2002:a63:5d48:0:b0:43a:390b:2183 with SMTP id o8-20020a635d48000000b0043a390b2183mr7748852pgm.29.1663942181159;
        Fri, 23 Sep 2022 07:09:41 -0700 (PDT)
Received: from judyhsiao0523.c.googlers.com.com (21.160.199.104.bc.googleusercontent.com. [104.199.160.21])
        by smtp.gmail.com with ESMTPSA id l14-20020a17090a408e00b001fd8316db51sm1645318pjg.7.2022.09.23.07.09.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Sep 2022 07:09:40 -0700 (PDT)
From:   Judy Hsiao <judyhsiao@chromium.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Srini Kandagatla <srinivas.kandagatla@linaro.org>,
        dianders@chromium.org, mka@chromium.org, cychiang@google.com,
        judyhsiao@google.com, swboyd@chromium.org,
        linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Judy Hsiao <judyhsiao@chromium.org>
Subject: [PATCH v5 1/3] arm64: dts: qcom: sc7280: herobrine: Add pinconf settings for mi2s1
Date:   Fri, 23 Sep 2022 14:09:16 +0000
Message-Id: <20220923140918.2825043-2-judyhsiao@chromium.org>
X-Mailer: git-send-email 2.37.3.998.g577e59143f-goog
In-Reply-To: <20220923140918.2825043-1-judyhsiao@chromium.org>
References: <20220923140918.2825043-1-judyhsiao@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

1. Add drive strength property for mi2s1 on sc7280 based platforms.
2. Disable the pull-up for mi2s1 lines.

Signed-off-by: Judy Hsiao <judyhsiao@chromium.org>
Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
Reviewed-by: Douglas Anderson <dianders@chromium.org>
---
 .../arm64/boot/dts/qcom/sc7280-herobrine.dtsi | 30 +++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi b/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
index c11e37160f34..83a42a77121c 100644
--- a/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
@@ -639,6 +639,36 @@ &dp_hot_plug_det {
 	bias-disable;
 };
 
+&mi2s1_data0 {
+	drive-strength = <6>;
+	bias-disable;
+};
+
+&mi2s1_sclk {
+	drive-strength = <6>;
+	bias-disable;
+};
+
+&mi2s1_ws {
+	drive-strength = <6>;
+	bias-disable;
+};
+
+&mi2s1_data0 {
+	drive-strength = <6>;
+	bias-disable;
+};
+
+&mi2s1_sclk {
+	drive-strength = <6>;
+	bias-disable;
+};
+
+&mi2s1_ws {
+	drive-strength = <6>;
+	bias-disable;
+};
+
 &pcie1_clkreq_n {
 	bias-pull-up;
 	drive-strength = <2>;
-- 
2.37.3.998.g577e59143f-goog

