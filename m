Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0BC6B3E8C09
	for <lists+devicetree@lfdr.de>; Wed, 11 Aug 2021 10:40:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236318AbhHKIlP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Aug 2021 04:41:15 -0400
Received: from smtp-relay-canonical-1.canonical.com ([185.125.188.121]:45516
        "EHLO smtp-relay-canonical-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S236257AbhHKIlL (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 11 Aug 2021 04:41:11 -0400
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com [209.85.218.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-canonical-1.canonical.com (Postfix) with ESMTPS id 277F540650
        for <devicetree@vger.kernel.org>; Wed, 11 Aug 2021 08:40:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1628671247;
        bh=7IJlzam8fj9i6+B2feleMQtESGacIdtIuLP/gvEeeCw=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=F+sKGLWUv4y75hXH1I8HYywT6VfSXXLG68eS/p6IedP8JLrM73GKPrR6BCMaGKpU1
         ZKfkDNcmA5bvgZReJJcTvDLFTXp6wbozje6OS+d1NggTiJi7y6LPLWGzomeqFwiukw
         IsHhEh/eECGVb4tnvMz57doqYkVHZs7iBB5nwaTjr+2JPXIDT+lsvhhwA4ktA+P5IN
         xET5V5aytDynXmmpTBxmttlz/Y52l82USdYl5nEAqLRlnhTf9VdMH+7auiholfP8DE
         CLCkfTDXH9Rorvqfrj7BqU/nFX2UPuTyQvzeOLiPp/OFnQspCWXYiQ3eowp1Sj5Jfm
         a5XfPaSPSAMpw==
Received: by mail-ej1-f72.google.com with SMTP id gg35-20020a17090689a3b0290580ff45a075so387363ejc.20
        for <devicetree@vger.kernel.org>; Wed, 11 Aug 2021 01:40:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=7IJlzam8fj9i6+B2feleMQtESGacIdtIuLP/gvEeeCw=;
        b=HftNwtenoaGC8d0XKkePYICR/0HH6cBX7OtrZEaDuGCmo+tsCI2DTeB09BhVf7J8tE
         yymZu338CXDYVNJPyrIHSVPCLLh6+5MnYmhGzYlhP/OwFQlNsydEMQ0foEtSaKOSAfDA
         y/lM6OOejNDFjH/K4aeUeMtbFwrNR+39je1L3kS8qMxonrgQ0v8+idgAekL4MWiqcRzy
         ftxDmNcY1SkFdq0lq0tqj8zdrooXNfhwYGzq7+MX5hv4K09XD7voxdInqZcbAjfQWPYq
         itIWXeG8dRYgkEE6/XEzkbWMvY/6CHDUr1WmHZChzz4mY7vaZjRTs4up7pr/kPAf7tqG
         Z9/g==
X-Gm-Message-State: AOAM533DxgiekeCtQ7rPG0e7Faa/AXgRG6coIFUNjl7Z1dehGpEBpWLG
        0EcVcykujoPN2eMZq8WEpppW5aoygFSkGfXsdOPBw4+b6Y83+x0V/THqM0J4CDXnq8rT0z4cLU+
        NLo628uP1PCwZrCttUrQOXnaizCOvDjSzLwoLGdM=
X-Received: by 2002:a17:906:2541:: with SMTP id j1mr2641021ejb.128.1628671246861;
        Wed, 11 Aug 2021 01:40:46 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzUUDesTyBO0mfEeagVJdMT7XEVX7qkZudK2JBqae0EZ6aa9xBXY9i63c7YHdfe+UIHaDI96Q==
X-Received: by 2002:a17:906:2541:: with SMTP id j1mr2641008ejb.128.1628671246731;
        Wed, 11 Aug 2021 01:40:46 -0700 (PDT)
Received: from localhost.localdomain ([86.32.42.198])
        by smtp.gmail.com with ESMTPSA id t25sm10875617edq.29.2021.08.11.01.40.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Aug 2021 01:40:46 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Jens Axboe <axboe@kernel.dk>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linux-ide@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] ARM: dts: exynos: drop undocumented samsung,sata-freq property in Exynos5250
Date:   Wed, 11 Aug 2021 10:38:59 +0200
Message-Id: <20210811083859.28234-2-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210811083859.28234-1-krzysztof.kozlowski@canonical.com>
References: <20210811083859.28234-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The samsung,sata-freq property is not used (and not documented by
generic AHCI platform bindings), so can be safely dropped.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm/boot/dts/exynos5250.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/exynos5250.dtsi b/arch/arm/boot/dts/exynos5250.dtsi
index 2ea2caaca4e2..c8c41657988b 100644
--- a/arch/arm/boot/dts/exynos5250.dtsi
+++ b/arch/arm/boot/dts/exynos5250.dtsi
@@ -375,7 +375,6 @@ tmu: tmu@10060000 {
 
 		sata: sata@122f0000 {
 			compatible = "snps,dwc-ahci";
-			samsung,sata-freq = <66>;
 			reg = <0x122F0000 0x1ff>;
 			interrupts = <GIC_SPI 115 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&clock CLK_SATA>, <&clock CLK_SCLK_SATA>;
-- 
2.30.2

