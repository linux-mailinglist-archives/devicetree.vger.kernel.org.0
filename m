Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 08E413722D2
	for <lists+devicetree@lfdr.de>; Mon,  3 May 2021 23:59:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229965AbhECWAY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 May 2021 18:00:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38172 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229870AbhECWAT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 May 2021 18:00:19 -0400
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com [IPv6:2607:f8b0:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC2CBC061761
        for <devicetree@vger.kernel.org>; Mon,  3 May 2021 14:59:25 -0700 (PDT)
Received: by mail-pf1-x42f.google.com with SMTP id c17so5379715pfn.6
        for <devicetree@vger.kernel.org>; Mon, 03 May 2021 14:59:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=xm1pxMgf3254HnKQhOZrmriigH6ea4myanu9Y2cRDqQ=;
        b=CIAdryDpEn9rQaPhlyTVYzELYwbjMNsFogb7bPkXSCBMg+03kh4lI+6XnJudg3+4NE
         jp0IX0m1DyxzhIjnTC8cmZe5uGYfxnDTUXboX3NVs0A/i7voWWNmtEXBNOS5N0gONI4J
         vXgenGFSYCusWGmU+Un80gZgXXcGwtm0k/sT0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=xm1pxMgf3254HnKQhOZrmriigH6ea4myanu9Y2cRDqQ=;
        b=GlnR1+AQiR4h9riDwWPp7cJPE0h4H8rIx2N5FqnmMTDkE3KxLPbdcmDNPlVAuia5cN
         EVMdbzrXBMBjuEFOP9B9aW3f2hPSMp1+h1JupuILGLTx5EOURc9lTsr9N7Q18hIHCGVI
         nmlZmLTSqcSXhF4DH6+YzJrJo43n7z7nH4UwSy5Wa9ZldCO6BfJ7GkdwmzesGDacIi/4
         vT7qHEyeNNc2i5GEwtwoMP/6wH4/XrdechBqecY+ELjo4OwSKmCOqbItF33hPSKVYyPF
         UJG6pZp3xVYJXNGdgXSPRTnczi+lfjkHjDpVxjQrt0SfgaMtTgJDa2h2Rbqp/St7eLrn
         40Ww==
X-Gm-Message-State: AOAM533XbBnB0ra/pCAeHgPO1TN3emHwStXESe9GV5i2bvROnL0X/MIt
        yz2dKtjZfGL9AYm5wdnXRmbCJA==
X-Google-Smtp-Source: ABdhPJw2UkoGCFZjjZZ9DA4lzXuDBaVWBMcxVKzDXxW44/AQEfL8FfaCwy463h1uFYXcKRpcbrIF5g==
X-Received: by 2002:a63:5947:: with SMTP id j7mr1042596pgm.248.1620079165455;
        Mon, 03 May 2021 14:59:25 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:201:a592:ac50:b17b:5c43])
        by smtp.gmail.com with ESMTPSA id w1sm639186pgp.31.2021.05.03.14.59.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 May 2021 14:59:25 -0700 (PDT)
From:   Douglas Anderson <dianders@chromium.org>
To:     Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Sam Ravnborg <sam@ravnborg.org>, Wolfram Sang <wsa@kernel.org>
Cc:     Lyude Paul <lyude@redhat.com>, Steev Klimaszewski <steev@kali.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        linux-arm-msm@vger.kernel.org,
        Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
        Linus W <linus.walleij@linaro.org>, robdclark@chromium.org,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thierry Reding <treding@nvidia.com>, linux-i2c@vger.kernel.org,
        dri-devel@lists.freedesktop.org,
        Douglas Anderson <dianders@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v6 5/5] arm64: dts: qcom: Link the panel to the bridge's DDC bus
Date:   Mon,  3 May 2021 14:58:44 -0700
Message-Id: <20210503145750.v6.5.Ibdb7735fb1844561b902252215a69526a14f9abd@changeid>
X-Mailer: git-send-email 2.31.1.527.g47e6f16901-goog
In-Reply-To: <20210503215844.2996320-1-dianders@chromium.org>
References: <20210503215844.2996320-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Adding this link allows the panel code to do things like read the
EDID.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
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
2.31.1.527.g47e6f16901-goog

