Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 376CA124D4
	for <lists+devicetree@lfdr.de>; Fri,  3 May 2019 00:55:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726416AbfEBWyy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 May 2019 18:54:54 -0400
Received: from mail-pf1-f194.google.com ([209.85.210.194]:40600 "EHLO
        mail-pf1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726357AbfEBWy3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 May 2019 18:54:29 -0400
Received: by mail-pf1-f194.google.com with SMTP id u17so1852690pfn.7
        for <devicetree@vger.kernel.org>; Thu, 02 May 2019 15:54:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=CT2YSqm9uY9lqkZxGu6xlzES7pBl2nIZjVIbCk84sRc=;
        b=VgR98wkKNANONfnbGrr9lcgFpOWUbpb8QW082Rc0rd/NK6ECJCvh6hOqvAFNGLwSuu
         a8kF9gsAk1gebx8VNGwe5TlF2czJn/t03cJrXt1krC8478dvOLahHngkZ6ZhXYl2ShXg
         ySGidUHXGZuJTt2LfafwCVBx7w9d6c5+uFKhw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=CT2YSqm9uY9lqkZxGu6xlzES7pBl2nIZjVIbCk84sRc=;
        b=CgrqWCD+tnsLePI6umGdKGnCOX2xr1KRKFtYrKQKP/AvmIX8eX/2SJ5PHepgNAh6XD
         1dyBxlaFPT+UAE1MRf2pXeEMsdpE+GNqEDM5J0R14UtSeVTskqLlZcH6gPbSx2c2nTw2
         9+JqPWIGJbKk4E9quwpUstGtrHxexi6bV5snwz5yN5PPLOahlUcS8u5HdpA4WkppgtNy
         D2VF1wG3L3m6vvwUDyVOSw34V0xjd7VsHdDvk/7yAjo9K2jpyqFXXNjV6rSERIXyTRou
         u2msujMx6T0Hdmn42ATA5HaHRz9gHjGKmCIIJjdyxj0ZtoWfoOG25WbTAIqWEykXKRkn
         db7w==
X-Gm-Message-State: APjAAAWA4shTEs9jusTXr3Pz3fljDA6NJne6G86HPGaupEEkA/kowKNA
        hVw5+V1Nob9Ve1L0Chc2wY4XJepx4UM=
X-Google-Smtp-Source: APXvYqzTiOjbZQBE1y3q6em7X3hoV/eO9e264Ryqoxbr49JQ0+yN737erpxGaSnUtNHQVlpHiZsYFQ==
X-Received: by 2002:a62:164f:: with SMTP id 76mr7040966pfw.172.1556837668900;
        Thu, 02 May 2019 15:54:28 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:1:24fa:e766:52c9:e3b2])
        by smtp.gmail.com with ESMTPSA id v15sm264736pff.105.2019.05.02.15.54.27
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 May 2019 15:54:28 -0700 (PDT)
From:   Douglas Anderson <dianders@chromium.org>
To:     Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-rockchip@lists.infradead.org,
        Neil Armstrong <narmstrong@baylibre.com>,
        Mark Rutland <mark.rutland@arm.com>, mka@chromium.org,
        Sean Paul <seanpaul@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 5/5] ARM: dts: rockchip: Add HDMI i2c unwedging for rk3288-veyron
Date:   Thu,  2 May 2019 15:53:36 -0700
Message-Id: <20190502225336.206885-5-dianders@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190502225336.206885-1-dianders@chromium.org>
References: <20190502225336.206885-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Veyron uses the builtin i2c controller that's part of dw-hdmi.  Hook
up the unwedging feature.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 arch/arm/boot/dts/rk3288-veyron.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk3288-veyron.dtsi b/arch/arm/boot/dts/rk3288-veyron.dtsi
index e1bee663d2c5..340b276b6333 100644
--- a/arch/arm/boot/dts/rk3288-veyron.dtsi
+++ b/arch/arm/boot/dts/rk3288-veyron.dtsi
@@ -163,8 +163,9 @@
 };
 
 &hdmi {
-	pinctrl-names = "default";
+	pinctrl-names = "default", "unwedge";
 	pinctrl-0 = <&hdmi_ddc>;
+	pinctrl-1 = <&hdmi_ddc_unwedge>;
 	status = "okay";
 };
 
-- 
2.21.0.1020.gf2820cf01a-goog

