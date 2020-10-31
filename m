Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8FEAE2A174F
	for <lists+devicetree@lfdr.de>; Sat, 31 Oct 2020 13:22:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727286AbgJaMWy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 31 Oct 2020 08:22:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39388 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726935AbgJaMWx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 31 Oct 2020 08:22:53 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 86F3FC0613D5
        for <devicetree@vger.kernel.org>; Sat, 31 Oct 2020 05:22:53 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id d3so5184761wma.4
        for <devicetree@vger.kernel.org>; Sat, 31 Oct 2020 05:22:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=yhiGf2+miDL4vNktmWcMghT5Zn6/WsNTcEagUPj9ukA=;
        b=DPU05UlkeVnaYEvcezqCmlKWmMXWj7B+uarOYkonB/olPXrQmDqo1rdQtjYhWhZ6nE
         iLuh7ZcgLE9feduuyHGZAP7hVGyn9AhsyswjNVSBFT0yunxBtXyURf1BvRju5iQ3XZV7
         wy1ROOealzgQIg89WIs8d8Oxdow77GY66QsAR8Qz9+Prng4sVflnQB7RM16670EtYElF
         AMtVinamX71sxg4NBUPky5PVwH7nbj85+8eORocgNGNwBI1JaeCsi5yWA9jLUzRmvp3f
         WI7AsrbRZSlQSRj3ulgrY8468Z3IBBXOTVYoD5oI9xeWMm8ZbzpRMTBokblg0IHsw/eR
         +hzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=yhiGf2+miDL4vNktmWcMghT5Zn6/WsNTcEagUPj9ukA=;
        b=eTMNtgB1epTBO7z2WpSjhkK6+0tp4diD5qSDb56BpZdWnv+OZzykG8p3KuAMTdJlvf
         m4z7vzKqQRlwn4OQzqwi4moz6UKstYFB/Gpu6ECAVAm90jJu8uLFo8KmnRf/qt4EMRO8
         5EMBmgJU4L+lXo/vLMf1BA9gI5Cq2Wx29hnIz2wyjyF5nKkrF8bX+yH1LQmRjnPNWiFE
         +tdyOTEZhhr2F5gXAem0qhChJ1AQf8oOLxbMHDKqSxnTA/rGL2H1Tm12zRlxi31lWss2
         FxeCsVnUcUoyEK4HoqAR06RUd7N060Zlshak4HVgjrzVm52DBsPQYWLn73fCtjVeTg9y
         vbxg==
X-Gm-Message-State: AOAM530dcmQDgI8XGgW+K7+byNKtx1Ch4XeLm5Ypxyoyc4JSUeEvFctl
        kBwxgMNaRCqUZpqqp8CykR6WwABc4x3wUA==
X-Google-Smtp-Source: ABdhPJwCK9AU259qx+jOqdgJDpZkMeJ9R/nKXD2Nqwm9eUkwVBlL51eCHfsb4JTsdHJmXbjGOrMPhQ==
X-Received: by 2002:a1c:b041:: with SMTP id z62mr8138377wme.183.1604146971792;
        Sat, 31 Oct 2020 05:22:51 -0700 (PDT)
Received: from localhost.localdomain (14.red-83-46-194.dynamicip.rima-tde.net. [83.46.194.14])
        by smtp.gmail.com with ESMTPSA id f7sm15299199wrx.64.2020.10.31.05.22.50
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2020 05:22:51 -0700 (PDT)
From:   Sergio Paracuellos <sergio.paracuellos@gmail.com>
To:     kishon@ti.com
Cc:     vkoul@kernel.org, robh+dt@kernel.org, gregkh@linuxfoundation.org,
        devicetree@vger.kernel.org, devel@driverdev.osuosl.org,
        neil@brown.name
Subject: [PATCH v4 3/4] MAINTAINERS: add MT7621 PHY PCI maintainer
Date:   Sat, 31 Oct 2020 13:22:45 +0100
Message-Id: <20201031122246.16497-4-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201031122246.16497-1-sergio.paracuellos@gmail.com>
References: <20201031122246.16497-1-sergio.paracuellos@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Adding myself as maintainer for mt7621 pci phy driver.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 MAINTAINERS | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index aefbbecfb266..31f808e58e73 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -11100,6 +11100,12 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/i2c/i2c-mt7621.txt
 F:	drivers/i2c/busses/i2c-mt7621.c
 
+MEDIATEK MT7621 PHY PCI DRIVER
+M:	Sergio Paracuellos <sergio.paracuellos@gmail.com>
+S:	Maintained
+F:	Documentation/devicetree/bindings/phy/mediatek,mt7621-pci-phy.yaml
+F:	drivers/phy/ralink/phy-mt7621-pci.c
+
 MEDIATEK NAND CONTROLLER DRIVER
 L:	linux-mtd@lists.infradead.org
 S:	Orphan
-- 
2.25.1

