Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A567D3CC13B
	for <lists+devicetree@lfdr.de>; Sat, 17 Jul 2021 06:57:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231228AbhGQFAH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 17 Jul 2021 01:00:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37870 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231424AbhGQE76 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 17 Jul 2021 00:59:58 -0400
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com [IPv6:2607:f8b0:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C368C061762
        for <devicetree@vger.kernel.org>; Fri, 16 Jul 2021 21:57:01 -0700 (PDT)
Received: by mail-pf1-x42a.google.com with SMTP id b12so10618619pfv.6
        for <devicetree@vger.kernel.org>; Fri, 16 Jul 2021 21:57:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ui/R1U5l18hTCdlid6Ebs6NC2kv3Eus6s2OeRFbkggQ=;
        b=M3Job59J4FMxogVCzqxuA9l7bcCRG88yvg7g84YKnqUdBepNOkTn4a6BBNd3iE6gPl
         AIYATL5ep6ERsyMTBwQ+8/MiSv1qlwDl+XgnifDeB4XweAIosjb3Njc1IgMhTuLwTaX2
         DjWwNH8X75Aai0HBj8L4iIW+czdj/qDipUaHk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ui/R1U5l18hTCdlid6Ebs6NC2kv3Eus6s2OeRFbkggQ=;
        b=dGgZWzhzCTsbYpwGV+d666gDOO0goeGPYupbM7sIgvlMAyePLDExaoGaPlkM0kL/Jn
         SdEdWu+vBB3KyaAT21b/c3Zeq2BM5i8qliEMPcry9BqCtkrTO0e09T2zM7g/msmWsoVc
         DBiboJvB5WFDh/xyM6kxD1Gf1aG7N0cx4LRJruetcv55S7Izq1SYAxGHqXQmndumCNSZ
         oSq/6NuL7ZrTcv5B1aAEvmvKYt8WIFhYeOptQ3DOfQFimFPO6sXijBGGbUVdiJqHikWR
         F9EJx3ZoUsK5pOYYQHV7wHC5AO93Ta/xGVhHGFYF4JNLV2HP3GeoVA69ZzQVf6jcp9O4
         0uIg==
X-Gm-Message-State: AOAM5327d0Y4r3/peEj52owWOb44BTNaJvx8Fqu/YUJpdZsAJu1G4Iid
        pc+fhO7oWzcUiWp6JI5bY7RyjFUetq9ZLw==
X-Google-Smtp-Source: ABdhPJygKPBQmyujuMeB5sbOzlu/tuUJQXYPb+lFjw7HhEPaF8ZO+94Mqw/NeeciMC9BVKaKsC6HUQ==
X-Received: by 2002:a65:6243:: with SMTP id q3mr13446911pgv.297.1626497821027;
        Fri, 16 Jul 2021 21:57:01 -0700 (PDT)
Received: from shiro.work (p866038-ipngn200510sizuokaden.shizuoka.ocn.ne.jp. [180.9.60.38])
        by smtp.googlemail.com with ESMTPSA id w2sm12522885pjf.2.2021.07.16.21.56.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jul 2021 21:57:00 -0700 (PDT)
From:   Daniel Palmer <daniel@0x0f.com>
To:     devicetree@vger.kernel.org, linux-gpio@vger.kernel.org
Cc:     linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linus.walleij@linaro.org, robh@kernel.org, romain.perier@gmail.com,
        Daniel Palmer <daniel@0x0f.com>
Subject: [PATCH 08/10] ARM: dts: mstar: unitv2: Add io regulator
Date:   Sat, 17 Jul 2021 13:56:25 +0900
Message-Id: <20210717045627.1739959-9-daniel@0x0f.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210717045627.1739959-1-daniel@0x0f.com>
References: <20210717045627.1739959-1-daniel@0x0f.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a fixed regulator for the io voltage.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 arch/arm/boot/dts/mstar-infinity2m-ssd202d-unitv2.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/mstar-infinity2m-ssd202d-unitv2.dts b/arch/arm/boot/dts/mstar-infinity2m-ssd202d-unitv2.dts
index 4a22b82afbfd..314eb37d3be4 100644
--- a/arch/arm/boot/dts/mstar-infinity2m-ssd202d-unitv2.dts
+++ b/arch/arm/boot/dts/mstar-infinity2m-ssd202d-unitv2.dts
@@ -40,6 +40,14 @@ vcc_core: regulator@0 {
 		regulator-max-microvolt = <900000>;
 		regulator-boot-on;
 	};
+
+	vcc_io: regulator@1 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_io";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-boot-on;
+	};
 };
 
 &pm_uart {
-- 
2.32.0

