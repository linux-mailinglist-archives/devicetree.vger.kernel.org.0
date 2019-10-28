Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 49171E6D20
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2019 08:22:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732915AbfJ1HVb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Oct 2019 03:21:31 -0400
Received: from mail-pg1-f195.google.com ([209.85.215.195]:36882 "EHLO
        mail-pg1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727194AbfJ1HVb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Oct 2019 03:21:31 -0400
Received: by mail-pg1-f195.google.com with SMTP id p1so6298405pgi.4
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2019 00:21:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=4rbGb1xeN7CoEMiXrmYQTMXVCXS/HU0F9W4cYEOILvE=;
        b=LLuW/hoCz0kb7qlhmY1LiUcIcgWwr7eNcpXZvUZYIIfw+1Y/hSQlFpMmHrr3w2w0Ql
         wwL6EKwOH3u9eYdO3vXO3rqqHyfTy8JUURWOa4FF78ZBdrZl952TfClRmjTZLhgmFIBu
         Qn6O3CVnphnd2Pyti/yjGyPJI9oJih7MC5738=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=4rbGb1xeN7CoEMiXrmYQTMXVCXS/HU0F9W4cYEOILvE=;
        b=eUJ5yOJoUHkO7pilz8fWQBt/983ycbkwTI8Hkxe4GQoHXoKCAzKPjXJH7vNtF4mWYb
         znzca+dsoYsCag7SGLllWg7DsIaEgISwzfeGFcBJWATF3Er7Sg0JuONp6geDV0cfmdih
         LsF9Az/XODulyMCbbwj1/I/UM9ocSJmfaJDnHsLvEzjyVEQY7lwvk6UH6Aa9yuyn7xNn
         wO8egRcQiCwuI9RbqdOP0bonCFMA08kQjBU2/9OVr/PYzKUARbsaU7CnFtyNgpEv/Uz2
         IbbLKpM+dUjnG5ju1qJXXtBDIUF+PLfjMUai6l92hNrw+H9/EmfJ5e6Dt0B9GvAgVt1K
         YniA==
X-Gm-Message-State: APjAAAWThbNG5h3JW7To+ntAg9kRTOGNb726tXmoD+Rkjd0jemKypwRq
        3s3vCmEXAJZs8CwayISThGg33g==
X-Google-Smtp-Source: APXvYqx/hdNJw8hOBpqJnyg7o7+cJPqViehbs5Haz5us8Y755g6iC5ZO8EJknw7fLaGsymzzXl+PJA==
X-Received: by 2002:a63:2c45:: with SMTP id s66mr1198158pgs.248.1572247290245;
        Mon, 28 Oct 2019 00:21:30 -0700 (PDT)
Received: from localhost ([2401:fa00:1:10:79b4:bd83:e4a5:a720])
        by smtp.gmail.com with ESMTPSA id w6sm9811583pfw.84.2019.10.28.00.21.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Oct 2019 00:21:29 -0700 (PDT)
From:   Cheng-Yi Chiang <cychiang@chromium.org>
To:     linux-kernel@vger.kernel.org
Cc:     Neil Armstrong <narmstrong@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Jonas Karlman <jonas@kwiboo.se>,
        Hans Verkuil <hverkuil@xs4all.nl>,
        Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Takashi Iwai <tiwai@suse.com>,
        Jaroslav Kysela <perex@perex.cz>,
        Russell King <rmk+kernel@armlinux.org.uk>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Heiko Stuebner <heiko@sntech.de>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>, dianders@chromium.org,
        dgreid@chromium.org, tzungbi@chromium.org,
        alsa-devel@alsa-project.org, dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Cheng-Yi Chiang <cychiang@chromium.org>
Subject: [PATCH v9 6/6] ARM: dts: rockchip: Add HDMI audio support to rk3288-veyron-mickey.dts
Date:   Mon, 28 Oct 2019 15:19:30 +0800
Message-Id: <20191028071930.145899-7-cychiang@chromium.org>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
In-Reply-To: <20191028071930.145899-1-cychiang@chromium.org>
References: <20191028071930.145899-1-cychiang@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add HDMI audio support to veyron-mickey. The sound card should expose
one audio device for HDMI.

Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
---
 arch/arm/boot/dts/rk3288-veyron-mickey.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/boot/dts/rk3288-veyron-mickey.dts b/arch/arm/boot/dts/rk3288-veyron-mickey.dts
index aa352d40c991..cf53cb4594c4 100644
--- a/arch/arm/boot/dts/rk3288-veyron-mickey.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-mickey.dts
@@ -28,6 +28,13 @@
 		regulator-boot-on;
 		vin-supply = <&vcc33_sys>;
 	};
+
+	sound {
+		compatible = "rockchip,rockchip-audio-max98090";
+		rockchip,model = "VEYRON-HDMI";
+		rockchip,i2s-controller = <&i2s>;
+		rockchip,hdmi-codec = <&hdmi>;
+	};
 };
 
 &cpu_thermal {
-- 
2.24.0.rc0.303.g954a862665-goog

