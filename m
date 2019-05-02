Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 126E3124C2
	for <lists+devicetree@lfdr.de>; Fri,  3 May 2019 00:54:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726114AbfEBWyZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 May 2019 18:54:25 -0400
Received: from mail-pf1-f193.google.com ([209.85.210.193]:39342 "EHLO
        mail-pf1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726053AbfEBWyY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 May 2019 18:54:24 -0400
Received: by mail-pf1-f193.google.com with SMTP id z26so1854411pfg.6
        for <devicetree@vger.kernel.org>; Thu, 02 May 2019 15:54:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=U2bbAFLYHg7BbnCqa8Z/3P6ZnGKzIwrgxFqmU0u6MtQ=;
        b=nvDXTTBkx6gM2GY6hocJXtXsnawL+o/xemGlJje4+eusDN2A0o97J9U5hlrR6RCeYY
         IaJiOv66CzjRFRG/86f/hhXlcSZ+ENN1Ls1spzYSyWL9Pe4VRgvlST5J0rYjN+wmNlBC
         i7F+im4W83ea6FPef3xVPExFEFv7Pdt/bcRcQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=U2bbAFLYHg7BbnCqa8Z/3P6ZnGKzIwrgxFqmU0u6MtQ=;
        b=ahnmwWynfPv3QH4UKAGmBzTWwsyBoomxsosw/QX/HP1ZQ50jYsBCFL110XUvZfGm2K
         +HJmJKgAYqjsWpCQ+nP5IBLduA54ITAXVgmzkkNp9l3ShjawhO1/M6QLzo2W11YD//EY
         Oz3TEgJLpy1+hm7zjjsXwtET3Gst4DxCrdMIu3Tj00dXLDQfOFXxPqmpRWhI5aIuIp+T
         LdsEzJkrxl0RhbGRHbZPeJOAvZKw7UQKTU9FXR6KdNPjrMLyHlfJfaC/uiIWyVSsrajG
         Lnl8na41lhuyn0mQQt627EjmC7dHVHv0F53WBxyWGJqH9kEw4LjhZvwgvpb58VyUMDi5
         4tQw==
X-Gm-Message-State: APjAAAV43HWsbuLSCFWHXVR8CAZ8oddGXOdjsmxwSNZbi41u4tiSAMGI
        F4x916a+jYx6GmV8eEAYT5hy2g==
X-Google-Smtp-Source: APXvYqwTNwDX8rXg0Agwu8rSnUQ7+u0qFbATbHXFLNSH3EgUqxCM+Vs9APjZJjt0fwjZRPzV6nerSA==
X-Received: by 2002:a65:6688:: with SMTP id b8mr6519822pgw.81.1556837664123;
        Thu, 02 May 2019 15:54:24 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:1:24fa:e766:52c9:e3b2])
        by smtp.gmail.com with ESMTPSA id v15sm264736pff.105.2019.05.02.15.54.22
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 May 2019 15:54:23 -0700 (PDT)
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
        dri-devel@lists.freedesktop.org, David Airlie <airlied@linux.ie>,
        linux-arm-kernel@lists.infradead.org,
        Daniel Vetter <daniel@ffwll.ch>
Subject: [PATCH 1/5] dt-bindings: drm/bridge/synopsys: dw-hdmi: Add "unwedge" for ddc bus
Date:   Thu,  2 May 2019 15:53:32 -0700
Message-Id: <20190502225336.206885-1-dianders@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

In certain situations it was seen that we could wedge up the DDC bus
on the HDMI adapter on rk3288.  The only way to unwedge was to mux one
of the pins over to GPIO output-driven-low temporarily and then
quickly mux back.  Full details can be found in the patch
("drm/bridge/synopsys: dw-hdmi: Add "unwedge" for ddc bus").

Since unwedge requires remuxing the pins, we first need to add to the
bindings so that we can specify what state the pins should be in for
unwedging.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 .../bindings/display/rockchip/dw_hdmi-rockchip.txt         | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/rockchip/dw_hdmi-rockchip.txt b/Documentation/devicetree/bindings/display/rockchip/dw_hdmi-rockchip.txt
index 39143424a474..8346bac81f1c 100644
--- a/Documentation/devicetree/bindings/display/rockchip/dw_hdmi-rockchip.txt
+++ b/Documentation/devicetree/bindings/display/rockchip/dw_hdmi-rockchip.txt
@@ -38,6 +38,13 @@ Optional properties
 - phys: from general PHY binding: the phandle for the PHY device.
 - phy-names: Should be "hdmi" if phys references an external phy.
 
+Optional pinctrl entry:
+- If you have both a "unwedge" and "default" pinctrl entry, dw_hdmi
+  will switch to the unwedge pinctrl state for 10ms if it ever gets an
+  i2c timeout.  It's intended that this unwedge pinctrl entry will
+  cause the SDA line to be driven low to work around a hardware
+  errata.
+
 Example:
 
 hdmi: hdmi@ff980000 {
-- 
2.21.0.1020.gf2820cf01a-goog

