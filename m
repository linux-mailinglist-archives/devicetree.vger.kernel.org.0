Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E50E23D30BD
	for <lists+devicetree@lfdr.de>; Fri, 23 Jul 2021 02:22:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232682AbhGVXlf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Jul 2021 19:41:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40314 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232798AbhGVXle (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Jul 2021 19:41:34 -0400
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com [IPv6:2607:f8b0:4864:20::1033])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 25CECC061575
        for <devicetree@vger.kernel.org>; Thu, 22 Jul 2021 17:22:08 -0700 (PDT)
Received: by mail-pj1-x1033.google.com with SMTP id my10so8409123pjb.1
        for <devicetree@vger.kernel.org>; Thu, 22 Jul 2021 17:22:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ilHV4zkFYV/inpNlTjXcax19NKR7g9Dp2bd3Wi4nieU=;
        b=H5PMaoBwCj/x/6zyYxozhyvWGMrvIQXzg/TlzwMXxkPxuAO0Sobu8MZT/+xdkHdx8U
         KOOwY8KyFWw/2ShculMhRh/bi+M+p5yRTBQBIftJ/YDVi3aoASgjN4QuoUoSFqXWbmFt
         ryb2z3k6h/2m3ta2j+N25Qa/slTSq5y5E/zuY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ilHV4zkFYV/inpNlTjXcax19NKR7g9Dp2bd3Wi4nieU=;
        b=V0MQcql8bWHz/OgOmUV9sfGN3DlC50Ls98L2QUKhP1zesgkIucz9NXONDdW+rcLVjE
         zOAVIkLD1I1bEvieFpgXaBylOdSWPZFCu88xUmb8SROVbq4ToSi8R9OFOHyBkCkkIkXQ
         wRnF3gvu//ppuXxNhQ3PkjhOTggMgiHSp/nLr3Ycx67/PCWsMdTv64VwEyVwD706E0k6
         bB8P/1X1ajNtxgE7ccYvgmNmz0tXHpfrflJaE2BdJYgf/1hLFcQCbXAqAudhLsoklAiN
         uT4TAk8+fkj30d//UCUHCycj8nxwunmNQQuJRkYwIbhUPYBUxU0Zt6qbvuL5dnhrsE82
         JBbA==
X-Gm-Message-State: AOAM532mXt7kAmcn51x/ikBqX7snR6dcWS7jVFsIHd0By3O+IOWyq3AJ
        2QRojU3fCumLr1D8r1i7bqdKLw==
X-Google-Smtp-Source: ABdhPJy3fNIhcYUlCjPQ6rsNOgNRR30C3i3qn3hSQwAIOxUXOxQpz3bxuGzhyKhNARRvDRL91VLEsQ==
X-Received: by 2002:a05:6a00:1951:b029:333:64d3:e1f1 with SMTP id s17-20020a056a001951b029033364d3e1f1mr2175927pfk.43.1626999727675;
        Thu, 22 Jul 2021 17:22:07 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:201:5e70:6a49:67b5:2b7e])
        by smtp.gmail.com with ESMTPSA id iy13sm4072377pjb.28.2021.07.22.17.22.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jul 2021 17:22:07 -0700 (PDT)
From:   Douglas Anderson <dianders@chromium.org>
To:     Thierry Reding <thierry.reding@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Steev Klimaszewski <steev@kali.org>,
        dri-devel@lists.freedesktop.org, David Airlie <airlied@linux.ie>,
        devicetree@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
        Maxime Ripard <mripard@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        linux-arm-msm@vger.kernel.org, Linus W <linus.walleij@linaro.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Douglas Anderson <dianders@chromium.org>,
        Andy Gross <agross@kernel.org>, linux-kernel@vger.kernel.org
Subject: [RFC PATCH 0/8] eDP: Support probing eDP panels dynamically instead of hardcoding
Date:   Thu, 22 Jul 2021 17:21:38 -0700
Message-Id: <20210723002146.1962910-1-dianders@chromium.org>
X-Mailer: git-send-email 2.32.0.432.gabb21c7263-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


The goal of this patch series is to move away from hardcoding exact
eDP panels in device tree files. As discussed in the various patches
in this series (I'm not repeating everything here), most eDP panels
are 99% probable and we can get that last 1% by allowing two "power
up" delays to be specified in the device tree file and then using the
panel ID (found in the EDID) to look up additional power sequencing
delays for the panel.

This patch series is the logical contiunation of a previous patch
series where I proposed solving this problem by adding a
board-specific compatible string [1]. In the discussion that followed
it sounded like people were open to something like the solution
proposed in this new series.

[1] https://lore.kernel.org/r/YFKQaXOmOwYyeqvM@google.com/


Douglas Anderson (8):
  dt-bindings: drm/panel-simple: Introduce generic eDP panels
  drm/edid: Break out reading block 0 of the EDID
  drm/edid: Allow the querying/working with the panel ID from the EDID
  drm/panel-simple: Don't re-read the EDID every time we power off the
    panel
  drm/panel-simple: Copy "desc" into driver data; don't store a pointer
  drm/panel-simple: Split the delay structure out of the panel
    description
  drm/panel-simple: Implement generic "edp-panel"s probed by EDID
  arm64: dts: qcom: sc7180: trogdor devices can use probable eDP panels

 .../bindings/display/panel/panel-edp.yaml     | 196 ++++++
 .../bindings/display/panel/panel-simple.yaml  | 559 +++++++++---------
 .../boot/dts/qcom/sc7180-trogdor-coachz.dtsi  |   2 +-
 .../sc7180-trogdor-lazor-limozeen-nots.dts    |   2 +-
 .../qcom/sc7180-trogdor-lazor-limozeen.dts    |   2 +-
 .../boot/dts/qcom/sc7180-trogdor-lazor.dtsi   |   3 +-
 .../boot/dts/qcom/sc7180-trogdor-pompom.dtsi  |   2 +-
 drivers/gpu/drm/drm_edid.c                    | 113 +++-
 drivers/gpu/drm/panel/panel-simple.c          | 497 +++++++++++-----
 include/drm/drm_edid.h                        |  47 ++
 10 files changed, 965 insertions(+), 458 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/panel/panel-edp.yaml

-- 
2.32.0.432.gabb21c7263-goog

