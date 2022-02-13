Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EE10D4B3E43
	for <lists+devicetree@lfdr.de>; Sun, 13 Feb 2022 23:58:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238723AbiBMW6W (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 13 Feb 2022 17:58:22 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:60448 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238719AbiBMW6V (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 13 Feb 2022 17:58:21 -0500
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8BEF454BEF
        for <devicetree@vger.kernel.org>; Sun, 13 Feb 2022 14:58:15 -0800 (PST)
Received: by mail-ed1-x52c.google.com with SMTP id co28so24588609edb.1
        for <devicetree@vger.kernel.org>; Sun, 13 Feb 2022 14:58:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=jQq/5Dh8W6JAfGKpRneZGJ1QMWx3eBuPlC7vcniS1Us=;
        b=Cjhw4u6ixFdzFPiBa4vUlu6gHXr9KnKSSTtmmp067Q7owC5JErVjkFvvhTp2sOFXYK
         m7ddyB6ls6+fgx3lCwxuKD83eYl6F1VWlX5KDhEzf/yzty/El2i/mToODicHmUYSoHBn
         sgzmyTd52UpmG/mzQuJi0tjsmhfrtUe1r4hPUuVD7n/Dr1/wlQCnjOsHhVVrhuRfVPsh
         DBKKUCEnn0JuuhKkssWgPYx05HLjVp+sOwQQTpi5D/vToT8fgleVT2WZtCVm9+jNtTTr
         KgLkrkm8CmnSDPMInp+eomU5rzsGWOPlN+YDTkKI/9lJ4bQUV44bvfAs7zUJc86aF2Iq
         MyUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=jQq/5Dh8W6JAfGKpRneZGJ1QMWx3eBuPlC7vcniS1Us=;
        b=D/uT/C2sGOdBJyhoBtXqopzmauyNOOMNQDGVCV7epv2zFn9lqEzT1C3IDkwXXHgqig
         ztuUOx2KfPWWm6bZOhDvGOEe/oaDphvo42WQkGhi/xe7xJH75SkrApuREn2HnNUTIEHy
         uJk7gISf4l3LhZzWqkbuCD+04mrYR9UeCdJDu7+jaqbQOswmSPybB5W3tHiV/ZtU/qZD
         +sURclPg5v4ykUDCazIY9sjc2kouzqHFOgtmHdwZYhLvoVco3aPoPJnF1u2/4EYy/2UO
         ulfF5u6dUpW8cDbTSJivPBQEThUS4fZMFTIgEMsd/5pol0xCKh9g7wcTAvclX2GG9LsW
         DQkA==
X-Gm-Message-State: AOAM5314XO4E/RLEFLZDiOPkmuRl4mMhX+VnU1B/1hCMfi3DlMYccdqa
        uHb7orrSSbCRMt/kDJZI5cM=
X-Google-Smtp-Source: ABdhPJwpbXvqTXPWfanIegqeSSXMc/D9nuYZSbPn6wO4ZrFisazGe1Lh+e6WfTkhT9/s/L+Urt2sZA==
X-Received: by 2002:a05:6402:b44:: with SMTP id bx4mr8714266edb.59.1644793094192;
        Sun, 13 Feb 2022 14:58:14 -0800 (PST)
Received: from morpheus.home.roving-it.com (3.e.2.0.0.0.0.0.0.0.0.0.0.0.0.0.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:fb11:2681::2e3])
        by smtp.googlemail.com with ESMTPSA id g14sm3189163edb.55.2022.02.13.14.58.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Feb 2022 14:58:13 -0800 (PST)
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
Subject: [PATCH v4 14/15] ARM: configs: Enable DRM_V3D
Date:   Sun, 13 Feb 2022 22:56:46 +0000
Message-Id: <20220213225646.67761-15-pbrobinson@gmail.com>
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

BCM2711, the SoC used on the Raspberry Pi 4 has a different GPU than its
predecessors. Enable it.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
---
Changes since v1:
 - Correct node's name address 

 arch/arm/configs/multi_v7_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index 8863fa969ede..d203587194a1 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -706,6 +706,7 @@ CONFIG_DRM_IMX_PARALLEL_DISPLAY=m
 CONFIG_DRM_IMX_TVE=m
 CONFIG_DRM_IMX_LDB=m
 CONFIG_DRM_IMX_HDMI=m
+CONFIG_DRM_V3D=m
 CONFIG_DRM_VC4=m
 CONFIG_DRM_ETNAVIV=m
 CONFIG_DRM_MXSFB=m
-- 
2.35.1

