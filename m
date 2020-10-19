Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F1CDE29228A
	for <lists+devicetree@lfdr.de>; Mon, 19 Oct 2020 08:36:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726867AbgJSGgg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Oct 2020 02:36:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51456 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726840AbgJSGgc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Oct 2020 02:36:32 -0400
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com [IPv6:2607:f8b0:4864:20::1043])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 650B6C0613CE
        for <devicetree@vger.kernel.org>; Sun, 18 Oct 2020 23:36:31 -0700 (PDT)
Received: by mail-pj1-x1043.google.com with SMTP id h4so5087080pjk.0
        for <devicetree@vger.kernel.org>; Sun, 18 Oct 2020 23:36:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id;
        bh=53aD8LnM8EvcZq8Zpynm6G2g3jQJzWqLNRO+Mau56UA=;
        b=V04DCFeRHjki2ZiumN65n5b2//Ug1hHXWswA9ouxj+3CI4XqmRJNMDEvXSd+8yfWmh
         RGIwe6Gwkj2nCJdM1mY3pqMVNUtHtzLpCtRQZyNvf1eaI8o+ilqXiu3LJbsnPzjYUcsb
         JiXtfmAtU7C352ptIBFS7yp8at2rG2mDd0XtgQzpagHb5BdYoL8PNvv4lMth4+4KSzgo
         OBZSd8ECw5/ybYwOtJUOhqoARXLHUoK3IPSrwRYOv2Y/nRGOtUUsMDxr3SfL/A0AL3L8
         CbrNqmbwIQk7+QrbNvYf/0CirXNvZ8zAD5Jm52icesF+8DuEl7GwwdnzdlycY9TACLAd
         iYoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=53aD8LnM8EvcZq8Zpynm6G2g3jQJzWqLNRO+Mau56UA=;
        b=l1R1DHs0f1YLjMMYPHnlZWKVKpF2I6ops+ScVcO1ZrNKHJrn1N42SxpAUkjq2rY1bN
         gt6/J4396vOVu6hMpfyHgxASsamCf04J0JxFjmdNor08bwH8GurTRezMuLvD0FWUBj4d
         W5O9GOvi4+8Dq1aAAmG+VTBjJ4Bs3VLPMC3ppcZcojtA98FliQuj+XfNWIOXgxJeR95J
         GG4R4zzUe13bxuuUc33X8q+qPfN2iTu+PUV4+1x32DTZlp7AKn+ZiwdjZjNpGRptSNKL
         +l4PlThzfsPn9OUdt8Ir7wcLjFKE5Pa4WPjLxqHvtlckzNKj9mTLCGvF4T5Fn4lPKbAd
         mN6g==
X-Gm-Message-State: AOAM533RReYJ9mFWuXZ3dMyhNZ6/u2iDzgK2ID3SVY+sY/zPIbnJdiHM
        xZ85ec3PqEhKCPzfGQBkry6B+w==
X-Google-Smtp-Source: ABdhPJzPcmWZR067emZlhIQl2ucKgT9SoF4z+qf5rA4tvNgOLkRfaOPkJzDm24192j7ykQMtQKOz+A==
X-Received: by 2002:a17:90a:5aa6:: with SMTP id n35mr15623738pji.55.1603089390363;
        Sun, 18 Oct 2020 23:36:30 -0700 (PDT)
Received: from localhost.localdomain ([163.172.76.58])
        by smtp.googlemail.com with ESMTPSA id x1sm10952514pjj.25.2020.10.18.23.36.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Oct 2020 23:36:29 -0700 (PDT)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     mripard@kernel.org, wens@csie.org
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH] arm64: dts: allwinner: Pine H64: Enable both RGMII RX/TX delay
Date:   Mon, 19 Oct 2020 06:34:49 +0000
Message-Id: <20201019063449.33316-1-clabbe@baylibre.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Since commit bbc4d71d6354 ("net: phy: realtek: fix rtl8211e rx/tx delay config"),
the network is unusable on PineH64 model A.

This is due to phy-mode incorrectly set to rgmii instead of rgmii-id.

Fixes: 729e1ffcf47e ("arm64: allwinner: h6: add support for the Ethernet on Pine H64")
Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
index af85b2074867..961732c52aa0 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
@@ -100,7 +100,7 @@ &ehci3 {
 &emac {
 	pinctrl-names = "default";
 	pinctrl-0 = <&ext_rgmii_pins>;
-	phy-mode = "rgmii";
+	phy-mode = "rgmii-id";
 	phy-handle = <&ext_rgmii_phy>;
 	phy-supply = <&reg_gmac_3v3>;
 	allwinner,rx-delay-ps = <200>;
-- 
2.26.2

