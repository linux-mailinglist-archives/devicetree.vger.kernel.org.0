Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8359866BC70
	for <lists+devicetree@lfdr.de>; Mon, 16 Jan 2023 12:08:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229628AbjAPLIc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Jan 2023 06:08:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38600 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230171AbjAPLIa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Jan 2023 06:08:30 -0500
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com [IPv6:2607:f8b0:4864:20::102d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2E4406A6B
        for <devicetree@vger.kernel.org>; Mon, 16 Jan 2023 03:08:30 -0800 (PST)
Received: by mail-pj1-x102d.google.com with SMTP id u1-20020a17090a450100b0022936a63a21so7096395pjg.4
        for <devicetree@vger.kernel.org>; Mon, 16 Jan 2023 03:08:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=dfRiQXYTUx6y8hhtdcAlsfGS9AhT12f1GNqfx+pyyDk=;
        b=Eztij/jKwvQgLi8FDIq5tc40NYED6o9kyjWUtMs94tSD3Q0DoNhh88GZK3QOx5Mbjl
         rqQtvulivsl9z30WiH5kwhs7vxyc4rBEs5Fa8Om0dq5CDMPtVdMp6i/fb/Ex37GBMe9q
         TDCD8Ft7g+ZKdLIbmLWSTdQqsosUGLE69BZUI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dfRiQXYTUx6y8hhtdcAlsfGS9AhT12f1GNqfx+pyyDk=;
        b=hOHwokEddzQE9JjICK+7wQu8LrkcPlFN8VPFRNdCrY9lzbabIBJYM2MaOgZuoQS6vx
         AjRNMSosmt7lFEtCRP8B6bQf2YL1LbmjvVPPI2cZkX7lmvR81CPt/mNT8piLEiclh0K7
         55mHDAWXbE4ji/CmEZ6o/OrzdDN1G7170rIOrn2aMJBMnxaILoAx1Q0xNtUH7rGtYODK
         LgD0KPam0fVBqGtxbd50DJIgrzpcRyKdxnzhOgHKLVN1zXRYQN5jqx0yTiONe5iyTx+v
         f2CJEqGxQI2ZlyObID1PU2IRBH7B7bvOx2OaywbCHjhDgb+F7wRFSNM34TG80uv22PBS
         5ZRQ==
X-Gm-Message-State: AFqh2kpHURDhWP6dZyvXy25fZGF7Si4PWjZP3BYxxJhvbqU8PWhXiJRu
        29nFkEjuDZdgYWOLfxcRFWEvktmkNZZIafL1
X-Google-Smtp-Source: AMrXdXsggwYVYYGhO1zejEuuLPLjf5Zi64UVNlp925UPkPrexYScta5K/8VyKE2HL32TxjKI4YFFag==
X-Received: by 2002:a17:90a:b110:b0:223:4308:1ab4 with SMTP id z16-20020a17090ab11000b0022343081ab4mr93379792pjq.46.1673867309636;
        Mon, 16 Jan 2023 03:08:29 -0800 (PST)
Received: from treapking.tpe.corp.google.com ([2401:fa00:1:10:a3f3:9ba9:fe36:fbcb])
        by smtp.gmail.com with ESMTPSA id i8-20020a17090a138800b00226369149cesm17993686pja.21.2023.01.16.03.08.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Jan 2023 03:08:29 -0800 (PST)
From:   Pin-yen Lin <treapking@chromium.org>
To:     Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <robert.foss@linaro.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Nicolas Boichat <drinkcat@chromium.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        dri-devel@lists.freedesktop.org,
        Pin-yen Lin <treapking@chromium.org>
Subject: [PATCH v2 0/2] Add generic-display-mux driver and bindings
Date:   Mon, 16 Jan 2023 19:08:18 +0800
Message-Id: <20230116110820.2615650-1-treapking@chromium.org>
X-Mailer: git-send-email 2.39.0.314.g84b9a713c41-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This is the v2 the mux driver part of v1. This series is developed for
and tested on MT8173 board, whose layout looks like:

                                  /-- anx7688
-- MT8173 HDMI bridge -- GPIO mux
                                  \-- native HDMI

v1: https://patchwork.kernel.org/project/dri-devel/cover/20191211061911.238393-1-hsinyi@chromium.org/

The other drm bridge callbacks is dropped in this version because:
- The non-atomic callbacks are deprecated
- It would be complicated to pass the atomic state to the downstream
- We actually don't have the hardware to test them

Changes in v2:
- Referenced existing dt-binding schemas from graph.yaml
- Added ddc-i2c-bus into the bindings
- Dropped attach/mode_set/enable/disable callbacks
- Fixed style issues
- Removed the special case for the HDMI connector
- Made the driver only read the GPIO status in IRQ handler
- Rebased to drm-misc-next
- Updated the license: "GPL v2" --> "GPL"

Nicolas Boichat (2):
  dt-bindings: display: bridge: Add GPIO display mux binding
  drm: bridge: Generic GPIO mux driver

 .../bindings/display/bridge/gpio-mux.yaml     |  95 +++++++++
 drivers/gpu/drm/bridge/Kconfig                |  10 +
 drivers/gpu/drm/bridge/Makefile               |   1 +
 drivers/gpu/drm/bridge/generic-gpio-mux.c     | 201 ++++++++++++++++++
 4 files changed, 307 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/gpio-mux.yaml
 create mode 100644 drivers/gpu/drm/bridge/generic-gpio-mux.c

-- 
2.39.0.314.g84b9a713c41-goog

