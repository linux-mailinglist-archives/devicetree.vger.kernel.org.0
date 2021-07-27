Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 908A53D741A
	for <lists+devicetree@lfdr.de>; Tue, 27 Jul 2021 13:16:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236419AbhG0LPK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Jul 2021 07:15:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59838 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236399AbhG0LPI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Jul 2021 07:15:08 -0400
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com [IPv6:2607:f8b0:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 021F1C061760
        for <devicetree@vger.kernel.org>; Tue, 27 Jul 2021 04:15:08 -0700 (PDT)
Received: by mail-pl1-x631.google.com with SMTP id a20so15602245plm.0
        for <devicetree@vger.kernel.org>; Tue, 27 Jul 2021 04:15:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=BHNyu7k4UK63DVq7rOYoExZI6cBgQIh7p/Fi6u7I8PE=;
        b=DGLK8ZaGcLZ9qrMkM7KdMWjTsFlwbZzg7dIvgy3A8POI0ux2QLqiOutfmPLYOEy4S3
         SP9jaEuFOZwpSipJm9CdJ26hVsVcFyDj2KUHgIZUqc0dxdkxJ7F20hWTGNo4LjSloYR6
         76hzq7Dk1EiJMfPvfji7Zk5dTMsT4XQXW9j8o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=BHNyu7k4UK63DVq7rOYoExZI6cBgQIh7p/Fi6u7I8PE=;
        b=ivFw/k/cbi9RNgkOWYOWovSKQ9kATuTnppIf/1PCnAngOzTXXE8LKQKuWtlBsBG/Ja
         k5D13w7QfLG22jBnu3d5kuctIVakqXJiMSyX6oFterRwwdiYqHZf+EAlrSvasWqymUQu
         2Svbj2rMSbc0X4FKLqULfP3Eut5sQR9ef630QXed19kZ0HUYan0FJEL9fsv/rhPeEFqa
         d8K9sk/z7KYiUnM6mUQ1zJ6HeC0w5GKJhNIXy4Ah14MMACzKUtGxvN0VO2MJ8mrpZ8d0
         clbPxxjMIek+NNEM/XwNHZUPCf48ZsJgwOT22C7LAAvnbKgC4GPRN2Ct3V03/CI34Zjj
         UXNw==
X-Gm-Message-State: AOAM530C0ju8qUGGClImkb+GqdFzwqg7LcROxTbQp3lAPvyi4ghgM6v3
        5kW7V/vuUZKpoog10A/Hkj9W3w==
X-Google-Smtp-Source: ABdhPJzIMWQIKWL3D4AB+HqQObX91XCw/5cAdIwjOgJtQrBbMGoOuLOom54j+toKSzvKj0sN+PeEJw==
X-Received: by 2002:a63:5344:: with SMTP id t4mr5589835pgl.372.1627384507409;
        Tue, 27 Jul 2021 04:15:07 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:5176:76cc:2193:9b8f])
        by smtp.gmail.com with ESMTPSA id t1sm3362305pgp.42.2021.07.27.04.15.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 04:15:07 -0700 (PDT)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Enric Balletbo Serra <eballetbo@gmail.com>,
        eizan@chromium.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] arm64: dts: mt8183: kukui: Use aliases to mmc nodes
Date:   Tue, 27 Jul 2021 19:15:01 +0800
Message-Id: <20210727111502.2506311-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.32.0.432.gabb21c7263-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

fa2d0aa96941 ("mmc: core: Allow setting slot index via device tree alias")
allows the use of aliases to number SD/MMC slots. This patch use aliases
to mmc nodes so the partition name for eMMC and SD card will be consistent
across boots.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
Tested-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
index ae549d55a94fc..ed499e17b6570 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
@@ -13,6 +13,8 @@
 / {
 	aliases {
 		serial0 = &uart0;
+                mmc0 = &mmc0;
+                mmc1 = &mmc1;
 	};
 
 	chosen {
-- 
2.32.0.432.gabb21c7263-goog

