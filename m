Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 404CB65C6EC
	for <lists+devicetree@lfdr.de>; Tue,  3 Jan 2023 20:07:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238362AbjACTHO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Jan 2023 14:07:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43054 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238353AbjACTHN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Jan 2023 14:07:13 -0500
Received: from mail-oa1-x2c.google.com (mail-oa1-x2c.google.com [IPv6:2001:4860:4864:20::2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BEB01DFC8
        for <devicetree@vger.kernel.org>; Tue,  3 Jan 2023 11:07:12 -0800 (PST)
Received: by mail-oa1-x2c.google.com with SMTP id 586e51a60fabf-14455716674so37865994fac.7
        for <devicetree@vger.kernel.org>; Tue, 03 Jan 2023 11:07:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=USvKgiAPMhAy/9BXMiGdBIzgvIIPEyBr90rzPBia1lQ=;
        b=BogNOQMXGscV/PNfPtNIXQ+l4PnWaHfNKE/mkN9S01aQY33TCcu+rCsD2VJf1f+eaT
         g9Oes7chIW9wFsiteJVsY20YSdqrtiEzsibVxhu+OiqEsdebNQtPsx878WFL41115e9g
         UVBZ5rHq32tygcnioTYh068/FqMauETJHOmhvElIYwEcYDpVM4NyXklZ918Qecw6XtLB
         o4AIGRd2AoH+74KIsLb2Q7Q9d97hO0juN+7hF+eMpvt8CsTgix4Fo9rS7lEjWBozqW8m
         rPmecvoM1BxJcWl5cS+uzLtcVqJXTunAJS+4qxwuicNEm0hJZ4mVGqE40f1VFFr/unIe
         R6fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=USvKgiAPMhAy/9BXMiGdBIzgvIIPEyBr90rzPBia1lQ=;
        b=JElWT9z3EisJS9ry6XQz1bek8CtyWcY+dd1RQPJMQO60PPXLs22dOWXFeXpHX5EuDq
         zWMHSasvcTM0tvGr/TiEMHLhH21tl6a6nem0FW9M6sCo1vWnSWS+A/+Lc8+avQptU9uT
         rYGozcRpGHP0xWZDNbX2L0d3ORAUIJ73uAdNolGBv5f6G1IyEigatNgtH/1rmuVQz+pZ
         ZRmfbaqcX24mSt/UoH4U8K+Q8rbKR8Il9sIJ4eUHehDKMhsRFH1KmlGWjGLIdmA3VzjR
         kBaGkWxZmUpcwSDxQ3r4fZ6S8ooOLY/WLqelfNTsAOuaM/olT4gphcI/uWjzWByvgylW
         0wRw==
X-Gm-Message-State: AFqh2koTRYwhWuCqIpnl5u/5Ib+BbX7RIt9lxqABnpE97lVlC9RLaRdX
        RYGaSPz7t8a83DhaThXOXhg=
X-Google-Smtp-Source: AMrXdXtGNMtBwha02Tmu9U+Hj18evMBRiTxlYHZoPF3iuu+S6yMosoMfI7g0aa/7E+6zd4xLHpZHDQ==
X-Received: by 2002:a05:6870:f707:b0:14f:f223:faad with SMTP id ej7-20020a056870f70700b0014ff223faadmr15526419oab.15.1672772832000;
        Tue, 03 Jan 2023 11:07:12 -0800 (PST)
Received: from localhost.localdomain ([76.244.6.13])
        by smtp.gmail.com with ESMTPSA id s24-20020a056870ea9800b0014c7958c55bsm14752207oap.42.2023.01.03.11.07.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jan 2023 11:07:11 -0800 (PST)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     dri-devel@lists.freedesktop.org
Cc:     devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        maccraft123mc@gmail.com, tzimmermann@suse.de, mripard@kernel.org,
        maarten.lankhorst@linux.intel.com, heiko@sntech.de,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org,
        thierry.reding@gmail.com, linus.walleij@linaro.org,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH v7 0/4] drm/panel: Add Magnachip D53E6EA8966 Panel Controller
Date:   Tue,  3 Jan 2023 13:07:03 -0600
Message-Id: <20230103190707.104595-1-macroalpha82@gmail.com>
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
 drivers/gpu/drm/drm_of.c                      |  62 +++
 drivers/gpu/drm/panel/Kconfig                 |  11 +
 drivers/gpu/drm/panel/Makefile                |   1 +
 .../drm/panel/panel-magnachip-d53e6ea8966.c   | 514 ++++++++++++++++++
 include/drm/drm_of.h                          |  11 +
 7 files changed, 711 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-magnachip-d53e6ea8966.c

-- 
2.34.1

