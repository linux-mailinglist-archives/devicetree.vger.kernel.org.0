Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 66F5E48F0D1
	for <lists+devicetree@lfdr.de>; Fri, 14 Jan 2022 21:17:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237106AbiANURL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Jan 2022 15:17:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45576 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229702AbiANURK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Jan 2022 15:17:10 -0500
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com [IPv6:2607:f8b0:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D946C061574
        for <devicetree@vger.kernel.org>; Fri, 14 Jan 2022 12:17:10 -0800 (PST)
Received: by mail-pl1-x62b.google.com with SMTP id u11so8851210plh.13
        for <devicetree@vger.kernel.org>; Fri, 14 Jan 2022 12:17:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1KlPp5hV7fm0qq5cqvD5aoj0BfkxebgR6vlczP+kuR0=;
        b=hPBL7+GzXtx7Xy9BNRGobBHcJh3in4NXqnnYC06hntRlpfp/vjmD9i9XpuCMkppYe0
         KTPskbaS26eaCBp9BJJSJSoDjVC7Re+360GTMca2engSbymUQqzvGV7YvvxDdrJ6Auu1
         1qigxd68D5GnHmbXdB/NPhH0nNGBQ1nZC2LHQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1KlPp5hV7fm0qq5cqvD5aoj0BfkxebgR6vlczP+kuR0=;
        b=BzcGZ5nM8NktqUs6tRs2Fhyf3h53CCT3o/MPZ/R9GYcRQv33T/S6/fwErpICMhk7KJ
         FMpbM/W5Oc+SxivzjOTDHk5y9a+iUWPhrb219ZRT1FgmXSo7gCJuOeI79sT2z/e7WUX9
         GttOs0ZKL6IewQvF2gs/vefIKTRtD22ZlnkHM7d0kkGWwAhQqdTxl9tGkoFFZhwtAdUc
         u5p92Nuc4UaqYrXWLL46dxX2sNwNm+bWzgPfvCyxZLqLt9YJ/4Ut5uik3Ri0cANLycw/
         OavGD+B2btb2VgsHnWpUXb3FOJC7v5EIK79zCEWe5eUYv5yeDFdPiCZjwDRT2BlZRqot
         M1iQ==
X-Gm-Message-State: AOAM532/MQJSbqy1vRo4wctfbkJ06Zt778TRCc6MWYnHYP6WXRzl3Vqc
        BEhfXZEkk1BB5jcKWZwX42RcQ6AZf31FEQ==
X-Google-Smtp-Source: ABdhPJyYDhYmzb1m8B5ltHSl6+g7+4DhFkP602unTzHjzxK1IseRAPUhU48jZq5jKbANYv16P6nwIQ==
X-Received: by 2002:a17:902:ea07:b0:14a:45c0:78a7 with SMTP id s7-20020a170902ea0700b0014a45c078a7mr11123208plg.92.1642191430200;
        Fri, 14 Jan 2022 12:17:10 -0800 (PST)
Received: from localhost ([2620:15c:202:201:76ab:ede1:503d:1c39])
        by smtp.gmail.com with UTF8SMTPSA id q12sm6599881pfk.136.2022.01.14.12.17.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Jan 2022 12:17:09 -0800 (PST)
From:   Brian Norris <briannorris@chromium.org>
To:     Heiko Stuebner <heiko@sntech.de>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>
Cc:     alsa-devel@alsa-project.org, linux-arm-kernel@lists.infradead.org,
        dri-devel@lists.freedesktop.org, Sandy Huang <hjc@rock-chips.com>,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
        Lin Huang <hl@rock-chips.com>,
        Brian Norris <briannorris@chromium.org>
Subject: [PATCH 0/3] (Re)enable DP/HDMI audio for RK3399 Gru
Date:   Fri, 14 Jan 2022 12:16:49 -0800
Message-Id: <20220114201652.3875838-1-briannorris@chromium.org>
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


Brian Norris (3):
  arm64: dts: rockchip: Switch RK3399-Gru DP to SPDIF output
  drm/rockchip: cdn-dp: Support HDMI codec plug-change callback
  ASoC: rk3399_gru_sound: Wire up DP jack detection

 arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi | 10 +++----
 drivers/gpu/drm/rockchip/cdn-dp-core.c       | 28 ++++++++++++++++++++
 drivers/gpu/drm/rockchip/cdn-dp-core.h       |  4 +++
 sound/soc/rockchip/rk3399_gru_sound.c        | 20 ++++++++++++++
 4 files changed, 57 insertions(+), 5 deletions(-)

-- 
2.34.1.703.g22d0c6ccf7-goog

