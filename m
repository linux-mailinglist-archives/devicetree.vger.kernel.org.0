Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 422103A133D
	for <lists+devicetree@lfdr.de>; Wed,  9 Jun 2021 13:48:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239388AbhFILs1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Jun 2021 07:48:27 -0400
Received: from mail-wr1-f41.google.com ([209.85.221.41]:43849 "EHLO
        mail-wr1-f41.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239394AbhFILsR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Jun 2021 07:48:17 -0400
Received: by mail-wr1-f41.google.com with SMTP id r9so8428005wrz.10
        for <devicetree@vger.kernel.org>; Wed, 09 Jun 2021 04:46:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=FTo7fY3KRCemJPkgL+lr6NZwHmmJ9ybZ3qdejBmcTTc=;
        b=HM8pgh7/bh6NKk9Y9TrR2GU+2d0omcsm8erFDG5vG6TkrCxyhvuMj17bnXKeHxEb9X
         OGzqFOcLnr9Ljzd53I+UsVpzJKoNkaf0cNxZMTzhQs5+1kvaxyesGNQRdhAQcDXYow3n
         lf5dTC530Q7RwMY0TTa8xkXsNSrcO6LW15B3NM4Jz74D++JKih7Pd1dKs+v2tolRV0ak
         FLaFUg2ysw902ywyjcK3t98pm8aYoZEjVrffZR7dNZJqLiY4k+X1ulsUxS4VKK58/P1p
         T2mN/ewlBpi5oPhl8tr4LGr1w5JKkCw+fddgEjK+1Jw8J2+N4HGWZFvRzi5SX4d97R35
         JN+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=FTo7fY3KRCemJPkgL+lr6NZwHmmJ9ybZ3qdejBmcTTc=;
        b=YEz2WQH8M1sOoy1qqfIAzNGyCRKUbeAfVJKANvBtbKZZ8Kkg19V0mNCenae+PlBOY0
         ln0IZOQwVDvtryTBZB+9iAbffH97q+x1RKQIrl2N472Ao9bNX8KrE0gTF0Bw5UGascLC
         iD2MkofzVy1NyV7o5LhUlGhVTGtWzK990zyyfdWdxul0h6EK9EuRZGjFis/TZd0ljdzs
         a5jRHlvSpb549VmLDMhghtdgUa7oLeOP4ENtJr8f7DDQSsVbiPDheSA5idpLinQeN4a1
         Av1PL12ESIQrcg/bH9MIlomb7g1igxwmUGooM7TXGY60pZsJHE5/F5PEa2pptCte4KUa
         lo5g==
X-Gm-Message-State: AOAM532ePUxSofiG+N7a7AuZMfRsubcamPjLZBBJhuovU2IgyXyU5HOB
        Z2zptGFQ3oG12vXbcjUIIOiOmw==
X-Google-Smtp-Source: ABdhPJxBZmKp+0falKzmfm9ydBDnIRX2z4EtWUOTKh7WVXlG3Uk3CvKjUsRc1MM2+cubnFvTfeduQQ==
X-Received: by 2002:a5d:40ca:: with SMTP id b10mr27939968wrq.240.1623239122618;
        Wed, 09 Jun 2021 04:45:22 -0700 (PDT)
Received: from localhost ([2a02:768:2307:40d6::45a])
        by smtp.gmail.com with ESMTPSA id y189sm21738918wmy.25.2021.06.09.04.45.21
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 09 Jun 2021 04:45:22 -0700 (PDT)
Sender: Michal Simek <monstr@monstr.eu>
From:   Michal Simek <michal.simek@xilinx.com>
To:     linux-kernel@vger.kernel.org, monstr@monstr.eu,
        michal.simek@xilinx.com, git@xilinx.com,
        Viresh Kumar <viresh.kumar@linaro.org>
Cc:     Krzysztof Kozlowski <krzk@kernel.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 01/31] arm64: zynqmp: Disable CCI by default
Date:   Wed,  9 Jun 2021 13:44:37 +0200
Message-Id: <f507d45fbaa0bd31f641e758efa40a2532466ced.1623239033.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1623239033.git.michal.simek@xilinx.com>
References: <cover.1623239033.git.michal.simek@xilinx.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

There is no reason to have CCI no enabled by default. Enable it when your
system configuration requires it. In Xilinx configuration flow this is work
for Device Tree Generator which reads information from HW Design
configuration.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

 arch/arm64/boot/dts/xilinx/zynqmp.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
index 28dccb891a53..302ca0196c34 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
+++ b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
@@ -245,6 +245,7 @@ can1: can@ff070000 {
 
 		cci: cci@fd6e0000 {
 			compatible = "arm,cci-400";
+			status = "disabled";
 			reg = <0x0 0xfd6e0000 0x0 0x9000>;
 			ranges = <0x0 0x0 0xfd6e0000 0x10000>;
 			#address-cells = <1>;
-- 
2.31.1

