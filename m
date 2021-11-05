Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E854F445E68
	for <lists+devicetree@lfdr.de>; Fri,  5 Nov 2021 04:05:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232152AbhKEDI3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 Nov 2021 23:08:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44362 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232108AbhKEDIU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 Nov 2021 23:08:20 -0400
Received: from mail-qk1-x733.google.com (mail-qk1-x733.google.com [IPv6:2607:f8b0:4864:20::733])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B6AEC061208
        for <devicetree@vger.kernel.org>; Thu,  4 Nov 2021 20:05:41 -0700 (PDT)
Received: by mail-qk1-x733.google.com with SMTP id n15so7634518qkp.12
        for <devicetree@vger.kernel.org>; Thu, 04 Nov 2021 20:05:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=poorly.run; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=XJSOnlAtrhQ7wXwaghYo8uZtYw3TiJmGESI2PbX7so0=;
        b=eqodtYCkUDmx8HPjB3YN2+n3bPjqDEDj8Gh/yvOu6z+LP/3+ubj7KWXQxgW8jLUVbv
         W4Xzk9pdNY7PvcNZPQQdQdcRLWtBahHIcGFXXmaJNgHGHIiSsLcoJh9XhUrhEbeKpXgh
         N+fSFioePZ004ZWKZosX2M0EYeh8QnhVQwTMUhF+SMMlIA8Ozz1i7mHwur3xxtZ9cKvQ
         5V2XX/6Q1lJa34HNcayh+wa/7kX+D4eIRc3kJDsfBlVqz6Z4KDgbJnNcTQKWw04wuNu+
         J2v4vEEZb0uOiK36gJR0yo14xNIeRBm3aOoMRySPe6iYW0jJLk6im4LH5daP+i4R4mbI
         9/FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=XJSOnlAtrhQ7wXwaghYo8uZtYw3TiJmGESI2PbX7so0=;
        b=KqycgNVPKWpGF/oIPYDWpfG7MX6aTre3AWVGT/3rUou9YlcXpTsUt+k5M4Ku3QpmUx
         X0jf+8tLM6D5v1hWLQNCc9Bg4xHlqkTreOuplmM6INjiH9hQwiSP4SK6kq8nU0lfIqsG
         xYYhssKUaQ2B6of3VDUkv5EBZeHzvrVKyHK2uTup9N80pajcC8WCmZe2YJXHBvQmZO9z
         L2+t9a4nN1NyNByNys5aqG6/KmTttRXTCJEsnjJ6Rx0OD6y5q5XTbuj1L9bGLTgDlXQA
         zHJ9vSY6u4rKo3rLT33JYT9xYR0WqaJPjZ0nsELbBYx0+LUIEjjQ/LOTY6TKtYA/xlv3
         SUBg==
X-Gm-Message-State: AOAM531aOy6KbYlIAGy6GzGMumwAr3Rq4sZKODVQuvVX4piow9SkfKV0
        zbF6kkRikoHaRgjlrr16PAK3vw==
X-Google-Smtp-Source: ABdhPJxUQChc+IGeLIiMSurShmhPZqMMiPEp1QUb9MVoEP1uD2N/B8x+o9oLWfLsN44a7mr9XM+trg==
X-Received: by 2002:a05:620a:44c1:: with SMTP id y1mr33793635qkp.265.1636081540535;
        Thu, 04 Nov 2021 20:05:40 -0700 (PDT)
Received: from localhost ([167.100.64.199])
        by smtp.gmail.com with ESMTPSA id s25sm3822165qtq.60.2021.11.04.20.05.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Nov 2021 20:05:40 -0700 (PDT)
From:   Sean Paul <sean@poorly.run>
To:     dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
Cc:     bjorn.andersson@linaro.org, swboyd@chromium.org,
        jani.nikula@intel.com, abhinavk@codeaurora.org,
        Sean Paul <seanpaul@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH v4 13/14] arm64: dts: qcom: sc7180: Add support for HDCP in dp-controller
Date:   Thu,  4 Nov 2021 23:04:30 -0400
Message-Id: <20211105030434.2828845-14-sean@poorly.run>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211105030434.2828845-1-sean@poorly.run>
References: <20211105030434.2828845-1-sean@poorly.run>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Sean Paul <seanpaul@chromium.org>

This patch adds the register ranges required for HDCP key injection and
HDCP TrustZone interaction as described in the dt-bindings for the
sc7180 dp controller. Now that these are supported, change the
compatible string to "dp-hdcp".

Signed-off-by: Sean Paul <seanpaul@chromium.org>
Link: https://patchwork.freedesktop.org/patch/msgid/20210913175747.47456-15-sean@poorly.run #v1
Link: https://patchwork.freedesktop.org/patch/msgid/20210915203834.1439-14-sean@poorly.run #v2
Link: https://patchwork.freedesktop.org/patch/msgid/20211001151145.55916-14-sean@poorly.run #v3

Changes in v3:
-Split off into a new patch containing just the dts change (Stephen)
-Add hdcp compatible string (Stephen)
Changes in v4:
-Rebase on Bjorn's multi-dp patchset
---
 arch/arm64/boot/dts/qcom/sc7180.dtsi | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
index c8921e2d6480..838270f70b62 100644
--- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
@@ -3088,7 +3088,13 @@ mdss_dp: displayport-controller@ae90000 {
 				compatible = "qcom,sc7180-dp";
 				status = "disabled";
 
-				reg = <0 0x0ae90000 0 0x1400>;
+				reg = <0 0x0ae90000 0 0x200>,
+				      <0 0x0ae90200 0 0x200>,
+				      <0 0x0ae90400 0 0xc00>,
+				      <0 0x0ae91000 0 0x400>,
+				      <0 0x0ae91400 0 0x400>,
+				      <0 0x0aed1000 0 0x175>,
+				      <0 0x0aee1000 0 0x2c>;
 
 				interrupt-parent = <&mdss>;
 				interrupts = <12>;
-- 
Sean Paul, Software Engineer, Google / Chromium OS

