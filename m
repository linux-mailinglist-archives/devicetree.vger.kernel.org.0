Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 01CE0281415
	for <lists+devicetree@lfdr.de>; Fri,  2 Oct 2020 15:34:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387491AbgJBNen (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Oct 2020 09:34:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46030 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726017AbgJBNem (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Oct 2020 09:34:42 -0400
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com [IPv6:2607:f8b0:4864:20::1043])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D708EC0613D0
        for <devicetree@vger.kernel.org>; Fri,  2 Oct 2020 06:34:42 -0700 (PDT)
Received: by mail-pj1-x1043.google.com with SMTP id i3so792849pjz.4
        for <devicetree@vger.kernel.org>; Fri, 02 Oct 2020 06:34:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=7SjJAe3oHt3KB6nicp1+OfBnUkZSTnnqwPcXU79zsAk=;
        b=p3DPytT8DeuuG6FrFfwq8QVj6Thw52fCHJtg16Yzn/f1150ENXnCYXUmMTn0bb/TvY
         QHIcbyRM7PJGaCyvUIUFcik7Y3ZVineOWajY6LOi9+JSLEYTMs/igZP9LHigINWVLRss
         E+vjO0+TnSuEmGg+/vFPgQRQQTtDB0SZ1Va6U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=7SjJAe3oHt3KB6nicp1+OfBnUkZSTnnqwPcXU79zsAk=;
        b=WR9gZ2HHgcHPeEmwhSiZNyZBHaPJocrnDi3EgS5HOUu9qptH+qSfKOIY2yNEzPqQrX
         9gUatH/86Jepaz0LhiYWDSbwOkXzPSTMcyrbpmIuXqOco6y3SMal9C8suIv9gDAMvAKN
         tpT8CBCRCtlNuXKkXtWEY0gH4j1geODlhItivyvueE/5Xf3H/3UFZXc/AA1JnVEastIm
         x8k4gBQpeMP+32L6Gs90+7I4dEkyOOELPFe3tQlA2UpU/FRWEJA0i2Ijxoi4llWHXLXl
         Ac2gfIV1Cue3l3zUfXS++NpvcX1dhtFngGmj2oCZE8fPfxD2rbaHKDSIdDvOI5Sw/UQH
         mdpA==
X-Gm-Message-State: AOAM531yHa8MOd62S14iVx3L3KpkJ0Dd15UcQp33baV0CyRMvWLiEcft
        NE3NBW9GoR9rhyXLC3v6yaaUGQ==
X-Google-Smtp-Source: ABdhPJzMTBwZsb/Y2+eq6Msc5C1q7HCNQmFZGjUYpcaiSLsx7P7qjBYtUIoacUOMboWKq2Xmv13uQw==
X-Received: by 2002:a17:90a:dd46:: with SMTP id u6mr3030119pjv.67.1601645682380;
        Fri, 02 Oct 2020 06:34:42 -0700 (PDT)
Received: from shiro.work (p1268123-ipngn200803sizuokaden.shizuoka.ocn.ne.jp. [118.13.124.123])
        by smtp.googlemail.com with ESMTPSA id k14sm1708219pjd.45.2020.10.02.06.34.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Oct 2020 06:34:41 -0700 (PDT)
From:   Daniel Palmer <daniel@0x0f.com>
To:     soc@kernel.org
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        mark-pk.tsai@mediatek.com, arnd@arndb.de, maz@kernel.org,
        Daniel Palmer <daniel@0x0f.com>
Subject: [PATCH v2 3/5] ARM: mstar: Add interrupt to pm_uart
Date:   Fri,  2 Oct 2020 22:34:16 +0900
Message-Id: <20201002133418.2250277-4-daniel@0x0f.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201002133418.2250277-1-daniel@0x0f.com>
References: <20201002133418.2250277-1-daniel@0x0f.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Since we now have support for the interrupt controller pm_uart's
interrupt is routed through it make sense to wire up it's interrupt
in the device tree.

The interrupt is the same for all known chips so it goes in the
base dtsi.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 arch/arm/boot/dts/mstar-v7.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/mstar-v7.dtsi b/arch/arm/boot/dts/mstar-v7.dtsi
index aec841b52ca4..f07880561e11 100644
--- a/arch/arm/boot/dts/mstar-v7.dtsi
+++ b/arch/arm/boot/dts/mstar-v7.dtsi
@@ -113,6 +113,7 @@ pm_uart: uart@221000 {
 				compatible = "ns16550a";
 				reg = <0x221000 0x100>;
 				reg-shift = <3>;
+				interrupts-extended = <&intc_irq GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>;
 				clock-frequency = <172000000>;
 				status = "disabled";
 			};
-- 
2.27.0

