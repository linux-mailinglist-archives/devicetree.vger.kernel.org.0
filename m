Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AA3E8368D60
	for <lists+devicetree@lfdr.de>; Fri, 23 Apr 2021 08:53:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230131AbhDWGyP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Apr 2021 02:54:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54642 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229945AbhDWGyP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Apr 2021 02:54:15 -0400
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com [IPv6:2607:f8b0:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 19DFBC061574
        for <devicetree@vger.kernel.org>; Thu, 22 Apr 2021 23:53:39 -0700 (PDT)
Received: by mail-pl1-x630.google.com with SMTP id n10so13617732plc.0
        for <devicetree@vger.kernel.org>; Thu, 22 Apr 2021 23:53:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=oBsB1gTZg7pCEafsajc7J+2ruSCh6B3ByCc2MPyji4k=;
        b=W2YpkNGska2guIgrKuthtDEFw0MwFDObtJe2oFDv0nSSdYRgHQfhrLWZH/l3ZFhbj1
         Ghy+BnszbbQ96marP7fzm0xZwUhQB6XqAygVceemKVrShGdixZufzFOJCbuwnG3I0F/8
         VOS+exVsVKPOpudrDs6b9KGMdrgXkEx2dA/M8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=oBsB1gTZg7pCEafsajc7J+2ruSCh6B3ByCc2MPyji4k=;
        b=To9Y2/36W4GYMIMyS9QvYFO+oRbUemGElVewQMVgdV8gUR5NrU6U3Db3xq4143RHAb
         0WT9J4HtMj+E+neVJK/xxJ6TatQZsnkC7a5Bcu0pQGGYrvty1Dg8lDj0suJ3/UpQK0wC
         r53SpREIojpJ8LeX7XIEKZjd+BibVrLwsqwQ4dXcds9jLc/3MlRAAU2GdDl42wN844RW
         ncAjsf4aOmlvWkkiNlt5iPlQuqKJUbKjhZIgn30+d5Nz2AN5lnWl6Pdt2y7e9YTNkMWI
         YqfTSuOb6FWikeby/BFkDow33+Z8uy0uHUq6EYQGwhIHutr4QyeLCI76fX1CGE98o6Ew
         aeKg==
X-Gm-Message-State: AOAM531pRmB+0LFxs5FkHcC04SGCTOkxz0za4Zr/H3joQ8Y4MDeK2MoU
        FTu5yn/IC5VhTM8Ak0287FqeDg==
X-Google-Smtp-Source: ABdhPJyOUqurtSe35jHgXPvYL2sJPGggDMcNevLnMOq/El+jK1sVKr2iiwReHcGfqEMype6g/xvuGA==
X-Received: by 2002:a17:90a:318d:: with SMTP id j13mr2900233pjb.174.1619160818607;
        Thu, 22 Apr 2021 23:53:38 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:a0c1:e03a:8cab:4dd4])
        by smtp.gmail.com with ESMTPSA id 1sm3731450pjx.46.2021.04.22.23.53.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Apr 2021 23:53:38 -0700 (PDT)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: [PATCH] arm64: dts: mt8183: add mediatek,gce-events in mutex
Date:   Fri, 23 Apr 2021 14:53:28 +0800
Message-Id: <20210423065327.1596075-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.31.1.498.g6c1eba8ee3d-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

mediatek,gce-events is read by mutex node.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index c5e822b6b77a..cf22d71161e5 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -1250,6 +1250,8 @@ mutex: mutex@14016000 {
 			reg = <0 0x14016000 0 0x1000>;
 			interrupts = <GIC_SPI 217 IRQ_TYPE_LEVEL_LOW>;
 			power-domains = <&spm MT8183_POWER_DOMAIN_DISP>;
+			mediatek,gce-events = <CMDQ_EVENT_MUTEX_STREAM_DONE0>,
+					      <CMDQ_EVENT_MUTEX_STREAM_DONE1>;
 		};
 
 		larb0: larb@14017000 {
-- 
2.31.1.498.g6c1eba8ee3d-goog

