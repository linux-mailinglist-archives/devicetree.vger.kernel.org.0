Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1B1B5666084
	for <lists+devicetree@lfdr.de>; Wed, 11 Jan 2023 17:31:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238808AbjAKQbh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Jan 2023 11:31:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39710 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239328AbjAKQbC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Jan 2023 11:31:02 -0500
Received: from mail-oa1-x2e.google.com (mail-oa1-x2e.google.com [IPv6:2001:4860:4864:20::2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 654181C924
        for <devicetree@vger.kernel.org>; Wed, 11 Jan 2023 08:30:22 -0800 (PST)
Received: by mail-oa1-x2e.google.com with SMTP id 586e51a60fabf-12c8312131fso16091050fac.4
        for <devicetree@vger.kernel.org>; Wed, 11 Jan 2023 08:30:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Zol8435HXHkhAWCSDbS6ruuhV4OiO2myD3unp6JT+YE=;
        b=IJ6H8YWcSGtxHKky5qUju/WmwOEC9JzzXQAVlckOq/Z7b0vckAahNusUrvJ1m72q+X
         XIkTviqYIDAxfeEDOs4yt/SAqzXKrM6915/Bz/tW4WWJtHacI2puRyMQzwyWByacTFMv
         tqbbNhzBh3lyCA3szypvRB/pHVAnRvrtlfs1V3cS8TWxHN0RsqdYfZVxvcS4zs9GO/i6
         Z+9jrQCQUSivXmMQZOqeL9Ja2vZHQKpwm6nDHgULutE8lL6YcLnxAOmh7BDxAb2PtjJx
         /NR3g4QzsPzrYSczfQxPelD8RLR7ZHYjGL9zM/eJwzop0mLzQhvB7cWZ/bGfxJ9av3DT
         ckjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Zol8435HXHkhAWCSDbS6ruuhV4OiO2myD3unp6JT+YE=;
        b=EIP0ejzxo2UCU51b8ppK1vBGABfdal2SO6wlhaaVypmPHmhNTKiON7Nlc4lViTw8XH
         vS+UMi2q9UfTwQ4tpct1zG4QpXoCwXJsHGegsIovFRnW2NamDaFWNDoQg7z/D5g9r7rE
         z3C54eNF7+VvdNOjcpnj95pNvaRN/k88qWm5kDsxUwYE83JIqskcs01z9YylW3aemzGh
         /Mq1bHReTmPsm/eOxgxXYoJ8/+gelxiyEnRd0wETTJSHGhw8VA2QM69GYRGG7uP/xhSx
         Xq6IUXIiAyOo92EitlFDc8BndS3JOIqaMvMV9J+CVkmLPQ5Z7Y2hYyohMA5MVbGnGzRs
         NofA==
X-Gm-Message-State: AFqh2krH5gwsHJ7zwPQLXIdnnN7szhDf04xT1RizdVH2NMFGSCn1JzwC
        eQvgY33hBKwAUUP2F/68NcM=
X-Google-Smtp-Source: AMrXdXsShXaeVo/qX/xezAGy9JzO7fU73FOpTKVmc02zrgpRXzVq71bNJv9GjSIPqsytu4Qxrr6skw==
X-Received: by 2002:a05:6870:80c7:b0:150:c2c5:a2f7 with SMTP id r7-20020a05687080c700b00150c2c5a2f7mr17239064oab.8.1673454621585;
        Wed, 11 Jan 2023 08:30:21 -0800 (PST)
Received: from localhost.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id z13-20020a056870738d00b0013ae39d0575sm7629003oam.15.2023.01.11.08.30.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jan 2023 08:30:21 -0800 (PST)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     dri-devel@lists.freedesktop.org
Cc:     linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        maccraft123mc@gmail.com, tzimmermann@suse.de, mripard@kernel.org,
        maarten.lankhorst@linux.intel.com, heiko@sntech.de,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org,
        thierry.reding@gmail.com, linus.walleij@linaro.org,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH v9 0/4] drm/panel: Add Magnachip D53E6EA8966 Panel Controller
Date:   Wed, 11 Jan 2023 10:30:08 -0600
Message-Id: <20230111163012.310945-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

Add the Magnachip D53E6EA8966 panel IC controller for display panels
such as the Samsung AMS495QA01 panel as found on the Anbernic RG503.
This panel uses DSI to receive video signals, but 3-wire SPI to receive
command signals using DBI.

Changes since V8:
 - Set "placeholder" drm_of_get_dsi_bus in drm_of.h to static inline
   to hopefully eliminate the reported errors once and for all. Tested
   with 4 different kernel configurations provided by Intel's kernel
   test robot and no new warnings or errors were introduced.
   Reported-by: kernel test robot <lkp@intel.com>

Changes since V7:
 - Removed Linus Walleij review note due to substantial changes.
 - Corrected documentation of drm_of_get_dsi_bus function.
 - Updated the drm_of_get_dsi_bus function to return pointer to
   mipi_dsi_host and use ERR_PTR macros.
 - Refactored drm_panel_funcs so that the prepare function calls
   panel specific function for init sequence and uses generic
   functions otherwise.
 - Renamed non-panel specific functions.
 - Changed backlight value to int instead of u32.
 - Corrected brightness function to use backlight_get_brightness().
 - Fix an error reported when CONFIG_OF is selected but
   CONFIG_DRM_MIPI_DSI is not. Add an if function to drm_of_get_dsi_bus
   function to return -EINVAL in this instance.
   Reported-by: kernel test robot <lkp@intel.com>

Changes since V6:
 - Fixed a trivial error with definition of drm_of_get_dsi_bus().
   Reported-by: kernel test robot <lkp@intel.com>

Changes since V5:
 - Reverted dt binding documentation name back to
   samsung,ams495qa01.yaml.
 - Removed no longer needed of_graph.h header file.
 - Added backlight as a dependency.

Changes since V4:
 - Renamed driver from the panel model to the panel IC controller per
   DRM team.
 - Added a drm_of helper function of drm_of_get_dsi_bus() to handle
   finding and populating the DSI node when the DSI node is not the
   parent of the DSI controlled display.
 - Converted the documented commands to constants to make it more
   readable.
 - Reset GPIO is now required and documented as GPIO_ACTIVE_LOW.
 - Removed "prepared" logic from panel.

Changes since V3:
 - Updated documentation to add spi-peripheral-props.yaml per updates
   made for similar devices. Note that I removed a "Reviewed-by" tag
   from Rob Herring since this change probably needs to be confirmed.
 - Added binding for RG503, since this device is now accepted with this
   request: https://lore.kernel.org/linux-rockchip/166274831283.21181.6861718157177507544.b4-ty@sntech.de/

Changes since V2:
 - Added 50hz mode at request of userspace devs.
 - Renamed "dupa" to panel name. Good catch Maya.
 - Added Maya's Signed-off-by.
 - Removed check for max backlight, since it is already done by
   backlight_device_set_brightness.
 - Fixed minor formatting issues on devicetree binding documentation
   and added port to provided example.

Changes since V1:
 - Removed errant reference to backlight in documentation. This is an
   OLED panel.
 - Made elvss regulator optional. In my case its hard wired and not
   controllable.
 - Added "prepared" enum to track panel status to prevent unbalanced
   regulator enable/disable.

Chris Morgan (4):
  drm: of: Add drm_of_get_dsi_bus helper function
  dt-bindings: display: panel: Add Samsung AMS495QA01
  drm/panel: Add Magnachip D53E6EA8966 Panel Driver
  arm64: dts: rockchip: add display to RG503

 .../display/panel/samsung,ams495qa01.yaml     |  57 ++
 .../dts/rockchip/rk3566-anbernic-rg503.dts    |  55 ++
 drivers/gpu/drm/drm_of.c                      |  70 +++
 drivers/gpu/drm/panel/Kconfig                 |  11 +
 drivers/gpu/drm/panel/Makefile                |   1 +
 .../drm/panel/panel-magnachip-d53e6ea8966.c   | 522 ++++++++++++++++++
 include/drm/drm_of.h                          |  10 +
 7 files changed, 726 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-magnachip-d53e6ea8966.c

-- 
2.34.1

