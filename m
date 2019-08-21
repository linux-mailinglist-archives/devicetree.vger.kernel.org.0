Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 793E297C6B
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2019 16:21:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729380AbfHUOU5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Aug 2019 10:20:57 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:35809 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727949AbfHUOU5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Aug 2019 10:20:57 -0400
Received: by mail-wr1-f68.google.com with SMTP id k2so2247216wrq.2
        for <devicetree@vger.kernel.org>; Wed, 21 Aug 2019 07:20:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=xBn+s7shYC39K9Spwq6+NMMR/jl0g0PIkiRbeqrATnM=;
        b=U/VJAIWr87HIEPwTw6ElLTU+BjcfdWObT+soaik9zxpQDIVHoX/0bjZK/FOEiirw/M
         SS69viIfEFVAfR6Q1dHPajmwVRdN9bo/ooyrTLtz9E3+TCcV8ngieuMQg0q18YgRFMqa
         l6HgIUuyPsRBWKCIzcWjNtpf0k3KxlaTT40Pc4ri5V/wus7rC5QFXeJt4A5/5iQ3fXIs
         5j8XdCSRKHz6eYplrYr/+QD+TlmN0GRfsBAWYjQTIMbWalua40oYT/Xjqm3lnJoIKz2F
         I/scEtrhlncrq01IxhTSVmqfoUZO1dDtfVgovHbiDk05CeM40zvC5Ce4vsHJKC5eZi3g
         VzPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=xBn+s7shYC39K9Spwq6+NMMR/jl0g0PIkiRbeqrATnM=;
        b=dfS/uL7cpr1CfaIXG+e8TMYuJYobf0MnSKLgppGUUEnHteDFsSV/5lwFIoEAd2NMyR
         xPM2uO1QeEPSfK0kmlA68URZe6VD1JpSSODxelrvEH7uJKT5C6eMyZr1bHkYucGkYkVN
         yUaUgfQ9UxxLSB46RgTbD1iczrWdlVSEdNcHI5MNvuImdX4oQQ9iM/wURxHKlrH2ubVR
         XZkQUEF/eO6P5LxTImVYCVaPlQq7rfKLCpJBR/DYMf9sT5zSICxICf3t793F4dtN0Y+k
         MMik8YOrZDe0AROHJR4CI6uiWHfO9p2r5a0EbNbh2fc14PpCIvHE4DDQlh8BVb3ldziS
         el9A==
X-Gm-Message-State: APjAAAVDEmvNHMoCEgWkzTk7jYx2FdaTxaNToiEifdqi5Cn/am3pLLcd
        iPKDLmnRtauY1ytcZpC2vcGFaQ==
X-Google-Smtp-Source: APXvYqxy04ouXX3eyK6f9Fi/iYrgL3Vj5mFrNuT90x0YMz28UBE0Fi9V1zFuiKfoH/mxJeevShFsXQ==
X-Received: by 2002:a5d:6911:: with SMTP id t17mr40633375wru.255.1566397255042;
        Wed, 21 Aug 2019 07:20:55 -0700 (PDT)
Received: from bender.baylibre.local (wal59-h01-176-150-251-154.dsl.sta.abo.bbox.fr. [176.150.251.154])
        by smtp.gmail.com with ESMTPSA id o9sm33418939wrm.88.2019.08.21.07.20.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Aug 2019 07:20:54 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     khilman@baylibre.com
Cc:     linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Neil Armstrong <narmstrong@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: [PATCH v2 02/14] arm64: dts: meson-gx: drop the vpu dmc memory cell
Date:   Wed, 21 Aug 2019 16:20:31 +0200
Message-Id: <20190821142043.14649-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190821142043.14649-1-narmstrong@baylibre.com>
References: <20190821142043.14649-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This fixes the following DT schemas check errors:
meson-gxl-s805x-libretech-ac.dt.yaml: vpu@d0100000: reg-names: Additional items are not allowed ('dmc' was unexpected)
meson-gxl-s805x-libretech-ac.dt.yaml: vpu@d0100000: reg-names: ['vpu', 'hhi', 'dmc'] is too long

The 'dmc' register area was replaced by the amlogic,canvas property
which was introduced in commit f1726043426c73 ("arm64: dts: meson-gx:
add dmcbus and canvas nodes.") and commit cf34287986d0b6 ("arm64: dts:
meson-gx: Add canvas provider node to the vpu")

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm64/boot/dts/amlogic/meson-gx.dtsi | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
index faff77175486..c2d3fffea8a7 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
@@ -528,9 +528,8 @@
 		vpu: vpu@d0100000 {
 			compatible = "amlogic,meson-gx-vpu";
 			reg = <0x0 0xd0100000 0x0 0x100000>,
-			      <0x0 0xc883c000 0x0 0x1000>,
-			      <0x0 0xc8838000 0x0 0x1000>;
-			reg-names = "vpu", "hhi", "dmc";
+			      <0x0 0xc883c000 0x0 0x1000>;
+			reg-names = "vpu", "hhi";
 			interrupts = <GIC_SPI 3 IRQ_TYPE_EDGE_RISING>;
 			#address-cells = <1>;
 			#size-cells = <0>;
-- 
2.22.0

