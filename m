Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0953F362123
	for <lists+devicetree@lfdr.de>; Fri, 16 Apr 2021 15:38:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244073AbhDPNin (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Apr 2021 09:38:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60134 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244077AbhDPNim (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Apr 2021 09:38:42 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B27DC061756
        for <devicetree@vger.kernel.org>; Fri, 16 Apr 2021 06:38:17 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id m7so20275428ljp.10
        for <devicetree@vger.kernel.org>; Fri, 16 Apr 2021 06:38:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ynumab2tfFLAj1Z29Vhvk7Kqyn8tnsq3lj2bFXBNISo=;
        b=BoU4hmUwUcG7l4snZakGEA05WgOJeKebKHkYIkS2VFr7FiYwOQ6aGxdOfp9Ej0ZzMZ
         3vU0CoAC2DplATdlj/3K5TKlBk+APpjfpbcP03NO2HJR4CWvjQoxJvUk7DXuXVzyiBhj
         21qKnV6c8oTIDDs7LJOkLEOanU9WqxbN6lJn7berole/f9uyjq0BOVSn9joBrqkKjLgi
         XO58GZuKREkkl0+1LIJHkT5Xq0/xhGTNSF2yeYjBJmY9AmTM9Co1ecLigxazRvKlyqXS
         9tXhNY970fr4OSssVxWKu344elaEPiCS946VrtL5avZgmswAnSDefgbGDl5j0RAlqC7f
         tMIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ynumab2tfFLAj1Z29Vhvk7Kqyn8tnsq3lj2bFXBNISo=;
        b=qUSG3njP30qFW3eO/iA+3lll7ayjv2aPQbPS/BmWc5MFS3qJjD+WkUKKtVxtXu03LZ
         Z2j7xscw2Z2NHszR+D85AzHWNDOxuTLkdDMBgKt6HubL6a5P11jmwkX87vkIlhFqrayG
         LGg/vMJsJeSXNNzMHrbZorUqJT4yKLq1FBD44rWriWJQLhpQGNlODbkEhEiRuSPX8ROw
         iX/UbuBH3e1w6lpzKTASHGCyUc1eSEw3FCtrfgSlYPcTRVA3MZjuz9jwJeDTfS1g/vv7
         QRr2etkh8A272vrjjxj+LPvK/fZCMn71fc2kC+fuCPSjR6telipk8T/Ba2kxma0vQKh3
         s+Wg==
X-Gm-Message-State: AOAM530Ju7jKFV/ls6Zi4Tp9d7ZeHU7eaOe0Ek28jqGSQpBmFgmy98D9
        irI7LrLPefsZReYpREQEvNU=
X-Google-Smtp-Source: ABdhPJxra6xGcWE+QYhg5DjIZqyQLmeFGN4U/7MnOhqvxY4Hvt0HedCzv/DwwvD+oAyc7rUDBmzjMA==
X-Received: by 2002:a2e:804d:: with SMTP id p13mr2312016ljg.267.1618580295837;
        Fri, 16 Apr 2021 06:38:15 -0700 (PDT)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id y14sm948405ljy.18.2021.04.16.06.38.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Apr 2021 06:38:15 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
        Hauke Mehrtens <hauke@hauke-m.de>, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        linux-arm-kernel@lists.infradead.org,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH stblinux 6/6] ARM: dts: Hurricane 2: Fix NAND nodes names
Date:   Fri, 16 Apr 2021 15:37:53 +0200
Message-Id: <20210416133753.32756-6-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210416133753.32756-1-zajec5@gmail.com>
References: <20210416133753.32756-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

This matches nand-controller.yaml requirements.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm/boot/dts/bcm-hr2.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/bcm-hr2.dtsi b/arch/arm/boot/dts/bcm-hr2.dtsi
index e8df458aad39..84cda16f68a2 100644
--- a/arch/arm/boot/dts/bcm-hr2.dtsi
+++ b/arch/arm/boot/dts/bcm-hr2.dtsi
@@ -179,7 +179,7 @@ amac0: ethernet@22000 {
 			status = "disabled";
 		};
 
-		nand: nand@26000 {
+		nand_controller: nand-controller@26000 {
 			compatible = "brcm,nand-iproc", "brcm,brcmnand-v6.1";
 			reg = <0x26000 0x600>,
 			      <0x11b408 0x600>,
-- 
2.26.2

