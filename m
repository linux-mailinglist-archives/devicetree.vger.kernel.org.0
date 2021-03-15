Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B251933B2F5
	for <lists+devicetree@lfdr.de>; Mon, 15 Mar 2021 13:44:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229787AbhCOMns (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Mar 2021 08:43:48 -0400
Received: from youngberry.canonical.com ([91.189.89.112]:33274 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229802AbhCOMnW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 Mar 2021 08:43:22 -0400
Received: from mail-wr1-f70.google.com ([209.85.221.70])
        by youngberry.canonical.com with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.86_2)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1lLmZ7-0004i6-47
        for devicetree@vger.kernel.org; Mon, 15 Mar 2021 12:43:21 +0000
Received: by mail-wr1-f70.google.com with SMTP id s10so15047461wre.0
        for <devicetree@vger.kernel.org>; Mon, 15 Mar 2021 05:43:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=rxaIjR1J//5PkyRZXm0+xJCkI6bQEZtH1ohc21euivs=;
        b=sT54WtJ0nhGKiVXJcRPLUVBiQJLWIpgb8ccRnyhakcV/Cx4TQMIijhuA+H2zoIdGGP
         zl9tUu7bXVYyIr5eDUwPFc+yNJaJDDd3A1nTK3gPhdkkpc4GbOhMjfq1Ks73lhzy/uit
         7rgfdrRSRx1lgs4z3Qwt4jOv6FSHQvjB5IjZJrPeNThH9jdBnm3287MMDO9mk3cqgU5a
         0XlbwOs7sP1WFSjT304zMxZJ3+vwuQ3SGZ6h1Cu1GtlsexlCj01LKNkm01gjhkhEzT4R
         MJ+CFU73mr18ZSNS4/MM6SnWv0diOTC6XUp0nQCunYBNGzbLMJBpsJI1VyOB4J3S5MEL
         1M1g==
X-Gm-Message-State: AOAM533V483JxR7hS0PD0Q/qvVmd8FuARd4io5RxIdEK/eG6o+Cr1tjm
        XEScoDn6V75SL0lE3uMSBeJ6jVxZ998lzrDde106BtVj8S2PhjjfbfNt9iYiRSQylGmBEmf37Kf
        v/swaYlcZjQTUJoYWSQZtkfXX2QBoQWjjrmaXYb0=
X-Received: by 2002:a05:6000:1546:: with SMTP id 6mr27051362wry.398.1615812200828;
        Mon, 15 Mar 2021 05:43:20 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx19SoVoAAQrYf7moALON3Fv15zBfY8pJOsEEAAhFpyMpxvBF4bD3zbUHBRa65h38JIQJV97g==
X-Received: by 2002:a05:6000:1546:: with SMTP id 6mr27051353wry.398.1615812200719;
        Mon, 15 Mar 2021 05:43:20 -0700 (PDT)
Received: from localhost.localdomain (adsl-84-226-167-205.adslplus.ch. [84.226.167.205])
        by smtp.gmail.com with ESMTPSA id r10sm14410094wmh.45.2021.03.15.05.43.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Mar 2021 05:43:20 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH 3/3] arm64: dts: exynos: white-space cleanups
Date:   Mon, 15 Mar 2021 13:43:13 +0100
Message-Id: <20210315124313.114842-3-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210315124313.114842-1-krzysztof.kozlowski@canonical.com>
References: <20210315124313.114842-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fixup white-space issue:

  WARNING: please, no spaces at the start of a line

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm64/boot/dts/exynos/exynos5433-tm2-common.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/exynos/exynos5433-tm2-common.dtsi b/arch/arm64/boot/dts/exynos/exynos5433-tm2-common.dtsi
index 413cac63a1cb..773d9abe3a44 100644
--- a/arch/arm64/boot/dts/exynos/exynos5433-tm2-common.dtsi
+++ b/arch/arm64/boot/dts/exynos/exynos5433-tm2-common.dtsi
@@ -1002,7 +1002,7 @@ events {
 		ppmu_event0_d1_general: ppmu-event0-d1-general {
 		       event-name = "ppmu-event0-d1-general";
 	       };
-       };
+	};
 };
 
 &pinctrl_alive {
-- 
2.25.1

