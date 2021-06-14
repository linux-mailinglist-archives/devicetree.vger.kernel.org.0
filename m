Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 963163A6B84
	for <lists+devicetree@lfdr.de>; Mon, 14 Jun 2021 18:19:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234511AbhFNQVP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Jun 2021 12:21:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52382 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234071AbhFNQVP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Jun 2021 12:21:15 -0400
Received: from mail-oo1-xc36.google.com (mail-oo1-xc36.google.com [IPv6:2607:f8b0:4864:20::c36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 99E91C061574
        for <devicetree@vger.kernel.org>; Mon, 14 Jun 2021 09:18:57 -0700 (PDT)
Received: by mail-oo1-xc36.google.com with SMTP id w13-20020a4ad02d0000b029024a98209c35so1950479oor.4
        for <devicetree@vger.kernel.org>; Mon, 14 Jun 2021 09:18:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=BA/FOa55PNNk9Y6xo5vdwXvq/rrQpAwdaN14E7YLiG8=;
        b=izE96wot0pTUWk91TQh5cQ8YPW7YYHZJuJy5LvTSdfZzsMydzlvADDE4f++/JH0xpg
         Fo4bJxm2j5tp8D9+0j2976kwA5PJDlB3hkpkrfpJHxE4yIZSwz+5hO0b05BQvywVav+8
         Ym2FjF0h7raL69GMv2oTy8kqeENwLe/jpds5yeGfL1l8z8Tmmx3FSLU1oWmGHm15nyF5
         zewq06xhsezvjRvM0EqaSqaLDBvoqfvFaW3jMn7JF7mgvFJlSFp9+de3x+jitjyI7mfQ
         ydpwzutCJW+jYwzl92VGlkuXLU5Hyi3YipV+QcoZQVHy2OIfgYrgy337uquARP/Rgx2k
         smiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=BA/FOa55PNNk9Y6xo5vdwXvq/rrQpAwdaN14E7YLiG8=;
        b=VkLl4shlzbXSXYipCHAzJuOO6SWDsE1J21r/tMOfgZ1DQXj3+61Eh/LPGZ4mYUiiI8
         NWe3EwYFiJSgP3M58PKVyGvxDOiM3S8+1Smz2Cu1i4EpAZA3blubTDWzA2y6AH0DpId6
         S/K15qE3QTtpyfb3Ny50YDUi12ie4dfoH+7UJhtxTme5uYCNp53dCv6JBWFLGJEfELKu
         9MXnq4VRfbZHhHq6hLtczw7PoJfbABJqTQvLTWMSks4ChsZ36f2i3teBhLA0bGmbNJyi
         VtuEGx1n6KAZbRwJxU4+Va3tL4fh2G0gjmxM5bfHr8t7tnvv2IgMi8C1mCU7SJ/2jmII
         p+BQ==
X-Gm-Message-State: AOAM532i9Bt8YuTDNtDl8tKVjvpY9vsBKmSO+uY3dqOu4pvYmCZpW//7
        mn4D06EZSvwniLB3g8eRWFpEuahieX8=
X-Google-Smtp-Source: ABdhPJy++lYmy/KTSTzrA0wciwdcJqlC3gGU1z891FrMWLfXIEuvNa0hHKOukrNKiprGCghUeQ+chQ==
X-Received: by 2002:a4a:cb06:: with SMTP id r6mr7400357ooq.15.1623687536577;
        Mon, 14 Jun 2021 09:18:56 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id o20sm3345268otl.2.2021.06.14.09.18.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Jun 2021 09:18:56 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     devicetree@vger.kernel.org
Cc:     robh+dt@kernel.org, heiko@sntech.de, jbx6244@gmail.com,
        maccraft123mc@gmail.com, Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH] arm64: dts: rockchip: Add Rotation Property for OGA Panel
Date:   Mon, 14 Jun 2021 11:18:49 -0500
Message-Id: <20210614161849.332-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

Add rotation property for Odroid Go Advance panel to note that it is
rotated 270 degrees. Rotation affects DRM connector after this patch:

https://cgit.freedesktop.org/drm/drm/commit/drivers/gpu/drm/panel/panel-elida-kd35t133.c?id=610d9c311b1387f8c4ac602fee1f2a1cb0508707

Note: following example of motorola-mapphone-common and
tegra30-asus-nexus7-grouper-common where rotation is specified by
itself with other physical properties (which are already hard-coded
into the driver in this case so not necessary). Please advise if this
is not the correct manner in the devicetree to specify this.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
index 49c97f76df77..32d7b8270649 100644
--- a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
@@ -241,6 +241,8 @@ panel@0 {
 		reset-gpios = <&gpio3 RK_PC0 GPIO_ACTIVE_LOW>;
 		vdd-supply = <&vcc_lcd>;
 
+		rotation = <270>;
+
 		port {
 			mipi_in_panel: endpoint {
 				remote-endpoint = <&mipi_out_panel>;
-- 
2.25.1

