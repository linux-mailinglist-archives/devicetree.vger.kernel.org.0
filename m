Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C649430A461
	for <lists+devicetree@lfdr.de>; Mon,  1 Feb 2021 10:31:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231748AbhBAJbg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Feb 2021 04:31:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49344 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229558AbhBAJbf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 Feb 2021 04:31:35 -0500
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com [IPv6:2607:f8b0:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 90CB1C061573
        for <devicetree@vger.kernel.org>; Mon,  1 Feb 2021 01:30:55 -0800 (PST)
Received: by mail-pl1-x62f.google.com with SMTP id h15so9626199pli.8
        for <devicetree@vger.kernel.org>; Mon, 01 Feb 2021 01:30:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=SZcY/cTYAV9gOjki0HAFY3HZKWSO9Da4wkrASt2n+fg=;
        b=aec/wnh2CcGmv5nxwMrpLOQBmerb5Fu3IzWR/PpXxLjrGgRryiPQ/qlWm5/DCprmfu
         7C/Ll7kJF2q2g4UaNgqNJZzHZF0RFj+UvN8AJKgh+K+OVxE97o75UAAAtCeekWQWglYH
         4kc8SSSFUN0g42mVhohVV9JXga//uR8CqY+6Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=SZcY/cTYAV9gOjki0HAFY3HZKWSO9Da4wkrASt2n+fg=;
        b=grj/Rq5QYpbHlQ22TWTlCi/DUOIEj2wTqQV41eQqTPTNOP74jWUnSLjk4e5biT/Kng
         XjNhLV32sI4FRHssdv25LoVdlAkHP0eL/VmCW6UylaiVLl6fRQUa1VRRjz/fv5Zzm21r
         Jef1yFh7g7benlnvopgQlWOUOQm/13wjkOLpngtDHkKnBaV265xkLItfbLD9bU/TfsOB
         K65EBGvbOkZ+kxWh3xPn2gRkidTZ+9mXNk+L3cBwwhXGfnbE0aWPJhtyLguGsw+Zaj1a
         r137IHnrkPR7hlMfMjf2cT+9Xq/GHjrtT++LuKijHMnwbke2o1YHaEldQ9st+dXyWALw
         WH+Q==
X-Gm-Message-State: AOAM532Ac9mBrPLRExW8Qpx+IYc/kl0IjgtgEXR04W4wK3Mf0Zoo1TIk
        9dah/+kyeoy5SnjJA8FeAHuQI47WhFjT+w==
X-Google-Smtp-Source: ABdhPJxlY5GAiR+f+jEr0JLHTYBTgvbf08NYkoVhdvX4Ghl+NlkGXIzxnkudGQXWytfw9ulrOzgvKw==
X-Received: by 2002:a17:90a:5410:: with SMTP id z16mr16139042pjh.110.1612171855027;
        Mon, 01 Feb 2021 01:30:55 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:a0cd:1b84:6d56:68e1])
        by smtp.gmail.com with ESMTPSA id md7sm14890795pjb.52.2021.02.01.01.30.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Feb 2021 01:30:54 -0800 (PST)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Matthias Brugger <matthias.bgg@gmail.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: mediatek: mt8183: evb: Add domain supply for mfg
Date:   Mon,  1 Feb 2021 17:30:49 +0800
Message-Id: <20210201093049.87285-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.30.0.365.g02bc693789-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add domain supply node for mt8183-evb

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8183-evb.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
index 3249c959f76fc..edff1e03e6fee 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
@@ -352,6 +352,10 @@ pins_pwm {
 	};
 };
 
+&mfg {
+	domain-supply = <&mt6358_vgpu_reg>;
+};
+
 &spi0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&spi_pins_0>;
-- 
2.30.0.365.g02bc693789-goog

