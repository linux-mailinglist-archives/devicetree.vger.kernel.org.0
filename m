Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 59CEA46B298
	for <lists+devicetree@lfdr.de>; Tue,  7 Dec 2021 06:48:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230439AbhLGFwM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Dec 2021 00:52:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34874 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229487AbhLGFwL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Dec 2021 00:52:11 -0500
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com [IPv6:2607:f8b0:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EFC65C061746
        for <devicetree@vger.kernel.org>; Mon,  6 Dec 2021 21:48:41 -0800 (PST)
Received: by mail-pl1-x62f.google.com with SMTP id y7so8705666plp.0
        for <devicetree@vger.kernel.org>; Mon, 06 Dec 2021 21:48:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=cK1uvr8za9LFh2JaUxJUeWxx5ZWZO7HDm1r4/MOIUOU=;
        b=BntCvO85mYsl2XoQnOm6H8etgLso0dd8Oc9/uvhSwgmbrM9T+bhLJeL06omjB7nJHa
         iz6GaoDKd7UYg8lDaEHg/AI6A5MDl9VUBNkH2A5pnWjJzItTLn3lt8I08nyQyeet3mh7
         gHoG+4Z6TAgB3WFV2cwe7dbNAp8XMq/Zfmwgs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=cK1uvr8za9LFh2JaUxJUeWxx5ZWZO7HDm1r4/MOIUOU=;
        b=0xaq3pNDSNWGlhcMT6PelTvniCf0+oup4Kj8hwKNg3IcOhM3LiUjhZrEcjhL/kQyUh
         v/W43QWrHPOT5B9fqqgttb8mD3YEAg54r9jdME+Ce5myANAgxAvVaEBYniVJVXNJRc5W
         fTiWdQ9lU/svwuG/RmQLgqW2OZrchybch8fJVpuMXuHhsebUO78W2zlROb1cO1sk52iB
         V0MzL1mBKx1k+PjsgJCcQ7Oq7DOExrI/78GNM+S+zV2O1w87NPmBqleal1VnXw/0MCdE
         1rE3Y8qsAgL9h6DXIbBcBMYRWuMUJtQzun7aPxmDbNZZ8x+5pdjcaTthGksNt9HtIN1M
         q2Sw==
X-Gm-Message-State: AOAM532/M7a+fy/UqX5XoAhomZO+hCGNuvC9nMzveRDJ6TYU/T4jAEUX
        xh05LfvoPN2lhWBiQfv/PmvyKw==
X-Google-Smtp-Source: ABdhPJwery5SdI8r0X+Yivku7xfy0ZBZVLcLdGlZER5mSSBDLiLNQCKUsrXe+TLiW8+9wEzeLBWRkA==
X-Received: by 2002:a17:902:a50f:b0:143:7dec:567 with SMTP id s15-20020a170902a50f00b001437dec0567mr49162454plq.18.1638856121507;
        Mon, 06 Dec 2021 21:48:41 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a0a9:ac1e:ca0f:5f0a:c85a])
        by smtp.gmail.com with ESMTPSA id f7sm14496352pfv.89.2021.12.06.21.48.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Dec 2021 21:48:41 -0800 (PST)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Robert Foss <robert.foss@linaro.org>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Andrzej Hajda <a.hajda@samsung.com>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 0/2] drm: of: Lookup child panel_or_bridge 
Date:   Tue,  7 Dec 2021 11:17:45 +0530
Message-Id: <20211207054747.461029-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch set add support to lookup if child node is panel or bridge
via drm_of_find_panel_or_bridge.

Any inputs?
Jagan.

Jagan Teki (2):
  of: Add helper to lookup non port child node
  drm: of: Lookup if child node is panel or bridge

 drivers/gpu/drm/drm_of.c | 36 ++++++++++++++++++++++++++----------
 drivers/of/base.c        | 29 +++++++++++++++++++++++++++++
 include/linux/of.h       |  6 ++++++
 3 files changed, 61 insertions(+), 10 deletions(-)

-- 
2.25.1

