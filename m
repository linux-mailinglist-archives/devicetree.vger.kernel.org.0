Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7E04D3FE3CD
	for <lists+devicetree@lfdr.de>; Wed,  1 Sep 2021 22:21:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343890AbhIAUVx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Sep 2021 16:21:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55348 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343727AbhIAUVj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Sep 2021 16:21:39 -0400
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com [IPv6:2607:f8b0:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 706A2C0617A8
        for <devicetree@vger.kernel.org>; Wed,  1 Sep 2021 13:20:41 -0700 (PDT)
Received: by mail-pf1-x42a.google.com with SMTP id y17so712161pfl.13
        for <devicetree@vger.kernel.org>; Wed, 01 Sep 2021 13:20:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=mWpQuuJjmOltxcGlhp80Go7kcj2rBByEKq5WUEPaCUU=;
        b=XK94ViAcm0nxkHX43OqtJrmDk10oapIw+sE89kl6IesikSt+5Jv6hCy+/YIjBhe8NU
         ldI/mEX6luWPDd3MUKfPNt2tHvoCnvN4ej7yZuvIxr6MxL+AloelI0Fl+k8Td78wfGiz
         AWlJWNJobDgFv+/YDryZq12xHWLaxOG1XqeCY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=mWpQuuJjmOltxcGlhp80Go7kcj2rBByEKq5WUEPaCUU=;
        b=iQwhXvGWaJXV+jLfl7kv012orplxewn/U1uL1qWwXTXuEZyIhYRxgqbD5/m+uvI5BL
         c7NMdtIa8cqjMP0/lEnPAVUeuAQxfGa4UJKk8apifccdISkp3rMqc/xGHh9tRcIOZe3T
         WEFXQNQhlDZ7caP8P2ArE6jBigQr8OFe62ZOjp8qTdaZRBeybfI3rG32oVLbNpp0mElj
         MR72+wbCO7AWqK3RHZA0bnjeVouM/koztMXsLcydQYivtCL9SqCgd0mi98XDJeyxUvS/
         TeZKhE1JNLjVev4CZN47i9dyKckiSBEDq1bINgbracfjwXwb3prARwDJ8Kti/zO01Yn/
         CYww==
X-Gm-Message-State: AOAM531tgO04GETnSi804R87PKj0lAPJriNmUIKqiHPYOQDOaqfELbJJ
        8VPyssNjScBmoTjSxkiFSf/U5Q==
X-Google-Smtp-Source: ABdhPJzp2cmXbEsSbVWCOkZZKfiv31TzBP31B0LfIbPldpdBtF6YxlUM1F7d6HlVMOhOFD452XmjKw==
X-Received: by 2002:a63:ed03:: with SMTP id d3mr802704pgi.24.1630527641056;
        Wed, 01 Sep 2021 13:20:41 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:201:958b:b561:a735:e774])
        by smtp.gmail.com with ESMTPSA id x15sm321178pfq.31.2021.09.01.13.20.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Sep 2021 13:20:40 -0700 (PDT)
From:   Douglas Anderson <dianders@chromium.org>
To:     Thierry Reding <thierry.reding@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>
Cc:     Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        linux-arm-msm@vger.kernel.org,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Linus W <linus.walleij@linaro.org>,
        Daniel Vetter <daniel@ffwll.ch>, devicetree@vger.kernel.org,
        Steev Klimaszewski <steev@kali.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Maxime Ripard <mripard@kernel.org>,
        David Airlie <airlied@linux.ie>,
        dri-devel@lists.freedesktop.org,
        Douglas Anderson <dianders@chromium.org>,
        Andrey Zhizhikin <andrey.zhizhikin@leica-geosystems.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Fabio Estevam <festevam@gmail.com>,
        =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
        Jagan Teki <jagan@amarulasolutions.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Michael Walle <michael@walle.cc>, Nishanth Menon <nm@ti.com>,
        Shawn Guo <shawnguo@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Will Deacon <will@kernel.org>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 07/16] arm64: defconfig: Everyone who had PANEL_SIMPLE now gets PANEL_SIMPLE_EDP
Date:   Wed,  1 Sep 2021 13:19:25 -0700
Message-Id: <20210901131531.v3.7.Ied5c4da3ea36f8c49343176eda342027b6f19586@changeid>
X-Mailer: git-send-email 2.33.0.259.gc128427fd7-goog
In-Reply-To: <20210901201934.1084250-1-dianders@chromium.org>
References: <20210901201934.1084250-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

In the patch ("drm/panel-simple-edp: Split eDP panels out of
panel-simple") we split the PANEL_SIMPLE driver in 2. Let's enable the
new config.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

(no changes since v1)

 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index f423d08b9a71..914057efa160 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -697,6 +697,7 @@ CONFIG_DRM_MSM=m
 CONFIG_DRM_TEGRA=m
 CONFIG_DRM_PANEL_LVDS=m
 CONFIG_DRM_PANEL_SIMPLE=m
+CONFIG_DRM_PANEL_SIMPLE_EDP=m
 CONFIG_DRM_PANEL_BOE_TV101WUM_NL6=m
 CONFIG_DRM_PANEL_MANTIX_MLAF057WE51=m
 CONFIG_DRM_PANEL_RAYDIUM_RM67191=m
-- 
2.33.0.259.gc128427fd7-goog

