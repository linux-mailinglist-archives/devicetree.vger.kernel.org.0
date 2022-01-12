Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 239E948CD8D
	for <lists+devicetree@lfdr.de>; Wed, 12 Jan 2022 22:17:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232462AbiALVRE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jan 2022 16:17:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57752 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231217AbiALVQ6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jan 2022 16:16:58 -0500
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com [IPv6:2607:f8b0:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D6E1C061751
        for <devicetree@vger.kernel.org>; Wed, 12 Jan 2022 13:16:58 -0800 (PST)
Received: by mail-pl1-x62a.google.com with SMTP id u11so971396plh.13
        for <devicetree@vger.kernel.org>; Wed, 12 Jan 2022 13:16:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=boundarydevices.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=zgxD7kZzL7b24qfqWANZprBwy/1xz32dY5nSJ1Y+mnM=;
        b=LoZvhsYPqLB7U/0kRvIfraJSktSWw60cF3UyRYJm0oOks02RiP1kSnBRFebdQB6nV+
         x88KAxwQGU+4HMdYwBcBFraVtL9auGlav5RC1ebYM7TECrHBBeS1lGnqAKDNUmYVw3mE
         H8Y4AGqH+jcm3Yjr7lHqimRCW6kc9sWQhunxc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=zgxD7kZzL7b24qfqWANZprBwy/1xz32dY5nSJ1Y+mnM=;
        b=nzOsnYw3Ij2O6PYlOEsfrdRw3TZmWOF8Wl5wloFPUeyz/pEX97LiOiSvTtNcHSeqU0
         IoJb64TpMhiW1xgAin2EpIk+wAz/xsjtjyK9u9SEeFFpBd8w3eiABD2jTGNkbPIzpeOz
         KMz480KDVZk72OvpYG7Ih+Ouiy0XuGFNpqrJgmyOPPGywTf5WffaV6whDTFM0tUB6sQk
         DAtFnrhWJM9+9UmOBIG2jWy7mKmuPjU/ygi+mpE0zFmiv/XsZcJ9dyupD8DqUtM9xKeW
         kqFSSbszgsfowEACL3BGS05npbWUBDQPEfQOmXNlEQlawGA+v2YX9edlZoq970nJqVmF
         vsGQ==
X-Gm-Message-State: AOAM532tK8dzdb6Iz+PQ2c4rQpNWfudgDKdi/6VddbZ2ummOSzxmI8Dk
        YElD0aFxUI/AkX3d4ULc+aMyhA==
X-Google-Smtp-Source: ABdhPJz8ajGHuukTahaTnyx/SiHDR6PQ/asbdfTpJaZd5ZZo8iGS77v5cne7LTcgmRkOLz4lT2lYTw==
X-Received: by 2002:a17:90a:e7c8:: with SMTP id kb8mr1650228pjb.35.1642022217759;
        Wed, 12 Jan 2022 13:16:57 -0800 (PST)
Received: from localhost.localdomain (2a01cb000f5a8200e371e4a5048c8b22.ipv6.abo.wanadoo.fr. [2a01:cb00:f5a:8200:e371:e4a5:48c:8b22])
        by smtp.gmail.com with ESMTPSA id h15sm507192pfc.89.2022.01.12.13.16.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jan 2022 13:16:57 -0800 (PST)
From:   Gary Bisson <gary.bisson@boundarydevices.com>
To:     linux-amlogic@lists.infradead.org
Cc:     Gary Bisson <gary.bisson@boundarydevices.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/3] arm64: dts: meson-g12-common: add more pwm_f options
Date:   Wed, 12 Jan 2022 22:16:41 +0100
Message-Id: <20220112211642.2248901-3-gary.bisson@boundarydevices.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220112211642.2248901-1-gary.bisson@boundarydevices.com>
References: <20220103154616.308376-1-gary.bisson@boundarydevices.com>
 <20220112211642.2248901-1-gary.bisson@boundarydevices.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add missing PWM_F pin muxing for GPIOA_11 and GPIOZ_12.

Signed-off-by: Gary Bisson <gary.bisson@boundarydevices.com>
Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
---
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Neil Armstrong <narmstrong@baylibre.com>
Cc: Kevin Hilman <khilman@baylibre.com>
Cc: Jerome Brunet <jbrunet@baylibre.com>
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 .../arm64/boot/dts/amlogic/meson-g12-common.dtsi | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
index 00c6f53290d4..af1357c48bee 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
@@ -894,6 +894,22 @@ mux {
 						};
 					};
 
+					pwm_f_z_pins: pwm-f-z {
+						mux {
+							groups = "pwm_f_z";
+							function = "pwm_f";
+							bias-disable;
+						};
+					};
+
+					pwm_f_a_pins: pwm-f-a {
+						mux {
+							groups = "pwm_f_a";
+							function = "pwm_f";
+							bias-disable;
+						};
+					};
+
 					pwm_f_x_pins: pwm-f-x {
 						mux {
 							groups = "pwm_f_x";
-- 
2.34.1

