Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1B5014FC617
	for <lists+devicetree@lfdr.de>; Mon, 11 Apr 2022 22:48:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349939AbiDKUug (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Apr 2022 16:50:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52808 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349867AbiDKUug (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Apr 2022 16:50:36 -0400
Received: from mail-qk1-x729.google.com (mail-qk1-x729.google.com [IPv6:2607:f8b0:4864:20::729])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2C5CE60FC
        for <devicetree@vger.kernel.org>; Mon, 11 Apr 2022 13:48:21 -0700 (PDT)
Received: by mail-qk1-x729.google.com with SMTP id b189so12195992qkf.11
        for <devicetree@vger.kernel.org>; Mon, 11 Apr 2022 13:48:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=poorly.run; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=xZNVI9tiUlllab4AjTCJGE4j73/6LoXDJ3Aq+yrOdsE=;
        b=ANZHHiby3lJO1HmMWs7Ra5m8oQHXMKZ5cRfZklPrG4uQ3CBhHEPkCy3OUgw40pMSWJ
         9CbMnFl7u9Sw71/Va0syczaf1qh8kz6NkLSPkxPC8RH+uVISPzr2Jk2gPQrsDlhBRIU9
         wK2jdxMO0UP2EmfmviiZjgCIZMO818lZz0Raa0oEZppdmuYysZas5MFmfcaF6/Twgafv
         muGq9dBHST4uve5j5nukfAzQqYNqkb4iPc6xBEhZtBzz9JPl7WmeHtY2fXXfrlmdhrCI
         jjzF+mEDgQ60t7Tknby17d7i4fyLUkGScYo7eXlj0ZG83HssPT2TtZXMxmQVldXNqrvg
         Si0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=xZNVI9tiUlllab4AjTCJGE4j73/6LoXDJ3Aq+yrOdsE=;
        b=AkmBUiQHZ8ckWj67uVGDU+r1kWGoZx+niZeiGir0V/31TqBFVersQ+PfS1fm8MAlU9
         pefghwljxEtU+/V+9Xo9B34Bk90L1EwCoyntEWXNAFRmzs3YWR3MHHMQbVCebJkO6+84
         GuWl7CHmEHIVgQ/41ERFmXaTk98lCyXoWlT9AW2aB5ceTGZwfLeoSf9+F6ZPiWF2yxYG
         j+cuaWxCJhWxW1cXi9bxrY9FxRAgb8t6IKDhN3jb/niMonh7AYFmN7Ofyfzg+N2RqhqG
         khgYhUaFO8Yx6ZtnEcpSo9ll64y6URjfFscy+E7p4pFd+1b2lIrRjQ83hA+/7UTAki4+
         lnTQ==
X-Gm-Message-State: AOAM530JKMMpYYm1IKkbwFUdO+ezp8BGcQzTe9d6rGpFEdJWNV+T+YFG
        2CnYvya/CmT2GwAQNI/OMmb8ag==
X-Google-Smtp-Source: ABdhPJzmVANaEbOOQWztExuy8DgTqZ9y5arWe7kL2myoN92Dfm5vhIY6xDgNqOnhuxmE4LUmMkux+Q==
X-Received: by 2002:a05:620a:28d2:b0:69c:899:e758 with SMTP id l18-20020a05620a28d200b0069c0899e758mr901133qkp.51.1649710100347;
        Mon, 11 Apr 2022 13:48:20 -0700 (PDT)
Received: from localhost (115.25.199.35.bc.googleusercontent.com. [35.199.25.115])
        by smtp.gmail.com with ESMTPSA id p7-20020a05620a22a700b0069c37e2c473sm647143qkh.94.2022.04.11.13.48.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Apr 2022 13:48:20 -0700 (PDT)
From:   Sean Paul <sean@poorly.run>
To:     dri-devel@lists.freedesktop.org, jani.nikula@intel.com,
        intel-gfx@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        rodrigo.vivi@intel.com
Cc:     bjorn.andersson@linaro.org, swboyd@chromium.org,
        abhinavk@codeaurora.org, markyacoub@chromium.org,
        Sean Paul <seanpaul@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH v5 09/10] arm64: dts: qcom: sc7180: Add support for HDCP in dp-controller
Date:   Mon, 11 Apr 2022 20:47:38 +0000
Message-Id: <20220411204741.1074308-10-sean@poorly.run>
X-Mailer: git-send-email 2.35.1.1178.g4f1659d476-goog
In-Reply-To: <20220411204741.1074308-1-sean@poorly.run>
References: <20220411204741.1074308-1-sean@poorly.run>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
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
Link: https://patchwork.freedesktop.org/patch/msgid/20211105030434.2828845-14-sean@poorly.run #v4

Changes in v3:
-Split off into a new patch containing just the dts change (Stephen)
-Add hdcp compatible string (Stephen)
Changes in v4:
-Rebase on Bjorn's multi-dp patchset
Changes in v5:
-Put the tz register offsets in trogdor dtsi (Rob C)
---
 arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi | 8 ++++++++
 arch/arm64/boot/dts/qcom/sc7180.dtsi         | 6 +++++-
 2 files changed, 13 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
index 732e1181af48..c3559253aefc 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
@@ -815,6 +815,14 @@ &mdss_dp {
 	data-lanes = <0 1>;
 	vdda-1p2-supply = <&vdda_usb_ss_dp_1p2>;
 	vdda-0p9-supply = <&vdda_usb_ss_dp_core>;
+
+	reg = <0 0x0ae90000 0 0x200>,
+	      <0 0x0ae90200 0 0x200>,
+	      <0 0x0ae90400 0 0xc00>,
+	      <0 0x0ae91000 0 0x400>,
+	      <0 0x0ae91400 0 0x400>,
+	      <0 0x0aed1000 0 0x175>,
+	      <0 0x0aee1000 0 0x2c>;
 };
 
 &pm6150_adc {
diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
index e1c46b80f14a..3c3eef7a7d52 100644
--- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
@@ -3089,7 +3089,11 @@ mdss_dp: displayport-controller@ae90000 {
 				compatible = "qcom,sc7180-dp";
 				status = "disabled";
 
-				reg = <0 0x0ae90000 0 0x1400>;
+				reg = <0 0x0ae90000 0 0x200>,
+				      <0 0x0ae90200 0 0x200>,
+				      <0 0x0ae90400 0 0xc00>,
+				      <0 0x0ae91000 0 0x400>,
+				      <0 0x0ae91400 0 0x400>;
 
 				interrupt-parent = <&mdss>;
 				interrupts = <12>;
-- 
Sean Paul, Software Engineer, Google / Chromium OS

