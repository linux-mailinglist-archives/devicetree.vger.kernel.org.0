Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B3E4F2E8410
	for <lists+devicetree@lfdr.de>; Fri,  1 Jan 2021 16:21:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727057AbhAAPVL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Jan 2021 10:21:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49444 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726747AbhAAPVL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Jan 2021 10:21:11 -0500
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5CC56C061573
        for <devicetree@vger.kernel.org>; Fri,  1 Jan 2021 07:20:28 -0800 (PST)
Received: by mail-lf1-x131.google.com with SMTP id o13so49432602lfr.3
        for <devicetree@vger.kernel.org>; Fri, 01 Jan 2021 07:20:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=FxJ4CaUCzQKr3Z+f/AnYz0EiEDZVFwYoX3j/dMbaFLU=;
        b=rW4a0O+XBnlRSL17fk6Kuo2BG08f0EFTeJMwgN2vcYcX/wc09IEjisZ5dY3nbPJwMu
         /oRPMklWNcNo6+tULE/ElMbKi/jS6Ro/6OPgsKC+Q1Mks41D6AqOnJbDJVyReX2owmsV
         0KVNZB9PFhQiUZ+ARSM+NvIVYVIUwnbZoqhAoOX+6sZ1WVUBD6NZEheLDkmZGfWLHjmz
         zPTvpuRNq1OYeaZ1pClCfQX4mf7FKaIX/uWaMauOg0rexQMXCL/SXORSnNJxLyY7t7Ih
         gzFMEAnH6ibztIItC54XVTGcDG5LJy3asY1WFsKTx81VaVeIi42vHD9Vo/V/cZ4uHdjl
         vcgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=FxJ4CaUCzQKr3Z+f/AnYz0EiEDZVFwYoX3j/dMbaFLU=;
        b=pPBsmtsKW1fVQtLLu+m6zQSPAZSjhVyZZsuaPVPfcvx1y8AqD0ejQeo+KGTKeXuv46
         Ffc4WnM9T+/gVsBnCDtV5Hkj7NGN0gWA9Kdv/a560QsH8PNBsEYrSikbr3xS2o1Nxane
         Q6eT7CUacx5j6tVL1rwXSexuThgN0eUoTtuK++8j8GFM4egY/O7PZ3rpAsFkiCg00PJ6
         zuzXRkd7vgJmtt3Vt+ymvXaPQnZj7L5t+O3+RAykNt4SgWZT1zh2IsHp/J1/RmRslUit
         Xz1PWzK2BRLLq7+JCTlwdIDPI+cdeOqI3yCo7gAig7FuX/wX7WGciuY3B1mqSuly+6xY
         BRuA==
X-Gm-Message-State: AOAM531JOCiNvxv3sOKQ/mZXia2epM06JjcSBXKUO4gvvAuRgufdRU0k
        pjr1hbJJ6moDbdSHAeczijlNvRf98YrRjQ==
X-Google-Smtp-Source: ABdhPJxS7tGZWyA8qrh8aAd4at1+0M4MzosTMvOPAdCJFp20n05PsclbHi+A7pyulQiJrlKr25GWfQ==
X-Received: by 2002:a2e:780d:: with SMTP id t13mr29374557ljc.144.1609514426763;
        Fri, 01 Jan 2021 07:20:26 -0800 (PST)
Received: from localhost.localdomain (85-76-98-107-nat.elisa-mobile.fi. [85.76.98.107])
        by smtp.gmail.com with ESMTPSA id y24sm6129940ljm.125.2021.01.01.07.20.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Jan 2021 07:20:26 -0800 (PST)
From:   =?UTF-8?q?Jari=20H=C3=A4m=C3=A4l=C3=A4inen?= <nuumiofi@gmail.com>
To:     Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc:     Tobias Schramm <t.schramm@manjaro.org>, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org,
        =?UTF-8?q?Jari=20H=C3=A4m=C3=A4l=C3=A4inen?= <nuumiofi@gmail.com>
Subject: [RFC PATCH] arm64: dts: rockchip: remove unused bus-scan-delay-ms from Pinebook Pro
Date:   Fri,  1 Jan 2021 17:18:45 +0200
Message-Id: <20210101151845.766986-1-nuumiofi@gmail.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

bus-scan-delay-ms property is not used anywhere in the code. This was found
while preparing a workaround patch using equally named property for
RockPro64 [1] which uses the same RK3399 SoC as Pinebook Pro.

bus-scan-delay-ms might have been picked to Pinebook Pro DT from my earlier
patches for RockPro64 custom kernels like [2] or [3].

[1] https://lore.kernel.org/r/20201231125214.25733-1-nuumiofi@gmail.com
[2] https://github.com/nuumio/linux-kernel/commit/710570b8ad809bf3f162f8326
[3] https://github.com/nuumio/rp64-linux-mainline-kernel/commit/2bfc7d397f3

Signed-off-by: Jari Hämäläinen <nuumiofi@gmail.com>
---

Hello all,

Sending this as RFC because I don't have Pinebook Pro to test the cleaned
up DT and can only check that the change doesn't break the build. I did not
find any code reference to removed property and believe it has been
accidentally copied over, but there could always be some surpise.

Testing and comments how to proceed are welcome.

 arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
index 06d48338c836..9589646824bf 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
@@ -788,7 +788,6 @@ &pcie_phy {
 };
 
 &pcie0 {
-	bus-scan-delay-ms = <1000>;
 	ep-gpios = <&gpio2 RK_PD4 GPIO_ACTIVE_HIGH>;
 	max-link-speed = <2>;
 	num-lanes = <4>;

base-commit: f6e1ea19649216156576aeafa784e3b4cee45549
-- 
2.29.2

