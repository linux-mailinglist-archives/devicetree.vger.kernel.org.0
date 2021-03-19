Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CE306341B0E
	for <lists+devicetree@lfdr.de>; Fri, 19 Mar 2021 12:06:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230127AbhCSLGD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 Mar 2021 07:06:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39598 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229979AbhCSLFl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 Mar 2021 07:05:41 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 31A6DC06174A
        for <devicetree@vger.kernel.org>; Fri, 19 Mar 2021 04:05:41 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id v4so8656765wrp.13
        for <devicetree@vger.kernel.org>; Fri, 19 Mar 2021 04:05:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=4/chfQtIv4nkYAhw823ZDxPsTY3OzuaLkKHNmOeT7jY=;
        b=Vzo9kEvKSFjCgF3u/xU/KHGfVl2K/vlYFQAD38/teB0a4LANjjXp/zZWeg7HEyfnRP
         2ncamnZAptv1u18sshdQmfkpLO70SorzlfQDcqlImCIqdvuUKjpki69jFQKUkq/H9sCo
         pfvNvOA+ldgHbgyJEEnIillJNT2t6yXp4zGDc/Os9Nsp/hj7cgvsRs7adqZQkamIjUg3
         J2kaIwVvyJnBrL15jO218e6JV5Wah0VB1XdF1n1Wr+nuBd0rIHNktYgVkQ+IByzGRhUQ
         AP/wxv5fiysZ7PTGzmP4gSTkJQS50hDGcjiL3sdLbkFWkroJfz4r9bcfWwgwTbITO/Va
         hhqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=4/chfQtIv4nkYAhw823ZDxPsTY3OzuaLkKHNmOeT7jY=;
        b=CglfgCYd4dEs7+v/wjqamHftyERmIz8jExifpyhc/FSEVL2PB2ZOkHf+jJM2YPB6mR
         1kaZ/5+x88UXBXr1N+1QKKvg+yDK+DMew0ao1NaRaZQTE8CJInqJFOzjgzfdVImSr9rP
         Bt2PP+IlquOUnCOolnwjbdYN4idrSJKEHnxbUKGaSUNeAYBVJjjLEdkXsISb7rKUTiIy
         NWUQnfzswPOwJnqhncwiRf1LgRa8XPD+YJatB/cIsQKzKlOcm4g3iT1vHhYc8eEo5/Ej
         EK4/+0UaMM/hXgh7xdnj9PY6RfvxcFsiUNiwiPE2yffLWgPQCM0BUkKikw5A0QIDSGmE
         aduA==
X-Gm-Message-State: AOAM531QSvzSujtRM67Q/Fc0jW+K/aGk0FmDBUTec5vZALgwDjP4lnx8
        lxSsaEWoGAiH6qiK6zxvZzJfHA==
X-Google-Smtp-Source: ABdhPJxjEFbBmaa3JKCf17wA3LZKsE8ujdZs700Nr3q83zpiD4R/NgKRFxXRqcSK3AVITKnZ1R0B/g==
X-Received: by 2002:a5d:6703:: with SMTP id o3mr3886879wru.357.1616151939819;
        Fri, 19 Mar 2021 04:05:39 -0700 (PDT)
Received: from localhost.localdomain ([82.142.18.100])
        by smtp.gmail.com with ESMTPSA id y205sm7232314wmc.18.2021.03.19.04.05.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Mar 2021 04:05:39 -0700 (PDT)
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
To:     heiko@sntech.de
Cc:     Rob Herring <robh+dt@kernel.org>, Johan Jonker <jbx6244@gmail.com>,
        Helen Koike <helen.koike@collabora.com>,
        Shunqian Zheng <zhengsq@rock-chips.com>,
        Jacob Chen <jacob2.chen@rock-chips.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Markus Reichl <m.reichl@fivetechno.de>,
        Robin Murphy <robin.murphy@arm.com>,
        Boris Brezillon <boris.brezillon@collabora.com>,
        devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED
        DEVICE TREE BINDINGS),
        linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC
        support),
        linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support),
        linux-kernel@vger.kernel.org (open list)
Subject: [PATCH] dt: rockchip: rk3399: Add dynamic power coefficient for GPU
Date:   Fri, 19 Mar 2021 12:05:09 +0100
Message-Id: <20210319110511.24787-1-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The DTPM framework is looking for upstream SoC candidates to share the
power numbers.

We can see around different numbers but the one which seems to be
consistent with the initial post for the values on the CPUs can be
found in the patch https://lore.kernel.org/patchwork/patch/810159/

I don't know the precision of this value but it is better than
nothing.

Hopefully, one day SoC vendors will be more generous with the power
numbers at least for the SoC which are from the previous generation
and give the community the opportunity to develop power based
frameworks.
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index edbbf35fe19e..1ab1d293d2e9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -1933,6 +1933,7 @@
 		interrupt-names = "job", "mmu", "gpu";
 		clocks = <&cru ACLK_GPU>;
 		#cooling-cells = <2>;
+		dynamic-power-coefficient = <977>;
 		power-domains = <&power RK3399_PD_GPU>;
 		status = "disabled";
 	};
-- 
2.17.1

