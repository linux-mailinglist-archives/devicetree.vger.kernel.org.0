Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C5CFA28E452
	for <lists+devicetree@lfdr.de>; Wed, 14 Oct 2020 18:24:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728103AbgJNQYZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Oct 2020 12:24:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49276 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727888AbgJNQYZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Oct 2020 12:24:25 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C192C061755
        for <devicetree@vger.kernel.org>; Wed, 14 Oct 2020 09:24:25 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id q5so190555wmq.0
        for <devicetree@vger.kernel.org>; Wed, 14 Oct 2020 09:24:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Xc8G40tYgwiAv2ESHx43A45xg26ysJOM3AkOz4ZNqWQ=;
        b=uDnGJdlHYhAtlRZpVONEODX3++/Ye9xPj0H33vq+HUBiS0ct0tDokrtZHJBow4ddKS
         V8VQW405k64jZXK44pwP2zQdwHaOi2X9GRZok3aCHox6TuVL0z8BSE8ax0uR3TvNbEew
         DTzrWJ6CBPbtoYlyQJKn94j6lWdIFqlbwTlrR9WBGPgdZU34+r+O1u93lBi5g1eDmpLp
         0rfOVUO86wtKQfuGPV5PeDNBuE43MwBdVtFEf2294FDBZrEmc4zP2VnA+IOCCzAFp8XO
         YtxmDNm5Id5MsaZnzWT4NUoPe8DuPPsM+gAKYqFQb3EhU/EAI7UC2JLPrbyfUvu4Ilm/
         xJ0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Xc8G40tYgwiAv2ESHx43A45xg26ysJOM3AkOz4ZNqWQ=;
        b=rvTW5AFkcNlJHLv3Z9ez9T92NYz7t7gQ46L4Gqy6SJOOsCRWdy9x6XJbK21D9K22Ep
         BlcbFoybF6fl3vvxo7svnL7DRwPm2AMcfZQXwjQXWFrB8L+hgpW7zfS5UBbRdyaexO2j
         3D7dyXpOzeqxoOfHrOVAhN9+XmCJccdS/3jdef01EaN6lR4G6vjdS2ijDVVPTqbWog5V
         /rm8CWlgCadyGJPNSAv9KuUtohPGzrAjegX8TsCyoi/E5BYnB5/UJVbv7b89M9LBmamS
         CfAYeSQ1tlyRMOBHOcGB05ACS3svdkLxo/cNsxNIPSCkwUphL0ObjvKgkwEY5qzbvfbm
         CRRQ==
X-Gm-Message-State: AOAM530SazwZ2iycMmsAvZs2UmGnuFDZckcFTooMUMUQaR8nYSP3N3uf
        zK9KtGPqrZ9umSv2+S32xxWKTDae4w4MLA==
X-Google-Smtp-Source: ABdhPJw7WdycnwRe7GUnyPOwfkfjcJNVjTEjNUQ7ks7X5h2H2zkzq/jAlBVaMGWa8NIFu9oDLiwFRA==
X-Received: by 2002:a1c:ed15:: with SMTP id l21mr272353wmh.26.1602692664144;
        Wed, 14 Oct 2020 09:24:24 -0700 (PDT)
Received: from localhost.localdomain (138.165.185.81.rev.sfr.net. [81.185.165.138])
        by smtp.gmail.com with ESMTPSA id x21sm206227wmi.3.2020.10.14.09.24.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Oct 2020 09:24:23 -0700 (PDT)
From:   Fabien Parent <fparent@baylibre.com>
To:     linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     matthias.bgg@gmail.com, robh+dt@kernel.org,
        Fabien Parent <fparent@baylibre.com>
Subject: [PATCH 1/2] arm64: dts: mediatek: mt8516: rename usb phy
Date:   Wed, 14 Oct 2020 18:24:03 +0200
Message-Id: <20201014162404.1312544-1-fparent@baylibre.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The USB phy node is named usb0_phy but there is only one phy with
2 ports on MT8516. Rename the phy to make it more obvious it can
also support the usb1 node.
The usb1 node will be added in a follow-up commit.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 arch/arm64/boot/dts/mediatek/mt8516.dtsi         | 2 +-
 arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8516.dtsi b/arch/arm64/boot/dts/mediatek/mt8516.dtsi
index 943c426e9aaf..50049b6c1ba7 100644
--- a/arch/arm64/boot/dts/mediatek/mt8516.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8516.dtsi
@@ -455,7 +455,7 @@ usb0: usb@11100000 {
 			status = "disabled";
 		};
 
-		usb0_phy: usb@11110000 {
+		usb_phy: usb@11110000 {
 			compatible = "mediatek,generic-tphy-v1";
 			reg = <0 0x11110000 0 0x800>;
 			#address-cells = <2>;
diff --git a/arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi b/arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi
index dfceffe6950a..8bad8faf35d2 100644
--- a/arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi
+++ b/arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi
@@ -195,7 +195,7 @@ usb_con: connector {
 	};
 };
 
-&usb0_phy {
+&usb_phy {
 	status = "okay";
 };
 
-- 
2.28.0

