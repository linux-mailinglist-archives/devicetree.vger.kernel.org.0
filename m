Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9A6885376B1
	for <lists+devicetree@lfdr.de>; Mon, 30 May 2022 10:50:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233593AbiE3ITo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 May 2022 04:19:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37306 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233568AbiE3ITl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 May 2022 04:19:41 -0400
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com [IPv6:2607:f8b0:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC3E376285
        for <devicetree@vger.kernel.org>; Mon, 30 May 2022 01:19:38 -0700 (PDT)
Received: by mail-pg1-x529.google.com with SMTP id a63so3339962pge.12
        for <devicetree@vger.kernel.org>; Mon, 30 May 2022 01:19:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=0FDANzoD+ved+kLqkfGfvHR/pdrWdYCkcffUnS1gfwU=;
        b=EGj3J9IVTCdQAdPBammRVILB8q1w15Xcl7B4hV147t6lruwgmdowastMDeg50FrM4A
         Ds9V3H86IryQlC6KV4iX5TGgLG04/0gOrc6j1Y31gCWhI534zZoCg93dEK211ACoOi5q
         2fxY2lyR/VS+yq2eiIqTUPtlHMbj067JlnVoA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0FDANzoD+ved+kLqkfGfvHR/pdrWdYCkcffUnS1gfwU=;
        b=tu3cA2LBW+aP5IJhtYdjTSkKZgbvLtZhZLcYR439IARdZ+LLe4ZAzm7uVhAnUKYJQA
         wB3WjpVBXviaF82COvYeIseBF9YbjTzo1TFGIBOTRmdR9fJoy3RjiCeQ685Zun30pinu
         QZMjzu88PhQNehr/iffcHnwzf7NVlOkW09lIIIjjKvzkjorsj4lKHwU6LO7QoFi68IM1
         hxSPushT0Ou1e/hj9okuA1DOqPA4AEQFruBYWsuV9tIKU4kEyfxYJlad/KCOCpuMtaH5
         RTIgK3HoanQFadccqU6dDDvyZW5ZOYlAhF2X7taCRqTL+kmfMTmeFHcUPEDLB4IVjZru
         Wo3Q==
X-Gm-Message-State: AOAM531QimWUlxI61DbsHibOyJQNmXMSaAhgZLoTwGplE2BVdu2as2VP
        Q6Gz3nta44LsJcwRmNdJmbgd6g==
X-Google-Smtp-Source: ABdhPJxC6hh+IA2nmnrMvgr7EIZHEawv5NbrZ/B9hfbxzJ5J4ENWWvjvBaWIFpEhTfiwlYPQDqCDTQ==
X-Received: by 2002:a65:4183:0:b0:3fc:1370:9c37 with SMTP id a3-20020a654183000000b003fc13709c37mr4005861pgq.4.1653898777736;
        Mon, 30 May 2022 01:19:37 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:ae1c:3d63:abec:1097])
        by smtp.gmail.com with ESMTPSA id m1-20020a170902f64100b001618b70dcc9sm8537900plg.101.2022.05.30.01.19.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 May 2022 01:19:37 -0700 (PDT)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     dri-devel@lists.freedesktop.org, David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, amd-gfx@lists.freedesktop.org,
        intel-gfx@lists.freedesktop.org
Cc:     Rob Clark <robdclark@chromium.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
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
        Jani Nikula <jani.nikula@linux.intel.com>,
        Emil Velikov <emil.l.velikov@gmail.com>,
        Hans de Goede <hdegoede@redhat.com>
Subject: [PATCH v10 4/4] arm64: dts: mt8183: Add panel rotation
Date:   Mon, 30 May 2022 16:19:10 +0800
Message-Id: <20220530081910.3947168-5-hsinyi@chromium.org>
X-Mailer: git-send-email 2.36.1.124.g0e6072fb45-goog
In-Reply-To: <20220530081910.3947168-1-hsinyi@chromium.org>
References: <20220530081910.3947168-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
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
index 8d5bf73a9099..f0dd5a06629d 100644
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
2.36.1.124.g0e6072fb45-goog

