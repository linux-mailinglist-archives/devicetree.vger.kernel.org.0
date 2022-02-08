Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 049054AD256
	for <lists+devicetree@lfdr.de>; Tue,  8 Feb 2022 08:37:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348353AbiBHHhg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Feb 2022 02:37:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33776 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348473AbiBHHhe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Feb 2022 02:37:34 -0500
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com [IPv6:2607:f8b0:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7241FC03FEC8
        for <devicetree@vger.kernel.org>; Mon,  7 Feb 2022 23:37:27 -0800 (PST)
Received: by mail-pf1-x431.google.com with SMTP id d187so17430141pfa.10
        for <devicetree@vger.kernel.org>; Mon, 07 Feb 2022 23:37:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=RKltf19DtHiRc15a3iaZ/NnDb+6ppKujiVxWZQto3YU=;
        b=UQRrh4b2cYpExbUb5sYjfYPmvD9zbPX49JL8Al9S0glKbqkZ0dmzb/DWvs20vFsU4I
         O/YgtlkeyONvN4ODXkKbAwbVKcjSXwNHy1KNIzNLS8S85I1c3k2dDioajk+vyYjTK0vr
         kVR0Zgv0Jb0jFEIXVFA9s6SyAAU+51lA2FXMg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=RKltf19DtHiRc15a3iaZ/NnDb+6ppKujiVxWZQto3YU=;
        b=wVyCD9PF1rov/oA0/5Ewm+w37ncykhrn1Ie9RTaOOwQi3OQMgfB878OO3TxDKFj8/P
         bNkop2YBCAgNS47gi8ZnxzwH9Gdr9M0qoEkgQDz/2XF8kVDR+cvikSy1jUduFCiZrKbc
         nuH3NqcZyOibVDH3+kkBDB4iRoyEZrNygHxH5/eMzG1/ejefS5hvjptUhR5/RJ0xTlS7
         tBbq+kRqGnAgOmxMy2HD5sL4w9WVeVvhhuhi1vSGonEEJKYvg1Il4Wzr1K8fG7Np51oz
         CI+3dmcXvNyBj6w1adFkWUWaAzMKeQgJiV3qS8BLaSMya5I4773EL8LNb8QKxcBtCLF6
         v2fg==
X-Gm-Message-State: AOAM5308wJw+b1eFHIi1C82otOKRMGFObXV6as4DzYpAcmgIYLlMHapv
        st7xwGKPQiidePgLPhk7odJAtA==
X-Google-Smtp-Source: ABdhPJx2727H/bIFB7AiNJuAQfngpGnHTMQX3kn1wApGZnVIxbe2t19Z6gDkwdss+b2K2QYmV7K1CQ==
X-Received: by 2002:a63:8a44:: with SMTP id y65mr2554451pgd.590.1644305846835;
        Mon, 07 Feb 2022 23:37:26 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:7d9a:166e:9d34:ff4f])
        by smtp.gmail.com with ESMTPSA id ip5sm1677243pjb.13.2022.02.07.23.37.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Feb 2022 23:37:26 -0800 (PST)
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
Subject: [PATCH v7 3/3] arm64: dts: mt8183: Add panel rotation
Date:   Tue,  8 Feb 2022 15:37:14 +0800
Message-Id: <20220208073714.1540390-3-hsinyi@chromium.org>
X-Mailer: git-send-email 2.35.0.263.gb82422642f-goog
In-Reply-To: <20220208073714.1540390-1-hsinyi@chromium.org>
References: <20220208073714.1540390-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
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

