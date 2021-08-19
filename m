Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BD8F63F1E86
	for <lists+devicetree@lfdr.de>; Thu, 19 Aug 2021 18:59:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231210AbhHSQ77 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Aug 2021 12:59:59 -0400
Received: from smtp-relay-canonical-0.canonical.com ([185.125.188.120]:57018
        "EHLO smtp-relay-canonical-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S230505AbhHSQ75 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 19 Aug 2021 12:59:57 -0400
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com [209.85.208.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-canonical-0.canonical.com (Postfix) with ESMTPS id A8449411CD
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 16:59:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1629392360;
        bh=Y4VjdAw6i2XAmKpVIHlCuxlv3sz5tzJooO2Kj1Zm5KY=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=eDBA272Y2svg85DF9lw/MbX3WzKN4Xur5Wx2Pdx2BTgOOn4EESIj/hqlklcgYSM20
         gbzfUSfJQZdXEFEoaXQe4YoFWGZ9twXzmsXDvOMNL5SLG+sUdB3rpn9nHtom+DLikJ
         Am/wIIDUEGaP6hyzLR0axFiJflPXxiemdO7DysUHl9T4a7wvX4Nxkj1rOzCG3pm4nj
         MM5q25jHqSKMfMFBfZCW3cZPrqkwtAoTG+GcCYi+nLcy0jCENxN16H3e1RhXGC9by2
         7FegM4hKXRBkulA+BGeBUa1BPeBj202wbgsEASQGoL92xgoTt7/Ha6YfHHmyCjG+q+
         zqPC7zwCKmXxQ==
Received: by mail-ed1-f69.google.com with SMTP id j15-20020aa7c40f0000b02903be5fbe68a9so3146933edq.2
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 09:59:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Y4VjdAw6i2XAmKpVIHlCuxlv3sz5tzJooO2Kj1Zm5KY=;
        b=iPj+xc6ctFD6MpF2TDXQ6Q72x1ta5WOt6ecddD85kn/HtN4i1kiM93FcvaGojxyDgq
         dBoyKL3eP/O8ZVqlwzajCqCL2Yww1pXMuk4a77RpbkJVNJDMMYjECZ016rEky9mfm82S
         iH1ytlMmNGTiue1PVCWA701ZjuutlrvSTtc++jjDldRSCR69npJ/EuO+weK9moGaqtAx
         vfHElmum0wuN69h/Xoeraiv9W5GPmWvB3aL/am5LkHfq9mhKfAXS2E8gjC+sRJ/Dzsgo
         X2TtHLzykixDJdpnZs2i/GIUTwAjuSnYvocGlB0GRsff0LgWYcxjIDidESjnT4CvWSdb
         Fbrg==
X-Gm-Message-State: AOAM530HPttrgZGCr25ZQLyWZq6wDxriIwhzeQajXTQ637ISC/z8W43A
        ACOsfJpun6NPFif3zNKTvEjYJuQQU0gsVniydLQL7Sys+wLGDXU/9smxymebthOa5qGsVhKgyqC
        2jCYShYggKBLKrwVxgcwGERywHjNUs7raSbF1J+c=
X-Received: by 2002:a17:907:9844:: with SMTP id jj4mr11566653ejc.274.1629392360424;
        Thu, 19 Aug 2021 09:59:20 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy43yi4cd7I0ui+CNEC5/97mRyJRHDDxkOUtMndNvJTXPpnkWSykdSV4XJEwgHTzH2mBfqKLQ==
X-Received: by 2002:a17:907:9844:: with SMTP id jj4mr11566632ejc.274.1629392360273;
        Thu, 19 Aug 2021 09:59:20 -0700 (PDT)
Received: from localhost.localdomain ([86.32.42.198])
        by smtp.gmail.com with ESMTPSA id h8sm2023418edv.30.2021.08.19.09.59.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Aug 2021 09:59:19 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Atish Patra <atish.patra@wdc.com>,
        Sagar Shrikant Kadam <sagar.kadam@sifive.com>,
        linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH 3/5] riscv: dts: sifive: drop duplicated nodes and properties in sifive
Date:   Thu, 19 Aug 2021 18:59:06 +0200
Message-Id: <20210819165908.135591-3-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210819165908.135591-1-krzysztof.kozlowski@canonical.com>
References: <20210819165908.135591-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The DTSI file defines soc node and address/size cells, so there is no
point in duplicating it in DTS file.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts | 5 -----
 arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dts | 5 -----
 2 files changed, 10 deletions(-)

diff --git a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
index c960e19cfa70..ed2c2429c6c2 100644
--- a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
+++ b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
@@ -8,8 +8,6 @@
 #define RTCCLK_FREQ		1000000
 
 / {
-	#address-cells = <2>;
-	#size-cells = <2>;
 	model = "SiFive HiFive Unleashed A00";
 	compatible = "sifive,hifive-unleashed-a00", "sifive,fu540-c000",
 		     "sifive,fu540";
@@ -27,9 +25,6 @@ memory@80000000 {
 		reg = <0x0 0x80000000 0x2 0x00000000>;
 	};
 
-	soc {
-	};
-
 	hfclk: hfclk {
 		#clock-cells = <0>;
 		compatible = "fixed-clock";
diff --git a/arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dts b/arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dts
index 2e4ea84f27e7..960d65ca5d4f 100644
--- a/arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dts
+++ b/arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dts
@@ -8,8 +8,6 @@
 #define RTCCLK_FREQ		1000000
 
 / {
-	#address-cells = <2>;
-	#size-cells = <2>;
 	model = "SiFive HiFive Unmatched A00";
 	compatible = "sifive,hifive-unmatched-a00", "sifive,fu740-c000",
 		     "sifive,fu740";
@@ -27,9 +25,6 @@ memory@80000000 {
 		reg = <0x0 0x80000000 0x4 0x00000000>;
 	};
 
-	soc {
-	};
-
 	hfclk: hfclk {
 		#clock-cells = <0>;
 		compatible = "fixed-clock";
-- 
2.30.2

