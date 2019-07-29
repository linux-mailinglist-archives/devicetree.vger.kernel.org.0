Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A72A279338
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2019 20:40:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388187AbfG2Skc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Jul 2019 14:40:32 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:36635 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388192AbfG2Skc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Jul 2019 14:40:32 -0400
Received: by mail-wr1-f68.google.com with SMTP id n4so63033346wrs.3
        for <devicetree@vger.kernel.org>; Mon, 29 Jul 2019 11:40:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=AX1CJSCOcr1DeLD0PcCM+aTd9MxEzKQRXsBH50eaZPk=;
        b=SZIQxJ3LrVlobW/DJwItrOtqFgPH+4nNnn5gkWhI3BihWGVaU2HlD3APhDK4ogruPl
         jtdfRCwx3vAvD+LUAPJZVaIdzWsBA4qSmJ2QKJktKWxcLFQjCJg/wnrnBFno7y65kw2C
         aXlSfYH8PL/x8mQw7EQzOLuc1z3foUtqweyVgrPFKVDG9Jy1YXo1pADGCzSDrGGFx61A
         VSuN1ciVyyKy+LtJfRYLC4WwiHHWr4lBrquhoJ/ewqhKbF0jCuGdNK/4L9f88fg4Pd4+
         M/8TAZQ6sAS0bw3m7Ec4aG7EzKDd3NArn5CQSvV3rdx+7M6Pj8NhWcKC/MRMm3Yuc2E/
         aSyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=AX1CJSCOcr1DeLD0PcCM+aTd9MxEzKQRXsBH50eaZPk=;
        b=irBwKTRiF8tKt0ZMhBwNkrvwgg3vMAVFXVb6anJ4RYULzgzXdYXvx3EC5quMv3EpXb
         9shggIq0blZMwSDY23w/NeY22t+w5NwKNwGM348/dhEI0U0lZlmitKGVBom8NjXu7ts7
         Ua7FfVNbbXpR+50q8Ua9+4f6z8jyV1sDZzC1BQ21/Iczlzgu8AP2mOgwVeEy04ym+InJ
         9Rg3Mw8Kd1/MtRCvymlz5z6ymCxRmSfYCopWLvH0PGUGO+jllwJR2pnFW+SOFvSwdhes
         TaPT/aKWSUsuA9ezjMDCDYl7UhTMZNZeRzuffHi2uhnN9Z0HYc0KGeQH+/ND24e65GFJ
         mJEw==
X-Gm-Message-State: APjAAAVn8oupbKQTmbKBclG0xQgQON3RuOJrniGGMoV6NSg8PIaCP43d
        HH26SWFoNo3uEWOaPCJRXX0LRg==
X-Google-Smtp-Source: APXvYqysPWn2AC4887FVO3ti/NVIlx7rzerrr9tKYfwEwmRs9XDquoA2/mHcJZ+tizUY2iQv6nnZ0A==
X-Received: by 2002:adf:aac8:: with SMTP id i8mr49302545wrc.56.1564425630540;
        Mon, 29 Jul 2019 11:40:30 -0700 (PDT)
Received: from localhost.localdomain ([2a00:23c4:f78c:d00:1570:f96d:dab8:76ae])
        by smtp.gmail.com with ESMTPSA id g8sm60735790wmf.17.2019.07.29.11.40.29
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 29 Jul 2019 11:40:29 -0700 (PDT)
From:   Carlo Caione <ccaione@baylibre.com>
To:     srinivas.kandagatla@linaro.org, khilman@baylibre.com,
        narmstrong@baylibre.com, robh+dt@kernel.org, tglx@linutronix.de,
        jbrunet@baylibre.com, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Carlo Caione <ccaione@baylibre.com>
Subject: [PATCH 5/5] arm64: dts: meson: Link nvmem and secure-monitor nodes
Date:   Mon, 29 Jul 2019 19:39:41 +0100
Message-Id: <20190729183941.18164-6-ccaione@baylibre.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190729183941.18164-1-ccaione@baylibre.com>
References: <20190729183941.18164-1-ccaione@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The former is going to use the latter to retrieve the efuses data.

Signed-off-by: Carlo Caione <ccaione@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-axg.dtsi  | 1 +
 arch/arm64/boot/dts/amlogic/meson-g12a.dtsi | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
index 6219337033a0..b8244efb85fa 100644
--- a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
@@ -117,6 +117,7 @@
 		#address-cells = <1>;
 		#size-cells = <1>;
 		read-only;
+		secure-monitor = <&sm>;
 	};
 
 	psci {
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
index f8d43e3dcf20..2b07752e034f 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
@@ -100,6 +100,7 @@
 		#address-cells = <1>;
 		#size-cells = <1>;
 		read-only;
+		secure-monitor = <&sm>;
 	};
 
 	psci {
-- 
2.20.1

