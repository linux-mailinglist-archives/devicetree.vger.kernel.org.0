Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 92ED72CBF0B
	for <lists+devicetree@lfdr.de>; Wed,  2 Dec 2020 15:08:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388862AbgLBOHu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Dec 2020 09:07:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39208 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388799AbgLBOHt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Dec 2020 09:07:49 -0500
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F5CCC061A4D
        for <devicetree@vger.kernel.org>; Wed,  2 Dec 2020 06:06:28 -0800 (PST)
Received: by mail-ed1-x52e.google.com with SMTP id y4so4030592edy.5
        for <devicetree@vger.kernel.org>; Wed, 02 Dec 2020 06:06:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=FJAKB0zdA0xuhJ4uEgBOrHtBpw3NH4gbDqp166kyyT8=;
        b=GdArINR/MRSfGmb3pT9LK/qJanGj5ypN/SoRo5CEPIrG205s+oMrHO1vT/DovUlTAv
         x6dD2N9yu7m+nrMeIXDYXNLLPKXSFWSzqBAeK2Ntb3TCU0IDLPHZvAokJg2jKeYBar30
         FPq7aJ/97Zaml/uhMIEYDzlIhm0PHcnTdO2SeybxPhUTEaUV3FOaKZ5bW+EiWOagcLQ1
         lsBHWt/PHcC2cad35UPvu5BjIruPWhi2h2ANINwOlGxqTIry01hACFXarcG1nF19jC3U
         VRq/cJMBOoT+cQTMYEbccsEN3paUsT9dme2ihGBbppT9Gn5q2CdwXvuM8K/tTRQGK54I
         13jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=FJAKB0zdA0xuhJ4uEgBOrHtBpw3NH4gbDqp166kyyT8=;
        b=WYr44jElX8vfCVYqV6qLM+1BxjbB5yx+go4Lj2ZJU1+9eJuNNoF0YXeK164f4Knpvw
         Fx23HONkTIiN6scDb49oKmaMfhXwnRLueXFase0OMjzXB06phsgcqZn8Lt9hjzfmkBTY
         g/NYWquFcGrXL8GQZWzcRzBDzFqA7erml50Xn5U9dXryz+C8NWXuUrjx19N3MJhGFu2p
         2NcjvyKfVN9QiidWVSSbPfZ7UnNC7gz6X2HQbAYB3uSsiqtkDCozH40QAS1JKn2izP96
         Gg4M6w5hJIM6H3X8BHXGpEyJ9Y0MrDAgIQD6jhLbkEgJa+oOwnsxKTyjycrXHjTJpW5/
         fM0A==
X-Gm-Message-State: AOAM532IDfbABQdYaW6JODehZ0Oj6pTdhdHJL9Zw5zkbkGgvOE3NnZqX
        TefGt6YZbL7TqCTqq93/JXzi+A==
X-Google-Smtp-Source: ABdhPJxZqoa5ApHSfYDj3Lak3S333kHG8nMsBsLfLCEp/6tH2R8oAnaJiysMDgLoseSOrp8ZkCR0wQ==
X-Received: by 2002:a05:6402:c83:: with SMTP id cm3mr23501edb.189.1606917987072;
        Wed, 02 Dec 2020 06:06:27 -0800 (PST)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
        by smtp.gmail.com with ESMTPSA id t8sm431538eju.69.2020.12.02.06.06.26
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 02 Dec 2020 06:06:26 -0800 (PST)
Sender: Michal Simek <monstr@monstr.eu>
From:   Michal Simek <michal.simek@xilinx.com>
To:     linux-kernel@vger.kernel.org, monstr@monstr.eu,
        michal.simek@xilinx.com, git@xilinx.com
Cc:     Kalyani Akula <kalyani.akula@xilinx.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Manish Narani <manish.narani@xilinx.com>,
        Rajan Vaja <rajan.vaja@xilinx.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 06/12] arm64: dts: zynqmp: Add label for zynqmp_ipi
Date:   Wed,  2 Dec 2020 15:06:05 +0100
Message-Id: <272e23e0123f02c559bfa4ada9de73eb197aced8.1606917949.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <cover.1606917949.git.michal.simek@xilinx.com>
References: <cover.1606917949.git.michal.simek@xilinx.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add label which is used by bootloader for adding bootloader specific flag.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

U-Boot needs to add u-boot,dm-pre-reloc; property
---
 arch/arm64/boot/dts/xilinx/zynqmp.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
index 4fa820f78d76..8e9b54b5e70c 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
+++ b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
@@ -99,7 +99,7 @@ opp03 {
 		};
 	};
 
-	zynqmp_ipi {
+	zynqmp_ipi: zynqmp_ipi {
 		compatible = "xlnx,zynqmp-ipi-mailbox";
 		interrupt-parent = <&gic>;
 		interrupts = <0 35 4>;
-- 
2.29.2

