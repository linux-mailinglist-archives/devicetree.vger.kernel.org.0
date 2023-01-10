Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 80E69664CEC
	for <lists+devicetree@lfdr.de>; Tue, 10 Jan 2023 21:03:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232123AbjAJUDI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Jan 2023 15:03:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55644 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231185AbjAJUDH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Jan 2023 15:03:07 -0500
Received: from mail-oo1-xc33.google.com (mail-oo1-xc33.google.com [IPv6:2607:f8b0:4864:20::c33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EFB88639D
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 12:03:04 -0800 (PST)
Received: by mail-oo1-xc33.google.com with SMTP id m23-20020a4abc97000000b004bfe105c580so3505900oop.4
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 12:03:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZIZAQ7FO4CZGj3dZTTG5OAyA7lcqHMiys9+DWMrDW2Q=;
        b=UKGzI8uY3xEF0vdZ/Ohb91g38rPExonbRBdEMO0WnryE1zNyFMv46RacCm2/W2ru+H
         xQQhHYI1ToVVivDsr8dH0CD5gL5gbUrj6LaVF7lvR4wByv1lIgPrXm9Em/cWoTvTuybj
         kw8SJvQFtLDRnEnY09Y7x3iHahvPoAQJMBRwIQCIDwXYTcfwQQ82CZT8997SabnPNpqr
         IvMlBL/nYFF8utdu/8SXUNaY7WoJTMjNM2zVn3RDM244GtovWIvgS59RGZFZUMGI9VmR
         jE5IVSqZGoCtUj9R3yZ6datsiscM8g1VRFObAsEySMB8QsuxcMsh490xOeSHVLmHF2mm
         XXAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZIZAQ7FO4CZGj3dZTTG5OAyA7lcqHMiys9+DWMrDW2Q=;
        b=nTWlpzZtwygi/v5zTeeH0cJH5Det+/E+rZaOXrGzOdzZsMgV8bibQ+HeALC99X3dSU
         2tIoZ7t/HwVEEwTw017PL49aT/gAYluJ3GcBT8b1ias0plGoV8NJSpf+MlDwMcL6aC9+
         EAlLgqeD/85FV+9rBMoS7lvBprXx4co7WhG7Mx3pL9yKpGO/seBX50SqtYgpTNE6pENF
         q0owp5q8MUwkUnpSj8QNqsjH/tGyX/t/AbIxGap6fw9v6hy613yy9eVVsJM6azkR///1
         oAttE6jJ27N4eNrHHik3hiUDuFGb90dLDkyvBvKmbZZ2TA9kK6gVPoNwjUG3XeZrOEr4
         T4NA==
X-Gm-Message-State: AFqh2kqY4AHFa3az870IMG81z7gMHFYiRPy7AX+TSyhOBG7Mqa61OS0Q
        LmmHlcYaduCLsZpdKS7Mb4s=
X-Google-Smtp-Source: AMrXdXv0XfdXOiVrysJFccTGAHXaxSR0nxtxpNTrXlKSzD0F0bIQWmuOVoNIFlzqlye/txlYPGRvWg==
X-Received: by 2002:a4a:ba94:0:b0:4f2:9e:3e90 with SMTP id d20-20020a4aba94000000b004f2009e3e90mr3433752oop.6.1673380984099;
        Tue, 10 Jan 2023 12:03:04 -0800 (PST)
Received: from localhost.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id r4-20020a4aad04000000b004a394578e14sm6089779oon.32.2023.01.10.12.03.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jan 2023 12:03:03 -0800 (PST)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     dri-devel@lists.freedesktop.org
Cc:     linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        maccraft123mc@gmail.com, tzimmermann@suse.de, mripard@kernel.org,
        maarten.lankhorst@linux.intel.com, heiko@sntech.de,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org,
        thierry.reding@gmail.com, linus.walleij@linaro.org,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH v8 0/4] drm/panel: Add Magnachip D53E6EA8966 Panel Controller
Date:   Tue, 10 Jan 2023 14:02:51 -0600
Message-Id: <20230110200255.1218738-1-macroalpha82@gmail.com>
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
 include/drm/drm_of.h                          |   9 +
 7 files changed, 725 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-magnachip-d53e6ea8966.c

-- 
2.34.1

