Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E96D44AD3C9
	for <lists+devicetree@lfdr.de>; Tue,  8 Feb 2022 09:43:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351354AbiBHInG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Feb 2022 03:43:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39520 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351176AbiBHIms (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Feb 2022 03:42:48 -0500
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com [IPv6:2607:f8b0:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 04E7FC03FEC6
        for <devicetree@vger.kernel.org>; Tue,  8 Feb 2022 00:42:47 -0800 (PST)
Received: by mail-pf1-x42f.google.com with SMTP id x65so3178887pfx.12
        for <devicetree@vger.kernel.org>; Tue, 08 Feb 2022 00:42:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=RKltf19DtHiRc15a3iaZ/NnDb+6ppKujiVxWZQto3YU=;
        b=O2UDOpBeBJRbX3+DaQG7mIxxaEO05L1HTD48WquGaDuYWsSttm9JTTNF7a+lc8KdMj
         tJRuDchff9o48V7UXFNQVgoxZ/rNJPLVl8KQxtPWFS7zVK0sOis64KFrKb3J8stVpjkN
         Pk7y7Sj69FXDSqgG4hJ/qiPJrJRpnz6L6YEME=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=RKltf19DtHiRc15a3iaZ/NnDb+6ppKujiVxWZQto3YU=;
        b=MmafUJFOI9QeWamnDUFmSnUg7XS0phX8qFHNXIe1v0Y/9R5agJbzg3IMGxPcX5pmy+
         zjRQpFRUJ0S/MsC5Fmq+kjjE8RHiTOQ0Ie0FI6D32yLZtvMKdAp5HswwQW3WregRXA6j
         z8XGTWor+nZ3WU7XcRJRy5TxV+q0Vh4C4oVFG4bGPxzysWn9qUjuNibn1EG6ESyNqvgo
         l/MM1+avYj4Eu1tu8tqWAY09y9sTzofHkR31lyg5Z11Qo5JvYamR5SdTETLd3sYqJymW
         POYdY981gse7NSjYCHZuA2kozKJcoBXYbnEUlPRiGjTpFva0OfbigQC1L6nJVPmx+XJ9
         q1HQ==
X-Gm-Message-State: AOAM5326fuqMVw1Ap/JiXz4Advs8tIPAMtVW2D0HcXowSMGE183O/dUV
        8zumAcS68Zr7zSA0T4jfbxAbN8/tV8k9zw==
X-Google-Smtp-Source: ABdhPJxJuhyNGgn/8M1tkfbfnImy5ANlW87FCMT9C5ygmikEd8cwYFifi2WHJ+zYaY+iMKeTEIBo9Q==
X-Received: by 2002:a63:2ad6:: with SMTP id q205mr2651010pgq.46.1644309766435;
        Tue, 08 Feb 2022 00:42:46 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:7d9a:166e:9d34:ff4f])
        by smtp.gmail.com with ESMTPSA id m14sm15362390pfc.170.2022.02.08.00.42.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Feb 2022 00:42:46 -0800 (PST)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     dri-devel@lists.freedesktop.org, David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, amd-gfx@lists.freedesktop.org,
        intel-gfx@lists.freedesktop.org
Cc:     Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Sean Paul <sean@poorly.run>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Simon Ser <contact@emersion.fr>,
        Harry Wentland <harry.wentland@amd.com>,
        Alex Deucher <alexander.deucher@amd.com>,
        Jani Nikula <jani.nikula@linux.intel.com>
Subject: [PATCH v8 3/3] arm64: dts: mt8183: Add panel rotation
Date:   Tue,  8 Feb 2022 16:42:34 +0800
Message-Id: <20220208084234.1684930-3-hsinyi@chromium.org>
X-Mailer: git-send-email 2.35.0.263.gb82422642f-goog
In-Reply-To: <20220208084234.1684930-1-hsinyi@chromium.org>
References: <20220208084234.1684930-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

krane, kakadu, and kodama boards have a default panel rotation.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
Reviewed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Tested-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
index b42d81d26d7211..d29d4378170971 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
@@ -276,6 +276,7 @@ panel: panel@0 {
 		avee-supply = <&ppvarp_lcd>;
 		pp1800-supply = <&pp1800_lcd>;
 		backlight = <&backlight_lcd0>;
+		rotation = <270>;
 		port {
 			panel_in: endpoint {
 				remote-endpoint = <&dsi_out>;
-- 
2.35.0.263.gb82422642f-goog

