Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 97995377045
	for <lists+devicetree@lfdr.de>; Sat,  8 May 2021 09:09:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229870AbhEHHKj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 8 May 2021 03:10:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49382 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229864AbhEHHKj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 8 May 2021 03:10:39 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D286C061761
        for <devicetree@vger.kernel.org>; Sat,  8 May 2021 00:09:38 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id j3-20020a05600c4843b02901484662c4ebso8322728wmo.0
        for <devicetree@vger.kernel.org>; Sat, 08 May 2021 00:09:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=rnhsZglV9Tim8CW0KmXYUH85PSzSV/y0PNcnH/Ygu/E=;
        b=YLg1H8X1j8kxUMAwnZhsSw/AkR3W4e1l8e6kRcSupQ2mSM9AU9BScMbsuG54kJlJxr
         5teQ4DCcfgqhMz/wfJprNpVtpd8eigd6YcyD+U2CkSgrzer0G9+YOUnxvxw8/3Ez1pTT
         c2nXftEVH8gWQYBJvkTo7akxHI7hHE3MgsKrSLV4l/aHDaDMfZWvmdzxQfSEv5dZD3Nb
         C4aT/rUFgJjFMCvufPdZ6rhO68m+/fcVhGOt0FehxV7+4t9hCaaf/c8XFQQ3f1KSZb5F
         4lP1/E2tDny2sLb5scTUNuliBI2s+ppzvisEHbyrWNtknRIe7AwSpAzqvQ/UA17XQ9Hc
         vVOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=rnhsZglV9Tim8CW0KmXYUH85PSzSV/y0PNcnH/Ygu/E=;
        b=Oic7/eo3A4dALbh4LsckGmzy4/A6M6bNTkYGjZmhrM/Xj4WlaqV8zfcL7MT5u/TR6j
         4asfGluk10ZqPMSjyp7/KIrN9Gx9f5Jx1eENt2itzOH44viIwS8ecDpwvyjSXOyL9OtV
         VbJ5JZjP27gJ5LaY8P4HVF33FPqdaaV/lB7aOlQIvn3uSNPvkc0k3xKPSTQESkWLHm4L
         Ruur6bQVUsiHirqrJMTe36Q3tuuf10ygu88qTXxsIMG0Z0I92azTjMxB4+scdDIlOYLq
         ++xAPQTlkIwn4PowvonpE1fJ2MeHVyN8ClC64/86COSv7kdKWw9skDSr/IGBIlcQpiSe
         cXzw==
X-Gm-Message-State: AOAM531YlUE02UHZ/xzKVLbsqEqpQPqsodyy8++0NeMVQtGKcSsjxZH8
        zqqKZotQsj7n2fZchoNsMfo=
X-Google-Smtp-Source: ABdhPJyi+7UG69Vr4iIbxkAYCyKrApkNdVexRvTWHId3nfd9GQLU8QIDLtXsgRizPVYG2wq/iAbBFA==
X-Received: by 2002:a05:600c:2315:: with SMTP id 21mr14259673wmo.39.1620457776835;
        Sat, 08 May 2021 00:09:36 -0700 (PDT)
Received: from localhost.localdomain (231.red-83-51-243.dynamicip.rima-tde.net. [83.51.243.231])
        by smtp.gmail.com with ESMTPSA id s18sm11740345wro.95.2021.05.08.00.09.35
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 May 2021 00:09:36 -0700 (PDT)
From:   Sergio Paracuellos <sergio.paracuellos@gmail.com>
To:     vkoul@kernel.org
Cc:     kishon@ti.com, devicetree@vger.kernel.org,
        linux-phy@lists.infradead.org, robh+dt@kernel.org,
        linux-staging@lists.linux.dev, gregkh@linuxfoundation.org,
        neil@brown.name, ilya.lipnitskiy@gmail.com
Subject: [PATCH RESEND v2 4/6] phy: ralink: Kconfig: enable COMPILE_TEST on mt7621-pci-phy driver
Date:   Sat,  8 May 2021 09:09:28 +0200
Message-Id: <20210508070930.5290-5-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210508070930.5290-1-sergio.paracuellos@gmail.com>
References: <20210508070930.5290-1-sergio.paracuellos@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

After use the clock apis and avoid custom architecture
code this driver can properly be enabled for COMPILE_TEST.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/phy/ralink/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/ralink/Kconfig b/drivers/phy/ralink/Kconfig
index ecc309ba9fee..c2373b30b8a6 100644
--- a/drivers/phy/ralink/Kconfig
+++ b/drivers/phy/ralink/Kconfig
@@ -4,7 +4,7 @@
 #
 config PHY_MT7621_PCI
 	tristate "MediaTek MT7621 PCI PHY Driver"
-	depends on RALINK && OF
+	depends on (RALINK && OF) || COMPILE_TEST
 	select GENERIC_PHY
 	select REGMAP_MMIO
 	help
-- 
2.25.1

