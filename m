Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DB4D22768FE
	for <lists+devicetree@lfdr.de>; Thu, 24 Sep 2020 08:35:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726906AbgIXGfa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Sep 2020 02:35:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40922 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726880AbgIXGf3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Sep 2020 02:35:29 -0400
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com [IPv6:2607:f8b0:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BE7BEC0613CE
        for <devicetree@vger.kernel.org>; Wed, 23 Sep 2020 23:35:29 -0700 (PDT)
Received: by mail-pf1-x442.google.com with SMTP id x123so1269456pfc.7
        for <devicetree@vger.kernel.org>; Wed, 23 Sep 2020 23:35:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=endlessos-org.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=cMk5EkO4+a7or+6O9dGbx3RFLRF/gjrDA61H05E6FkU=;
        b=CNwT7A48Bv2tL3cgjhSN+QqVUZyOE4oH0z/QPxXWxHlfvRHPpqeNrgMWakuntfufGc
         6KUk9TcIO4PkswHtuWMCf8r0mqTH7vFuT/bBhZeuy+TzYNKUXRoJdaXK4dG2kfEf6gk9
         Rs+I9bobAz5kV/oNMpcu35ByBl0v2BMQslpfYGtbn+BM6zjiNUEgodgm/4r34wcvNwjn
         2UZSNR3oyiG2TOzi14qu9qp3NluDDlwqlAsjDtGiwA1n+eCdk+t0tAvQNAGekqGpvOW0
         AfujOjW5OyTXMvkODohRmQk5rm5/k6ztAB9NzO9IKQlmmQAsxA4HMGEoPuDQUbYpeg8O
         Orjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=cMk5EkO4+a7or+6O9dGbx3RFLRF/gjrDA61H05E6FkU=;
        b=hhbFQEF10FrB+unG2Dad+2fcLiQ/9KPvxk7nTkKEaRe/dSUdPqfCSxyQlX3n5Iu5dS
         pxKkJ96rLOwrngpLZw5zi/oNStLodrJN5ptff+PLf3TvfS3ePBgHmLOn4GCWO51P00mE
         /7vyeziDcYDjw3kKuNJE+wwHXCNE6iBT6lyr4Qtw3+MmrkUwypw0H5m+zF8lj1k4Xd9y
         TbWick1IX55u1QQvB7aFawxZk0DO+J33Tez4nNs6RYDGkA8q0TPyRlywcYD45MESYNgH
         39wrI9ecmuR5bgMeDT3i4xX6dUu963q4TUXwm5Q2D4BG6Br9pSYEaLxpH09ctx49MIbY
         Mwfg==
X-Gm-Message-State: AOAM532OhE+qEkPPqNvHREaqQQY5/IHIkRz0OEHY2Sn1Znh1043au8t3
        iVtuKAhPQiH8BALdRa8ScQw9rw==
X-Google-Smtp-Source: ABdhPJxRtZ216lgi7xyFj9DVfZBzPvh8X3PV8a9E299xrYCeK5YYgipOFzUGlybGn6AWVn8DDIuoiw==
X-Received: by 2002:a62:5b85:0:b029:142:2501:34e1 with SMTP id p127-20020a625b850000b0290142250134e1mr3072236pfb.58.1600929329001;
        Wed, 23 Sep 2020 23:35:29 -0700 (PDT)
Received: from starnight.localdomain (123-204-46-122.static.seed.net.tw. [123.204.46.122])
        by smtp.googlemail.com with ESMTPSA id f4sm1691321pgk.19.2020.09.23.23.35.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Sep 2020 23:35:28 -0700 (PDT)
From:   Jian-Hong Pan <jhp@endlessos.org>
To:     Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
        Soeren Moch <smoch@web.de>,
        Tobias Schramm <t.schramm@manjaro.org>,
        Johan Jonker <jbx6244@gmail.com>,
        Katsuhiro Suzuki <katsuhiro@katsuster.net>,
        Hugh Cole-Baker <sigmaris@gmail.com>,
        Robin Murphy <robin.murphy@arm.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux@endlessm.com, Jian-Hong Pan <jhp@endlessos.org>
Subject: [PATCH] arm64: dts: rockchip: disable USB type-c DisplayPort
Date:   Thu, 24 Sep 2020 14:30:43 +0800
Message-Id: <20200924063042.41545-1-jhp@endlessos.org>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The cdn-dp sub driver probes the device failed on PINEBOOK Pro.

kernel: cdn-dp fec00000.dp: [drm:cdn_dp_probe [rockchipdrm]] *ERROR* missing extcon or phy
kernel: cdn-dp: probe of fec00000.dp failed with error -22

Then, the device halts all of the DRM related device jobs. For example,
the operations: vop_component_ops, vop_component_ops and
rockchip_dp_component_ops cannot be bound to corresponding devices. So,
Xorg cannot find the correct DRM device.

The USB type-C DisplayPort does not work for now. So, disable the
DisplayPort node until the type-C phy work has been done.

Link: https://patchwork.kernel.org/patch/11794141/#23639877
Signed-off-by: Jian-Hong Pan <jhp@endlessos.org>
---
 arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
index 06d48338c836..d624c595c533 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
@@ -380,7 +380,7 @@ mains_charger: dc-charger {
 };
 
 &cdn_dp {
-	status = "okay";
+	status = "disabled";
 };
 
 &cpu_b0 {
-- 
2.28.0

