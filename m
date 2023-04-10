Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 571316DC4A6
	for <lists+devicetree@lfdr.de>; Mon, 10 Apr 2023 10:51:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229716AbjDJIup (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Apr 2023 04:50:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38914 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230376AbjDJIuT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Apr 2023 04:50:19 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0BBEE5587
        for <devicetree@vger.kernel.org>; Mon, 10 Apr 2023 01:49:51 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id xi5so10935034ejb.13
        for <devicetree@vger.kernel.org>; Mon, 10 Apr 2023 01:49:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1681116579; x=1683708579;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=y5ePFxjbLBzvierh0vPmoX2AJ6odjU/okQNVSYo6+J0=;
        b=RCJpuhAmaiEhyX7miTtpDm2B6aHyY7G7AUvRlRukNsyjL70ZJsCQAtaj3OQvh5OYPV
         TFriUULQnUDlx2HjEsI/Kw2Ah9VIJ9ZIeDYYBye3hexNLts3plMTPCJjFWrxMbIu6Eag
         XjqvoXa1xSsAljafdAreM72uC7lUHl6yPkaAmYZuhufCOwNvWRRWHj1YBOsWfhdoFgnF
         kSBopPrfEZ28my/Fa41Qr6TJNH9JpbaOPigMEYVU/B8HSmVqjIqBmV8qS+8UuhdK0dRL
         nxO6iYDY4vXdt8A9z2+h74Uj92wooKBV/Qh70Eg4GbRrknLo9F3pWeHJHPTVX9UIkidz
         CSUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681116579; x=1683708579;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=y5ePFxjbLBzvierh0vPmoX2AJ6odjU/okQNVSYo6+J0=;
        b=YbA+mnXe9/hO2VJz91tjS3Ao/AzPraaved0UNQsIRG44Q7tRw/ag0jmtgARFSNiU6c
         skkDkPyYBloMIfn4L8T9W6xOM2rQV1xi/mnrukl9OYAYAT7q1EYoy6arqyLjhfYuguU1
         w27qxDY7MtrFZFzfOls+h0DkQ7XUqm1W7ADoCnuQ7iiOl0qrl7XUHtsJ4UOccjySE86r
         YrpZriT13VFcuP50BwM0PZbAO9QuEYXtMYWlGfwEn6Y7gxZRg4YsEOhnn/l4qPzd9Q34
         ULxI52lBuApZUGGO7K8wQ1SsrVmJ6UaLZv3UV0SEYhZPCbtz6FKHRrvA5UrmQ91NjJEk
         PiYA==
X-Gm-Message-State: AAQBX9cYfqsHz8plUtxEJwUQ+U2dPUmm3kN9k/mriORt3w/kNtS3QKXp
        YjvTe+XfNAdYBwJeNrbib1sapND/tjQ1kXg8
X-Google-Smtp-Source: AKy350bKbp2C72vty5skdGElAcpoLwKvITKzpR2b0BLRFPeIA6nODgwcXIjQGRg4GNgULAPUQS2ugA==
X-Received: by 2002:a17:906:8585:b0:94a:7a2f:d6e8 with SMTP id v5-20020a170906858500b0094a7a2fd6e8mr2904492ejx.61.1681116578666;
        Mon, 10 Apr 2023 01:49:38 -0700 (PDT)
Received: from localhost.localdomain ([154.72.161.184])
        by smtp.gmail.com with ESMTPSA id v13-20020a50954d000000b004fc649481basm4709962eda.58.2023.04.10.01.49.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Apr 2023 01:49:38 -0700 (PDT)
From:   Brandon Cheo Fusi <fusibrandon13@gmail.com>
To:     maxime@cerno.tech
Cc:     airlied@gmail.com, andrzej.hajda@intel.com, daniel@ffwll.ch,
        dave.stevenson@raspberrypi.com, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, jagan@amarulasolutions.com,
        jernej.skrabec@gmail.com, krzysztof.kozlowski+dt@linaro.org,
        linux-amarula@amarulasolutions.com,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
        maarten.lankhorst@linux.intel.com, marex@denx.de,
        neil.armstrong@linaro.org, rfoss@kernel.org, robh+dt@kernel.org,
        sam@ravnborg.org, samuel@sholland.org, tzimmermann@suse.de,
        wens@csie.org, Brandon Cheo Fusi <fusibrandon13@gmail.com>
Subject: [PATCH 0/2] drm: sun4i/dsi: allow modeset helpers to manage display
Date:   Mon, 10 Apr 2023 09:47:48 +0100
Message-Id: <20230410084750.164016-1-fusibrandon13@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=1.6 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,RCVD_IN_SORBS_WEB,SPF_HELO_NONE,SPF_PASS
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This change moves DSI PHY poweron/off from the encoder to the TCON. 

As a consequence enabling or disabling the DSI sink can be left to the modeset
helpers, and bridge support easily introduced without touching the 
drm_encoder.bridge_chain or converting the encoder to a drm_bridge.

Brandon Cheo Fusi (2):
  drm: sun4i/dsi: factor out DSI PHY poweron and poweroff
  drm: sun4i: tie DSI PHY Poweron/off to crtc enable/disable

 drivers/gpu/drm/sun4i/sun4i_tcon.c     | 10 +++-
 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c | 64 ++++++++++++--------------
 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h |  4 ++
 3 files changed, 43 insertions(+), 35 deletions(-)

-- 
2.30.2

