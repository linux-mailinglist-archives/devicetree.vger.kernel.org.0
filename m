Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9DC1548D5AD
	for <lists+devicetree@lfdr.de>; Thu, 13 Jan 2022 11:28:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229634AbiAMK16 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jan 2022 05:27:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36788 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229560AbiAMK14 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Jan 2022 05:27:56 -0500
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 13F87C06173F
        for <devicetree@vger.kernel.org>; Thu, 13 Jan 2022 02:27:56 -0800 (PST)
Received: by mail-ed1-x534.google.com with SMTP id u21so21282652edd.5
        for <devicetree@vger.kernel.org>; Thu, 13 Jan 2022 02:27:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Ew4uKUNam8kJO5439QWHJkc6LyiFyd+nrUpEzZPoFAU=;
        b=YMVg152aDvsUA5jMW9ANbVaRYdw9xsgt4shC2uDV2+B0kRcooMDvq+P4AmdjurudAv
         YBFZPL1XfVxd2THmP1uFUA0+wROIe+gq7gviKWRkKtcG13mAM3FBNvNnAF4xS74MWG96
         LLe338A4aFxeUPYY6isr+ggMZPYdAXFF1/GglXVFrBxr2I+I2MA5Q4lCigRUhkxUIqvQ
         8M083oLrQkI97tKDrK0xI0E/v8IIaMrCoiZP15jDBvZbOj5X6H7d1adG/KvNMwlBDBhw
         PL5IVR2xZs5t7eORUhnDYyT6cw2FjqG2amwUhuPYyErJRYgZNGL8mQ0K7Atn4i+MzO95
         Aafg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Ew4uKUNam8kJO5439QWHJkc6LyiFyd+nrUpEzZPoFAU=;
        b=j18bSK394mvJJDNefU7ogJc4n1QuYusaw1k23+aSqPmvLUL2V9R7ALucLsT2OnkGvk
         kdI6TqHZCOCSDw/uOjhyjoJ0m3uwfqBGN9UfCnoCBWGR6UYrVs5dzuVgXOjIisl8HVr0
         z2YYCcw5LS6i3daHTC1Zo3Vbqh5D3J47YQGC1TZ/m+Btu+OOlLmtHM9r5dPRI0N6p92Q
         mp/YGe3s4zSuBpjZEcuZYd5uD1humyIoFEPN1VqNTFVuVVuOiJ4lwtsViKmTtwOvpd+d
         g16nuNSvDg+I8M/DB/qK6VtuUJokP+LWdOb9/yNXng0X87kguRFuQAyQCfiSpL1LOOg+
         1iUQ==
X-Gm-Message-State: AOAM530z6QKGOq72yPZnSaZ4LBT6SX2QU9RG7nRlX9rQW5YNFa++MyK8
        bUSU6CohAm4fnT8L3/1Reocr9g==
X-Google-Smtp-Source: ABdhPJyPWTZtV91PFW9Cdo+2mJExh4qrBWd9u1cf4eCMhGrOMHYRaDJhZ4hq9tQAqeerG5TmZKKfXA==
X-Received: by 2002:a05:6402:68b:: with SMTP id f11mr3590479edy.121.1642069674677;
        Thu, 13 Jan 2022 02:27:54 -0800 (PST)
Received: from localhost (c-9b28e555.07-21-73746f28.bbcust.telenor.se. [85.229.40.155])
        by smtp.gmail.com with ESMTPSA id f13sm728072ejf.53.2022.01.13.02.27.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jan 2022 02:27:54 -0800 (PST)
From:   Anders Roxell <anders.roxell@linaro.org>
To:     robh+dt@kernel.org, narmstrong@baylibre.com, khilman@baylibre.com
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        Anders Roxell <anders.roxell@linaro.org>
Subject: [PATCH] arm64: dts: amlogic: meson-s4-aq222: fix waring for leading 0s
Date:   Thu, 13 Jan 2022 11:27:46 +0100
Message-Id: <20220113102746.598763-1-anders.roxell@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

When building allmodconfig the following waring shows up:

arch/arm64/boot/dts/amlogic/meson-s4-s805x2-aq222.dts:21.18-24.4: Warning (unit_address_format): /memory@00000000: unit name should not have leading 0s

Fixing the waring by dropping all the '0' except one.

Fixes: 1c1475389af0 ("arm64: dts: add support for S4 based Amlogic AQ222")
Signed-off-by: Anders Roxell <anders.roxell@linaro.org>
---
 arch/arm64/boot/dts/amlogic/meson-s4-s805x2-aq222.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-s4-s805x2-aq222.dts b/arch/arm64/boot/dts/amlogic/meson-s4-s805x2-aq222.dts
index a942d7e06d6e..8ffbcb2b1ac5 100644
--- a/arch/arm64/boot/dts/amlogic/meson-s4-s805x2-aq222.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-s4-s805x2-aq222.dts
@@ -18,7 +18,7 @@ aliases {
 		serial0 = &uart_B;
 	};
 
-	memory@00000000 {
+	memory@0 {
 		device_type = "memory";
 		reg = <0x0 0x0 0x0 0x40000000>;
 	};
-- 
2.34.1

