Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 15F303293FC
	for <lists+devicetree@lfdr.de>; Mon,  1 Mar 2021 22:45:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235413AbhCAVn7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Mar 2021 16:43:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46604 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241588AbhCAVk3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 Mar 2021 16:40:29 -0500
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com [IPv6:2607:f8b0:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E0080C061226
        for <devicetree@vger.kernel.org>; Mon,  1 Mar 2021 13:34:54 -0800 (PST)
Received: by mail-pl1-x634.google.com with SMTP id c16so1267190ply.0
        for <devicetree@vger.kernel.org>; Mon, 01 Mar 2021 13:34:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=T2YXFSeXixYB8zUM5VCycjoeNDwItv8NZkkhWlNBgNc=;
        b=ogNOIWyhzVewiAj+Pf/C235RxH6yaxggrI14Ck01MrtgOAAY4u0b+URQ6g66Haspfw
         JMliee/qwuuqX+gziq/276ENgScQNDEN2CntayjhC3fJnxfe06rypc9wMQWGOxG/HtmT
         sWL7zLxYtRhKn2arIsCLN1NcoQpJohwkmZ3Xs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=T2YXFSeXixYB8zUM5VCycjoeNDwItv8NZkkhWlNBgNc=;
        b=HkkumDbhjLitg0Zmd5WMKIg1xlDluejzMcRLKzrzgBy2iGG7lr0YYavBRrPm8XAb/9
         QNpt/8APfvccEjaUaUvd9/urGvQq4BRva2asGPN9OCO8w/hpyufk3HA0X5K+EYE9AHc0
         n3NcfZw0duK1Zihso8h9HqW+pr9S/kHdtsGOUEYMYaBZFzqEmrNaz+iFiLaIDFiubT6R
         dXJthfE9KVTzHrKL11AvFyWUWvLh7Hdta4BNAgplhiN4DCnWyRNxmxrZ2WTQq7YKrbwx
         0GbenzH0ap0yBwrGkLR/vzZbLyytbrHlvLckcH9U65CzvDuPEYHE2bangz6/DtzY8wRg
         WeBQ==
X-Gm-Message-State: AOAM532YJiO1pa2xMnt8qRi3UelKN4qro3wR0L1IIhmKLu/vCGH3SnrA
        pLKMTVvwRJ7ULcr/yoauqSZWcg==
X-Google-Smtp-Source: ABdhPJxZxS2ruSSIovAo5LqVTbKuJSAPd4ebyV3vD/2C0QPUBoq/fCxB5zz8iE2s3Xevo+iJ1kLJhg==
X-Received: by 2002:a17:90b:438a:: with SMTP id in10mr869323pjb.165.1614634494541;
        Mon, 01 Mar 2021 13:34:54 -0800 (PST)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:1:c086:5f6:85dd:98c8])
        by smtp.gmail.com with ESMTPSA id f13sm790366pjj.1.2021.03.01.13.34.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Mar 2021 13:34:54 -0800 (PST)
From:   Douglas Anderson <dianders@chromium.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Rob Clark <robdclark@chromium.org>,
        Alexandru M Stan <amstan@chromium.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Tomasz Figa <tfiga@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 06/13] arm64: dts: qcom: Disable camera clk on sc7180-trogdor devices by default
Date:   Mon,  1 Mar 2021 13:34:30 -0800
Message-Id: <20210301133318.v2.6.I22522b0c9db505ee43ed08e8d5d9e8fe632e7447@changeid>
X-Mailer: git-send-email 2.30.1.766.gb4fecdf3b7-goog
In-Reply-To: <20210301213437.4165775-1-dianders@chromium.org>
References: <20210301213437.4165775-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Stephen Boyd <swboyd@chromium.org>

We only want to use this clk driver on CoachZ devices. Disable it for
all other Trogdor boards.  NOTE: CoachZ devices aren't yet supported
upstream so until it is this is just disabled for all trogdor.

Cc: Tomasz Figa <tfiga@chromium.org>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
[dianders:adjusted since no coachz upstream yet]
Signed-off-by: Douglas Anderson <dianders@chromium.org>
Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
---

(no changes since v1)

 arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
index 2e5e3a8f210a..8ae9606351a6 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
@@ -570,6 +570,10 @@ cr50: tpm@0 {
 	};
 };
 
+&camcc {
+	status = "disabled";
+};
+
 &dsi0 {
 	status = "okay";
 	vdda-supply = <&vdda_mipi_dsi0_1p2>;
-- 
2.30.1.766.gb4fecdf3b7-goog

