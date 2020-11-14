Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A14582B2D6E
	for <lists+devicetree@lfdr.de>; Sat, 14 Nov 2020 14:52:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726923AbgKNNwe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 14 Nov 2020 08:52:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50374 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726871AbgKNNwa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 14 Nov 2020 08:52:30 -0500
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com [IPv6:2607:f8b0:4864:20::1041])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6AF01C061A04
        for <devicetree@vger.kernel.org>; Sat, 14 Nov 2020 05:52:28 -0800 (PST)
Received: by mail-pj1-x1041.google.com with SMTP id gv24so1636147pjb.3
        for <devicetree@vger.kernel.org>; Sat, 14 Nov 2020 05:52:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=knRDqUwLArt/cH+Tqwve+3iR/MhGzrnefGMWYKE+wNE=;
        b=tabb1NqYQxtCKgmPgxtbaPibihWkntu6RSY0c673ZnyqaahjS+4MnWiuuX10n5/SgT
         mZfVST1yb3XP3hfgOEkzK/A82wgXwWiDxXPefad6bsPcyA18i4McOgNvjHmUdOimTOma
         tYeawHrRe82fPXLEYCIOoh6hWTEaYh3Tbtfeo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=knRDqUwLArt/cH+Tqwve+3iR/MhGzrnefGMWYKE+wNE=;
        b=d6rD/V2OqZ96MBUV0RoozyMEzw4vfpmFIMCiepyfH5rU0pV9+AdZvWjwV3nPrB2eaI
         BYj82pEN2YLJQrfp/QiH2g3ImfHDhylHG/tKZr/tF0bDXVLhrTLixmU1VbtVF6xzcoBB
         Cg7cwAoZLAK+OWza0+vnu8AD/0MED74P1PCkg61zBHuM84fvbPhIecIOSvJxevtOwPb0
         we5fRQqizNmmzwvU7tHpEAjY+2GpytBCQm5L1QIp2NRw7MbbfEo0S0eZ6zhOZ2POG4VA
         PRjksnCChU3udgjlhHI1sPvQSV9exQhxNfjbL0Mv8EDP3/y1M+Yk7mt/PhyyZr51Xbje
         uETg==
X-Gm-Message-State: AOAM533ZJf3Bs3jsqcgVSnvQleCIjR/pMlPxUdXeO046C9cVJH/LSmW5
        gfK8rgnwEn3fNHiHAuGqjRro5Q==
X-Google-Smtp-Source: ABdhPJzMSVAnooVmia8Cb5+VWp9XK6kfgXDWdqNR6ykSsQtis1fYeAAxs6GOyE6QtsRdesLRuivNzw==
X-Received: by 2002:a17:90a:4802:: with SMTP id a2mr8323284pjh.22.1605361948045;
        Sat, 14 Nov 2020 05:52:28 -0800 (PST)
Received: from shiro.work (p1268123-ipngn200803sizuokaden.shizuoka.ocn.ne.jp. [118.13.124.123])
        by smtp.googlemail.com with ESMTPSA id r205sm13008023pfr.25.2020.11.14.05.52.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Nov 2020 05:52:27 -0800 (PST)
From:   Daniel Palmer <daniel@0x0f.com>
To:     linux-clk@vger.kernel.org, devicetree@vger.kernel.org
Cc:     linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        w@1wt.eu, Daniel Palmer <daniel@0x0f.com>
Subject: [PATCH 4/6] ARM: mstar: Select MSTAR_MSC313_MPLL
Date:   Sat, 14 Nov 2020 22:50:42 +0900
Message-Id: <20201114135044.724385-5-daniel@0x0f.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201114135044.724385-1-daniel@0x0f.com>
References: <20201114135044.724385-1-daniel@0x0f.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

All of the ARCH_MSTARV7 chips have an MPLL as the source for
peripheral clocks so select MSTAR_MSC313_MPLL.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 arch/arm/mach-mstar/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-mstar/Kconfig b/arch/arm/mach-mstar/Kconfig
index 576d1ab293c8..cd300eeedc20 100644
--- a/arch/arm/mach-mstar/Kconfig
+++ b/arch/arm/mach-mstar/Kconfig
@@ -4,6 +4,7 @@ menuconfig ARCH_MSTARV7
 	select ARM_GIC
 	select ARM_HEAVY_MB
 	select MST_IRQ
+	select MSTAR_MSC313_MPLL
 	help
 	  Support for newer MStar/Sigmastar SoC families that are
 	  based on Armv7 cores like the Cortex A7 and share the same
-- 
2.29.2

