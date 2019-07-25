Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 513AF7599B
	for <lists+devicetree@lfdr.de>; Thu, 25 Jul 2019 23:30:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726585AbfGYVa4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Jul 2019 17:30:56 -0400
Received: from mail-io1-f66.google.com ([209.85.166.66]:45606 "EHLO
        mail-io1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726524AbfGYVa4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Jul 2019 17:30:56 -0400
Received: by mail-io1-f66.google.com with SMTP id g20so100364989ioc.12
        for <devicetree@vger.kernel.org>; Thu, 25 Jul 2019 14:30:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=date:from:to:cc:subject:message-id:user-agent:mime-version;
        bh=R34sE2QqEpGg+rOjPwslaDj/217UdV8AQ+/1Q6RrkTc=;
        b=KLn+NGOIueZ8ofrUSfHzFju02ajAJkkF2J8Q2OptIXHTJRh/RqWGa/B1iIT9/yd3LF
         14UOzf7MlJvZg0zZGEUYTLO2Bb3n01EPo5k4Q5W9dmFcg+/YM/KraPaLk3d3zhYCBPtE
         20dQoIBbfsEEpAtgOPFWksLy8ZODBrCDnc/vb8jr3lD1mKu/abGriNWaV/6QKlWmM7+v
         VUnDwSKeDtSNJJODGK2mt0EW5xpIm/9K3RCq0CV7XpCKw0pofYBRjKrFmsARi52b6Axf
         JM2XkL5qr3m3gZHe5jn36yfOe5dxDuO2I1fCNKy5eXpjshNf5zJr65zb9e/UjZQC++Jt
         f2Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:user-agent
         :mime-version;
        bh=R34sE2QqEpGg+rOjPwslaDj/217UdV8AQ+/1Q6RrkTc=;
        b=b0VWbiUG7MpZVlqg3rebDo0w0N/+DC2HzjrVb9tEOu9FuqbaXzJ+nn4gyWHY4b5Qky
         1vEXN/UedVW2u4TCJwFCH9t/PEI/45SwJp2i2917q97VDDzU8KovCEIlXF8OjTOmIgNR
         ls1sYNBD9hqsliJzO2YgmE1tkISHJWWOFB+aIL9G3LKLkdNEK7A1q/m3PFHEY1UYev2X
         P0Mc6J0q2YU3QAqrEK3SipT5dEB+TOG+EC9SITmLSA1a3TfHSknONVVzIIuP5KoC3HNd
         Qv+pF6u7jZvx26JEASDTRXaiVhjnAlnQimnWh2dOBZVMB94ejFtysrxABs6nIrfGbN/5
         HoaA==
X-Gm-Message-State: APjAAAWwrqd7WiCadyQuLnDYzKK4LbhIB8scS2CaZwq+8+Hfmb/zkqHs
        XxWpYUPYDa6kVjGuQm+VTS5rFw==
X-Google-Smtp-Source: APXvYqwVgEhvXkeqHfsRpK6JJQkcVYIip6G1SiuqcOLAHGGxZ9wHsmUDxl5+2sM2lJCAvov5rFgrGA==
X-Received: by 2002:a6b:f216:: with SMTP id q22mr44503183ioh.65.1564090255407;
        Thu, 25 Jul 2019 14:30:55 -0700 (PDT)
Received: from localhost (67-0-24-96.albq.qwest.net. [67.0.24.96])
        by smtp.gmail.com with ESMTPSA id d25sm40703267iom.52.2019.07.25.14.30.54
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Thu, 25 Jul 2019 14:30:54 -0700 (PDT)
Date:   Thu, 25 Jul 2019 14:30:54 -0700 (PDT)
From:   Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To:     linux-riscv@lists.infradead.org
cc:     linux-kernel@vger.kernel.org, robh+dt@kernel.org,
        mark.rutland@arm.com, palmer@sifive.com, devicetree@vger.kernel.org
Subject: [PATCH] riscv: dts: fu540-c000: drop "timebase-frequency"
Message-ID: <alpine.DEB.2.21.9999.1907251429420.32766@viisi.sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On FU540-based systems, the "timebase-frequency" (RTCCLK) is sourced
from an external crystal located on the PCB.  Thus the
timebase-frequency DT property should be defined by the board that
uses the SoC, not the SoC itself.  Drop the superfluous
timebase-frequency property from the SoC DT data.  (It's already
present in the board DT data.)

Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
---
 arch/riscv/boot/dts/sifive/fu540-c000.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
index 9bf63f0ab253..42b5ec223100 100644
--- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
+++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
@@ -21,7 +21,6 @@
 	cpus {
 		#address-cells = <1>;
 		#size-cells = <0>;
-		timebase-frequency = <1000000>;
 		cpu0: cpu@0 {
 			compatible = "sifive,e51", "sifive,rocket0", "riscv";
 			device_type = "cpu";
-- 
2.22.0

