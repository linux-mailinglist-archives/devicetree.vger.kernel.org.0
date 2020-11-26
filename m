Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7B37D2C5537
	for <lists+devicetree@lfdr.de>; Thu, 26 Nov 2020 14:26:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389923AbgKZNZU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Nov 2020 08:25:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55948 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389886AbgKZNZR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Nov 2020 08:25:17 -0500
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com [IPv6:2a00:1450:4864:20::544])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5D443C061A04
        for <devicetree@vger.kernel.org>; Thu, 26 Nov 2020 05:25:17 -0800 (PST)
Received: by mail-ed1-x544.google.com with SMTP id u19so945974edx.2
        for <devicetree@vger.kernel.org>; Thu, 26 Nov 2020 05:25:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=+WnYGUfR4Ghoj1mWVxO3VbsPtHbrA0Hu440yGJB+ncg=;
        b=sZ/yv6V4rtAOFb3PgLUQqqH2GTHEO1fL2NhHAgGWO67WjpdQaTtDHqr7ilo6e9NRzT
         B/idOeP0qlE7QDiU0n9tJGhjM4/TeKE9hScGBbtcJBbD8CO9O7cE8R3Vp9/rE/+D3Gda
         fZLhu2vzxdtaGfoQeLchDsx8BVzLKMgklDXOWyw7g0vz1WphbgS/BfjtaLUz/Yj83lBB
         iCSzYx6mUJurFFfg9s3TOFWoYqjJ6rneVVpepD2nGVSUQ1Z0DnfSEM7V0fueXEdaiOba
         PvB0M0o8RoVcgJgYzgsiVGLfJbqk6aO4S9dGGaq1zKZIRH+ezzkh5P//Eq43dWTN50Of
         A+Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=+WnYGUfR4Ghoj1mWVxO3VbsPtHbrA0Hu440yGJB+ncg=;
        b=qcFqdOVrv5Xujshqfp2cze1TU3t1Gib4aGVfvKX2VGcNwk0RMGYuv9NE+Bkc3VfZ4x
         kHRHARE32iuzxsJD06a5u8c0PZ3wFl74JiQPBnoy8xlRbWm1o7m5WPQRUaKOlSrC2USv
         NHm8RJaCsBGWuBAko6r6LoEDqzxkkAMnWwlaBStu0CTW29420J4205vOvLGhz4fidGJB
         j/nG0HCjifFM3YNdGTMuvolGyCHyvh6HYAbw2/rrxSrHHaOj2lM9wUgG3EPZb4/wplmx
         E+UwPSK3U+LZa+OeAboKvznyWcfjjCMJP8OJWIAJIVkM9mZcULpdQlUe05ZD2wZWvhkk
         NXVg==
X-Gm-Message-State: AOAM5328P4ezzuvQzMy6uyk0ci5toYqEqB2nxx6/qt9CsS55TqLFehAy
        i7KMKJEJI3sWiE6VGJijAuo8Lg==
X-Google-Smtp-Source: ABdhPJy59u8iKCAMhOvgEMuPDQ84TZaNvzWiCRCKS9Dxoyz8HN4R8QBIqR7azBcyegIEgoSrxd1Kig==
X-Received: by 2002:a50:bc02:: with SMTP id j2mr2524411edh.317.1606397116090;
        Thu, 26 Nov 2020 05:25:16 -0800 (PST)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
        by smtp.gmail.com with ESMTPSA id js1sm2531661ejb.77.2020.11.26.05.25.15
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 26 Nov 2020 05:25:15 -0800 (PST)
Sender: Michal Simek <monstr@monstr.eu>
From:   Michal Simek <michal.simek@xilinx.com>
To:     linux-kernel@vger.kernel.org, monstr@monstr.eu,
        michal.simek@xilinx.com, git@xilinx.com
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 4/5] ARM: zynq: Fix OCM mapping to be aligned with binding on zc702
Date:   Thu, 26 Nov 2020 14:25:03 +0100
Message-Id: <87c02786ccd8d7827827a9d95a8737bb300caeb0.1606397101.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <cover.1606397101.git.michal.simek@xilinx.com>
References: <cover.1606397101.git.michal.simek@xilinx.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The commit f69629919942 ("dt-bindings: sram: Convert SRAM bindings to
json-schema") converted binding to yaml and some missing required
properties started to be reported. Align binding based on it.

The patch is fixing these warnings:
.../zynq-zc702.dt.yaml: sram@fffc0000: '#address-cells' is a required property
.../zynq-zc702.dt.yaml: sram@fffc0000: '#size-cells' is a required property
.../zynq-zc702.dt.yaml: sram@fffc0000: 'ranges' is a required property
From schema: .../Documentation/devicetree/bindings/sram/sram.yaml

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

 arch/arm/boot/dts/zynq-zc702.dts | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/boot/dts/zynq-zc702.dts b/arch/arm/boot/dts/zynq-zc702.dts
index 10a7d0b8cf8b..cf70aff26c66 100644
--- a/arch/arm/boot/dts/zynq-zc702.dts
+++ b/arch/arm/boot/dts/zynq-zc702.dts
@@ -66,6 +66,12 @@ &amba {
 	ocm: sram@fffc0000 {
 		compatible = "mmio-sram";
 		reg = <0xfffc0000 0x10000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0 0xfffc0000 0x10000>;
+		ocm-sram@0 {
+			reg = <0x0 0x10000>;
+		};
 	};
 };
 
-- 
2.29.2

