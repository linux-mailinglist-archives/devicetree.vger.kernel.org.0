Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1873853C77E
	for <lists+devicetree@lfdr.de>; Fri,  3 Jun 2022 11:26:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234806AbiFCJ0S (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Jun 2022 05:26:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43534 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237274AbiFCJ0R (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Jun 2022 05:26:17 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 185A23A5C1
        for <devicetree@vger.kernel.org>; Fri,  3 Jun 2022 02:26:16 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id s6so3228949eja.0
        for <devicetree@vger.kernel.org>; Fri, 03 Jun 2022 02:26:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=d11o2d5ri6Bk3Uwjrg8nECkV0m9NEQVoIzTmBlBjqJY=;
        b=mst1SLjj6wyXb2uviGvZufvlFxMq3ZJoL4FEPys1MRgBswbH3yb//Uw7puA1DvWDU4
         a/FzGbr8quWSyRk4QEZFmzqia7u8phdOCtiSzQcKUxmIvnWTx1byjhRoX9w6ZZAG3/h8
         dE/+VubgeMBTthjvLVXJldjdsP4dHoZg5q4roG1w79PE40XqTYlJ92MZr3C/jcAOdiLC
         10Aqqfm4asD/tey4t93bjYARP0dH0ic3b1bOn49M1DW8GzbvaNNj4fmt+umpSrOYuZK6
         avk4RAtJEvzmZz/dpwW8Ehmwt8t7PqNykc6SMcohI/FMm2tCwrtWJReX7MOGC+WYg0KS
         JZjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=d11o2d5ri6Bk3Uwjrg8nECkV0m9NEQVoIzTmBlBjqJY=;
        b=RJu9DNkXzgLgwRUrBMgLw7BuqemHv8pAgjAeyMKhNf3YEk433ENS1gHxYL9tUihZX1
         g1RcMl/bsK6RmU3NhwPGyb1vEtx7RZfAhXogypWtEkNPcIuXTaKe5rHogf19YNQ8XT6K
         hPjJ9k3OiQKaNv9364vRk6G7wqP6k6JNI6BwdT7Z/OToUeBAxYUPRTml75HxPfhGqmsk
         ATeu3pAZgGwdST5ss0iMWEKctAMc2Sf3CvDjXrQ14YpEQIaTddSSuhRY1Lk4iogOOJdD
         zOI00BYA8Ct2mTE5tGPzcqd+XrvhBvRZI+yNYGRbLsIFedq+uXH5KEA1dSGWZUCKQlMV
         xvHA==
X-Gm-Message-State: AOAM5317ZQyNcyRy2Pyoh5TnlhuR5sci4mNZT3nov2HkjjYAL+U4Z2aH
        TTwCW0EibwSDwcyBCZnCkfLpPFTTFX6prA==
X-Google-Smtp-Source: ABdhPJxkNXgUmvit6rTJAt+5eLug2jZIAIktydFQGW4RAn6SX4BpLsboURL2jIrnxm7yMn/3XWjxAQ==
X-Received: by 2002:a17:906:f845:b0:70e:fb6a:9b76 with SMTP id ks5-20020a170906f84500b0070efb6a9b76mr1055447ejb.530.1654248374650;
        Fri, 03 Jun 2022 02:26:14 -0700 (PDT)
Received: from morpheus.home.roving-it.com (3.e.2.0.0.0.0.0.0.0.0.0.0.0.0.0.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:fb11:2681::2e3])
        by smtp.googlemail.com with ESMTPSA id b5-20020a17090691c500b006feaa22e367sm2617672ejx.165.2022.06.03.02.26.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jun 2022 02:26:14 -0700 (PDT)
From:   Peter Robinson <pbrobinson@gmail.com>
To:     Arnd Bergmann <arnd@arndb.de>,
        bcm-kernel-feedback-list@broadcom.com,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, Emma Anholt <emma@anholt.net>,
        Florian Fainelli <f.fainelli@gmail.com>, javierm@redhat.com,
        linux-arm-kernel@lists.infradead.org,
        linux-rpi-kernel@lists.infradead.org, maxime@cerno.tech,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Stefan Wahren <stefan.wahren@i2se.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc:     Peter Robinson <pbrobinson@gmail.com>
Subject: [PATCH v6 0/6] Raspberry PI 4 V3D enablement
Date:   Fri,  3 Jun 2022 10:26:04 +0100
Message-Id: <20220603092610.1909675-1-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This is a follow up from my v4 patchset. The power management pieces have
been split out to a separate independent set of patches by Stefan [1]. This
version 5 of the DRM patches are independent and given the V3D driver has
been upstream for some time the two patches to enable it in defconfigs can 
be taken at anytime independent of the enablement for the Raspberry Pi 4.

I've tested this using mesa 22.0.x and Wayland/Gnome on Fedora 36, it's 
more or less stable with basic testing.

Changes since v5:
- Update the DT compatible to match the others that were updated
- Adjust the Kconfig help text
- Add review tags

Changes since v4:
- Fixes for device tree and bindings
- Split out the power management changes into an independent set
- Rebase to 5.18
- Individual changes in patches

[1] https://www.spinics.net/lists/arm-kernel/msg980342.html

Nicolas Saenz Julienne (1):
  arm64: config: Enable DRM_V3D

Peter Robinson (5):
  dt-bindings: gpu: v3d: Add BCM2711's compatible
  drm/v3d: Get rid of pm code
  drm/v3d: Add support for bcm2711
  ARM: dts: bcm2711: Enable V3D
  ARM: configs: Enable DRM_V3D

 .../devicetree/bindings/gpu/brcm,bcm-v3d.yaml  |  1 +
 arch/arm/boot/dts/bcm2711-rpi.dtsi             |  4 ++++
 arch/arm/boot/dts/bcm2711.dtsi                 | 11 +++++++++++
 arch/arm/configs/bcm2835_defconfig             |  1 +
 arch/arm/configs/multi_v7_defconfig            |  1 +
 arch/arm64/configs/defconfig                   |  1 +
 drivers/gpu/drm/v3d/Kconfig                    |  5 +++--
 drivers/gpu/drm/v3d/v3d_debugfs.c              | 18 +-----------------
 drivers/gpu/drm/v3d/v3d_drv.c                  | 12 +-----------
 drivers/gpu/drm/v3d/v3d_gem.c                  | 12 +-----------
 10 files changed, 25 insertions(+), 41 deletions(-)

-- 
2.36.1

