Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3400A135AAF
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2020 14:53:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729476AbgAINwx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Jan 2020 08:52:53 -0500
Received: from mail-wm1-f45.google.com ([209.85.128.45]:37019 "EHLO
        mail-wm1-f45.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731316AbgAINwa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Jan 2020 08:52:30 -0500
Received: by mail-wm1-f45.google.com with SMTP id f129so2932234wmf.2
        for <devicetree@vger.kernel.org>; Thu, 09 Jan 2020 05:52:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=5Dls9W9bj1Gd/Lpqv5BPHUUP2RvMef3FCTEyB1xcyHE=;
        b=ZmSrs3gfZlGX9yRHbls/OTOQJMinpbZpam24OqN4vYR9asSrgRGCPLZpt0NhLiuQpb
         wzZ5XSKUTJDyRkmIWZwv1k8GW++vcg36BoxACbhfOj7wKKVrvbWDcc/W8gmp+lKivacg
         JIB4lQwlXP4prJWeTZ0YTg/Y68sYDKVuKZyw+9WjU7vdXRXB5KUTw42Muyk/Rjv/tZkr
         cP/8jjSpE7H1Dsr6NtQ9j23PVU2yF0P//wNubjtDiL/s/Q7TKk90DdUGyWpGeBCQpv38
         KJnHpdATT/CUuFXt3P/CUcv+VH/LtGVavzS3Z/qFQcWMMakOkTfbV49mIPfR+4KNDcKf
         gF3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=5Dls9W9bj1Gd/Lpqv5BPHUUP2RvMef3FCTEyB1xcyHE=;
        b=skSKyw4psmxuqKItpZFNxPdP4JzG6Q2PKTsmoovC7FObXVcDuiUB+/NTkMnQH2i7CB
         30lvdiIy6ZXI4j6w+SYJEFpMHLj+1OKCve8sGyCpv82Wnc+IACsBCiJKWs3RtMikzwiV
         Q0mOTx6ok1L+AKdwE9BL4SKSKz81vLlBs+eeHrHR5sE7IObsBzrtM8tMY7tdCmpPtf7R
         HJ1dYWDBcsV7Jk4stmaePLxHc9TdMo7LCQazGsCPjwIwJb2N4Wu668Tel6eePY9ygQcs
         rPMiNiPZmJkOSCXx7EHbFzwzQTL55JazUyGWpxmgmvuuuW/ZmFr4wmKAK5hylvg0XIzl
         69fg==
X-Gm-Message-State: APjAAAXV4QP2ulXtsowcEosBM0nodedFgqXT0b/64DQh587nOgcErrak
        GAu9ydQB/hac0f5GFGqbCefXFQ==
X-Google-Smtp-Source: APXvYqx0+sXU9Xa6uVSv3/rkJoMDUEUGho9XMFd9d3+XzkDYUqX5o+JlJlKdL+1KOfK8+bnYRZVCOQ==
X-Received: by 2002:a7b:c183:: with SMTP id y3mr4957307wmi.45.1578577948805;
        Thu, 09 Jan 2020 05:52:28 -0800 (PST)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
        by smtp.gmail.com with ESMTPSA id q68sm3178254wme.14.2020.01.09.05.52.28
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 09 Jan 2020 05:52:28 -0800 (PST)
From:   Michal Simek <michal.simek@xilinx.com>
To:     linux-arm-kernel@lists.infradead.org, git@xilinx.com
Cc:     Anurag Kumar Vulisha <anurag.kumar.vulisha@xilinx.com>,
        Harini Katakam <harini.katakam@xilinx.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Rajan Vaja <rajan.vaja@xilinx.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/8] arm64: zynqmp: Fix address for tca6416_u97 chip on zcu104
Date:   Thu,  9 Jan 2020 14:52:17 +0100
Message-Id: <100294ed4d902923527de042cc87eb59648ce91f.1578577931.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <cover.1578577931.git.michal.simek@xilinx.com>
References: <cover.1578577931.git.michal.simek@xilinx.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

I2c address is not 0x21 but 0x20.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

Changes in v2: None

 arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revA.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revA.dts
index 2d71b4431cce..7a4614e3f5fa 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revA.dts
@@ -118,9 +118,9 @@ i2c@4 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 			reg = <4>;
-			tca6416_u97: gpio@21 {
+			tca6416_u97: gpio@20 {
 				compatible = "ti,tca6416";
-				reg = <0x21>;
+				reg = <0x20>;
 				gpio-controller;
 				#gpio-cells = <2>;
 				/*
-- 
2.24.0

