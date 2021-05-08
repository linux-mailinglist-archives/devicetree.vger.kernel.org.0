Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BF9A8377047
	for <lists+devicetree@lfdr.de>; Sat,  8 May 2021 09:09:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229481AbhEHHKl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 8 May 2021 03:10:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49388 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229947AbhEHHKl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 8 May 2021 03:10:41 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E395C061763
        for <devicetree@vger.kernel.org>; Sat,  8 May 2021 00:09:39 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id t18so11383222wry.1
        for <devicetree@vger.kernel.org>; Sat, 08 May 2021 00:09:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=b+GCOf42Gs4UdMdK0477XZHtOpuU44Ecgu3QGsmZOXI=;
        b=bbTI9rbfa2hFA8sWR0y2bKXkMoIo6lVovlUGSGjC0ORfoxbvPR93j6krx4kaUygRfd
         poxvM6vH0MqvWkrlwr2vzHcpmYVIfoL/H4gDEqidJG3r0xJof8EipjMlucnWZcuGS1cj
         yALWhbYzKOcCWElu1TUVMBESQ4n+GNf9bX+mZ0EcISpMTRS5mcz5uKIdVfp7W52e6vE0
         mMj/UshBOJd3LcF3oU42XkMK+V6eMOebzIjCySz2mopl0Eqdy7rQ+wlk6PBfB8wBhJTR
         UMJs+4frkCXHfokVeCQy+agUaUiKY408rhled2W4kVJIOkiQuVQr+YkFCgKc+vCMbgX9
         ZZNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=b+GCOf42Gs4UdMdK0477XZHtOpuU44Ecgu3QGsmZOXI=;
        b=VJ7wkxx9xmgO9HWlYwhamW7GmGoKyMSKKWkta65mVrD7NK2F1BkILpAMzbEpT6H2Z6
         CtWhLMKXg9PzqyEF00AUsEqUK6BikidiRv18MO8VTTns+T4hEGMcRWGy7k9KEFjg7ZwM
         baj0jiQKK3PAZ+hKh6rIWD3woqwoZfvBcFmHlODZ1qZLA3rhZq7IGvYm3Abhk2P4zMoK
         H8+2pzNvoLjg19f+KuB71DFQICMwxr1UXmcpx4UI6yVTQdhnDYGgGywd5z11iomSvE1e
         tyQy2TNwLj2SglK7yVPJjTNNzlFcBGaoktoBjpO2XttR00sKNwOc3DqFL8WknMj9eTM/
         /MAQ==
X-Gm-Message-State: AOAM532TwEO2LlUmmgx5XzgWL4SIXMqyrSA7/FcPXHF8utPsCrresjx+
        +H5YAV3GXsf4J0HFdX/voRk=
X-Google-Smtp-Source: ABdhPJwJtfMcnMXZ71LUD3G3ySl8yYxNXaIZjyjmjxHNi2uX6EC9pMnol3hqM/xKNx6PUUK3mxZH7A==
X-Received: by 2002:a5d:6a47:: with SMTP id t7mr17397147wrw.117.1620457777816;
        Sat, 08 May 2021 00:09:37 -0700 (PDT)
Received: from localhost.localdomain (231.red-83-51-243.dynamicip.rima-tde.net. [83.51.243.231])
        by smtp.gmail.com with ESMTPSA id s18sm11740345wro.95.2021.05.08.00.09.36
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 May 2021 00:09:37 -0700 (PDT)
From:   Sergio Paracuellos <sergio.paracuellos@gmail.com>
To:     vkoul@kernel.org
Cc:     kishon@ti.com, devicetree@vger.kernel.org,
        linux-phy@lists.infradead.org, robh+dt@kernel.org,
        linux-staging@lists.linux.dev, gregkh@linuxfoundation.org,
        neil@brown.name, ilya.lipnitskiy@gmail.com
Subject: [PATCH RESEND v2 5/6] phy: ralink: Kconfig: convert mt7621-pci-phy into 'bool'
Date:   Sat,  8 May 2021 09:09:29 +0200
Message-Id: <20210508070930.5290-6-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210508070930.5290-1-sergio.paracuellos@gmail.com>
References: <20210508070930.5290-1-sergio.paracuellos@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Make dependent on PCI_MT7621 configuration option and mark
this pci phy configuration as bool which has more sense.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/phy/ralink/Kconfig | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/ralink/Kconfig b/drivers/phy/ralink/Kconfig
index c2373b30b8a6..ed0c71eff2c4 100644
--- a/drivers/phy/ralink/Kconfig
+++ b/drivers/phy/ralink/Kconfig
@@ -3,8 +3,8 @@
 # PHY drivers for Ralink platforms.
 #
 config PHY_MT7621_PCI
-	tristate "MediaTek MT7621 PCI PHY Driver"
-	depends on (RALINK && OF) || COMPILE_TEST
+	bool "MediaTek MT7621 PCI PHY Driver"
+	depends on (RALINK && OF && PCI_MT7621) || COMPILE_TEST
 	select GENERIC_PHY
 	select REGMAP_MMIO
 	help
-- 
2.25.1

