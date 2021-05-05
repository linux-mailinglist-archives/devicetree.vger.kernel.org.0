Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C5204373CF7
	for <lists+devicetree@lfdr.de>; Wed,  5 May 2021 16:03:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232569AbhEEOEM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 May 2021 10:04:12 -0400
Received: from youngberry.canonical.com ([91.189.89.112]:54880 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233700AbhEEOEM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 May 2021 10:04:12 -0400
Received: from mail-qv1-f71.google.com ([209.85.219.71])
        by youngberry.canonical.com with esmtps  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
        (Exim 4.93)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1leI7O-000082-Te
        for devicetree@vger.kernel.org; Wed, 05 May 2021 14:03:15 +0000
Received: by mail-qv1-f71.google.com with SMTP id c5-20020a0ca9c50000b02901aede9b5061so1707319qvb.14
        for <devicetree@vger.kernel.org>; Wed, 05 May 2021 07:03:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=gHlNQxBMJJJPApy8J9ScRibX6GAiaOm1NP7zfEL0aKw=;
        b=pip5I15tr69ddEWauHbUJ27BMcgcN6WlsQmbBwBUm6wOo5jNe2CmwvYhqCXdM03qQF
         a4Ed4tN5aPKw+BkMTLrsq88JQVdUUokONZqF640Oi5v34VA+8eN5vrgSd2/swotPgXBd
         t0IK31LwZ/cMWTZtcGnwhwtYaZUZhRJSAom5eqMvlMgHEkaIOcyMz7uFKVJ+20NjxRiA
         jZICujjQ9pe4KyM8L8Whv4bfxidhGv8VTCnsZYgGzn8zR4i3mQzN9X5XBzh02Y0/ikUK
         p4WrzrHWoQJ4M8A/MxtFuRTKdIEIGoLZoO25wxkRlXw+qdcCjGxCH3hxmZA4Q8lLFSt2
         HwQQ==
X-Gm-Message-State: AOAM533KYMYeeaJtQ0ej4nYt4v2fFKz4wDUk63GuGWAD3YK1tZ0oEWB9
        JD5/9WpuKct8o3+38+M1xlB1nIDZxE2kzmT817V0BK06UgQyCV1sTiBbhTfHeAo8sCCMuvk5sAn
        E4zO4r+OMUYLp3PQDpq2trhUIUttSowWNlmBf6uc=
X-Received: by 2002:ac8:118d:: with SMTP id d13mr26914118qtj.294.1620223394012;
        Wed, 05 May 2021 07:03:14 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxx77jKyRL1IlHqhDJ4GD0HwdRxVnhzwQKiw5Ri5Ut4bvfEkDj1ezNgIO6TQsyv10c+hqq6OQ==
X-Received: by 2002:ac8:118d:: with SMTP id d13mr26914106qtj.294.1620223393830;
        Wed, 05 May 2021 07:03:13 -0700 (PDT)
Received: from localhost.localdomain ([45.237.49.2])
        by smtp.gmail.com with ESMTPSA id l8sm4956754qtv.18.2021.05.05.07.03.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 May 2021 07:03:13 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     =?UTF-8?q?Beno=C3=AEt=20Cousson?= <bcousson@baylibre.com>,
        Tony Lindgren <tony@atomide.com>,
        Rob Herring <robh+dt@kernel.org>, linux-omap@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH] ARM: dts: am5729-beagleboneai: drop unused Broadcom WiFi properties
Date:   Wed,  5 May 2021 10:00:15 -0400
Message-Id: <20210505140015.60013-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The brcm,sd-head-align, brcm,sd_head_align and brcm,sd_sgentry_align are
not used by the driver and not present in dtschema:

  arch/arm/boot/dts/am5729-beagleboneai.dt.yaml: wifi@1:
    'brcm,sd-head-align', 'brcm,sd_head_align', 'brcm,sd_sgentry_align' do not match any of the regexes: 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm/boot/dts/am5729-beagleboneai.dts | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm/boot/dts/am5729-beagleboneai.dts b/arch/arm/boot/dts/am5729-beagleboneai.dts
index 149cfafb90bf..d3b2e87a6266 100644
--- a/arch/arm/boot/dts/am5729-beagleboneai.dts
+++ b/arch/arm/boot/dts/am5729-beagleboneai.dts
@@ -582,10 +582,6 @@ brcmf: wifi@1 {
 		reg = <1>;
 		compatible = "brcm,bcm4329-fmac";
 
-		brcm,sd-head-align = <4>;
-		brcm,sd_head_align = <4>;
-		brcm,sd_sgentry_align = <512>;
-
 		interrupt-parent = <&gpio3>;
 		interrupts = <23 IRQ_TYPE_LEVEL_LOW>;
 		interrupt-names = "host-wake";
-- 
2.25.1

