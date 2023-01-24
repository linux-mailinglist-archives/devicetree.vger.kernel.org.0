Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BFD9D679556
	for <lists+devicetree@lfdr.de>; Tue, 24 Jan 2023 11:35:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233815AbjAXKe7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Jan 2023 05:34:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38258 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233736AbjAXKen (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 Jan 2023 05:34:43 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 60F3914EB9
        for <devicetree@vger.kernel.org>; Tue, 24 Jan 2023 02:34:36 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id d4-20020a05600c3ac400b003db1de2aef0so10573995wms.2
        for <devicetree@vger.kernel.org>; Tue, 24 Jan 2023 02:34:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yRGHFQLQDSY4kA3CZGH3QBqjm8Lohx728brH65ifyNY=;
        b=gIEJmWyFkociHLRg71288pDixWBHgV80iYoPOcFh+MTJ6Axae38va10U1Gy5i7RDmZ
         bx3RHx4rDiVfxRReuBBDvKRcJqbd8kkt/4gSArHrsp7pzH1Rnknyo0b4PyfFCtjMhhZB
         mrBbBeTccRvUWgERRq6hBxaQugHm4o6NnjqpIrkwR1usyi2qs2OBNRoB86+1uBAjL3c+
         YPK9aAgl+S/h7uCPRgzGh50tgbQij++G/dBqVeiPIpTDsAbhGMH+wNQNTLFOvKSXx/9e
         iZjzC+PrnkzBZjCows0R7mLpPBkF5S55bdwVDko0l9z2UL1PE44KCctcd3acl234vzV7
         XcpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yRGHFQLQDSY4kA3CZGH3QBqjm8Lohx728brH65ifyNY=;
        b=SWCui2iHtOx0qKIIBG4ofDq+jlWkDLFwOO4cuqy8Z20aZQ54DP5ZdlQONOL5M+7de8
         So+GOlPiKce3SxaDMJoBoDwurszfUxnM0lwD5T2K0o98PUMNl8GQBa35LeN5hI18s7DN
         h38j1qZpK62NDxbXU/aF/EQye+KxiseBqE5y+UY4RnrwH5lDotQf47hJncOLDG2Zjgix
         xpCwJNM8oGcBHn6cHw8vujOeGmM4DRTre0Zv0vmuSC9Ii4G9LGYErf6XQTuKuvDTdQ8z
         PBvDyFQDB2nzL1RWZbncC70V/dszM94Wtif2GL5UFopwQG+14fozEP7/TSaQomygYt8w
         z8OA==
X-Gm-Message-State: AFqh2krGxkHKLa3BFDiHmP7KisE7zZGdPOcCLgdln1SN4YL/ei6WXNJP
        p4EsMKjfa4hVxdmfDbHcN1woHA==
X-Google-Smtp-Source: AMrXdXsvVUdsRNQEKeCuPQawj5m7ECWveQhbDn1iE1UNrItfqlGvIpog/AuTT5kL97QJQxkceMU8aQ==
X-Received: by 2002:a1c:f607:0:b0:3d3:5027:89a4 with SMTP id w7-20020a1cf607000000b003d3502789a4mr35354000wmc.7.1674556475790;
        Tue, 24 Jan 2023 02:34:35 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id q6-20020adfcd86000000b002bded7da2b8sm1551889wrj.102.2023.01.24.02.34.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Jan 2023 02:34:35 -0800 (PST)
From:   Neil Armstrong <neil.armstrong@linaro.org>
Date:   Tue, 24 Jan 2023 11:34:34 +0100
Subject: [PATCH 13/14] arm64: dts: amlogic: meson-gxbb-kii-pro: fix led
 node name
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230124-b4-amlogic-bindings-fixups-v1-13-44351528957e@linaro.org>
References: <20230124-b4-amlogic-bindings-fixups-v1-0-44351528957e@linaro.org>
In-Reply-To: <20230124-b4-amlogic-bindings-fixups-v1-0-44351528957e@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.0
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fixes:
leds: status: {...} is not of type 'array'

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/amlogic/meson-gxbb-kii-pro.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-kii-pro.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-kii-pro.dts
index 6d8cc00fedc7..5f2d4317ecfb 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-kii-pro.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-kii-pro.dts
@@ -16,7 +16,7 @@ / {
 
 	leds {
 		compatible = "gpio-leds";
-		status {
+		led {
 			gpios = <&gpio_ao GPIOAO_13 GPIO_ACTIVE_LOW>;
 			default-state = "off";
 			color = <LED_COLOR_ID_RED>;

-- 
2.34.1

