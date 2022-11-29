Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 17B7563C667
	for <lists+devicetree@lfdr.de>; Tue, 29 Nov 2022 18:29:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236039AbiK2R3V (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Nov 2022 12:29:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59472 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230217AbiK2R3U (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Nov 2022 12:29:20 -0500
Received: from mail-oi1-x22f.google.com (mail-oi1-x22f.google.com [IPv6:2607:f8b0:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C1D475E9C2
        for <devicetree@vger.kernel.org>; Tue, 29 Nov 2022 09:29:19 -0800 (PST)
Received: by mail-oi1-x22f.google.com with SMTP id q186so15965755oia.9
        for <devicetree@vger.kernel.org>; Tue, 29 Nov 2022 09:29:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=f2fUUZn0aoFEsmYmJGpqswKr9XlltrM/1Tq7myxFbEo=;
        b=pMTFKCWeddhphuFu+2lium0VJo1My+WfoNoG1c3WaRjvANnb1qwB8gUo6mmUVxtgN4
         nmuTLphHOcxXRWY2rFQlQLk8oSQji9BxR3EQt+/LmDQyVvBahxyS8P/AsRkwAgD2xYTc
         QCmD8owzu5TI9PG0JAVaFFbbOpMoEFLqTZLCu9LqMgHxjWo24TrSFxGcw7s2Ze2tToZ0
         /F+K7zScalVtV7e3nVdqxhqJp+OETdKtyeBgnnd8yHdBrO6zGDJN8oyE4WRJW0QFIapN
         IB3KwNwZnVCFcEb4HB/ZdwHwiN+d6UwPcmDy1WlT27+PlXgmJM1c6/DKvKck026YMCer
         rLrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=f2fUUZn0aoFEsmYmJGpqswKr9XlltrM/1Tq7myxFbEo=;
        b=PqhjPIHv0107gWcwo7y7evNUdRtjQ6FZCQ0ync5imHNguPtOp3w1/aq08qWdtzb6XW
         4DKKePx/2Q7naqOGVmgsyl2naxijQZKlAeL8MKrQMae44YF4qfc0xhfjAi5NYvbsxneR
         skjPUzyf6RO19ac9hm+0EiEV/EdNFS/0+n3lL2qYjcGV6wKpQfSIUc17rV9LaYLgb4my
         xj/7J03xW3GzatzkKNNBX/8bnnPwE8aJRLwDDQE7H8QWXNn85USVRjr9qQ1tp6RdPKF4
         CotKQPdxSBZdTczspaF5hCXFwwas9YIy/8S3Pzp7NAzmeS/FObiUCF3yfSd0wW2EJJTc
         gcMg==
X-Gm-Message-State: ANoB5pnKTLGyjHVmIlq7F0C5mwvKrMoHiQ7h0WGZFu1hSYL9DYO+Sr1b
        X2Etim6dVlBKO8EZgj5H29Y=
X-Google-Smtp-Source: AA0mqf74Qj2PRqoyEpMHvimi1mm2R46hlahU4dfBqeInpE4pUhmN0O/bAhzHiHGjLB2Vt8C2X9WomA==
X-Received: by 2002:a05:6808:7:b0:35b:758e:1cda with SMTP id u7-20020a056808000700b0035b758e1cdamr15320949oic.148.1669742958926;
        Tue, 29 Nov 2022 09:29:18 -0800 (PST)
Received: from localhost.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id l26-20020a9d709a000000b00661b46cc26bsm6224546otj.9.2022.11.29.09.29.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Nov 2022 09:29:18 -0800 (PST)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     linux-rockchip@lists.infradead.org
Cc:     devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        maccraft123mc@gmail.com, heiko@sntech.de,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org,
        thierry.reding@gmail.com, linus.walleij@linaro.org,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V4 0/3] drm/panel: Add Samsung AMS495QA01 Panel
Date:   Tue, 29 Nov 2022 11:29:09 -0600
Message-Id: <20221129172912.9576-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
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

Add the Samsung AMS495QA01 panel as found on the Anbernic RG503. This
panel uses DSI to receive video signals, but 3-wire SPI to receive
command signals.

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

Chris Morgan (3):
  dt-bindings: display: panel: Add Samsung AMS495QA01
  drm/panel: Add Samsung AMS495QA01 MIPI-DSI LCD panel
  arm64: dts: rockchip: add display to RG503

 .../display/panel/samsung,ams495qa01.yaml     |  57 ++
 .../dts/rockchip/rk3566-anbernic-rg503.dts    |  61 ++
 drivers/gpu/drm/panel/Kconfig                 |  10 +
 drivers/gpu/drm/panel/Makefile                |   1 +
 .../gpu/drm/panel/panel-samsung-ams495qa01.c  | 547 ++++++++++++++++++
 5 files changed, 676 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-samsung-ams495qa01.c

-- 
2.25.1

