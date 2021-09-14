Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 73D7540B914
	for <lists+devicetree@lfdr.de>; Tue, 14 Sep 2021 22:22:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233880AbhINUYC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Sep 2021 16:24:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37654 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233929AbhINUXs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Sep 2021 16:23:48 -0400
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com [IPv6:2607:f8b0:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51923C0613E2
        for <devicetree@vger.kernel.org>; Tue, 14 Sep 2021 13:22:30 -0700 (PDT)
Received: by mail-pl1-x62f.google.com with SMTP id bb10so178815plb.2
        for <devicetree@vger.kernel.org>; Tue, 14 Sep 2021 13:22:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=PBcYPyXmjQckFM/2vcPXaB6/oJE2xaU/uFm+3ktt/M4=;
        b=CckSXAwHc21xof5pws6PHHqcPQ6kRaqr7CDq3Ah80T9bXoLzSQyJLLwyDJdp/Z4NV+
         KnBsoarxEdp5JCWnwQvDcUob4dp+ZffeJ4ikwepOBFvcQOv2QzXOoQAFLijV2lgZM65j
         akcP3i1aearFox7NMwtUtwptpOl1kFR5btp7c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=PBcYPyXmjQckFM/2vcPXaB6/oJE2xaU/uFm+3ktt/M4=;
        b=Xm+5RCgb2rdDJH4vbPPW48TBUMf0kFqg6TIWFBVkkVWlwb7nTN5Vrqbf4eKPS8TVR2
         W+IkAioIIC2FvqJ8RtH6zIMdlnptf/ui7/JmrEs0bimAdL3ZgcOYkSPTXzVpe97ZTM8b
         vqmFOoQmHn7gAGXRobUWtwhC9qtGsgSNzlWf/nu0o5OG2lrVp7i9mOKmgoinxHr+exkc
         pTwEcPzHNHpBCJa9l5U8XmdNEfwhkUgscLx37syjPPtwwStayAs+d9P6TBKjFhK3tUDS
         SFyIteawr942PH4LTcNBXnLUhovQacA96HK4KLXkw/uSOnGWHZJFKrb1174/ZC56tv8Z
         M5aA==
X-Gm-Message-State: AOAM533zIpwiJ/LALQPmE5owU/tK4PZgLQUXrCuVz0d79hSfQOUqjJFw
        OKvh6BhrEMca1kg1O/fu090IoA==
X-Google-Smtp-Source: ABdhPJwT8YboamT7k/5uDkHsbWCYQKBAEu3nQN/DiSI9zWeXYNzhx+6XvNbN4xBxoN6Mk4dIUp+88Q==
X-Received: by 2002:a17:90b:4b47:: with SMTP id mi7mr4168709pjb.198.1631650949909;
        Tue, 14 Sep 2021 13:22:29 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:201:f38f:9d0f:3eba:f8c4])
        by smtp.gmail.com with ESMTPSA id 141sm12185393pgg.16.2021.09.14.13.22.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Sep 2021 13:22:29 -0700 (PDT)
From:   Douglas Anderson <dianders@chromium.org>
To:     Thierry Reding <thierry.reding@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>
Cc:     devicetree@vger.kernel.org, Steev Klimaszewski <steev@kali.org>,
        dri-devel@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
        David Airlie <airlied@linux.ie>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Linus W <linus.walleij@linaro.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        Maxime Ripard <mripard@kernel.org>,
        Douglas Anderson <dianders@chromium.org>,
        Adam Ford <aford173@gmail.com>,
        Andrey Zhizhikin <andrey.zhizhikin@leica-geosystems.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
        Jagan Teki <jagan@amarulasolutions.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Michael Walle <michael@walle.cc>, Nishanth Menon <nm@ti.com>,
        Shawn Guo <shawnguo@kernel.org>, Will Deacon <will@kernel.org>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v5 06/15] arm64: defconfig: Everyone who had PANEL_SIMPLE now gets PANEL_EDP
Date:   Tue, 14 Sep 2021 13:21:53 -0700
Message-Id: <20210914132020.v5.6.Ied5c4da3ea36f8c49343176eda342027b6f19586@changeid>
X-Mailer: git-send-email 2.33.0.309.g3052b89438-goog
In-Reply-To: <20210914202202.1702601-1-dianders@chromium.org>
References: <20210914202202.1702601-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

In the patch ("drm/panel-simple-edp: Split eDP panels out of
panel-simple") we split the PANEL_SIMPLE driver in 2. Let's enable the
new config.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
Acked-by: Sam Ravnborg <sam@ravnborg.org>
---

(no changes since v4)

Changes in v4:
- PANEL_SIMPLE_EDP => PANEL_EDP
- Reordered config patches to be before code patch

 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index f423d08b9a71..01b30f4a7e74 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -697,6 +697,7 @@ CONFIG_DRM_MSM=m
 CONFIG_DRM_TEGRA=m
 CONFIG_DRM_PANEL_LVDS=m
 CONFIG_DRM_PANEL_SIMPLE=m
+CONFIG_DRM_PANEL_EDP=m
 CONFIG_DRM_PANEL_BOE_TV101WUM_NL6=m
 CONFIG_DRM_PANEL_MANTIX_MLAF057WE51=m
 CONFIG_DRM_PANEL_RAYDIUM_RM67191=m
-- 
2.33.0.309.g3052b89438-goog

