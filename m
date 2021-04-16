Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 979B2362B7E
	for <lists+devicetree@lfdr.de>; Sat, 17 Apr 2021 00:42:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234708AbhDPWmR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Apr 2021 18:42:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39882 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235309AbhDPWls (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Apr 2021 18:41:48 -0400
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com [IPv6:2607:f8b0:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 74031C061348
        for <devicetree@vger.kernel.org>; Fri, 16 Apr 2021 15:41:21 -0700 (PDT)
Received: by mail-pf1-x42e.google.com with SMTP id h15so1581460pfv.2
        for <devicetree@vger.kernel.org>; Fri, 16 Apr 2021 15:41:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=9TvqfTmBKpWQk47pVCIMnPVMBwS/uLueprhgNryYtbA=;
        b=jqBZZDcWG7s4YKPCZfESxsi5IWXAX19ybkyjsCxLgUAWTSv+PSrzGu5XAZmwQDFNzM
         ttf7BoB27sCINbqxpc8wkIXKqZG63TiCRPr41Yoek6F8sRzHt9AKgbTQjAwLd6gA9G2c
         5FSbUlFIuDNE1oe4ihKfaXppRgyi9WF7uE43M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=9TvqfTmBKpWQk47pVCIMnPVMBwS/uLueprhgNryYtbA=;
        b=G2uHuSbnpMtAFFecUCG9JFEECQTJzlJKvVuWdZSqzqQAdNQQcF93ZLh2VR6+DYBP1C
         N/qQQOXViH3lU7eFFs5gSnIvi8lNPfcDBTM59X5k7dHH1ZYwYxv6gT7jv9yDke1r6bSj
         D0ylSxleS0yKbibRv8Lqs9ErVbS0sEKyRCBZ64/bUIiOuwvAg4vgfi8buRHUPhtc9qhL
         lk5SSH852eIuL1zrOpJwYNmX8BFvaof/lyLmLCICbgZFiy5K99vioKNW4KMrTa7BOLGn
         hLP18AoB5yJomOrtdoGCiDq7mS3XpIK6QHJda/C46HAtG2l63CCajIZCM/Co/Br/auw+
         BzWQ==
X-Gm-Message-State: AOAM531G7MEE9Vu/E+gQZPQ6UfsN7Qamt6kEIQP1IFygtEZCxNr9WJxe
        OPh7xkHvyl4ZLBarCk4aL5N3eA==
X-Google-Smtp-Source: ABdhPJxQ9DBJQiYCekZ4xDBquq5Hfj2H7iOAKL64Gkmy7QFs0dyOoqt0xfbyRdv9R6gxEd68unyLPw==
X-Received: by 2002:a63:f95a:: with SMTP id q26mr1108999pgk.25.1618612881550;
        Fri, 16 Apr 2021 15:41:21 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:201:dc8a:c9d0:aa5b:5386])
        by smtp.gmail.com with ESMTPSA id r6sm5633659pgp.64.2021.04.16.15.41.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Apr 2021 15:41:21 -0700 (PDT)
From:   Douglas Anderson <dianders@chromium.org>
To:     Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Sam Ravnborg <sam@ravnborg.org>, Wolfram Sang <wsa@kernel.org>
Cc:     Stephen Boyd <swboyd@chromium.org>, robdclark@chromium.org,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
        Steev Klimaszewski <steev@kali.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        linux-arm-msm@vger.kernel.org, Linus W <linus.walleij@linaro.org>,
        Douglas Anderson <dianders@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v4 26/27] arm64: dts: qcom: Link the panel to the bridge's DDC bus
Date:   Fri, 16 Apr 2021 15:39:49 -0700
Message-Id: <20210416153909.v4.26.Ibdb7735fb1844561b902252215a69526a14f9abd@changeid>
X-Mailer: git-send-email 2.31.1.368.gbe11c130af-goog
In-Reply-To: <20210416223950.3586967-1-dianders@chromium.org>
References: <20210416223950.3586967-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Adding this link allows the panel code to do things like read the
EDID.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

(no changes since v1)

 arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
index 24d293ef56d7..96e530594509 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
@@ -265,6 +265,7 @@ panel: panel {
 		power-supply = <&pp3300_dx_edp>;
 		backlight = <&backlight>;
 		hpd-gpios = <&sn65dsi86_bridge 2 GPIO_ACTIVE_HIGH>;
+		ddc-i2c-bus = <&sn65dsi86_bridge>;
 
 		ports {
 			port {
-- 
2.31.1.368.gbe11c130af-goog

