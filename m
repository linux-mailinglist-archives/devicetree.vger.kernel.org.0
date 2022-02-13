Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F08C54B3E41
	for <lists+devicetree@lfdr.de>; Sun, 13 Feb 2022 23:58:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238693AbiBMW6U (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 13 Feb 2022 17:58:20 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:60380 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238719AbiBMW6T (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 13 Feb 2022 17:58:19 -0500
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 86A4D54BE0
        for <devicetree@vger.kernel.org>; Sun, 13 Feb 2022 14:58:13 -0800 (PST)
Received: by mail-ed1-x534.google.com with SMTP id s7so24585720edd.3
        for <devicetree@vger.kernel.org>; Sun, 13 Feb 2022 14:58:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=NejYM/SCa/adQTW7MigR+R0AZ8Mjof70P4hDReGIkqw=;
        b=Pj0TyRueVaKWea76lADnqkyQk0FJ96Gh3fzpQdpLqI6EJAJ9Z0eeYCOeRhrODCnpff
         wV+9FYGxooHxyh2JvS20oGYqfz1k+bRIzszK6fV+HIWwyDl04WkPPm0ywtH5Xvzqkp3s
         znIauc+TyVEcw4lvpVNIDcFzbqsRJ8H81Udt76UnPtjx9YkxCRAFdoEEEU1FsnpE6y6N
         E7pAKTocjQ1vP+O9ZAf3PZ1S9UiieNhkco2iB7S9hNCExuM1wAcJkOBgdlnWlHgqll2I
         xToaFQTc6y4FSrY3nRMWZOmP8D2M7XaMYlPndBv2Onob6P4p66Hs++MOubAajYKPUJaw
         UnSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=NejYM/SCa/adQTW7MigR+R0AZ8Mjof70P4hDReGIkqw=;
        b=VWLcLVpbCjw1brtR8VSUi/VMSkEdvn3f6t8uBnQJ+Z8YEBjs8Ie/+Q2CFQTb+VosC6
         boVGJg3KaHaj52FWYsti6WzkAwLSeEURETwXWhyKG9xuk/AxVKXLn5kiSSD/9ScCv9lR
         wRbzWeXS/RXoWYnsiFSPxjf4WUMh+olNReG4Rb2jrQXcl5OyRSMmlP7UV5Glypd9AsnN
         uH3Mx/pZteqhkDmxP9/BTFuoXZHD34zyeNLCOanigSSQ5B4DOjsEY4MNoEFGMrxHnILf
         kDZHctKTO7wZF1mXHoU/6cJQp8leC1S5+FWjRSEnEoO5LTBYWl1Of1bWRgJNzXZsFW30
         8nNA==
X-Gm-Message-State: AOAM530QCU4OEwvDV5iUPzDT1QDFgz2TaRoZLDmxvKmngohXWCQ1mFrD
        SQQLyGVTdTny3Ez5LULAIZw=
X-Google-Smtp-Source: ABdhPJxCeMxe71xsaWHClLlFyX4QlQOlzYsLbm/0woRoZB+8nGdWEGl3zXUZaTOTogbMT1gCeu2KcQ==
X-Received: by 2002:aa7:da9a:: with SMTP id q26mr6131062eds.288.1644793092157;
        Sun, 13 Feb 2022 14:58:12 -0800 (PST)
Received: from morpheus.home.roving-it.com (3.e.2.0.0.0.0.0.0.0.0.0.0.0.0.0.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:fb11:2681::2e3])
        by smtp.googlemail.com with ESMTPSA id g14sm3189163edb.55.2022.02.13.14.58.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Feb 2022 14:58:11 -0800 (PST)
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
Cc:     Peter Robinson <pbrobinson@gmail.com>,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v4 12/15] drm/v3d: Add support for bcm2711
Date:   Sun, 13 Feb 2022 22:56:44 +0000
Message-Id: <20220213225646.67761-13-pbrobinson@gmail.com>
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

Add compatible string and Kconfig options for bcm2711.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
---
Changes since v3:
- Minor updates for rebase

 drivers/gpu/drm/v3d/Kconfig   | 2 +-
 drivers/gpu/drm/v3d/v3d_drv.c | 1 +
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/v3d/Kconfig b/drivers/gpu/drm/v3d/Kconfig
index e973ec487484..01d91c829107 100644
--- a/drivers/gpu/drm/v3d/Kconfig
+++ b/drivers/gpu/drm/v3d/Kconfig
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
 config DRM_V3D
 	tristate "Broadcom V3D 3.x and newer"
-	depends on ARCH_BCM || ARCH_BRCMSTB || COMPILE_TEST
+	depends on ARCH_BCM || ARCH_BRCMSTB || ARCH_BCM2835 || COMPILE_TEST
 	depends on DRM
 	depends on COMMON_CLK
 	depends on MMU
diff --git a/drivers/gpu/drm/v3d/v3d_drv.c b/drivers/gpu/drm/v3d/v3d_drv.c
index 82af16523843..cec6e7858265 100644
--- a/drivers/gpu/drm/v3d/v3d_drv.c
+++ b/drivers/gpu/drm/v3d/v3d_drv.c
@@ -193,6 +193,7 @@ static const struct drm_driver v3d_drm_driver = {
 static const struct of_device_id v3d_of_match[] = {
 	{ .compatible = "brcm,7268-v3d" },
 	{ .compatible = "brcm,7278-v3d" },
+	{ .compatible = "brcm,bcm2711-v3d" },
 	{},
 };
 MODULE_DEVICE_TABLE(of, v3d_of_match);
-- 
2.35.1

