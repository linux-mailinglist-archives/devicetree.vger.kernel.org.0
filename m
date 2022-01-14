Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EC33048F2B9
	for <lists+devicetree@lfdr.de>; Sat, 15 Jan 2022 00:02:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231248AbiANXC0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Jan 2022 18:02:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55000 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230466AbiANXC0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Jan 2022 18:02:26 -0500
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com [IPv6:2607:f8b0:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 05CBBC06161C
        for <devicetree@vger.kernel.org>; Fri, 14 Jan 2022 15:02:26 -0800 (PST)
Received: by mail-pg1-x535.google.com with SMTP id h23so3913188pgk.11
        for <devicetree@vger.kernel.org>; Fri, 14 Jan 2022 15:02:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=BVKiFbTgrN+4dfFsvMUyjh+c0889xN5w0pTkQdz39q4=;
        b=RlhP0wuSMGhXyZ0phG35Nuw+vFNDE+c2d0FJlvmi0+5DgQ5O5JmdPQeR7DqGCdMJCC
         /VlrAAmzilfFOfy2kC38ITfTjtJpZv4kTsfB7s/L1ganW6OWvpHUVXoHEafET0oHBu4M
         Ppj9Vq7LGVUguy0vkS7dCTqHlj8W7ppW3F7jo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=BVKiFbTgrN+4dfFsvMUyjh+c0889xN5w0pTkQdz39q4=;
        b=w4H7o58uyxf8PX2RLluCb36AbazZj0coa/wDbhEwgofdigHlrXIMJYFszL0H57mCyp
         5KluvDtE0fFrASRsGij/bsIoZKGfofxu1FOrOMvW/Dygon5wPHbf4nEROgF6rtnMHyaQ
         CQJJcmHzhfseSamQ/7H4r8jJ8WgRw/g524B1bVD5xaBx4dfm6lZ+wInfa0L22XCKImww
         PbUDdNbEZYcrrlSmA3cTMBJ9mKBGIh1pfAgQjJpPy7CcQ7mPonSzGDuhRrQLWI09ylxM
         NrCsYaD1ZjdDPSqMny6/BEx6tT1yZ9iwCO5JtRdrBlKupC7/ozG5KDjmPUlS4J4ss2qi
         Rijw==
X-Gm-Message-State: AOAM532oHBC6dIwZ1joadPsx+IrG5MUUV++o9dKPphzwwY2JndMgCR4W
        pSkLI69N15o7AFsNW7V81sHiOQ==
X-Google-Smtp-Source: ABdhPJygQAhOjz++7gMBKAe+FDohBuatX363kR5ClyepF85gLiZS7G/unLnFqdy+/LSmnjDXX93GWQ==
X-Received: by 2002:a05:6a00:890:b0:4bd:347d:8aaf with SMTP id q16-20020a056a00089000b004bd347d8aafmr11000008pfj.61.1642201345551;
        Fri, 14 Jan 2022 15:02:25 -0800 (PST)
Received: from localhost ([2620:15c:202:201:76ab:ede1:503d:1c39])
        by smtp.gmail.com with UTF8SMTPSA id c10sm6750264pfl.200.2022.01.14.15.02.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Jan 2022 15:02:24 -0800 (PST)
From:   Brian Norris <briannorris@chromium.org>
To:     Heiko Stuebner <heiko@sntech.de>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>
Cc:     linux-rockchip@lists.infradead.org, Lin Huang <hl@rock-chips.com>,
        linux-arm-kernel@lists.infradead.org,
        dri-devel@lists.freedesktop.org, Rob Herring <robh+dt@kernel.org>,
        Sandy Huang <hjc@rock-chips.com>, linux-kernel@vger.kernel.org,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        Brian Norris <briannorris@chromium.org>
Subject: [PATCH v2 0/3] (Re)enable DP/HDMI audio for RK3399 Gru
Date:   Fri, 14 Jan 2022 15:02:06 -0800
Message-Id: <20220114230209.4091727-1-briannorris@chromium.org>
X-Mailer: git-send-email 2.34.1.703.g22d0c6ccf7-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This series fixes DP/HDMI audio for RK3399 Gru systems.

First, there was a regression with the switch to SPDIF. Patch 1 can be
taken separately as a regression fix if desired. But it's not quite so
useful (at least on Chrome OS systems) without the second part.

Second, jack detection was never upstreamed, because the hdmi-codec
dependencies were still being worked out when this platform was first
supported.

Patches cover a few subsystems. Perhaps this is something for arm-soc?

Changes in v2:
 - (Un)set pinctrl, because the default assumes we're routing out to
   external pins

Brian Norris (3):
  arm64: dts: rockchip: Switch RK3399-Gru DP to SPDIF output
  drm/rockchip: cdn-dp: Support HDMI codec plug-change callback
  ASoC: rk3399_gru_sound: Wire up DP jack detection

 arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi | 17 ++++++++----
 drivers/gpu/drm/rockchip/cdn-dp-core.c       | 28 ++++++++++++++++++++
 drivers/gpu/drm/rockchip/cdn-dp-core.h       |  4 +++
 sound/soc/rockchip/rk3399_gru_sound.c        | 20 ++++++++++++++
 4 files changed, 64 insertions(+), 5 deletions(-)

-- 
2.34.1.703.g22d0c6ccf7-goog

