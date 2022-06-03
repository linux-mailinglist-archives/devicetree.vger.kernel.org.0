Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E5D8B53C788
	for <lists+devicetree@lfdr.de>; Fri,  3 Jun 2022 11:26:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243066AbiFCJ0Y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Jun 2022 05:26:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43640 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243031AbiFCJ0W (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Jun 2022 05:26:22 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B8393A1AF
        for <devicetree@vger.kernel.org>; Fri,  3 Jun 2022 02:26:21 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id s6so3228949eja.0
        for <devicetree@vger.kernel.org>; Fri, 03 Jun 2022 02:26:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=1zf2KrerTAi6PDusMTCodCD/1wt7NqOtkOzcZDBwMCw=;
        b=XE9UmS5uUXbk7dW1oDHNECJIhdydnEwr/sWPOzRw9ppFwzYiHS0APSXiubukvYTcYI
         b522fiw0Gw7g6CtcBw8RNd27HJ8E0hm99kzeHumJ/MqnpBZR0GNBXWywp4SXWyB4Gr2O
         qPe4LPG5u8V+1PFfVYcG9fiM5sLOgs9A5s9mqZwloKOue3TwMNBlYENIpiVCtmY/stRB
         gonkzG2vv6NQDP1zv2AA191Fz2UuWQ4RbSGq4pJuV19N42oW/m1/s+JazlgrQxIudnuA
         uyCiJ+88fvPAa4vW7s1t+RW/SfRTNH6xlFSjxtbeCFn+EeYMDEOSwYXwjb3L5wCs2kMm
         rmAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=1zf2KrerTAi6PDusMTCodCD/1wt7NqOtkOzcZDBwMCw=;
        b=IHS//kU1cHRScU23RvOiXoGEoGS9ZxoHx0juVhXzQ3FUtKRchtwtnK+almyj3HOKFK
         rlSzSeEdCtDpNh1XY1U3hrM9Ukq/Vey1sj4HTYj1wJ9Q41aGE7jxdOKbjxI+Utvi7Sbf
         JGeH/FErYTjvGkOB+VrVW4faab1dgwls/6zcuVgWbJR1Pc8kYJNXbut0AuHoMom376ag
         3wPgp8v4NMh2ziWFjjbXQWF7xwB0zFmlnhMQHmUuJCvmOtALXzdlWV1B1n9kKBeMcOFI
         4m7bnL0i7fBgQaVoWmuElCb2mV0XA+J3nenuFwjutbc3M7s5lQk961gulmNcaJvu3/8M
         cByA==
X-Gm-Message-State: AOAM532JkbCqi6/GxWSd1jDGzHQky65t39YgYUpn0vLnfY/mWGO0LL7c
        VyWqq6XtOlB7Skn6nxL2tFY=
X-Google-Smtp-Source: ABdhPJym7Lt4blXmNu6IRUD0ciqXO8Zaa052+4cPkXGXxp1oFtfUf2t6+BktugcotPe8SSwqsoKgOg==
X-Received: by 2002:a17:906:6a28:b0:6ff:d8b:955e with SMTP id qw40-20020a1709066a2800b006ff0d8b955emr7970055ejc.505.1654248381223;
        Fri, 03 Jun 2022 02:26:21 -0700 (PDT)
Received: from morpheus.home.roving-it.com (3.e.2.0.0.0.0.0.0.0.0.0.0.0.0.0.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:fb11:2681::2e3])
        by smtp.googlemail.com with ESMTPSA id b5-20020a17090691c500b006feaa22e367sm2617672ejx.165.2022.06.03.02.26.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jun 2022 02:26:20 -0700 (PDT)
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
Subject: [PATCH v6 6/6] arm64: config: Enable DRM_V3D
Date:   Fri,  3 Jun 2022 10:26:10 +0100
Message-Id: <20220603092610.1909675-7-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220603092610.1909675-1-pbrobinson@gmail.com>
References: <20220603092610.1909675-1-pbrobinson@gmail.com>
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
Reviewed-by: Stefan Wahren <stefan.wahren@i2se.com>
Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>
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

