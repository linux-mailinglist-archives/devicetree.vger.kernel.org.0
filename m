Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CDE5736BEA1
	for <lists+devicetree@lfdr.de>; Tue, 27 Apr 2021 06:50:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234826AbhD0Eum (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Apr 2021 00:50:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39520 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234768AbhD0Eul (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Apr 2021 00:50:41 -0400
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com [IPv6:2607:f8b0:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B605C061756
        for <devicetree@vger.kernel.org>; Mon, 26 Apr 2021 21:49:58 -0700 (PDT)
Received: by mail-pl1-x632.google.com with SMTP id o16so16573759plg.5
        for <devicetree@vger.kernel.org>; Mon, 26 Apr 2021 21:49:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=gt4pb5bT5mW/MToENIuo4Jt8VqUlSnyGRgKvmw6yKp0=;
        b=c+K89QY/gVhAeVZ0+WRtE2V6947IE8xTms8pbQvd+uhFOHJ2x/QLZl0aO54BBy9N6x
         PKAshJvy/RwX8BXEYR/ej2DI9gs6jXQHgNoUnvesfJ/1BNnYbIKLNyWO1Sy/lViJxzBo
         TkXU0r6xkpSpA841HlW63vUTSlXIbr7Kf5iLE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=gt4pb5bT5mW/MToENIuo4Jt8VqUlSnyGRgKvmw6yKp0=;
        b=LhNAkno+BtASv7pF3wlU6y97fZXW2+sAiZyBp2+OQemkEY9GcgI9D+ZP9eLaCUczIr
         t4eUfoAcPOMGyLD2WDawDCfcZlU9mbwYBnZbEkmehbc5T3hwGz8N/t5iR0pllL9CyE6v
         IjnPOCuTK5TFnNf9iCt8R/bRTf6Js/mtS8Qp3adMnnoabU+Qxp3KcJnPPaavuyynyjeg
         fYWzUg7hoaGQlCpI4x1eiZhLdgrAD72ai46t3y5P+aNHXbramXDX8+1/BvYq6nlqYGTU
         S27T/NXTvXh3GJ0KHBoavQcw/lm6FXCn3Yp+lsobaPWA/oBWhLeb8X/qRy80LwsQHODK
         gLsw==
X-Gm-Message-State: AOAM530ciVdR0R3r939Ei1yCPI5fczX5lbLt5br1tfe3vRLBzVoJ9iwO
        qwWTKaummIMAyCUFyqmUkA/3PA==
X-Google-Smtp-Source: ABdhPJy1BUt6+R21LCxa4D+U5Ie0p/vfRjiqUmnUX6m/JmeuU/QU2wgLbY7MTc98UD0cppxqB/jq0A==
X-Received: by 2002:a17:90a:b78f:: with SMTP id m15mr15823564pjr.131.1619498998028;
        Mon, 26 Apr 2021 21:49:58 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:3984:c4f5:8612:6b3e])
        by smtp.gmail.com with ESMTPSA id c125sm1151517pfa.74.2021.04.26.21.49.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Apr 2021 21:49:57 -0700 (PDT)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     dri-devel@lists.freedesktop.org
Cc:     Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Sean Paul <sean@poorly.run>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, linux-kernel@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Subject: [PATCH v3 3/3] arm64: dts: mt8183: Add panel rotation
Date:   Tue, 27 Apr 2021 12:49:48 +0800
Message-Id: <20210427044948.12596-3-hsinyi@chromium.org>
X-Mailer: git-send-email 2.31.1.498.g6c1eba8ee3d-goog
In-Reply-To: <20210427044948.12596-1-hsinyi@chromium.org>
References: <20210427044948.12596-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

krane, kakadu, and kodama boards have a default panel rotation.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
index ff56bcfa3370..793cc9501337 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
@@ -263,6 +263,7 @@ panel: panel@0 {
 		avee-supply = <&ppvarp_lcd>;
 		pp1800-supply = <&pp1800_lcd>;
 		backlight = <&backlight_lcd0>;
+		rotation = <270>;
 		port {
 			panel_in: endpoint {
 				remote-endpoint = <&dsi_out>;
-- 
2.31.1.498.g6c1eba8ee3d-goog

