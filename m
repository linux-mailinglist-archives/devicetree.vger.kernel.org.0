Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B5E079A80D
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2019 09:06:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2404001AbfHWHC6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Aug 2019 03:02:58 -0400
Received: from mail-wm1-f65.google.com ([209.85.128.65]:56118 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2391644AbfHWHC6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Aug 2019 03:02:58 -0400
Received: by mail-wm1-f65.google.com with SMTP id f72so7872611wmf.5
        for <devicetree@vger.kernel.org>; Fri, 23 Aug 2019 00:02:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=h+5T06TTiEzeZ5DL95/p5N6dIurOyS8YvrG0lGH33jQ=;
        b=R+kf7K0NnOHDn39pFTT0lY4UjTC2TYwryRqgh0n56w2o2f8AMGJA9iD+VndqUzyUNS
         I8La1oB2B6REb5Zm0Ls/DqRGgv7M9ar/eD3g9wEiRSUmlG3eZgqm2oNM0E3CjUMhPNpe
         Ia0RgbtmoHbEPmqgJAdWpwjPNYd40jKuTkiyr/I02e7F+uQLlc/ReJ9U9jz1N1tlwg7Y
         7aMWLprWSL/gSRZWaqye79ky7L3mAd36+yeSi3nkKGoDt3RkMNuRQ51RnS2GesO8uz+w
         KpAnlBec8g4EIpCOSpZO6AwoxVA/0p9hNkdLa+lDMMenokTwKbqx4DyDCtZZczwFv06L
         G3tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=h+5T06TTiEzeZ5DL95/p5N6dIurOyS8YvrG0lGH33jQ=;
        b=i60OlQhnveHKLQoXYNsZ5jkFCXwBLeiNSh5/kKOFMMy7a3dcFO2uxsFWwRHPbmL2z5
         bsSiyLBwJQaqPongPV+22pekihaqCo7Vj8wd4L3GKS8Mz89vTZakvdQO2XSeoF1xZqLn
         lnP0HOUEnCaFhTVuCO2JvG+LCfFbZ3iRiRvFuOfWsT3Ul7u8iuFanisDGhpHuKLdzPVD
         qXrT3OJSf5aM52+UnSDc6coc74wUyPUFchacoBQ6quDZ9zl1ZeQW7+qxNik5VVncNfta
         Wr8Mhkp38QAi1a7ul69wr+Q07/xpWz2am4Q2wuQ0NTUiCXWr9NTtmMaCC3KqrkqVMWGb
         0Jcw==
X-Gm-Message-State: APjAAAXsUezNkOLVxmy4maf1lvFgEk8pFMP5TCRJ9ynAzIn3EQykJZto
        WpkwI53fZwfmQ0nM0wkv7qRPdQ==
X-Google-Smtp-Source: APXvYqw/SoF5DYn9b1vauvyrI8ghQkPIaZ7tJrCuSiAODuGMQFFRrHp0vHNZABXeC0QAMAyzZOl/KA==
X-Received: by 2002:a1c:ed04:: with SMTP id l4mr3328349wmh.81.1566543775720;
        Fri, 23 Aug 2019 00:02:55 -0700 (PDT)
Received: from bender.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id a26sm1741833wmg.45.2019.08.23.00.02.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Aug 2019 00:02:55 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     khilman@baylibre.com
Cc:     linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Neil Armstrong <narmstrong@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: [RESEND PATCH v2 02/14] arm64: dts: meson-gx: drop the vpu dmc memory cell
Date:   Fri, 23 Aug 2019 09:02:36 +0200
Message-Id: <20190823070248.25832-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190823070248.25832-1-narmstrong@baylibre.com>
References: <20190823070248.25832-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This fixes the following DT schemas check errors:
meson-gxl-s805x-libretech-ac.dt.yaml: vpu@d0100000: reg-names: Additional items are not allowed ('dmc' was unexpected)
meson-gxl-s805x-libretech-ac.dt.yaml: vpu@d0100000: reg-names: ['vpu', 'hhi', 'dmc'] is too long

The 'dmc' register area was replaced by the amlogic,canvas property
which was introduced in commit f1726043426c73 ("arm64: dts: meson-gx:
add dmcbus and canvas nodes.") and commit cf34287986d0b6 ("arm64: dts:
meson-gx: Add canvas provider node to the vpu")

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm64/boot/dts/amlogic/meson-gx.dtsi | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
index f3ae5a3685f9..239ec08b3023 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
@@ -544,9 +544,8 @@
 		vpu: vpu@d0100000 {
 			compatible = "amlogic,meson-gx-vpu";
 			reg = <0x0 0xd0100000 0x0 0x100000>,
-			      <0x0 0xc883c000 0x0 0x1000>,
-			      <0x0 0xc8838000 0x0 0x1000>;
-			reg-names = "vpu", "hhi", "dmc";
+			      <0x0 0xc883c000 0x0 0x1000>;
+			reg-names = "vpu", "hhi";
 			interrupts = <GIC_SPI 3 IRQ_TYPE_EDGE_RISING>;
 			#address-cells = <1>;
 			#size-cells = <0>;
-- 
2.22.0

