Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0C04832C0A6
	for <lists+devicetree@lfdr.de>; Thu,  4 Mar 2021 01:01:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234671AbhCCSVX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Mar 2021 13:21:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37140 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343715AbhCCDcw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Mar 2021 22:32:52 -0500
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com [IPv6:2607:f8b0:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2BFCBC0617AA
        for <devicetree@vger.kernel.org>; Tue,  2 Mar 2021 19:31:25 -0800 (PST)
Received: by mail-pf1-x42b.google.com with SMTP id 18so429266pfo.6
        for <devicetree@vger.kernel.org>; Tue, 02 Mar 2021 19:31:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=f3sWvCasmNW6dLl/Crq/uVSATvBuumInYXGeWlRuNZQ=;
        b=pvSsjm6oPXUZLMfXImgeQZRm7ev8blcpPcFz1rofXaA4qnQCJnTO7eDcfOtgzJMT3+
         AXh740gsgGJElgIwq0KYh2vwMXZGpbA04ylVYXbVTVKeIDhcmmATZ3745SSubcg2a96N
         P8C92D7Qfwl9zR2PXi5ewVwB+YBgMHnQVB6ZmJznPUPtV0hMjRxov3HezrNhjiSopwNg
         +YEk1I94BEQwCKMXbZ2kQo3DTK+l0nK931V6NQ4BRMEl39QncbJZEQSfF7z9zVPTS2Ms
         mqz6BGhAOJPNqwkG4jk5PjUGq21u5coSFdSQncRas/CGoDN5GBhRqacDLuOu9CN9x05P
         4/Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=f3sWvCasmNW6dLl/Crq/uVSATvBuumInYXGeWlRuNZQ=;
        b=XpQJkJSUeegcg+CWbbvlE6iutZMdjpm0spaN5K/IwFCwIjReZjbAl2aH50zX0Po7lC
         r/60BSbqnwn4XsU+98o+2kqbuwz/+K6IDLQOZd+4Te7RrhBIsdxlc8FY2b0dpJduEleK
         LPCaFxNBf4UWMbb6bXU7JH24gktA0SmeMf3NrjLyLMw9MscVVdy456HvQdhCCYXInnG9
         lscK+8d1zSKuEH9Lh86kikh+umDRTSI5cJbQlA7j2UoZ9s1J4jIQJjKVFBYa5I3Grl/b
         qvDMAKITGW7MPzVV5CxJLY4rG79bh+AdJzJUC6l58qHzHcGk3HaLbl5wlQpsOs9DSfhG
         y5Gg==
X-Gm-Message-State: AOAM5321+LQ9hv/9lV2bpka5bRoDi62lhoKlYFTwKya2SnQqncloq3Pb
        1fbN+6ZlZgohvlVNm7YjdBnnGw==
X-Google-Smtp-Source: ABdhPJwZyEWQLsgt/oHLzfjZ3q7KHNrDMo0D/1nrDi3mHdEsYzGmuSbO3nqpaOiMg/B/7mO9hiXoRw==
X-Received: by 2002:a63:cf56:: with SMTP id b22mr5564900pgj.352.1614742284782;
        Tue, 02 Mar 2021 19:31:24 -0800 (PST)
Received: from localhost.localdomain (80.251.214.228.16clouds.com. [80.251.214.228])
        by smtp.gmail.com with ESMTPSA id c4sm16057511pfo.2.2021.03.02.19.31.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Mar 2021 19:31:24 -0800 (PST)
From:   Shawn Guo <shawn.guo@linaro.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     devicetree@vger.kernel.org, linux-gpio@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, Shawn Guo <shawn.guo@linaro.org>
Subject: [PATCH 3/4] arm64: dts: qcom: sm8250: fix number of pins in 'gpio-ranges'
Date:   Wed,  3 Mar 2021 11:31:05 +0800
Message-Id: <20210303033106.549-4-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210303033106.549-1-shawn.guo@linaro.org>
References: <20210303033106.549-1-shawn.guo@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The last cell of 'gpio-ranges' should be number of GPIO pins, and in
case of qcom platform it should match msm_pinctrl_soc_data.ngpio rather
than msm_pinctrl_soc_data.ngpio - 1.

This fixes the problem that when the last GPIO pin in the range is
configured with the following call sequence, it always fails with
-EPROBE_DEFER.

    pinctrl_gpio_set_config()
        pinctrl_get_device_gpio_range()
            pinctrl_match_gpio_range()

Fixes: 16951b490b20 ("arm64: dts: qcom: sm8250: Add TLMM pinctrl node")
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index 947e1accae3a..e7edb2593ba1 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -2689,7 +2689,7 @@
 			#gpio-cells = <2>;
 			interrupt-controller;
 			#interrupt-cells = <2>;
-			gpio-ranges = <&tlmm 0 0 180>;
+			gpio-ranges = <&tlmm 0 0 181>;
 			wakeup-parent = <&pdc>;
 
 			pri_mi2s_active: pri-mi2s-active {
-- 
2.17.1

