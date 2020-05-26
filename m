Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BC0CF1DB194
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2020 13:26:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726916AbgETL0Y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 May 2020 07:26:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55694 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726907AbgETLZn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 May 2020 07:25:43 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5145CC08C5C2
        for <devicetree@vger.kernel.org>; Wed, 20 May 2020 04:25:43 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id l11so2794972wru.0
        for <devicetree@vger.kernel.org>; Wed, 20 May 2020 04:25:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=A3BhZ5w2nZuK3+ZudhXc+00fKQMrXVNQ6trbR5U2M5Y=;
        b=jJl7EHkSHE5L7ug2e+7FfE+evIqe8FKm47gAqTsQFBuvFJOM8IIH5d9Fr2EtT/MaCB
         5KT//LxD+XfnIEQReE/Kr7rJOmeWFP88We0dpLukbXgBAFcGzypmoSX88T/OJQOaIGEv
         2SC9e4wIybK+5hpkTyAcUIRjX2eRhmH9wd6W75ENaIsw0+hhonRpNAAeGFMGY8iY9U3W
         3d4urm5PcTJ2zwCp3VXAFL0IJd7ShIZAOntvZ+RRFTSJAfIQ/FAzOGPVN0f7qUnrbVSU
         I01DyocLppKyZ5eYXdc8QXZahAujUNoTgzmT7MSB6jzqf1RiwRNb9+CAj0Sw0iktkKBZ
         teHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=A3BhZ5w2nZuK3+ZudhXc+00fKQMrXVNQ6trbR5U2M5Y=;
        b=EKs7NU9BZMr+/Hz80U7De4rKX+NVje4WeI28vJhlNnvdj+2cZu0QM3zucMSWnbjuGE
         /5GR/KesmNqkB01mc2kLBzmcT4n3kYhx5tf3ZxeBwFhBoMFJOZsUqXUWvylwP/8M/UaQ
         Kh5heRwKzU603LHiKyyLgQeDMnGhrQUfNmnZmS1qaUfUZJwY7yfKUgZ3naCsDGl/OS41
         JMBIiAWHoOWG/xyADkbGlQMTzRwi9NMzRl1GxQE5Nvz2EDtYu2CLlnF0xJQYbTkZWH3x
         SRN6/b5q2AjYGLgGnf6cLXQMoCP9f07znKu/vRGUFPXmPQjkdL67pWjKgdvRjx9lUC5M
         4IAw==
X-Gm-Message-State: AOAM5302dvm6pVIvu0/Mk0cW542E7YWy+p6zg7xY0keDxjYUp4LHbuAc
        kqPJHGA+hh6AARRkJhd5jdd2LA==
X-Google-Smtp-Source: ABdhPJxslAZNVwy7HZ5hGhld1CSn0uUyQGP3dufDHtakdC9Fg9OluxTSArW0nOyzO5SoIp0Y/JM9eg==
X-Received: by 2002:adf:e5c6:: with SMTP id a6mr4058394wrn.180.1589973942051;
        Wed, 20 May 2020 04:25:42 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr. [2.15.156.232])
        by smtp.gmail.com with ESMTPSA id v22sm2729265wml.21.2020.05.20.04.25.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 May 2020 04:25:41 -0700 (PDT)
From:   Bartosz Golaszewski <brgl@bgdev.pl>
To:     Rob Herring <robh+dt@kernel.org>,
        "David S . Miller" <davem@davemloft.net>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        John Crispin <john@phrozen.org>,
        Sean Wang <sean.wang@mediatek.com>,
        Mark Lee <Mark-MC.Lee@mediatek.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Arnd Bergmann <arnd@arndb.de>,
        Fabien Parent <fparent@baylibre.com>,
        Heiner Kallweit <hkallweit1@gmail.com>,
        Edwin Peer <edwin.peer@broadcom.com>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Stephane Le Provost <stephane.leprovost@mediatek.com>,
        Pedro Tsai <pedro.tsai@mediatek.com>,
        Andrew Perepech <andrew.perepech@mediatek.com>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>
Subject: [PATCH v4 07/11] ARM64: dts: mediatek: add pericfg syscon to mt8516.dtsi
Date:   Wed, 20 May 2020 13:25:19 +0200
Message-Id: <20200520112523.30995-8-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200520112523.30995-1-brgl@bgdev.pl>
References: <20200520112523.30995-1-brgl@bgdev.pl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

This adds support for the PERICFG register range as a syscon. This will
soon be used by the MediaTek Ethernet MAC driver for NIC configuration.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 arch/arm64/boot/dts/mediatek/mt8516.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8516.dtsi b/arch/arm64/boot/dts/mediatek/mt8516.dtsi
index 2f8adf042195..8cedaf74ae86 100644
--- a/arch/arm64/boot/dts/mediatek/mt8516.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8516.dtsi
@@ -191,6 +191,11 @@ infracfg: infracfg@10001000 {
 			#clock-cells = <1>;
 		};
 
+		pericfg: pericfg@10003050 {
+			compatible = "mediatek,mt8516-pericfg", "syscon";
+			reg = <0 0x10003050 0 0x1000>;
+		};
+
 		apmixedsys: apmixedsys@10018000 {
 			compatible = "mediatek,mt8516-apmixedsys", "syscon";
 			reg = <0 0x10018000 0 0x710>;
-- 
2.25.0

