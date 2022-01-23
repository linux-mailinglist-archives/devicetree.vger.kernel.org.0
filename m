Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B235A497126
	for <lists+devicetree@lfdr.de>; Sun, 23 Jan 2022 12:17:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236332AbiAWLRK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 23 Jan 2022 06:17:10 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:56070
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S236266AbiAWLRA (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sun, 23 Jan 2022 06:17:00 -0500
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com [209.85.128.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id AFC833F4BB
        for <devicetree@vger.kernel.org>; Sun, 23 Jan 2022 11:16:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1642936617;
        bh=7G+hY+R5nLZKUZJkJX/xGI67gHlSdcGiauOov4lnBec=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=HFVvwbGoFAexwBn3cBkQFJwWcU+8iGg3bXQF8N7poDFY3V9RxTUsK5L3HONT4zzBa
         K5Bi+6tnZhdRM6JVgf+DKesRsOgOYb5/Od/IJezi2sLSChwp7tS9mcCWGL5JwkTYJJ
         LSlNixBw2EpURNBkjJkHvVMe/sXD52RpRaQfntEkO1Myt/WWk7CSs491nqFaBhxLpt
         yAhziqLMSUgC7HPl98JD9AMANf/C8zI2Aa1Te5I6RhMCWkS7Af8lnOfmvgP5xE2yS+
         agPv1hSRr8223LacjLqY9F9fLV54bogvfNZRK0voeskt/438IoBCiw8PMfd0+L1zF/
         mnzjuIknWC4HQ==
Received: by mail-wm1-f70.google.com with SMTP id bg16-20020a05600c3c9000b0034bea12c043so12919193wmb.7
        for <devicetree@vger.kernel.org>; Sun, 23 Jan 2022 03:16:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=7G+hY+R5nLZKUZJkJX/xGI67gHlSdcGiauOov4lnBec=;
        b=F7xRf3rypeJOP8h6a+TX1GQKGSDJPlBf6hl/t205DR+FP5WUJC99EpyzAbRgOQwG+1
         tNyn7Xg2dw63VA75WLnp1itkTeMLxCBMa0+lQjSGfxhTXOe1PcOht5NKqz6UZZ466aMy
         lkFxZEJNX1b0dLgovdTJi8SoDrPuNLeMVgcuVGdlo7UOWGYWbs1Gx9xHAr+oJjKqnna/
         3Ohz7Z8+O4NR0NCvoY//FoTtmmXhRcefgUE8LRZOtwAx5fPKz414dOS6llwTRXk//ZsZ
         mZb30wZaEh0hzJXWOuJjfeTaJLsOspi586kRsNBIp4Ngi1PxMviKD2mlU24IM6xQFD3r
         nB7A==
X-Gm-Message-State: AOAM5333mtYFlgEvSTCd6nCa2BtciMxvTos+dmvq8I2HTWPTE3Sc2WXw
        hAVouQ6vL5gRHL/uziFzqC/vIEHClVg3v531B7j4EOUstzmUOkcMo29myR821GhwRg2H2z6ivpH
        DLIQ7XuCettlR8O0qU6A/CyqbqDQhQgokyRydlQs=
X-Received: by 2002:a05:600c:3b8e:: with SMTP id n14mr7635822wms.136.1642936615425;
        Sun, 23 Jan 2022 03:16:55 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxmZiv76Qfw8F68YMkxoE3Zz0Ow5IhFbzrvbpiFnZTw5RuvqW1IyxGcoXhMn0pmZj+he53E6g==
X-Received: by 2002:a05:600c:3b8e:: with SMTP id n14mr7635808wms.136.1642936615301;
        Sun, 23 Jan 2022 03:16:55 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id m5sm10143729wms.4.2022.01.23.03.16.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Jan 2022 03:16:54 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 06/12] ARM: dts: exynos: add USB DWC3 supplies to ArndaleOcta
Date:   Sun, 23 Jan 2022 12:16:38 +0100
Message-Id: <20220123111644.25540-7-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220123111644.25540-1-krzysztof.kozlowski@canonical.com>
References: <20220123111644.25540-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add required voltage regulators for USB DWC3 block on Exynos5420
ArndaleOcta board.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm/boot/dts/exynos5420-arndale-octa.dts | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/boot/dts/exynos5420-arndale-octa.dts b/arch/arm/boot/dts/exynos5420-arndale-octa.dts
index dfc7f14f5772..ffdf0e247c15 100644
--- a/arch/arm/boot/dts/exynos5420-arndale-octa.dts
+++ b/arch/arm/boot/dts/exynos5420-arndale-octa.dts
@@ -825,3 +825,13 @@ &rtc {
 &usbdrd_dwc3_1 {
 	dr_mode = "host";
 };
+
+&usbdrd3_0 {
+	vdd10-supply = <&ldo11_reg>;
+	vdd33-supply = <&ldo9_reg>;
+};
+
+&usbdrd3_1 {
+	vdd10-supply = <&ldo11_reg>;
+	vdd33-supply = <&ldo9_reg>;
+};
-- 
2.32.0

