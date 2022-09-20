Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7088B5BEB99
	for <lists+devicetree@lfdr.de>; Tue, 20 Sep 2022 19:09:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229764AbiITRJs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Sep 2022 13:09:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56718 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229917AbiITRJq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Sep 2022 13:09:46 -0400
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com [IPv6:2607:f8b0:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D1001DF87
        for <devicetree@vger.kernel.org>; Tue, 20 Sep 2022 10:09:44 -0700 (PDT)
Received: by mail-oi1-x234.google.com with SMTP id u131so4551716oie.5
        for <devicetree@vger.kernel.org>; Tue, 20 Sep 2022 10:09:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=zjoJ8ysH+GuiXx2n6iX4shC+hIhaPOOXW3sGP3dNGpc=;
        b=gl6DzUITZClvbZlvzWYFk5Ikk6FuzAbQ6rNhScMK3oph+T+iTxGGPjZYk9HGD0Uf+Z
         jAIw1rcIyp8TO478HlVYoEPoStuUhpBu+TS6K7mQuupK8+cRHwrwWcJFOMjdr23D/0jn
         9+Wj3v2QobiIDtpDrAhKa3Wjk4xm3uSKFolPl4C/fJBxuJLDQNiWB8EhkohVWTV3WMT0
         VsVmTrtvgMM+WMmUXBAPdNyGEaQff3d82Zkop1wae48+y64ks3uh0NcKHuBIQ23fMSI5
         +hsgGhFEUhoPD5JAS6LyVuEwRJd+jhw5NoJa5uQ7/xQ49QygsQ2OtPd4tytZtwyRvnWB
         /aFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=zjoJ8ysH+GuiXx2n6iX4shC+hIhaPOOXW3sGP3dNGpc=;
        b=kM88XmPbyCG7tbYkN6lfm6HD8QNry3Jsj6Chfgpe67gByScA+G+xBPBL5ay4IhBCeY
         uxbs31LN698a9oXds9ktOoif4Dc5W4YRVLDzmwWZ+UPu6rVnHw7vDYor943tRvogDzzF
         upgkI4n3NYYvxNa6hk5K/LZTdvukQusSRng9X7Ng9hp28s4ElZUqGYyew0XMR/xjsPzf
         +4xjcBLoYHAFb5TNMVxiNwLAamePY7x1aUzdApkJwLUMkzUp6tbqbkHSnzpaw+Vs+Bt7
         0aAN0Rrym/uB0iJk5PHdJcRFyh6/+31043wRb1bGPi4KMNNebQhiS878JC7A/z4ezG8j
         0biQ==
X-Gm-Message-State: ACrzQf3RDJQ3wIYVNGu26v30p6ezK2sSnWW3vPHp2Ed4nnUdp4v3AGJ6
        SFScCFADPFH0oojNbS3zC+4=
X-Google-Smtp-Source: AMsMyM7Zz2NCKo7EeVps7YcpPTCeqAPDjnw9iwIeW0CdOsiTvw77J6QaI3KPBSzVG8OzbwTLiE9RaA==
X-Received: by 2002:a05:6808:1303:b0:350:cba9:197d with SMTP id y3-20020a056808130300b00350cba9197dmr2059706oiv.83.1663693784104;
        Tue, 20 Sep 2022 10:09:44 -0700 (PDT)
Received: from wintermute.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id v13-20020a9d69cd000000b00636956b3080sm121468oto.43.2022.09.20.10.09.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Sep 2022 10:09:43 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     dri-devel@lists.freedesktop.org
Cc:     devicetree@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, daniel@ffwll.ch, airlied@linux.ie,
        sam@ravnborg.org, thierry.reding@gmail.com,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 0/2] drm/panel: Add Samsung AMS495QA01 Panel
Date:   Tue, 20 Sep 2022 12:09:35 -0500
Message-Id: <20220920170937.14486-1-macroalpha82@gmail.com>
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

Changes since V1:
 - Removed errant reference to backlight in documentation. This is an
   OLED panel.
 - Made elvss regulator optional. In my case its hard wired and not
   controllable.
 - Added "prepared" enum to track panel status to prevent unbalanced
   regulator enable/disable.

Chris Morgan (2):
  dt-bindings: display: panel: Add Samsung AMS495QA01 bindings
  drm/panel: Add Samsung AMS495QA01 MIPI-DSI LCD panel

 .../display/panel/samsung,ams495qa01.yaml     |  46 ++
 drivers/gpu/drm/panel/Kconfig                 |  10 +
 drivers/gpu/drm/panel/Makefile                |   1 +
 .../gpu/drm/panel/panel-samsung-ams495qa01.c  | 505 ++++++++++++++++++
 4 files changed, 562 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-samsung-ams495qa01.c

-- 
2.25.1

