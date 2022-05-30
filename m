Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 89C0A537732
	for <lists+devicetree@lfdr.de>; Mon, 30 May 2022 10:51:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231325AbiE3ITY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 May 2022 04:19:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36992 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231218AbiE3ITX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 May 2022 04:19:23 -0400
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com [IPv6:2607:f8b0:4864:20::1033])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0F38F6CF5A
        for <devicetree@vger.kernel.org>; Mon, 30 May 2022 01:19:22 -0700 (PDT)
Received: by mail-pj1-x1033.google.com with SMTP id n10so10327786pjh.5
        for <devicetree@vger.kernel.org>; Mon, 30 May 2022 01:19:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=pBLLK5jVhwbNway5d1jcnH/mwgI9yxE1r2VmUrlYtDU=;
        b=LLgjKgp2+ro4rOIKxUWfMFimQjfxFWRvVWoMjpqWUvgtX/IIENmwdkMHUIq88hcolf
         ROFZ7vAAUlY+NJsshhvUkkommU11wX7sGxpjL1CjmCeZgVV/zkVhk3p7u/ZyNujeoi9J
         QxRXyXc9nqN8qIybleH4/7N9FDZp9fBXbaLPk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=pBLLK5jVhwbNway5d1jcnH/mwgI9yxE1r2VmUrlYtDU=;
        b=5AF+FZMrvGkrZah2O+LeZX/rvIMcLod7/0I0YfO9CmlFBfpUe5tIJivx9YHN6wrzC8
         2o7xdEmTtcEFrEdHRL4tUFgRgGUYqaTgPZ8Ou2o/gpd2YSeequRe0+YTpadxwGb2RmkC
         4yNl7Q2nH3sxGC/NwCz4DQdaVZ43LpypJbNAEjFz+REuSueD62hTAm61h+lOh//AIZ4R
         CPVrNaPtE3PeRbt7E5krzGmTQT7zvqqy5D1GXZ08mFYItSP/3eVjO2VF2H4QiCqtapzB
         Br3hyINzaQJ/6OzYceWWhUdd9S1qTBGh5KZ5rHtkicKFZ+riwIGGDw60tVB8EY+rp+Gl
         QfHw==
X-Gm-Message-State: AOAM532l8LMbhndjq1kXkwSgQ4e0HVxrQZbBqX1Jza5Eojw9yX2QOAJS
        XGEwYxi/pkg5nkHrd4T3MgaCLQ==
X-Google-Smtp-Source: ABdhPJz+H5PQ1/wn0WMWpccN62eOSMQ6CsdGl2YYPW6OhEKjBgqYnlaum+TZJlp8G3W0bq500UZXIw==
X-Received: by 2002:a17:903:124a:b0:154:c860:6d52 with SMTP id u10-20020a170903124a00b00154c8606d52mr55869147plh.159.1653898761542;
        Mon, 30 May 2022 01:19:21 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:ae1c:3d63:abec:1097])
        by smtp.gmail.com with ESMTPSA id m1-20020a170902f64100b001618b70dcc9sm8537900plg.101.2022.05.30.01.19.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 May 2022 01:19:21 -0700 (PDT)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     dri-devel@lists.freedesktop.org, David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, amd-gfx@lists.freedesktop.org,
        intel-gfx@lists.freedesktop.org
Cc:     Rob Clark <robdclark@chromium.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Sean Paul <sean@poorly.run>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Simon Ser <contact@emersion.fr>,
        Harry Wentland <harry.wentland@amd.com>,
        Alex Deucher <alexander.deucher@amd.com>,
        Jani Nikula <jani.nikula@linux.intel.com>,
        Emil Velikov <emil.l.velikov@gmail.com>,
        Hans de Goede <hdegoede@redhat.com>
Subject: [PATCH v10 0/4] Separate panel orientation property creating and value setting
Date:   Mon, 30 May 2022 16:19:06 +0800
Message-Id: <20220530081910.3947168-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.36.1.124.g0e6072fb45-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Some drivers, eg. mtk_drm and msm_drm, rely on the panel to set the
orientation. Panel calls drm_connector_set_panel_orientation() to create
orientation property and sets the value. However, connector properties
can't be created after drm_dev_register() is called. The goal is to
separate the orientation property creation, so drm drivers can create it
earlier before drm_dev_register().

After this series, drm_connector_set_panel_orientation() works like
before. It won't affect existing callers of
drm_connector_set_panel_orientation(). The only difference is that
some drm drivers can call drm_connector_init_panel_orientation_property()
earlier.

Hsin-Yi Wang (4):
  gpu: drm: separate panel orientation property creating and value
    setting
  drm/mediatek: init panel orientation property
  drm/msm: init panel orientation property
  arm64: dts: mt8183: Add panel rotation

 .../arm64/boot/dts/mediatek/mt8183-kukui.dtsi |  1 +
 drivers/gpu/drm/drm_connector.c               | 58 ++++++++++++++-----
 drivers/gpu/drm/mediatek/mtk_dsi.c            |  7 +++
 drivers/gpu/drm/msm/dsi/dsi_manager.c         |  4 ++
 include/drm/drm_connector.h                   |  2 +
 5 files changed, 59 insertions(+), 13 deletions(-)

-- 
2.36.1.124.g0e6072fb45-goog

