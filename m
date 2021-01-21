Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BA3D92FE798
	for <lists+devicetree@lfdr.de>; Thu, 21 Jan 2021 11:30:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729348AbhAUK3L (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jan 2021 05:29:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56768 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729332AbhAUK2s (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jan 2021 05:28:48 -0500
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 325E3C061798
        for <devicetree@vger.kernel.org>; Thu, 21 Jan 2021 02:27:17 -0800 (PST)
Received: by mail-ej1-x633.google.com with SMTP id g12so1840999ejf.8
        for <devicetree@vger.kernel.org>; Thu, 21 Jan 2021 02:27:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=TTcoPBZF7B/GvLemNDb8587uLFmrB6rGDabgy89PTP4=;
        b=TEYoQY/HXH30/FU9hcm1kXWqGckPQS6NxjIoRLAdEeLK8kleLFQ8EM9Pqo5Z9r8WXB
         cdhyF48FB6Olh0alNKS4uo+riEY3kRBCCEYMhwvwb/0y01o0jIImwIZRmwpcZ36XWBlX
         wpHEk/UX3xW+uVTxD7Axe4sWnFfCwu8WuDCeOmqWvB6t3iSctRlPOnOTjvKiKSw97FqL
         Yk2HSjUndYUdiiMXDldijtUemPDvso6ZTJui3CugePfdmE0/ztYZ4a2isFKB6axqCVon
         c751xumC2Orf/m3etAmCjvXpznIQFgdNEc+U2bL1RNBOAc0D373doXWMChI2e2Sp3bu7
         ruaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=TTcoPBZF7B/GvLemNDb8587uLFmrB6rGDabgy89PTP4=;
        b=Qqr2ju0dfWf3V5WrX0nCmM0YTf9K7Z8QQeJOTvn5AW26PxGljv3cWLc4IeNZg6KO6J
         1REIo71aGg6POGuGo3FlqRuGBw8emEmt/l4UagYpp1ArDDqnjJRZFLMb4CfAAy+x1w1d
         Pncf4/GbVgyrujLmwz/Vu0xcZJfgYPO+LQvBLBZSMwr078O5wI68BdsUMfOYJdcN8+dE
         9qPWnwZC9Lh11Uw/KDtx+ZuWoke++tKJPWNf+0QPR5uUzQEKqRqaDBmQoZJFCRU7fdlR
         tdpeOc3ePwzLDiGdLbX1z4mGz4xLzzHqGmDq6P/7ONTpGqT0OqCheNfdsAEsQVqfYSTE
         p10A==
X-Gm-Message-State: AOAM5325OJntfkKCv4mv6EiQ/4q/UI/iuk7beH2T0CF+XLSvMR/809Cr
        t2SoeToG4Dcg31k7QmfWLlozBg==
X-Google-Smtp-Source: ABdhPJw4qwOTlqkMBMTMkuvtyA2bxt8juhpHrfhcIHgtWdsR0pHzpYHK7J0t56W8r/+vOuYZit9omg==
X-Received: by 2002:a17:906:d0c2:: with SMTP id bq2mr8700744ejb.1.1611224836000;
        Thu, 21 Jan 2021 02:27:16 -0800 (PST)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
        by smtp.gmail.com with ESMTPSA id u2sm2547805edp.12.2021.01.21.02.27.15
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 21 Jan 2021 02:27:15 -0800 (PST)
Sender: Michal Simek <monstr@monstr.eu>
From:   Michal Simek <michal.simek@xilinx.com>
To:     linux-kernel@vger.kernel.org, monstr@monstr.eu,
        michal.simek@xilinx.com, git@xilinx.com
Cc:     Kalyani Akula <kalyani.akula@xilinx.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 06/12] arm64: dts: zynqmp: Add label for zynqmp_ipi
Date:   Thu, 21 Jan 2021 11:26:54 +0100
Message-Id: <3dc8416abdd3498e61edcd83830a12af295c5c6d.1611224800.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <cover.1611224800.git.michal.simek@xilinx.com>
References: <cover.1611224800.git.michal.simek@xilinx.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add label which is used by bootloader for adding bootloader specific flag.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

Changes in v2: None

U-Boot needs to add u-boot,dm-pre-reloc; property
---
 arch/arm64/boot/dts/xilinx/zynqmp.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
index 94a2e1f2b713..31c6943c6217 100644
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
2.30.0

