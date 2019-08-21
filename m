Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 92DFE97C87
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2019 16:21:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729455AbfHUOVq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Aug 2019 10:21:46 -0400
Received: from mail-wr1-f66.google.com ([209.85.221.66]:45385 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729414AbfHUOVE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Aug 2019 10:21:04 -0400
Received: by mail-wr1-f66.google.com with SMTP id q12so2199285wrj.12
        for <devicetree@vger.kernel.org>; Wed, 21 Aug 2019 07:21:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=VoiyEoznGsebSQriKSg2X1Svm8xxDWhM6W5MAaVlZfM=;
        b=kxZeVK3IMsEJNXIkE1onD8r59IVoLEsMEFhCHM77efUT/dMgzNRiqJozIBArFi+2+i
         3e6vE9PB3bzlqrDinHivdpyfO3ztJdbCINwQIHsXFnVv/z3ohELjBSr4XoMcs8UkgfNU
         fkYsYWfkv2jhYTPZCOKsRZwZ6D4kSe5y4p9vsuZ1iXJ3jCZCr5v8RUMEPmMY8/xCUeo0
         kV74c4MDt0J4MdKaXQ6VqPlndlNyreStd0mMLlKS12j2ElwiG5vOgJ/DuWnJX36gUae/
         9T/Jlziczx8QIzIeGtxsxH7a6Ybxtob9fmA4il5Y10TicFejw4bibo7u0uGPYNdD32x0
         LUOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=VoiyEoznGsebSQriKSg2X1Svm8xxDWhM6W5MAaVlZfM=;
        b=KZxeD1Y+OitRrA01HHUH5yK463Q+I8QNBCUUyZGmeECoisv3eb+0W5S9Hi+Uzi2c8e
         AiF9sSfZwFeEiKZsmImys3iohpDeOc/gMQBxx2MglP6UpPkFOol/mkkWkJ1AYmtzzw12
         b8ouDULYNBiz/KVXwYR51oGIr/CkdILwrwf76Ofy6SNjFfrtA9EQt904ErYLoRP9ACfG
         TT5qO7bu8JYa1PJnr2iy3VZAgozx7zpCvHD2ShYsTtSZuvRDPSTRUFp27xiwm0CD/bnw
         Ei6IDlySSOLpkGAzd4Nlc62fxDxP8mgQ2NzJTre/qCI4uRAhgbt1cenD4xFPIUl+bpjw
         J+vw==
X-Gm-Message-State: APjAAAWIhUPSJ6hTT1sa8fJ38gSIIeBoIsTcjvAIKnhsKAv+lgTJTnbV
        RrORKZ/afH1DHn+iLg+ckD/5RQ==
X-Google-Smtp-Source: APXvYqxFlWXpWGYx7Skr2k4dM6gUG8fIPs5pjfvI7AKdcs4MotQyTUuCI6H5yyjL+seAB1jiCBbh3Q==
X-Received: by 2002:a05:6000:12c5:: with SMTP id l5mr40802954wrx.122.1566397261813;
        Wed, 21 Aug 2019 07:21:01 -0700 (PDT)
Received: from bender.baylibre.local (wal59-h01-176-150-251-154.dsl.sta.abo.bbox.fr. [176.150.251.154])
        by smtp.gmail.com with ESMTPSA id o9sm33418939wrm.88.2019.08.21.07.21.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Aug 2019 07:21:01 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     khilman@baylibre.com
Cc:     linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Neil Armstrong <narmstrong@baylibre.com>
Subject: [PATCH v2 08/14] arm64: dts: meson-gxl: fix internal phy compatible
Date:   Wed, 21 Aug 2019 16:20:37 +0200
Message-Id: <20190821142043.14649-9-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190821142043.14649-1-narmstrong@baylibre.com>
References: <20190821142043.14649-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This fixes the following DT schemas check errors:
meson-gxl-s805x-libretech-ac.dt.yaml: ethernet-phy@8: compatible: ['ethernet-phy-id0181.4400', 'ethernet-phy-ieee802.3-c22'] is not valid under any of the given schemas

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-gxl.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
index ee1ecdbcc958..43eb158bee24 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
@@ -709,7 +709,7 @@
 			#size-cells = <0>;
 
 			internal_phy: ethernet-phy@8 {
-				compatible = "ethernet-phy-id0181.4400", "ethernet-phy-ieee802.3-c22";
+				compatible = "ethernet-phy-id0181.4400";
 				interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>;
 				reg = <8>;
 				max-speed = <100>;
-- 
2.22.0

