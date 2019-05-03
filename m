Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id F236413654
	for <lists+devicetree@lfdr.de>; Sat,  4 May 2019 01:48:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726742AbfECXsY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 May 2019 19:48:24 -0400
Received: from mail-pl1-f193.google.com ([209.85.214.193]:33463 "EHLO
        mail-pl1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726573AbfECXsX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 May 2019 19:48:23 -0400
Received: by mail-pl1-f193.google.com with SMTP id y3so3435500plp.0
        for <devicetree@vger.kernel.org>; Fri, 03 May 2019 16:48:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=PEbVvCDak8dCpI2HnTFwocIiYZvOr0ebCOGSVDXq9U8=;
        b=RGP+SCYMLHEk5WjF+mHki7uJYv5LbeWl/W59ixEjp7SqRFxLYgdyeLFfNsh1I0z0mT
         cb/sCQwX3HTa38w/+UuVb9LXLRoXVIFbivcUH4aHmEsAorf62RmWtD+486wZ5IFXqkCK
         k4ZFTZOefUEJopS0g8GIGZg3EOG6KH+WOcI/s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=PEbVvCDak8dCpI2HnTFwocIiYZvOr0ebCOGSVDXq9U8=;
        b=LpsXolTzVJNSu9Eyl/HKzjDoR3kSnxoDLF+bCfYIenlGqqa4ZQUUK1Uhk4LEmcF4jT
         raHrJ0M1ukX9zGsa9Bh9OJDbFxHgGH7TrtFuaZDZBmMrRJYqcpgLc2s0L1OW2yYJp21u
         LmXk4t7jfaJYAZdNVEkbENBt18jMxc8Y0iu47hC6MVXyVZzgQwoZvmSpj058PD3b9j8R
         CK4jOoicGTpwll5zjFBMFLEY0pHQeRhbeix32QKzY+ihdc2d/CnZY2GdL9K8mhmAzObW
         V1u66B78DJpSbqtaNzQibZ2DYeLf56pWJmlq+SVgGDskZs21UFVgvbENQGS/9EBlG/A1
         C9Jg==
X-Gm-Message-State: APjAAAUVMsj1OYZxa7dDHWE1rlqKX8xTigvFtslavHqI/NsKVild2OIu
        XFJnAvPxZCWccuwzs6v+RSDUIJ9INmU=
X-Google-Smtp-Source: APXvYqxeKcjKarf8WpC7SOBVbIuTMoZDl+AyM8KJSHyTbJ15hk1FROhg2a9ECGzoKsHIXJxvHdpNjA==
X-Received: by 2002:a17:902:b703:: with SMTP id d3mr14041484pls.93.1556927303213;
        Fri, 03 May 2019 16:48:23 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:1:24fa:e766:52c9:e3b2])
        by smtp.gmail.com with ESMTPSA id p6sm4231875pfd.122.2019.05.03.16.48.22
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 May 2019 16:48:22 -0700 (PDT)
From:   Douglas Anderson <dianders@chromium.org>
To:     Heiko Stuebner <heiko@sntech.de>
Cc:     linux-rockchip@lists.infradead.org, briannorris@chromium.org,
        mka@chromium.org, amstan@chromium.org,
        Douglas Anderson <dianders@chromium.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: dts: rockchip: Remove bogus 'i2s_clk_out' from rk3288-veyron-mickey
Date:   Fri,  3 May 2019 16:48:14 -0700
Message-Id: <20190503234814.230901-1-dianders@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The rk3288-veyron-mickey device tree overrides the default "i2s" clock
settings to add the clock for "i2s_clk_out".

That clock is only present in the bindings downstream Chrome OS 3.14
tree.  Upstream the i2s port bindings doesn't specify that as a
possible clock.

Let's remove it.

NOTE: for other rk3288-veyron devices this clock is consumed by
'maxim,max98090'.  Presumably if this clock is needed for mickey it'll
need to be consumed by something similar.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 arch/arm/boot/dts/rk3288-veyron-mickey.dts | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/boot/dts/rk3288-veyron-mickey.dts b/arch/arm/boot/dts/rk3288-veyron-mickey.dts
index e852594417b5..f9c4ece3c0d3 100644
--- a/arch/arm/boot/dts/rk3288-veyron-mickey.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-mickey.dts
@@ -142,8 +142,6 @@
 
 &i2s {
 	status = "okay";
-	clock-names = "i2s_hclk", "i2s_clk", "i2s_clk_out";
-	clocks = <&cru HCLK_I2S0>, <&cru SCLK_I2S0>, <&cru SCLK_I2S0_OUT>;
 };
 
 &rk808 {
-- 
2.21.0.1020.gf2820cf01a-goog

