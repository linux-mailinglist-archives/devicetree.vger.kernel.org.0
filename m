Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AF65D6C85E1
	for <lists+devicetree@lfdr.de>; Fri, 24 Mar 2023 20:22:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231770AbjCXTWB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Mar 2023 15:22:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41628 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231890AbjCXTVm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Mar 2023 15:21:42 -0400
Received: from mail-yb1-xb32.google.com (mail-yb1-xb32.google.com [IPv6:2607:f8b0:4864:20::b32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A3EC199C0
        for <devicetree@vger.kernel.org>; Fri, 24 Mar 2023 12:21:24 -0700 (PDT)
Received: by mail-yb1-xb32.google.com with SMTP id n125so3513292ybg.7
        for <devicetree@vger.kernel.org>; Fri, 24 Mar 2023 12:21:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1679685683;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RhYYIOBYcZyuSgRg3T8Pd2sS16OkXMZ4m3rP2gSu380=;
        b=IxQ9BzXnYSPa1QnTPgUSoRx25yGlwfLr4WHZF46P/B6oGmszMeestGYxwJb9ZT84cZ
         Cx+gMh+NfggAHYRxm9Um6EPimTmF3QnORHqLYaWwQNVTB6F12Ewgb/5Ls0T5nzm9penU
         bKViydN+qJTaT1uHudK2602D29Q/RFw8rLjZs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679685683;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RhYYIOBYcZyuSgRg3T8Pd2sS16OkXMZ4m3rP2gSu380=;
        b=GIm6AXYbMQERB3yKMnOONk8u1p9dKVoKekgu5+WwVGFb6n0GwS3a1WcnzMHHeDQIz/
         XEuLea06SVzAkuw2S/L33wvduq01diqII9PqW0d2XYNQg3xbfjYWxKBjNuHgQpWf0voM
         adt2WB2iiCcXXYanQEFcQhlFAYUwuuB9JQEJW4d5sZnG2z1Vy8XQYvO3aOSn79dLpAdH
         Dldqq1ttcPeZJ7PK9ZXUTB2LcTaypZLv2ZnV2iWiDV0dVYlWDn1/Gg41MR93mvyscDkh
         ymQDOiveTUKdHGpPHk1h00t5HaRD4Ks5e+DEfViEH46ivpvFdsz8PCiYlaGXtmhBsarD
         lvVg==
X-Gm-Message-State: AAQBX9fzeOE3rkwgDW5GJzr4z/g057mYJko1ijdSeIgOz/CWWVCs/h9o
        U/th1wNxm6yusqo6Oh1cn6ySBg==
X-Google-Smtp-Source: AKy350ZU79V/rk+pT+tgbo7G2hjW8IMI26yJkkul5Sw6P86HKsXr4RYYXZ70nR/c/SzrjmN8JMynPg==
X-Received: by 2002:a25:acca:0:b0:b00:1db8:f3a3 with SMTP id x10-20020a25acca000000b00b001db8f3a3mr3568093ybd.20.1679685683315;
        Fri, 24 Mar 2023 12:21:23 -0700 (PDT)
Received: from localhost ([2620:0:1035:15:5509:ec45:2b32:b39f])
        by smtp.gmail.com with UTF8SMTPSA id b140-20020a253492000000b00b7767ca7486sm624204yba.35.2023.03.24.12.21.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Mar 2023 12:21:22 -0700 (PDT)
From:   Mark Yacoub <markyacoub@chromium.org>
X-Google-Original-From: Mark Yacoub <markyacoub@google.com>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     seanpaul@chromium.org, suraj.kandpal@intel.com,
        dianders@chromium.org, Mark Yacoub <markyacoub@chromium.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v7 09/10] arm64: dts: qcom: sc7180: Add support for HDCP in dp-controller
Date:   Fri, 24 Mar 2023 15:20:56 -0400
Message-Id: <20230324192058.3916571-10-markyacoub@google.com>
X-Mailer: git-send-email 2.40.0.348.gf938b09366-goog
In-Reply-To: <20230324192058.3916571-1-markyacoub@google.com>
References: <20230324192058.3916571-1-markyacoub@google.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIMWL_WL_HIGH,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Sean Paul <seanpaul@chromium.org>

Add the register ranges required for HDCP key injection and
HDCP TrustZone interaction as described in the dt-bindings for the
sc7180 dp controller.

Signed-off-by: Sean Paul <seanpaul@chromium.org>
Signed-off-by: Mark Yacoub <markyacoub@chromium.org>

---
Changes in v3:
-Split off into a new patch containing just the dts change (Stephen)
-Add hdcp compatible string (Stephen)
Changes in v4:
-Rebase on Bjorn's multi-dp patchset
Changes in v5:
-Put the tz register offsets in trogdor dtsi (Rob C)
Changes in v6:
-Rebased: Removed modifications in sc7180.dtsi as it's already upstream
Changes in v7:
-Change registers offset

 arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
index 47f39c547c41a..63183ac9c3c48 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
@@ -816,6 +816,14 @@ &mdss_dp {
 	status = "okay";
 	pinctrl-names = "default";
 	pinctrl-0 = <&dp_hot_plug_det>;
+
+	reg = <0 0x0ae90000 0 0x200>,
+	      <0 0x0ae90200 0 0x200>,
+	      <0 0x0ae90400 0 0xc00>,
+	      <0 0x0ae91000 0 0x400>,
+	      <0 0x0ae91400 0 0x400>,
+	      <0 0x0aed1000 0 0x174>,
+	      <0 0x0aee1000 0 0x2c>;
 };
 
 &mdss_dp_out {
-- 
2.40.0.348.gf938b09366-goog

