Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 305D448F0D3
	for <lists+devicetree@lfdr.de>; Fri, 14 Jan 2022 21:17:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244226AbiANURO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Jan 2022 15:17:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45592 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244224AbiANURN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Jan 2022 15:17:13 -0500
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E0AE5C061574
        for <devicetree@vger.kernel.org>; Fri, 14 Jan 2022 12:17:12 -0800 (PST)
Received: by mail-pj1-x102b.google.com with SMTP id o3so14390852pjs.1
        for <devicetree@vger.kernel.org>; Fri, 14 Jan 2022 12:17:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=NHI4YdJkg3blWqPelJAYTO4ml6hVxIePrSWCG1B/xFA=;
        b=EEigY38b1fTu+aiEP3SmQ0r0AcAMPN99i8wrAOaTvKy4ytD/0GOOBLLlpl+WXnajij
         X3Nu9yfWhzPIYpKmaOpgO0vwkP1Y7RDErmL2kBD1EAZt9n3wXWYMtNw602JoVR5bLHN4
         vUF+EV32uGddQTHPmX5WBu3o20sB8//KqZoXE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=NHI4YdJkg3blWqPelJAYTO4ml6hVxIePrSWCG1B/xFA=;
        b=iixohZpXGB7iBVtZEHcxgKBeVPKTs3duNwC3EKmA9cGlTUY1i8CMvxrj0V0KxfpBXj
         yfp44QwDw264WtVcjDo0SfVPn5g//TCqg1NChZxCRlQl3x3/LXV7Z6FxAf+W3fxOCrxb
         Wkw05gQi+RlCqH+BCr8iMkhgYsDNXGIQam1M61viJEhnGhVS7SZo0sNLqvMAHSYbxHDI
         A4ypVVoLCJpvViTK9V5vUjfvl525HvdZeO0e9IyBnhAjXMRbZX1inflOHjPYhurVaDa9
         ESM58kTlJJaGmmw4zbZPKy0WUAJMRiK37cv7nD9+dFNEr/Vxk3MA0ObASNQo/ZfKKYvG
         3ECA==
X-Gm-Message-State: AOAM530Eg0+KO4mFh/HspepKzmwmOjP20t6UzcPXIkoDBPP/gHqm711B
        qmHsRAWBWZOe/yDFcp88dTRsQw==
X-Google-Smtp-Source: ABdhPJyANqLFSMw/ah46py8E9k5uIE2DiLUf4ryo5wQMT8muBxJU4jdXvlE8Hx0LhnJYKQTgOC1SiQ==
X-Received: by 2002:a17:90b:4a92:: with SMTP id lp18mr12273149pjb.123.1642191432492;
        Fri, 14 Jan 2022 12:17:12 -0800 (PST)
Received: from localhost ([2620:15c:202:201:76ab:ede1:503d:1c39])
        by smtp.gmail.com with UTF8SMTPSA id l13sm5300187pgq.34.2022.01.14.12.17.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Jan 2022 12:17:12 -0800 (PST)
From:   Brian Norris <briannorris@chromium.org>
To:     Heiko Stuebner <heiko@sntech.de>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>
Cc:     alsa-devel@alsa-project.org, linux-arm-kernel@lists.infradead.org,
        dri-devel@lists.freedesktop.org, Sandy Huang <hjc@rock-chips.com>,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
        Lin Huang <hl@rock-chips.com>,
        Brian Norris <briannorris@chromium.org>
Subject: [PATCH 1/3] arm64: dts: rockchip: Switch RK3399-Gru DP to SPDIF output
Date:   Fri, 14 Jan 2022 12:16:50 -0800
Message-Id: <20220114121515.1.I46f64b00508d9dff34abe1c3e8d2defdab4ea1e5@changeid>
X-Mailer: git-send-email 2.34.1.703.g22d0c6ccf7-goog
In-Reply-To: <20220114201652.3875838-1-briannorris@chromium.org>
References: <20220114201652.3875838-1-briannorris@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Commit b18c6c3c7768 ("ASoC: rockchip: cdn-dp sound output use spdif")
switched the platform to SPDIF, but we didn't fix up the device tree.

Fixes: b18c6c3c7768 ("ASoC: rockchip: cdn-dp sound output use spdif")
Signed-off-by: Brian Norris <briannorris@chromium.org>
---

 arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
index 45a5ae5d2027..21ec073f4d51 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
@@ -286,7 +286,7 @@ max98357a: max98357a {
 
 	sound: sound {
 		compatible = "rockchip,rk3399-gru-sound";
-		rockchip,cpu = <&i2s0 &i2s2>;
+		rockchip,cpu = <&i2s0 &spdif>;
 	};
 };
 
@@ -437,10 +437,6 @@ &i2s0 {
 	status = "okay";
 };
 
-&i2s2 {
-	status = "okay";
-};
-
 &io_domains {
 	status = "okay";
 
@@ -537,6 +533,10 @@ &sdmmc {
 	vqmmc-supply = <&ppvar_sd_card_io>;
 };
 
+&spdif {
+	status = "okay";
+};
+
 &spi1 {
 	status = "okay";
 
-- 
2.34.1.703.g22d0c6ccf7-goog

