Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6097253A37E
	for <lists+devicetree@lfdr.de>; Wed,  1 Jun 2022 13:03:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352027AbiFALDJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Jun 2022 07:03:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52442 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245587AbiFALDI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Jun 2022 07:03:08 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F9F6606D0
        for <devicetree@vger.kernel.org>; Wed,  1 Jun 2022 04:03:07 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id k16so1827974wrg.7
        for <devicetree@vger.kernel.org>; Wed, 01 Jun 2022 04:03:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=+zZsO86c7UE7QvEC2eQfX2kUILcgmTmiVsimoV00Fig=;
        b=RWvLvKoFlLoIqtEIQEBmqRinPoXT2pwcMzXiPP9mYFKGYydw1o3JyJjUyV4EwzjC9P
         0UExEuQhv2MSWzAGrpUXAO2d1muYe8xLg0cKYXY3GwiaU5DeeQD5QEH+Th3UUos8fKrS
         0VB3J3QtsNdL8KC5zazlD7gE6vV3VDE/EkaAo8O6tyQR8OAIJByWUHWZgTihNNtopR5U
         mYxdbWYYI+coPQ3RimPdJXIhShfdegJk6PSk+P7R2MPYdu6EYrLW928ETR3SLm81Ybdj
         pJTdtzHiQinLYZ4OEknrc4/9sXwfq8cAPRq6uYG3fIxgwEV75i0LK8bFJeGBbNItTrxh
         v+uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=+zZsO86c7UE7QvEC2eQfX2kUILcgmTmiVsimoV00Fig=;
        b=f0sbsN84s4xAnqbIuC5OkzJfT8tUeEvpjGb9+QUj2fCT64UMHQq7Zwlfiv192JBKGu
         3XF9PcMdU7KhxCMqx/xkRNNsphalZ+aPiHo3jcKg9q4kIK05rZyOb5BCy4VX6N8aXf5t
         VRUPsmtOyxGeLHolTRqA2GxmexI/1jSFPT18Z/Y37akwCHnFRRGACYRFK4OBwfKlqBvc
         Z9nWs+WMFF1ihnqRmsZe5nMxYGKc7i9BAg+Vnb99DH7H+OslFb7i80yXzBbzaD88rSl2
         WgBFLJlj7h5qjpMT1NgFnSerViI4UivmWJ9EZdeDaaKt3hePojKUyqAcsMu7KJcTu/fY
         kklQ==
X-Gm-Message-State: AOAM5326yBzqbCDhoZvwdsP7Sp0K5JRbeFpn1nf52bstCo6guFGOohqV
        8Y75YWixMCErDwTzO9JeAJs=
X-Google-Smtp-Source: ABdhPJzdFArfJvW9hQHWFrJs7yIIuQUxkFM6pa4e9yIMCEe3t4YJGws6JFPuVFk2mvCQupjXtq4MdA==
X-Received: by 2002:adf:c80a:0:b0:20c:ffa0:6a3 with SMTP id d10-20020adfc80a000000b0020cffa006a3mr52732693wrh.360.1654081385880;
        Wed, 01 Jun 2022 04:03:05 -0700 (PDT)
Received: from morpheus.home.roving-it.com (82-132-215-116.dab.02.net. [82.132.215.116])
        by smtp.googlemail.com with ESMTPSA id j14-20020a05600c190e00b00397381a7ae8sm6074559wmq.30.2022.06.01.04.03.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Jun 2022 04:03:05 -0700 (PDT)
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
Subject: [PATCH v5 0/6] Raspberry PI 4 V3D enablement
Date:   Wed,  1 Jun 2022 12:02:43 +0100
Message-Id: <20220601110249.569540-1-pbrobinson@gmail.com>
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
 drivers/gpu/drm/v3d/Kconfig                    |  2 +-
 drivers/gpu/drm/v3d/v3d_debugfs.c              | 18 +-----------------
 drivers/gpu/drm/v3d/v3d_drv.c                  | 12 +-----------
 drivers/gpu/drm/v3d/v3d_gem.c                  | 12 +-----------
 10 files changed, 23 insertions(+), 40 deletions(-)

-- 
2.36.1

