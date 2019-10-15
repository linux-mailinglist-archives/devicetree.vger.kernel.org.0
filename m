Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C95D6D71DE
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2019 11:12:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726139AbfJOJMx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Oct 2019 05:12:53 -0400
Received: from mail-pf1-f195.google.com ([209.85.210.195]:40511 "EHLO
        mail-pf1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725911AbfJOJMx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Oct 2019 05:12:53 -0400
Received: by mail-pf1-f195.google.com with SMTP id x127so12054472pfb.7
        for <devicetree@vger.kernel.org>; Tue, 15 Oct 2019 02:12:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Rf1SPo8jSbclnL68w3kPZWDHp5EjIwxlxaCjEEaF3ww=;
        b=WufZ5SDj02M2JAFBlDcELeVF2+PmKLvtdlP75T8D3XdGvm4FgSQgKtUr+EhHduz9DX
         cte2d1NuKF2h8y/ZMwzn/HVKizccjFnrYxaUFy74vwuVPEMwHO3rvF4LgiBZkGSnksZ+
         +YJyK6E5hVygq53F5fznysuIWag2x5aPQ3kcA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Rf1SPo8jSbclnL68w3kPZWDHp5EjIwxlxaCjEEaF3ww=;
        b=CijjdTFtdp2rNOw9on/1wAMOV9NgQWAQWJRksm0Bh90ANFgT9Lq6RAapPavpIKyyMu
         YmnEL/TGeq2rRfzrimxat9aoJ+tkGgm6VB+cthSFSojUkFlPTH2OiQ4RBftp46lB07Z4
         n+p0gHmkQsxVdzRfkZGKi2VDYrtIRURRYtBUgCelKmt6rHLY7MDZe6IBpzSfZicRxN+g
         OElY36vRbbhVe5Ww9fl2+qSfyaDwGuKXp6pTIRCNtZSWquVXgFU1aAsl2BF2ub1zFYZa
         tH4coPl9XeES88VYZUi4iiMYp9aOlbfawnrNL+Tb6sa4EUmF8WcBljsSuZAZBoI7PRPH
         gETg==
X-Gm-Message-State: APjAAAUmIKgKO0YwmVleuTrt80grfeubmKoHs2wfq3GOQ3EQyUvv22Al
        71KAOT5ejgn33Hx04Mi4bH0UTw==
X-Google-Smtp-Source: APXvYqxffEHyfX+IF2fUlaWSiq/XhGbB5uF69E3BwSP/NRWHM1cb1V9qggTUOmYq6dhb4mG8juFE9Q==
X-Received: by 2002:a63:1c06:: with SMTP id c6mr38053409pgc.417.1571130772225;
        Tue, 15 Oct 2019 02:12:52 -0700 (PDT)
Received: from pihsun-z840.tpe.corp.google.com ([2401:fa00:1:10:7889:7a43:f899:134c])
        by smtp.googlemail.com with ESMTPSA id a8sm19778744pff.5.2019.10.15.02.12.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Oct 2019 02:12:51 -0700 (PDT)
From:   Pi-Hsun Shih <pihsun@chromium.org>
Cc:     Pi-Hsun Shih <pihsun@chromium.org>,
        Jitao Shi <jitao.shi@mediatek.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED
        DEVICE TREE BINDINGS),
        linux-arm-kernel@lists.infradead.org (moderated list:ARM/Mediatek SoC
        support),
        linux-mediatek@lists.infradead.org (moderated list:ARM/Mediatek SoC
        support), linux-kernel@vger.kernel.org (open list)
Subject: [PATCH] arm64: dts: mt8183: add dpi node to mt8183
Date:   Tue, 15 Oct 2019 17:12:29 +0800
Message-Id: <20191015091229.91814-1-pihsun@chromium.org>
X-Mailer: git-send-email 2.23.0.700.g56cf767bdb-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
To:     unlisted-recipients:; (no To-header on input)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add dpi node to mt8183.

Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
Signed-off-by: Pi-Hsun Shih <pihsun@chromium.org>
---
This depends on https://patchwork.kernel.org/cover/11081047/ (for the
dpi driver on mt8183) and https://patchwork.kernel.org/cover/11118371/
(for the scpsys node).
---
 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index 6cbbd7726d36..42c3a6b3cfc7 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -642,6 +642,17 @@ mmsys: syscon@14000000 {
 			#clock-cells = <1>;
 		};
 
+		dpi0: dpi@14015000 {
+			compatible = "mediatek,mt8183-dpi";
+			reg = <0 0x14015000 0 0x1000>;
+			interrupts = <GIC_SPI 237 IRQ_TYPE_LEVEL_LOW>;
+			power-domains = <&scpsys MT8183_POWER_DOMAIN_DISP>;
+			clocks = <&mmsys CLK_MM_DPI_IF>,
+				 <&mmsys CLK_MM_DPI_MM>,
+				 <&apmixedsys CLK_APMIXED_TVDPLL>;
+			clock-names = "pixel", "engine", "pll";
+		};
+
 		smi_common: smi@14019000 {
 			compatible = "mediatek,mt8183-smi-common", "syscon";
 			reg = <0 0x14019000 0 0x1000>;
-- 
2.23.0.700.g56cf767bdb-goog

