Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C2E1F432987
	for <lists+devicetree@lfdr.de>; Tue, 19 Oct 2021 00:04:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231142AbhJRWGP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Oct 2021 18:06:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40296 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230432AbhJRWGP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Oct 2021 18:06:15 -0400
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com [IPv6:2607:f8b0:4864:20::102f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6AD97C061765
        for <devicetree@vger.kernel.org>; Mon, 18 Oct 2021 15:04:03 -0700 (PDT)
Received: by mail-pj1-x102f.google.com with SMTP id lk8-20020a17090b33c800b001a0a284fcc2so476864pjb.2
        for <devicetree@vger.kernel.org>; Mon, 18 Oct 2021 15:04:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=wVk5yD+PSi8ucg8AJyWuZQNAEZaSAnXc3EBZDpnorZg=;
        b=h8RxE+sleFIIIi9+GM8T2hHJAXb+ITeMu16ORqv199ebFSTKNdCfY5m3jdXRMgLp82
         cXl4UctkCwWjI+Ck3YlTu2QXNJsu49lBCEGvqIckVm7tt50Ddt3rb65gWSDDbB5pBznt
         uDIJznM3Oe9Osldm/cP2C66U6d0x0E8xOUzy736fBmmGBVKV26CP8BvuG9xYZ8jpfdLg
         lFoc3Q0sPMFNhQtwLjXHFw7+HYcj7NltJKFMLqmzrpXJtmsRSQkPO/5IsdzL9BK7x8XR
         X6+gpTuFFjaCM1WYb2eymhxyWgDjWtxbBQXEbacBhYulAbijNX/qKsaqgfJuiPwgoXLZ
         VJIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=wVk5yD+PSi8ucg8AJyWuZQNAEZaSAnXc3EBZDpnorZg=;
        b=NxqlgS7kXLBajgBqzSgq5N+ra0Bdj6L7Ig16Vli7YFhr01Gu1X4fo2hrIaO0QIEWyP
         NHkfrLF8BKLthOUbXquvW5zxyPalntvhSw+TVyKaF6Ex+/YdjBhMXbKlKumua6n5/e7H
         so/yS0l+S4qjUUgnK9PMoJ9OZgI10rvXkHYvzS7V+12tJPpFrH3cUS/5PEtxLlCe+Mc6
         sy8qGn3vbP1FnYb36BwsuT0vOAP36ZiGimYUM6+cwn04m5A0dGXz/WztjMcMBszGByaB
         yR8j5Wb020mYz+nvvNzBpXUQZWkzHy1VvkHWQFbTxC/q79BdxHV90inRtdAUWsX/JR55
         n6Ew==
X-Gm-Message-State: AOAM530UcinxvBNvlJb92ue7Tek6ZejJJ+vf/u7VdIkIqJ6DmKZvjKZU
        Sz6T31ojoUnvx2qSa34Q9UK3kA==
X-Google-Smtp-Source: ABdhPJwPsYtJw8pT0uukx1WutHu6glhwiN0vfKwZnWeQTAGQ1H0i5QPdYGaNZTWES3zvVMxwDF67mg==
X-Received: by 2002:a17:902:edcf:b0:13f:165e:f485 with SMTP id q15-20020a170902edcf00b0013f165ef485mr29763759plk.58.1634594642968;
        Mon, 18 Oct 2021 15:04:02 -0700 (PDT)
Received: from x1.lan ([2607:fb90:3273:95f2:c715:2287:eaad:f905])
        by smtp.gmail.com with ESMTPSA id f33sm386796pjk.42.2021.10.18.15.04.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Oct 2021 15:04:02 -0700 (PDT)
From:   Drew Fustini <dfustini@baylibre.com>
To:     Dave Gerlach <d-gerlach@ti.com>, Keerthy <j-keerthy@ti.com>,
        Johan Hovold <johan@kernel.org>,
        Jason Kridner <jkridner@beagleboard.org>,
        Benoit Cousson <bcousson@baylibre.com>,
        Tony Lindgren <tony@atomide.com>,
        Rob Herring <robh+dt@kernel.org>, linux-omap@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Drew Fustini <dfustini@baylibre.com>
Subject: [PATCH 2/2] ARM: dts: am335x-icev2: Add system-power-controller to RTC node
Date:   Mon, 18 Oct 2021 15:00:20 -0700
Message-Id: <20211018220018.1514652-3-dfustini@baylibre.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20211018220018.1514652-1-dfustini@baylibre.com>
References: <20211018220018.1514652-1-dfustini@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On the am335x-icev2 board [1], AM3359 PMIC_PWR_EN (ZCZ ball C6) is
connected to PWRHOLD (pin 1) on the TPS65910A3 PMIC. The addition of
system-power-controller to the rtc node will enable the capability of
the RTC driver to poweroff the board.

Based on 15c7be47fb7c ("ARM: dts: am335x: Add rtc node as
system-power-controller") by Keerthy in ti-linux-5.4.y branch [2].

[1] https://www.ti.com/tool/TMDSICE3359
[2] git://git.ti.com/ti-linux-kernel/ti-linux-kernel.git

Cc: Dave Gerlach <d-gerlach@ti.com>
Cc: Keerthy <j-keerthy@ti.com>
Link: https://lore.kernel.org/linux-omap/20211012191311.879838-1-dfustini@baylibre.com/
Suggested-by: Johan Hovold <johan@kernel.org>
Signed-off-by: Drew Fustini <dfustini@baylibre.com>
---
 arch/arm/boot/dts/am335x-icev2.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/am335x-icev2.dts b/arch/arm/boot/dts/am335x-icev2.dts
index e5ce89c8f54d..5835c0cdda50 100644
--- a/arch/arm/boot/dts/am335x-icev2.dts
+++ b/arch/arm/boot/dts/am335x-icev2.dts
@@ -512,3 +512,7 @@ ethphy1: ethernet-phy@3 {
 &pruss_tm {
 	status = "okay";
 };
+
+&rtc {
+	system-power-controller;
+};
-- 
2.27.0

