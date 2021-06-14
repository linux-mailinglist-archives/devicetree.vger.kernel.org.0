Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E4CD93A6A1D
	for <lists+devicetree@lfdr.de>; Mon, 14 Jun 2021 17:26:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233600AbhFNP2g (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Jun 2021 11:28:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40562 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233581AbhFNP2X (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Jun 2021 11:28:23 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D102C0613A2
        for <devicetree@vger.kernel.org>; Mon, 14 Jun 2021 08:26:07 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id l1so17270225ejb.6
        for <devicetree@vger.kernel.org>; Mon, 14 Jun 2021 08:26:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=XfIxLAxzEun4CdR+FMLHzem86jRfFqwkCl51GW3DxRw=;
        b=Gow7YXtlnAVjIFRFT0UBjfpd6ewnlxXfv5ccoA4PRDGaacPusJcf+Z/SCsYsNXDsic
         sr90Uey10rxwx8IhZ6u6BlUUGxhqQ3mibeqCGPJFuvy0zeUVMKmQ8G1lC8ol8psin12Y
         7JTmokfC5XpB15K2+nOs6Ph6mCFD1oHKSD4ACd9kVwCJvMSKD/iORKcoDM3/fwsfHyri
         cVpjgjrfU6cFZ6TMi7AFCagLCe3jEcu9aV6RLp4HfIo5p4Dm/adkkzoGpMSZGDvyjnPL
         HsSkPk6xtFoWdvLP59u1hDlQ9PsIfjQblA98vZzpwQmRk2RblmvNCAIL38M2C40nwLHk
         rbFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=XfIxLAxzEun4CdR+FMLHzem86jRfFqwkCl51GW3DxRw=;
        b=nmgVqGA0AQt4gNicv2O2PTtti/6P3F6nfOXy2OAmY+RXbND/kN90RHaqtnnx6MnZOw
         3H48YwYNQFFQBAIhi1mI0dhxvUtmxz88dK6GHyHtcjsSPL8oFvUH/xr2GZFpYAbj0Sct
         kUExN3/xDdadiM5aMP6sYKGljQ0k5vYc5o9Jy15n+ohDDCvds/3SwHGjVimj1/oBwxhG
         wwAxocAH2mx6RNQ+FfiHqo0A0cMj24wIPB1a2N9dLbRmk1tNa5hkqAL+oYu8Ax0rH2Gp
         DnkO5sLZEPY3hhrImvfrxzlkIZQ24sCRVFfYVyJTc3gup6efF75F3icsfCMLMy+wYKi0
         x+tw==
X-Gm-Message-State: AOAM530mi8WiZcMG3mdMyUcFmB8a7mmNxvw1qsVzV/IS8RJNo6mEiRfy
        1zcC3Rjeo/yUyW+NaTarUeFKgQ==
X-Google-Smtp-Source: ABdhPJzIW83s0cFtFkAOcLr8V4b8mYQzy51E6PAQgVWkEUh5FKCFdKVrKKUs2+nuDRe312QzCFM0IA==
X-Received: by 2002:a17:907:9487:: with SMTP id dm7mr15622953ejc.349.1623684365712;
        Mon, 14 Jun 2021 08:26:05 -0700 (PDT)
Received: from localhost ([2a02:768:2307:40d6:f666:9af6:3fed:e53b])
        by smtp.gmail.com with ESMTPSA id w8sm1379872edc.39.2021.06.14.08.26.04
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 14 Jun 2021 08:26:05 -0700 (PDT)
Sender: Michal Simek <monstr@monstr.eu>
From:   Michal Simek <michal.simek@xilinx.com>
To:     linux-kernel@vger.kernel.org, monstr@monstr.eu,
        michal.simek@xilinx.com, git@xilinx.com,
        Viresh Kumar <viresh.kumar@linaro.org>
Cc:     Krzysztof Kozlowski <krzk@kernel.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Quanyang Wang <quanyang.wang@windriver.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 15/33] arm64: zynqmp: Remove additional newline
Date:   Mon, 14 Jun 2021 17:25:23 +0200
Message-Id: <16f6f41c8d748d3c7cd4f49b2839e63a5b41c944.1623684253.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <cover.1623684253.git.michal.simek@xilinx.com>
References: <cover.1623684253.git.michal.simek@xilinx.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This is sync between Linux and U-Boot. Trivial change.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

Changes in v2: None

 arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts
index 719a9e5e1b01..1a45e4946dd4 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts
@@ -463,7 +463,6 @@ max15303@20 { /* u8 */
 				status = "disabled"; /* unreachable */
 				reg = <0x20>;
 			};
-
 			max20751@72 { /* u95 */
 				compatible = "maxim,max20751";
 				reg = <0x72>;
-- 
2.32.0

