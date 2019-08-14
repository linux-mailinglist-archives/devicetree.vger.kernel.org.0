Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 99CB98D610
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2019 16:30:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728021AbfHNO3a (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Aug 2019 10:29:30 -0400
Received: from mail-wm1-f66.google.com ([209.85.128.66]:51457 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728092AbfHNO33 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Aug 2019 10:29:29 -0400
Received: by mail-wm1-f66.google.com with SMTP id 207so4789785wma.1
        for <devicetree@vger.kernel.org>; Wed, 14 Aug 2019 07:29:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=9DsqMA3qFAXn24pl05ljozym+J7gax0j6GjVntAiYOQ=;
        b=TDu0To1gCBZ+0AOKz7IpaNPzK0Nklzt+Do4HG6UBKz8GHnEaskp1xeIHtdmHB5EGwu
         HQ+THz3WwnyD7hPhYAFN+GWMKRL3iUd8f6j/31JnYDhinQr4mk8ffnerVi4mfd1iiW7b
         96z9WAMcmvYshPheRCk5Ri0HObVUdnQdgAYiantB/y4xjGpUSm803U1c6ifMGhar3U6l
         1ppMmmVTnxYkC433993KQzu5XxnSIJbVTQ7bLVphp22U5smc2iZkmmfwqoNZZC+eApgf
         3XCecNk8mgl6nFbPeeo1dshRnLdmhAT1PpkP32hKuxHyvrmDnRIEB9ONN6nnWnoX92W3
         JFyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=9DsqMA3qFAXn24pl05ljozym+J7gax0j6GjVntAiYOQ=;
        b=j9W8GLpiBqq2kwTl5+Sv2PW4vdoUdPLz3tn3fEWJ2SuShEQNeQLt9S6MPuIIp7pmDK
         0L1gzBOUAfIFolSCM1hLEB5H+JBYWvCWLW8EPvBTLOMT9i/uESlH8MDHHELXoViyTbjn
         C0TzPbitC5iVT5n6eaL7CkLdqcRvBg6rgODxwsJBGMPgOKhd55F+vpSEAEkpqTU5OBzw
         TT6ZAWTrQZB8O3VyNdSeoV7W7R1tpUzbiUwop4ltAT7GOWrcJF2RHSLU25fyHpnXvNIJ
         5vNDkQXyOQgO+C80AD9UjXPxEasAo0cPgJ06FyPVeQyh2x0TUX8tAfzTVZiZgq5Ot9mz
         dlXg==
X-Gm-Message-State: APjAAAWwzuAAHDhWj92Vv3fblNmXRO4TA95ukAV+nPpmLJBhwkVR+7gB
        2ZKPCmhkCAj7qtGr7Pd3etQokw==
X-Google-Smtp-Source: APXvYqxaYmczp3cYsY3AQw5hAaTzvtpY7hpeQlM/ZpQaPs9n0FItyfE0GfptHr27uq56N5g8qEPzQQ==
X-Received: by 2002:a1c:6c01:: with SMTP id h1mr8773247wmc.30.1565792966998;
        Wed, 14 Aug 2019 07:29:26 -0700 (PDT)
Received: from bender.baylibre.local (wal59-h01-176-150-251-154.dsl.sta.abo.bbox.fr. [176.150.251.154])
        by smtp.gmail.com with ESMTPSA id o7sm4202908wmc.36.2019.08.14.07.29.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Aug 2019 07:29:26 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     khilman@baylibre.com
Cc:     linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Neil Armstrong <narmstrong@baylibre.com>
Subject: [PATCH 04/14] arm64: dts: meson-gx: fix spifc compatible
Date:   Wed, 14 Aug 2019 16:29:08 +0200
Message-Id: <20190814142918.11636-5-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190814142918.11636-1-narmstrong@baylibre.com>
References: <20190814142918.11636-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This fixes the following DT schemas check errors:
meson-gxl-s805x-libretech-ac.dt.yaml: spi@8c80: compatible:0: 'amlogic,meson-gx-spifc' is not one of ['amlogic,meson6-spifc', 'amlogic,meson-gxbb-spifc']

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-gx.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
index 5b3dfd03c3d3..e2cdc9fce21c 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
@@ -317,7 +317,7 @@
 			};
 
 			spifc: spi@8c80 {
-				compatible = "amlogic,meson-gx-spifc", "amlogic,meson-gxbb-spifc";
+				compatible = "amlogic,meson-gxbb-spifc";
 				reg = <0x0 0x08c80 0x0 0x80>;
 				#address-cells = <1>;
 				#size-cells = <0>;
-- 
2.22.0

