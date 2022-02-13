Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 827874B3E44
	for <lists+devicetree@lfdr.de>; Sun, 13 Feb 2022 23:58:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238732AbiBMW6X (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 13 Feb 2022 17:58:23 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:60474 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238733AbiBMW6W (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 13 Feb 2022 17:58:22 -0500
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8109254BE1
        for <devicetree@vger.kernel.org>; Sun, 13 Feb 2022 14:58:16 -0800 (PST)
Received: by mail-ed1-x534.google.com with SMTP id u18so24546929edt.6
        for <devicetree@vger.kernel.org>; Sun, 13 Feb 2022 14:58:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=DeA8sJTLeX1f23VP/qB2uKXNTXWzuAyJcUJkv7PfM7A=;
        b=Ii4P+2nMatW89/SB3uwml+dBUpj6exvUrq/VE4yXhtyGB/pmy3aiWeDV7JXm2VD7DW
         T+b+3he7diBJ6S1fDQoCZmGaIwPDW0QgNfIDecTYZClnqM1LB0MMMNLfNalKepkx+2Ug
         gVsxCHBfIbNxQt+wj0zeCbPgFEUPlV8a7CKoBDT/9fkJXYdQyV04lI1WS13Pc2YELk1J
         dY28YqIcpH78Oct3+CZQhD/tkVoaWwRtH7jLOIaJgyACI02wymu8Ln+o0mSBFuH6aPbz
         JWt0uKWETYMWVQWjRo2DrZeGvyJwF8F5Azl9JCIsjd1o9vxB/y1hmIemgRv1UcnNlLra
         2vQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=DeA8sJTLeX1f23VP/qB2uKXNTXWzuAyJcUJkv7PfM7A=;
        b=0D4rRz7eLQ8QOSA+QPPmys87taqkwQ6gauopq5rXHwEY005tT6yYIbzHuHtkeea9/e
         XV6A27VAfjEwCYGjNv1oL0E1Tk90euFREra3IPznTBg3b/wV2JRrkeOHfkkiMRRI4l5J
         bGQxZVORTyQ6TIaV5sFQPql6MQH+FxSB6eb9euVsWLncsvEGYizEbtCe3VJo0ZLFS6nx
         xVp4D4id1q2gA80F6iyQIz4oPN+i18D5wE3BO8rfdeI7+CmL2xYi5u/lonV/CBmFuAj1
         /QTWco37ZuUjvTHPXJ0jwfp+JS/DpnwOzTOhL9GexlPwwv59ILF0vZIKixigq9kenio0
         RjcQ==
X-Gm-Message-State: AOAM5318oru+J8BZaaeUDaBfK4k5zJfxM9zKqhfBuXX5wM8ActBmH2Zw
        5i2XMd4Sdj5kKdGxEdACNm8=
X-Google-Smtp-Source: ABdhPJwSfACxl7vF/4R2z2dQcek4yNihS5ZSzklB/xs4DU0tywz09tFl9Z0HKnfYterJFz64JWO86Q==
X-Received: by 2002:aa7:d1cb:: with SMTP id g11mr215973edp.400.1644793095189;
        Sun, 13 Feb 2022 14:58:15 -0800 (PST)
Received: from morpheus.home.roving-it.com (3.e.2.0.0.0.0.0.0.0.0.0.0.0.0.0.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:fb11:2681::2e3])
        by smtp.googlemail.com with ESMTPSA id g14sm3189163edb.55.2022.02.13.14.58.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Feb 2022 14:58:14 -0800 (PST)
From:   Peter Robinson <pbrobinson@gmail.com>
To:     Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Lee Jones <lee.jones@linaro.org>,
        Emma Anholt <emma@anholt.net>, David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Russell King <linux@armlinux.org.uk>,
        Arnd Bergmann <arnd@arndb.de>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc:     Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
        Peter Robinson <pbrobinson@gmail.com>
Subject: [PATCH v4 15/15] arm64: config: Enable DRM_V3D
Date:   Sun, 13 Feb 2022 22:56:47 +0000
Message-Id: <20220213225646.67761-16-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220213225646.67761-1-pbrobinson@gmail.com>
References: <20220213225646.67761-1-pbrobinson@gmail.com>
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
index 30516dc0b70e..0731ed941268 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -725,6 +725,7 @@ CONFIG_DRM_I2C_ADV7511_AUDIO=y
 CONFIG_DRM_DW_HDMI_AHB_AUDIO=m
 CONFIG_DRM_DW_HDMI_CEC=m
 CONFIG_DRM_IMX_DCSS=m
+CONFIG_DRM_V3D=m
 CONFIG_DRM_VC4=m
 CONFIG_DRM_ETNAVIV=m
 CONFIG_DRM_HISI_HIBMC=m
-- 
2.35.1

