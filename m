Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 42BD9447AE9
	for <lists+devicetree@lfdr.de>; Mon,  8 Nov 2021 08:30:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236541AbhKHHaB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Nov 2021 02:30:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57598 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235730AbhKHHaB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Nov 2021 02:30:01 -0500
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com [IPv6:2607:f8b0:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82F4EC061570
        for <devicetree@vger.kernel.org>; Sun,  7 Nov 2021 23:27:17 -0800 (PST)
Received: by mail-pf1-x42b.google.com with SMTP id s13so891683pfd.7
        for <devicetree@vger.kernel.org>; Sun, 07 Nov 2021 23:27:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=RLjicxNmNpYNSdlDLoBw1hRqse8yPujz3RAWyTpfEac=;
        b=ABDhVBoJRsbyso7STgkt2+X30CgJnQ/d99iSXLLZO1gs2qeFL7BsZSKMviiRjrSt5h
         dbp4KcrvpoL3BQDhp46BsxZ+b00vpcLTx2TtUa2T/RN7G4khXEwLkFdQK7yb3lbgn25Z
         Jm165XB0AGWijHaotMiS4DDjHK1d4a+LSyC+Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=RLjicxNmNpYNSdlDLoBw1hRqse8yPujz3RAWyTpfEac=;
        b=ZVQXQ3L5YNoQtMLlpWKuEuRoP6VQ+nN3aprjKE7VEzmtvVdYjev+9xHbInEycCGXO7
         5HC1O7SvPVU++hn4FomrqbJdsNHOqyJzPzpqGhuheuwvQYKvSxybTMSThuiANWXtE0rN
         D/c2HArMpsW05X0+TOtm/qgj0zFQpyW4IQemRRy9nidRSzgTKHyRd+H1DKPtPpTOXrKm
         Vr8vlCcRCDQUW+m5NHqMSuMgKZhTbWu6DtuvSPdzrstO0THzo6VfeTJySFT39hfhMCcd
         /1didGojq1I3cVvwjRd4qo0/TLC1EscDqkDRkgSZ/ltNtlemceN/i3L4oeINgGIa83MX
         e1fA==
X-Gm-Message-State: AOAM532GboIRN/mCcTRpxAZyAR1ScaWb7MDfMboiELQmsBpnX9n/ZiJZ
        o/XugKNG/eZ8X1FE40EZSu1TUg==
X-Google-Smtp-Source: ABdhPJw21lXJshz/mAt6AiSaY5BS2Jjuxb/tgp9XVgQFp/b0HW4hLLC6R3JC3TGth5tlFtvm7q26WA==
X-Received: by 2002:a05:6a00:140c:b0:447:96be:2ade with SMTP id l12-20020a056a00140c00b0044796be2ademr77871119pfu.26.1636356436963;
        Sun, 07 Nov 2021 23:27:16 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:5f03:6a9b:24e8:3a2e])
        by smtp.gmail.com with ESMTPSA id e8sm11684972pgn.46.2021.11.07.23.27.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Nov 2021 23:27:16 -0800 (PST)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 1/7] arm64: dts: mt8183: jacuzzi: remove unused ddc-i2c-bus
Date:   Mon,  8 Nov 2021 15:27:05 +0800
Message-Id: <20211108072711.1628566-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.34.0.rc0.344.g81b53c2807-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

EDID is read from bridge, so the ddc-i2c-bus is unused.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi
index d8826c82bcda29..8f7bf33f607da2 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi
@@ -9,7 +9,6 @@ / {
 	panel: panel {
 		compatible = "auo,b116xw03";
 		power-supply = <&pp3300_panel>;
-		ddc-i2c-bus = <&i2c4>;
 		backlight = <&backlight_lcd0>;
 
 		port {
-- 
2.34.0.rc0.344.g81b53c2807-goog

