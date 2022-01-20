Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3971B494756
	for <lists+devicetree@lfdr.de>; Thu, 20 Jan 2022 07:33:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231872AbiATGdT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Jan 2022 01:33:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35586 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237233AbiATGdS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Jan 2022 01:33:18 -0500
Received: from mail-qv1-xf33.google.com (mail-qv1-xf33.google.com [IPv6:2607:f8b0:4864:20::f33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D5B1C061574
        for <devicetree@vger.kernel.org>; Wed, 19 Jan 2022 22:33:18 -0800 (PST)
Received: by mail-qv1-xf33.google.com with SMTP id c2so5748162qvw.3
        for <devicetree@vger.kernel.org>; Wed, 19 Jan 2022 22:33:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=iIEWNGzZIA6PB46g/KfYUL/qJ1uv2/3umNgQBvWeius=;
        b=ZnWF/g0YBiWZOJ3Nk5G3ASaKTVMmyzTx6Z7TAwTbGHQajtgQkgxj6Ojo5wdgRYyKQq
         zqUadvm0ARZ7Xiz3U59Ef5rTQuJufMl8Tv80PdqS471EcF2gTI0vMPyLKj2UeO83528i
         PbxHxfXwn5SdB/lXSA2TZzEaGCIrH5ICxkJsWRr2ZeAVYU0PERMt5gB71gIb4MhIi4OW
         tif5agA2qjFk8gjXAQxRu/Eg5IE5TPlRPdJiCrbBO2q8qbBT5DfK5l0CqDERp+u1u3Fq
         m3xVlNubN4gLHGzwD2kgKTqTOreRjRER2bZ+KaCn4sT5vpxZ2oFukpCGiCw4zI3QmdkT
         Cx0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :mime-version:content-transfer-encoding;
        bh=iIEWNGzZIA6PB46g/KfYUL/qJ1uv2/3umNgQBvWeius=;
        b=Oca/RrJgy1cbBUp/ufyCxCySeDOaEFIfCxSDl5FFJEBZpLr8xomYqT3wk3vZU8NheX
         zPO8o9k1Pe7VNxXBOr/aKTsBy8XmAxy0qLI182wC1zgLayO5kjdK0kwUZvhnXcEZ2gJZ
         oLOJZyL2sWnmgztmRGSmFiUOjof+zXe72h9f4ZKxPYy9gtKmaSoV8ImlSJtQX+bsfPRt
         sLSwrnIWxCEJdpffFW2dLv6o+o9STsV5uilWjCkCC0uVEsFykP17YpLjX6PaPnA3ehjp
         Y9iLs3wp2pMSeqTae3EDasOEjq7Hi9GUCNBdaBvUJrnPPcqu2jAPQcs5p2ATWXe2LVLG
         yHlA==
X-Gm-Message-State: AOAM531jf72fwkaMy7MEI8fpD9Ql0Pu+e9p5atfnNXmgHywJHJHwT8hj
        VKp9f/e0Q+qnmF0jmeO/PhWojTaQBrI=
X-Google-Smtp-Source: ABdhPJxgLAF74UeUG/Gg3x7vyAGYXpPkEOS9JDkdvIfYUIFVpipTUSTqlf4WakSFwwmAwg+S0ma3dw==
X-Received: by 2002:a05:6214:ca3:: with SMTP id s3mr27526096qvs.9.1642660397430;
        Wed, 19 Jan 2022 22:33:17 -0800 (PST)
Received: from localhost.localdomain ([45.124.203.14])
        by smtp.gmail.com with ESMTPSA id j186sm1053109qkb.57.2022.01.19.22.33.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Jan 2022 22:33:16 -0800 (PST)
Sender: "joel.stan@gmail.com" <joel.stan@gmail.com>
From:   Joel Stanley <joel@jms.id.au>
To:     Eddie James <eajames@linux.ibm.com>,
        Andrew Jeffery <andrew@aj.id.au>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org, devicetree@vger.kernel.org
Subject: [PATCH] ARM: dts: aspeed: rainier: Remove SPI NOR controllers
Date:   Thu, 20 Jan 2022 17:03:06 +1030
Message-Id: <20220120063307.63898-1-joel@jms.id.au>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Early Rainier builds had SPI NOR as a fallback boot device when eMMC
was not programmed. Most systems don't have the NOR populated, so remove
it from the device tree as it is not used.

Signed-off-by: Joel Stanley <joel@jms.id.au>
---
 arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts | 24 --------------------
 1 file changed, 24 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts b/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts
index 652c866c14dc..43bacb16d336 100644
--- a/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts
@@ -2360,30 +2360,6 @@ &mac3 {
 	use-ncsi;
 };
 
-&fmc {
-	status = "okay";
-	flash@0 {
-		status = "okay";
-		m25p,fast-read;
-		label = "bmc";
-		spi-max-frequency = <50000000>;
-#include "openbmc-flash-layout-128.dtsi"
-	};
-};
-
-&spi1 {
-	status = "okay";
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_spi1_default>;
-
-	flash@0 {
-		status = "okay";
-		m25p,fast-read;
-		label = "pnor";
-		spi-max-frequency = <100000000>;
-	};
-};
-
 &wdt1 {
 	aspeed,reset-type = "none";
 	aspeed,external-signal;
-- 
2.34.1

