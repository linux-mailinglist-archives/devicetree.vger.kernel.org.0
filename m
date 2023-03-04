Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 24B8C6AA973
	for <lists+devicetree@lfdr.de>; Sat,  4 Mar 2023 13:33:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229570AbjCDMdx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 4 Mar 2023 07:33:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43350 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229581AbjCDMdu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 4 Mar 2023 07:33:50 -0500
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F70B12059
        for <devicetree@vger.kernel.org>; Sat,  4 Mar 2023 04:33:44 -0800 (PST)
Received: by mail-ed1-x52c.google.com with SMTP id x3so20400875edb.10
        for <devicetree@vger.kernel.org>; Sat, 04 Mar 2023 04:33:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1677933223;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=jYT4jMLZ95Xys/g3bLJcTF972/TquYeElIQo4Dg5KU0=;
        b=bZTWOa8yyQo5Z2UWCnxUQmeHXHkvgKOOqNamXziKOJDztw4XOkOut9E10cKGdEYsz8
         ynjYXDNzHHwGOVxwbsvCHyUN8/ofein0TW7/+kT+Aw9GK7FPANJfWAk6DpKwFvGOPLqe
         2RvOrpn0KhPMtfDlWLVc2/tcj1r917CERBXHWeYIaDGv+Q9qqG7WhDHcMK5TC/8RZ9uz
         c991FPvdScqf0C+Y7nKRndd11BYkQRjIIHHnQRlXQtVLGWBkAdq3/R4x/lMwc47PyfYr
         J8NM+vNEp2VFnxcr2g53X/GlHKvc9mjg0xGxWUWMeFEXklG36VrdA0XSJjb8RLUzW2Pe
         mfqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677933223;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jYT4jMLZ95Xys/g3bLJcTF972/TquYeElIQo4Dg5KU0=;
        b=qRWH4MEhotkPgca0KaVCAWFy9oUxsJjCjuTCSVmMpFu+4EVHXfruW/xp1E3ZS85SuV
         VfPJWczvTyPrqICShSHZaanNiwix2FCiraz5+eD2H7P9oVbJf0T7E+OQfAPa4PzVp41O
         YPQQa1Y96ykY4YoaWpmAEy11SMi2CQtH2B2eOKyQ2d8saTGGw8MvOSR7lPyhBXCFzDhE
         8cg+ydQHYTOFkhVke6Sg4G70YQAtHvQnvPAo1Rj0qC+4vXrVW+XjppuCHGVyzO+Y/WAt
         Mpv3Of1dGaKoFOd8uZDpzpYyKzbM2L8PscHEmDw5MDQpDVmEFdXCRQfy1T6zV0rWk+6m
         ZoOQ==
X-Gm-Message-State: AO0yUKU/DyLnw/SnPzFjV5wujSZK851LvcSFKknba/SxE8U0YJy7ryim
        sDj//62DE6AGitWmn1jmFmtDhw==
X-Google-Smtp-Source: AK7set/mmUaaPdp2AymtP7v78OSVFNIv0URgmBLmRE8WYZExXzQhdZGh0ReZ5YLQXDuczSJrkdbnhQ==
X-Received: by 2002:a17:907:9611:b0:8aa:1f89:122e with SMTP id gb17-20020a170907961100b008aa1f89122emr6242603ejc.39.1677933223133;
        Sat, 04 Mar 2023 04:33:43 -0800 (PST)
Received: from krzk-bin.. ([2a02:810d:15c0:828:b758:6326:1292:e2aa])
        by smtp.gmail.com with ESMTPSA id j22-20020a1709066dd600b008e6bd130b14sm2058342ejt.64.2023.03.04.04.33.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Mar 2023 04:33:42 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: mba6ulx: correct GPIO keys wakeup
Date:   Sat,  4 Mar 2023 13:33:41 +0100
Message-Id: <20230304123341.34223-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

gpio-keys,wakeup is a deprecated property.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/mba6ulx.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/mba6ulx.dtsi b/arch/arm/boot/dts/mba6ulx.dtsi
index 5bf831b072d6..e25f8f209760 100644
--- a/arch/arm/boot/dts/mba6ulx.dtsi
+++ b/arch/arm/boot/dts/mba6ulx.dtsi
@@ -57,7 +57,7 @@ power-button {
 			label = "POWER";
 			linux,code = <KEY_POWER>;
 			gpios = <&gpio1 3 GPIO_ACTIVE_LOW>;
-			gpio-key,wakeup;
+			wakeup-source;
 		};
 	};
 
-- 
2.34.1

