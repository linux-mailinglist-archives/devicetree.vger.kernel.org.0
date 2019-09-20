Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 56128B941C
	for <lists+devicetree@lfdr.de>; Fri, 20 Sep 2019 17:36:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2404127AbfITPgY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Sep 2019 11:36:24 -0400
Received: from mail-oi1-f195.google.com ([209.85.167.195]:39449 "EHLO
        mail-oi1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2404126AbfITPgY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 Sep 2019 11:36:24 -0400
Received: by mail-oi1-f195.google.com with SMTP id w144so2114017oia.6
        for <devicetree@vger.kernel.org>; Fri, 20 Sep 2019 08:36:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=wZ4E+3xQPlRfGWiHf91pAqjECWWINrd5qiSpF9xPch4=;
        b=PD2d8JmV5QqMLgzAEbD+jyXP3UiHgGZ9tjTGUMEhQdI9lOY2OaMfEfUtgVe0DJmMDD
         9vR57YcpejOlLfH5nRr43gJFDHy96OzjFIe5+UMBjDO8wQ6CoOjK7KV5L2flLI1j1fcO
         Ei7Kh4KyJ4doLhfwWdVI0aQAHu4Tzv6T0zkzFlQ0xKVMNl+YbX3yyWX5ZYuyWTYf/15w
         3blSb5H1ZyCVfY8cfwXKIKNe6tnie83MJfltITAj447lnbBYpjgJjieg4N/+NTtNA8hA
         3CRcS8VsV1lIf3axnsgFs6Jm0ks/y+P2d/G+kZZVvHT6fQF7G649a7Xooohw5nVe0ajR
         Ta4g==
X-Gm-Message-State: APjAAAXDGtPqJc2bkLTtx5F5AkDFM7n1NyBsayjjfikX8tdVgl/8N2aC
        u1bjoZ+GJcOuLJoPnKCcUA==
X-Google-Smtp-Source: APXvYqzkBJLKw/GcElqOTNdV8gsrbNW4HfrE6RWxrrt7y1DSP4w2/ZzEGqLhCl+xXh9SC4Ypohg6fw==
X-Received: by 2002:aca:b2c4:: with SMTP id b187mr3487644oif.93.1568993783178;
        Fri, 20 Sep 2019 08:36:23 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.googlemail.com with ESMTPSA id b5sm737419otp.36.2019.09.20.08.36.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Sep 2019 08:36:22 -0700 (PDT)
From:   Rob Herring <robh@kernel.org>
To:     Linus Walleij <linus.walleij@linaro.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [RFC PATCH] arm: dts: integratorap: Remove top level dma-ranges
Date:   Fri, 20 Sep 2019 10:36:22 -0500
Message-Id: <20190920153622.14616-1-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

'dma-ranges' at the top level doesn't make sense. 'dma-ranges' implies
there is a parent bus node with '#address-cells' and '#size-cells' which
is impossible here.

Likely this translation needs to be moved down to sub-nodes that need
it.

Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: linux-arm-kernel@lists.infradead.org
Signed-off-by: Rob Herring <robh@kernel.org>
---
This probably worked due to bugs in dma-ranges address translations (or 
lack of).

AFAICT, only PCI needs dma-ranges. The TRM says inbound PCI addresses 
are 1:1. So a translation from child address 0x80000000 to cpu address 
0x0 seems wrong. The v3 PCI driver also fails to look at parent nodes 
for dma-ranges.

 arch/arm/boot/dts/integratorap.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/integratorap.dts b/arch/arm/boot/dts/integratorap.dts
index 94d2ff9836d0..198d66181c50 100644
--- a/arch/arm/boot/dts/integratorap.dts
+++ b/arch/arm/boot/dts/integratorap.dts
@@ -9,7 +9,6 @@
 / {
 	model = "ARM Integrator/AP";
 	compatible = "arm,integrator-ap";
-	dma-ranges = <0x80000000 0x0 0x80000000>;
 
 	cpus {
 		#address-cells = <1>;
-- 
2.20.1

