Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 97EB736E43D
	for <lists+devicetree@lfdr.de>; Thu, 29 Apr 2021 06:28:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229929AbhD2E3d (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Apr 2021 00:29:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48862 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235465AbhD2E3a (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Apr 2021 00:29:30 -0400
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com [IPv6:2607:f8b0:4864:20::102f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 11467C06138C
        for <devicetree@vger.kernel.org>; Wed, 28 Apr 2021 21:28:45 -0700 (PDT)
Received: by mail-pj1-x102f.google.com with SMTP id f2-20020a17090a4a82b02900c67bf8dc69so10212728pjh.1
        for <devicetree@vger.kernel.org>; Wed, 28 Apr 2021 21:28:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=gt4pb5bT5mW/MToENIuo4Jt8VqUlSnyGRgKvmw6yKp0=;
        b=m2YPwqx7aeh6V4lUo0oHObJCqs1T+6ImiIjbJPb/XrFOXsS88GT0/U1TDgdJ1tlgtf
         vjjBBMfm1Eh2YmwOe5/fcnlTizd+eytKYuLtVI0Gxm72V5zal5FgLmjsqqeYmBs89pTu
         fubvjuXh/iVeU7gxgntYYq/wNSGAnKMhvhb1Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=gt4pb5bT5mW/MToENIuo4Jt8VqUlSnyGRgKvmw6yKp0=;
        b=gbZ55AvC5fPaVbF8I/kshfX1CgmyVR9d8PS7G9vRTUb/ZnR0VVdHFO4BmS/da0OnXq
         r0Z10YlW1rPQXLxqAb6Q13moJSNPE5Md/MangzlZaH+tARWKHVgCeqUn+ke1tzzmBdxF
         6O3m0xXzoprd3YPqY6ga+c9BkYHTDY7tNHQ+B6v3hXcwufB7Uqx3EWhKOmgv2yJTpSzy
         MzCLEMW1VVt0Na+j7ki/JQvEtraZAvMCoCuvXWR/abZPeAJBTPM/suE0dbpKCQ2/00Zv
         yx/UDAbLHPkOrX0x+40/CsLQ0lEjuQNZu0MmoBcJ3OXaVqKPrM9hwJv8zp+J9KWD98Xn
         Snvw==
X-Gm-Message-State: AOAM533zoEqivItfjhWT5qVCEnxRTTXH1ozhNh+GZyfei1pNvt1xgIBH
        dQ70dGd1Pr26y44gA1uQizTIhw==
X-Google-Smtp-Source: ABdhPJx0CF0XSmcRjIoO/yWcAnjTe7hR6m9+xUw2Ts97CHJGvHusZESHQqWarI1X5miU9uUBrAavWQ==
X-Received: by 2002:a17:90a:dd45:: with SMTP id u5mr7845750pjv.15.1619670524616;
        Wed, 28 Apr 2021 21:28:44 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:f701:2ca2:56ba:8e83])
        by smtp.gmail.com with ESMTPSA id w124sm1069390pfb.73.2021.04.28.21.28.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Apr 2021 21:28:44 -0700 (PDT)
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
Subject: [PATCH v6 3/3] arm64: dts: mt8183: Add panel rotation
Date:   Thu, 29 Apr 2021 12:28:34 +0800
Message-Id: <20210429042834.1127456-3-hsinyi@chromium.org>
X-Mailer: git-send-email 2.31.1.498.g6c1eba8ee3d-goog
In-Reply-To: <20210429042834.1127456-1-hsinyi@chromium.org>
References: <20210429042834.1127456-1-hsinyi@chromium.org>
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

