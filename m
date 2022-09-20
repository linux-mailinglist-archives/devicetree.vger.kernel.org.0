Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3EECE5BE973
	for <lists+devicetree@lfdr.de>; Tue, 20 Sep 2022 16:59:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231304AbiITO7L (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Sep 2022 10:59:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34764 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231172AbiITO7J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Sep 2022 10:59:09 -0400
Received: from mail-oa1-x34.google.com (mail-oa1-x34.google.com [IPv6:2001:4860:4864:20::34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 74720543F7
        for <devicetree@vger.kernel.org>; Tue, 20 Sep 2022 07:59:08 -0700 (PDT)
Received: by mail-oa1-x34.google.com with SMTP id 586e51a60fabf-127d10b4f19so4564306fac.9
        for <devicetree@vger.kernel.org>; Tue, 20 Sep 2022 07:59:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=NKDb4mEV1NgzYDPJkcOe5fAJAJzSY/M1cS3RRnmZuws=;
        b=J4HQFAkbzDAS5TFjIiERcadXFk1t425zk5b4YKZYOnRIwyL4RbyrQUG7LeqVPRPJQc
         rEBGs5syvspnTMVDRMRnVu9iaKk35XDubmbHHCnFHqOtN5+mhmy/jEonIerOSwvEEQcy
         2ELa962TF1EHTh6expD8tevfEtf9HsTcDqX9NeNa6wWrI0IVVtoZYAOIUIATPTKf/EqO
         y61IU3UuxcozwouGnc9CRT9Q99gmxVgqBW3JRhv8k8PJqbscMwUKWn4wc0AXOsnOGtIH
         V+2363dBw0oraYIgfqem4i61qw29fpw4LmVdI8R2R7MGPy4MEnA1qyxHQ5lu7n7t0L2Z
         wnow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=NKDb4mEV1NgzYDPJkcOe5fAJAJzSY/M1cS3RRnmZuws=;
        b=Sc9mpAsdkxcYUWFdxQYsqfp9xzCHiEfGbosy12KUBzkqsvgOjKsNqOcI5OGOSvknP+
         UtvITYV182O1Kb483Yg2Ni/noyB6x5I6eI3yeFTSZOll0u2Z3VS6kgTFMz0EEtJHiTub
         Nv8gHdrZk08ZmZiExuoAcbD2pQBUX8g28GZDn2X6ymW4q5TP1KF3kshpzTwkityPZlG8
         7+kWXgD4AcEYxktZ45SdhjWVSM0qhBJBsrk8/siwNLraYydtWKF6+kohub2oEhHBU1OW
         7KFpm4/Ly64dVHDl/hbLrQFy4s/0klDC4wQhwt6bmDePFi5mzWxSHr7AC3dlMcRAy6Z1
         Bo3g==
X-Gm-Message-State: ACrzQf2+e1hWSVi3qWkeR44r8NohEo482LpWbLrcTXMJ9AHReCMepTsr
        dr7XBgLL11td/gv0ZuehpDQ=
X-Google-Smtp-Source: AMsMyM7wt45OWBip05OWWwFw1tVKo/M8Xt+I1KaMFSDO6pwgcbCzyKfq5PQrPuCX+xrWqNEzKyI9SQ==
X-Received: by 2002:a05:6870:ac21:b0:127:f5b2:6864 with SMTP id kw33-20020a056870ac2100b00127f5b26864mr2236464oab.298.1663685947787;
        Tue, 20 Sep 2022 07:59:07 -0700 (PDT)
Received: from wintermute.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id o4-20020a05680803c400b0033e8629b323sm203156oie.35.2022.09.20.07.59.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Sep 2022 07:59:07 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     dri-devel@lists.freedesktop.org
Cc:     devicetree@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, daniel@ffwll.ch, airlied@linux.ie,
        sam@ravnborg.org, thierry.reding@gmail.com,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 0/3] drm/panel: Add NewVision NV3051D Panels
Date:   Tue, 20 Sep 2022 09:59:02 -0500
Message-Id: <20220920145905.20595-1-macroalpha82@gmail.com>
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

Add the NewVision NV3051D panel as found on the Anbernic RG353P and
RG353V. The underlying LCD panel itself is unknown (the NV3051D is
the controller), so the device name is used for the panel with a
fallback to the driver IC.

Changes from V1:
 - Changed compatible string to the driver IC.
 - Updated documentation to use new compatible string with board
   name.
 - Refactored somewhat to make it easier to support other LCD panels
   with this kernel module.
 - Added support for 60hz mode. Adjusted pixel clock to ensure proper
   60hz and 120hz (previously was running at 124hz).
 - Added vendor prefix for NewVision. Anbernic vendor prefix added in
   https://lore.kernel.org/linux-devicetree/20220906210324.28986-2-macroalpha82@gmail.com

Chris Morgan (3):
  dt-bindings: vendor-prefixes: add NewVision vendor prefix
  dt-bindings: display: panel: Add NewVision NV3051D bindings
  drm/panel: Add NewVision NV3051D MIPI-DSI LCD panel

 .../display/panel/newvision,nv3051d.yaml      |  55 ++
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 drivers/gpu/drm/panel/Kconfig                 |   9 +
 drivers/gpu/drm/panel/Makefile                |   1 +
 .../gpu/drm/panel/panel-newvision-nv3051d.c   | 513 ++++++++++++++++++
 5 files changed, 580 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-newvision-nv3051d.c

-- 
2.25.1

