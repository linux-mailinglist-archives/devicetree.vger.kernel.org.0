Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 665A52211E9
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2020 18:08:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725861AbgGOQGQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Jul 2020 12:06:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37668 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726354AbgGOQC5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Jul 2020 12:02:57 -0400
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com [IPv6:2607:f8b0:4864:20::543])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 95F8FC08C5DB
        for <devicetree@vger.kernel.org>; Wed, 15 Jul 2020 09:02:40 -0700 (PDT)
Received: by mail-pg1-x543.google.com with SMTP id t6so3297113pgq.1
        for <devicetree@vger.kernel.org>; Wed, 15 Jul 2020 09:02:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=FojCQD0soL8L04oOiGd4PA6/4vPUGRHj5zClY/TRPYE=;
        b=o9c4MJmXZhdJnJvZPE9FDAfuRd9z181vQC0EyB7eV0Vqd13Md5EaEuu7+Xo1aKJR1N
         itYOoAXd3hF9Vq+MXGUDY4r33mgpBs6bIS5cYT871cdxz1PxpC3wdJjBt77O3SkaagNK
         1S4V/xo2K8hWtE/o3o8n9HwgVOhXLoHmAVPvtSPIJ8EF+ZEt8HZOPbBsdkEnYHcAvYWR
         KS2BZ361E7EeWDQCKIOjqyppvfucHF7sxiEhSdPCrmPOYsXmfeVHQeGoSG0qFWDCJCrX
         d61ByL5zdorBmqdAXDW5nCCyL/ZcuTzfEJIXYEBeyA4loh8VdpYccawhyB7WMq4d7iQL
         AGFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=FojCQD0soL8L04oOiGd4PA6/4vPUGRHj5zClY/TRPYE=;
        b=O2HwhoJCC2Fw0KPwMki/T7F0SIdRhdl88+UyOqwcROia13fg6zjoOnLaPkPvinG3mQ
         qZxsTQzGJjrxE+A4V+9eugK5WhOS2HhAwss60JETihl+B9gnTaR1TtsCYBtl7vq8KeVf
         qA4RbtBiLVu5qyyG6yVEgXrzfgbhfOegMeArwL0fp1Vzx2P1PMqZxYTyiGWSUPGjN9pG
         iDwU6XY1yvV54PebbSTVDv2Z00KCBVTrOAo2E6otLZaB22k4gnftY0y2cpMxkCvTsh3y
         6GURgzldU9VAgqQWIZ7wVurW2Ou0rhYnSNGmdciw5vCaP3Tj8xwpGPDuR8zX4zcAUSaD
         NCxQ==
X-Gm-Message-State: AOAM5324EKqSwQ+/GXzuXD/CyWb9F6XlVT5Hgn0fUaMzwEWoq46gxTyi
        myKI8Ys/Ypc48pe+XiO01JIfxOps
X-Google-Smtp-Source: ABdhPJyxCVqUzd3vAJRX+GM36miY+jtS2+L+UYd39LbvOgCrUKbfH9foNP6Qm4zApSMKeBufYVfUVQ==
X-Received: by 2002:a65:640c:: with SMTP id a12mr380941pgv.88.1594828959616;
        Wed, 15 Jul 2020 09:02:39 -0700 (PDT)
Received: from localhost.localdomain ([103.51.74.198])
        by smtp.gmail.com with ESMTPSA id 4sm2520157pgk.68.2020.07.15.09.02.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jul 2020 09:02:38 -0700 (PDT)
From:   Anand Moon <linux.amoon@gmail.com>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Jerome Brunet <jbrunet@baylibre.com>
Subject: [PATCHv1 2/3] arm64: dts: meson-g12b-odroid-n2: Disable virtual wake RTC
Date:   Wed, 15 Jul 2020 16:02:08 +0000
Message-Id: <20200715160209.652-3-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200715160209.652-1-linux.amoon@gmail.com>
References: <20200715160209.652-1-linux.amoon@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Disable virtual wake RTC node on Odroid N2.

[    7.171149] meson-vrtc ff8000a8.rtc: registered as rtc0
[    7.182875] meson-vrtc ff8000a8.rtc: setting system clock to 1970-01-01T00:00:07 UTC (7)

Cc: Neil Armstrong <narmstrong@baylibre.com>
Cc: Kevin Hilman <khilman@baylibre.com>
Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
---
 arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
index a447cba4dd53..c8c1262a7bfc 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
@@ -517,3 +517,7 @@ &usb2_phy1 {
 	/* Enable the hub which is connected to this port */
 	phy-supply = <&hub_5v>;
 };
+
+&vrtc {
+	status = "disabled";
+};
-- 
2.27.0

