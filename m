Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5AA8152CE84
	for <lists+devicetree@lfdr.de>; Thu, 19 May 2022 10:41:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235096AbiESIls (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 May 2022 04:41:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57704 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235503AbiESIlr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 May 2022 04:41:47 -0400
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com [IPv6:2607:f8b0:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 68FFD6B036
        for <devicetree@vger.kernel.org>; Thu, 19 May 2022 01:41:46 -0700 (PDT)
Received: by mail-pl1-x634.google.com with SMTP id i17so4173968pla.10
        for <devicetree@vger.kernel.org>; Thu, 19 May 2022 01:41:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=BeyPRgXV6R69fCc8NB7DOVZ/M+tjtQuZOgPzKJMOoU0=;
        b=O+59+mVXhHaNLtySVWGIOlyQeB2NuasroODMWBN/ZQL/mkC9HAsI7ak95yBuOqU3e+
         CO2uiW+Ij8RkAvQEykR7vlTpfRXGsHImFJcob2OBvsDX29uMB64gO/7wKEhbvlOIzPt0
         FFp611gxKBk0fW1hS4bV59E/AE+MGHKpMQeek=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=BeyPRgXV6R69fCc8NB7DOVZ/M+tjtQuZOgPzKJMOoU0=;
        b=V2AKu45PfhqKlcwASHasqA31pJJYRPNw8tf8zsAHION6zEsPjmTOi5dmoJ53Or7r2T
         UZBmWboQspj6ABqiTwssCsIAdCFP0FMt6RPfdzrF6wkWePM4M2KIk7h2mumO3bec0IV5
         +wRM0hm9k1c/fke7+34kwrNxSqbexwLotADPyw8szvx9Y9UkToRg285ZC/8pr7PrXVUM
         xVcCOv86U76okpEdaRmAu85Innev6evRQwEeGlS8tHxMq1tmNfjQRIR973TKLoC9H4t5
         HXDmOtIJTbGl+X7H1tW+Q8vh26DMPh40Im3U18u/zGs8PBReT2YY1yrZXr4TLxYQ76m+
         bZhg==
X-Gm-Message-State: AOAM531pimQ/hOkMHZ+8q86xdeZ+un9rCSfd0LVUdkD7d+ZSBKvmwzdS
        Z0LH1bj92/8YiSNTbeRSSk78YA==
X-Google-Smtp-Source: ABdhPJy1BehqzaPWoPY6ZsIPaNIucqksWRIRqGHRvFgeS+FiaoDVf/faVp+eB9T7uqN+qHx6cld/dg==
X-Received: by 2002:a17:902:b588:b0:161:64fe:af8c with SMTP id a8-20020a170902b58800b0016164feaf8cmr3807527pls.26.1652949705948;
        Thu, 19 May 2022 01:41:45 -0700 (PDT)
Received: from judyhsiao0319.c.googlers.com.com (164.135.233.35.bc.googleusercontent.com. [35.233.135.164])
        by smtp.gmail.com with ESMTPSA id m10-20020a170902f20a00b0015f33717794sm3066185plc.42.2022.05.19.01.41.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 May 2022 01:41:45 -0700 (PDT)
From:   Judy Hsiao <judyhsiao@chromium.org>
To:     Andy Gross <agross@kernel.org>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Srini Kandagatla <srinivas.kandagatla@linaro.org>,
        dianders@chromium.org, mka@chromium.org, cychiang@google.com,
        judyhsiao@google.com, tzungbi@chromium.org, swboyd@chromium.org,
        linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Judy Hsiao <judyhsiao@chromium.org>
Subject: [v1 1/3] arm64: dts: qcom: sc7280: Add drive strength property for secondary MI2S
Date:   Thu, 19 May 2022 08:41:17 +0000
Message-Id: <20220519084119.675990-2-judyhsiao@chromium.org>
X-Mailer: git-send-email 2.36.1.124.g0e6072fb45-goog
In-Reply-To: <20220519084119.675990-1-judyhsiao@chromium.org>
References: <20220519084119.675990-1-judyhsiao@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add drive strength property for secondary MI2S on sc7280 based platforms

Signed-off-by: Judy Hsiao <judyhsiao@chromium.org>
---
 arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi b/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
index 9cb1bc8ed6b5..6d8744e130b0 100644
--- a/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
@@ -612,6 +612,20 @@ &dp_hot_plug_det {
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
+};
+
 &pcie1_clkreq_n {
 	bias-pull-up;
 	drive-strength = <2>;
-- 
2.36.1.124.g0e6072fb45-goog

