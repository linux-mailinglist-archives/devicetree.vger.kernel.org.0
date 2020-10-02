Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 95CAD281413
	for <lists+devicetree@lfdr.de>; Fri,  2 Oct 2020 15:34:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1733260AbgJBNej (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Oct 2020 09:34:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46014 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726017AbgJBNej (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Oct 2020 09:34:39 -0400
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com [IPv6:2607:f8b0:4864:20::1044])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7F9DEC0613D0
        for <devicetree@vger.kernel.org>; Fri,  2 Oct 2020 06:34:37 -0700 (PDT)
Received: by mail-pj1-x1044.google.com with SMTP id gm14so830518pjb.2
        for <devicetree@vger.kernel.org>; Fri, 02 Oct 2020 06:34:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=6W9k3ndaa9cRCwcQ1M/asEuo1OK8FOTIyDJ+tvTfSmU=;
        b=oCMWc6Jj4ktZjU2Abv3j8Jo7vqF5s3w07Ee2so2ulyh/HCR9TQnPRmZsGt75tpet1z
         znJdIuBUpgrqVS4Obqt7rsJhrsQhorjU6izHw4x3tQI1D79kvecwXfPOtQSf9Yv/6WPt
         yz+zJu/NROjZFu+JUO9rJ145yw15SArOMUKek=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=6W9k3ndaa9cRCwcQ1M/asEuo1OK8FOTIyDJ+tvTfSmU=;
        b=OVgmqMfdz6FVP/Bip1NUJbwR4Pj2VgfYItubNR/0IO0uqK8HLZp1DR59zuagKVWbna
         Wxk/u6YDsBB51w0N3HySE3dluI6gPYEEyIYXBXEemRX4ISWTzKVW1NgUpx4pPSQrpEaj
         ENxUscedriV8rCYBJiK1/9Ibfy+DGpej4izzOkp8qG/Cg3ShFuXJhp7qzUrDxMez32Tp
         vqXWos1UYuDTQ22M+fr4emPiyk60yYY+1NZO3chYBFs6MjPAq4jtzi+ZClYRTSxOkH1y
         h2aDOiE7Z2eYLedL93HXhc2EsG+whCbqnXSgcUMbehxLlV2giffWlCP5+O5vmv2/qgsU
         q/Tg==
X-Gm-Message-State: AOAM5327gb4B40Lai+FWHsaBdr7TI1CuqLzf/Zum4Oxt3f1ZRMVkbIFe
        aDtOP8MDmbTo00oheHZuWD0iNw==
X-Google-Smtp-Source: ABdhPJwSI1/I/1oq6fVw/wrmjpIzo5Uq4okkncEKBWITlbuxGxkjLW+1YPYtbxPqs3I2cpdnlbwklw==
X-Received: by 2002:a17:90a:8d05:: with SMTP id c5mr2757642pjo.222.1601645676968;
        Fri, 02 Oct 2020 06:34:36 -0700 (PDT)
Received: from shiro.work (p1268123-ipngn200803sizuokaden.shizuoka.ocn.ne.jp. [118.13.124.123])
        by smtp.googlemail.com with ESMTPSA id k14sm1708219pjd.45.2020.10.02.06.34.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Oct 2020 06:34:36 -0700 (PDT)
From:   Daniel Palmer <daniel@0x0f.com>
To:     soc@kernel.org
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        mark-pk.tsai@mediatek.com, arnd@arndb.de, maz@kernel.org,
        Daniel Palmer <daniel@0x0f.com>
Subject: [PATCH v2 1/5] ARM: mstar: Select MStar intc
Date:   Fri,  2 Oct 2020 22:34:14 +0900
Message-Id: <20201002133418.2250277-2-daniel@0x0f.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201002133418.2250277-1-daniel@0x0f.com>
References: <20201002133418.2250277-1-daniel@0x0f.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

MediaTek recently introduced support for the MStar interrupt
controller that is also present in some of their chips as well
as the MStar/Sigmastar chips.

Almost all of the peripheral interrupts go through an instance of
this controller in MStar/SigmaStar Arm v7 chips so we want to select
it if CONFIG_ARCH_MSTARV7 is selected.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 arch/arm/mach-mstar/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-mstar/Kconfig b/arch/arm/mach-mstar/Kconfig
index 52744fe32368..576d1ab293c8 100644
--- a/arch/arm/mach-mstar/Kconfig
+++ b/arch/arm/mach-mstar/Kconfig
@@ -3,6 +3,7 @@ menuconfig ARCH_MSTARV7
 	depends on ARCH_MULTI_V7
 	select ARM_GIC
 	select ARM_HEAVY_MB
+	select MST_IRQ
 	help
 	  Support for newer MStar/Sigmastar SoC families that are
 	  based on Armv7 cores like the Cortex A7 and share the same
-- 
2.27.0

