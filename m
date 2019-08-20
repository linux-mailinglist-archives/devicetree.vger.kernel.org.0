Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B558595F3F
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2019 14:56:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729832AbfHTMzC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Aug 2019 08:55:02 -0400
Received: from mail-wm1-f97.google.com ([209.85.128.97]:54104 "EHLO
        mail-wm1-f97.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729024AbfHTMzB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Aug 2019 08:55:01 -0400
Received: by mail-wm1-f97.google.com with SMTP id 10so2525940wmp.3
        for <devicetree@vger.kernel.org>; Tue, 20 Aug 2019 05:55:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:message-id:date;
        bh=BdZ3c/necGDxLfFb1+nhbPyR5/R0A9R2K/u32/exq+M=;
        b=Y+PTdNxvFDF3H9BqnAZSUFtQUlN7Hri83a5U+WNDCl3T46A7aBjpqzZ0CDHNukFdDA
         XcFz78+SOJog3CkqKXUwUFcbAThh3oSELGkVQSsgXxKfu4lKjmgH1rg9GW5xZ9Q+2OKE
         rzbzqgt67EurTImiZphlEChgtmKPFk3fjpYPrVs6uLuECCtJncTmQ1pFANPDdWWjYZXQ
         Ku59UIzIyFaqme0lS2cN5v1Pj1VXh32LiMR423eZl1RmJNtnEJNAsTZngCC6jnoDlWIC
         bdEcz1bPPTSJT+H2fkBTnT4tITXEPukTxG88cmKwGxYdcv3nGiaZ+B3JHZd9O5sHcRzl
         VplA==
X-Gm-Message-State: APjAAAWO8H1UBIlMPEOosnvCanZCh2c//ke3xpD/AKdFPhV7vfaI/wy+
        CZIHDdVVpNet3OWxKdm2wG5kL+mml+eorf8VTJu1L8gjZ9gsWylTCJbX1q9fhEBu9w==
X-Google-Smtp-Source: APXvYqzhTrD/hOszChMAnJxemDv/II1NLndmIl1OVvzu7rnCD4ezxJI9ITOEKuVAdn3XK8uTlXbJnhgKzeti
X-Received: by 2002:a1c:7914:: with SMTP id l20mr26443271wme.130.1566305700532;
        Tue, 20 Aug 2019 05:55:00 -0700 (PDT)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk. [2a01:7e01::f03c:91ff:fed4:a3b6])
        by smtp-relay.gmail.com with ESMTPS id b17sm276029wru.15.2019.08.20.05.55.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Aug 2019 05:55:00 -0700 (PDT)
X-Relaying-Domain: sirena.org.uk
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
        by heliosphere.sirena.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <broonie@sirena.co.uk>)
        id 1i03fA-0002Dp-8k; Tue, 20 Aug 2019 12:55:00 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
        id 867A42742ABD; Tue, 20 Aug 2019 13:54:59 +0100 (BST)
From:   Mark Brown <broonie@kernel.org>
To:     Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc:     broonie@kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
        Mark Brown <broonie@kernel.org>, robh+dt@kernel.org
Subject: Applied "spi: Fix the number of CS lines documented as an example" to the spi tree
In-Reply-To: <20190820115000.32041-1-manivannan.sadhasivam@linaro.org>
X-Patchwork-Hint: ignore
Message-Id: <20190820125459.867A42742ABD@ypsilon.sirena.org.uk>
Date:   Tue, 20 Aug 2019 13:54:59 +0100 (BST)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The patch

   spi: Fix the number of CS lines documented as an example

has been applied to the spi tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-5.3

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.  

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

From 7f01494fd85f3ac40635bc2a7bf005b607084c96 Mon Sep 17 00:00:00 2001
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Tue, 20 Aug 2019 17:20:00 +0530
Subject: [PATCH] spi: Fix the number of CS lines documented as an example

The number of CS lines is mentioned as 2 in the spi-controller binding
but however in the example, 4 cs-gpios are used. Hence fix that to
mention 4.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Link: https://lore.kernel.org/r/20190820115000.32041-1-manivannan.sadhasivam@linaro.org
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 Documentation/devicetree/bindings/spi/spi-controller.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/spi/spi-controller.yaml b/Documentation/devicetree/bindings/spi/spi-controller.yaml
index a02e2fe2bfb2..732339275848 100644
--- a/Documentation/devicetree/bindings/spi/spi-controller.yaml
+++ b/Documentation/devicetree/bindings/spi/spi-controller.yaml
@@ -31,7 +31,7 @@ properties:
       If that property is used, the number of chip selects will be
       increased automatically with max(cs-gpios, hardware chip selects).
 
-      So if, for example, the controller has 2 CS lines, and the
+      So if, for example, the controller has 4 CS lines, and the
       cs-gpios looks like this
         cs-gpios = <&gpio1 0 0>, <0>, <&gpio1 1 0>, <&gpio1 2 0>;
 
-- 
2.20.1

