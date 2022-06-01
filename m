Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BE06853A37C
	for <lists+devicetree@lfdr.de>; Wed,  1 Jun 2022 13:03:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343770AbiFALDY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Jun 2022 07:03:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52706 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352467AbiFALDU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Jun 2022 07:03:20 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 12ACC880E3
        for <devicetree@vger.kernel.org>; Wed,  1 Jun 2022 04:03:18 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id m32-20020a05600c3b2000b0039756bb41f2so853459wms.3
        for <devicetree@vger.kernel.org>; Wed, 01 Jun 2022 04:03:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Fjf9xNl/MqQB/RPimZ4g9EOKQN/z4oldIhLZb2IukiM=;
        b=GmRxTPwPYrNCwNSsPIu1VTrOgW9rsJIJqoYWE4IOkuZ4c1KU1fjaWO3S7JlcvALdT3
         PQ6v+2FD4F2rTJIRpXHez2tm6Ok/46+QfPEIbKpicsHk9ds9NpEtvsTA1IzIRInKxVu3
         3Puq9O3ByF7gOdBoQFayvf7L4zYBfYCnNIMZll7JQIyNtlaUDif8ncgulQNGN5ad6jak
         TB/7zdZODU5L4c+FnZ5bvMdsdKQg4vbEAdD7tbhufVZiU2EHLqvT5rsA2FQfPZYWmDe3
         KBycG0rnMSLAuP4HJe66kQBVfxZvY89v9R8qFdv9DqupseZIFKbvOvqp143sRxHI1ba1
         sgbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Fjf9xNl/MqQB/RPimZ4g9EOKQN/z4oldIhLZb2IukiM=;
        b=8FsOOXrgmg5EJ4QKOfBXPRq3huwtDWKnQEOdxhT+HjEKrOCGM4gQMqxVim/NW9YwGT
         EZJv5+viGkhWIYbUdkjmvI5U6f5xo0bGD+Nj+V/fSL3T64i5AFL4r/mhvMbjfazhoqkg
         kjp7Qm/316cBYgZjIbKniEYJSKOmhBwG/Sb8fKwiI7jESPHUQs7Z9NK6bJYs5xnsqREk
         JHLDRF4VAQQp+kAFqndJhi52yRMtThq2R5JzFTLSban5f4exndvxPz1oy6SvkGgfCbYt
         ostgJ0kvhczzIg+BajIdGiLqGV6QUzh3LEsIqaR+FdF0Cmx/NbJH2d0jCmb85CUdEpQS
         yxOA==
X-Gm-Message-State: AOAM530TVgtGu8XnE4frUNMoePzZOUj1+ikoIMinSS2bWCsy+2hQjOTt
        bFlefIwiakQRwk8kOwEha2o=
X-Google-Smtp-Source: ABdhPJx5kYUlDNbTHYglJRLhh4T2fvS8bPm1arsI4PnjL43uMY6XoeM9y5jmJxz/v4fy8dIbqmmqSg==
X-Received: by 2002:a7b:cc12:0:b0:37c:1ae:100a with SMTP id f18-20020a7bcc12000000b0037c01ae100amr27692085wmh.54.1654081396592;
        Wed, 01 Jun 2022 04:03:16 -0700 (PDT)
Received: from morpheus.home.roving-it.com (82-132-215-116.dab.02.net. [82.132.215.116])
        by smtp.googlemail.com with ESMTPSA id j14-20020a05600c190e00b00397381a7ae8sm6074559wmq.30.2022.06.01.04.03.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Jun 2022 04:03:16 -0700 (PDT)
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
Cc:     Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
        Peter Robinson <pbrobinson@gmail.com>
Subject: [PATCH v5 6/6] arm64: config: Enable DRM_V3D
Date:   Wed,  1 Jun 2022 12:02:49 +0100
Message-Id: <20220601110249.569540-7-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220601110249.569540-1-pbrobinson@gmail.com>
References: <20220601110249.569540-1-pbrobinson@gmail.com>
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

From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

BCM2711, the SoC used on the Raspberry Pi 4 has a different GPU than its
predecessors. Enable it.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 50aa3d75ab4f..446bac1ef774 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -738,6 +738,7 @@ CONFIG_DRM_I2C_ADV7511_AUDIO=y
 CONFIG_DRM_DW_HDMI_AHB_AUDIO=m
 CONFIG_DRM_DW_HDMI_CEC=m
 CONFIG_DRM_IMX_DCSS=m
+CONFIG_DRM_V3D=m
 CONFIG_DRM_VC4=m
 CONFIG_DRM_ETNAVIV=m
 CONFIG_DRM_HISI_HIBMC=m
-- 
2.36.1

