Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 98B016F0554
	for <lists+devicetree@lfdr.de>; Thu, 27 Apr 2023 14:10:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243143AbjD0MKD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Apr 2023 08:10:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54750 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243215AbjD0MKC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Apr 2023 08:10:02 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 898354699
        for <devicetree@vger.kernel.org>; Thu, 27 Apr 2023 05:10:00 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-4efe8991bafso6888291e87.0
        for <devicetree@vger.kernel.org>; Thu, 27 Apr 2023 05:10:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682597399; x=1685189399;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gB9tP7rs+oqMW9ALl8bFEzP45alTjiFtwAOU4p0A3+Q=;
        b=NJztf3p42UXFPuoXibn0+jqHTbnG84XbMZGKeP94kzfUPTQBB/OuFcWZcNk+OkrZLX
         e8PdVruCzOBS3FlWQu5sgElAvbdZmkXJxuOTuTUw+BY6YS8tFHx393HXFfOtxSz6eCLB
         852JfhSqWOBG3Ks9bDMPSFGeGsoqoqbzvnoTyGUu6HlSV04dXjvQLEAT1rnuhdgKD3mm
         PMcuQviX9SEqipD/6F+87Io0TOb5pVwAMTeGNNAgwtaC8cgp86NtWXyALXEiU6q/sMwf
         ZT2d/BzrLaZ8n5yGtKUXDmdVibJXNO/FnDoK9UbNte4QwoI3Y86So0WuB0fWTJde3BVa
         +J5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682597399; x=1685189399;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gB9tP7rs+oqMW9ALl8bFEzP45alTjiFtwAOU4p0A3+Q=;
        b=OLT8QrVtqHB//j08Vm16vREHE0Alk3G+oua4BMbfYaNWGvSBlCWvLRgvW+vmHxk9MY
         mQLFbgfzOQfTAj6WbqbprpI1r3wXv2dhw3zRrJYubxYTaXusJfYFYflKuk8NpcvbubfS
         HwTNekTz1stK1/KIskSFHbs/7Frb1SA2D3kB6cB6sEeV7NtbUT2Lbr7mUtan8uToZGNZ
         lp0uJFPrbOxrSvmfV692dTbewLmScw/lrKSYVren+leVCu+MIP1BgsjzPyyll+k7fSTU
         vWah6+Ffpp3J++jIhrPqbSRpOAhJ/OLXzgEZWY6lF349PDjQhwjFhjpqo8olfQpcdwp8
         plGA==
X-Gm-Message-State: AC+VfDzGUE0auacj6c+hSDTBmFRA71xgfNWN7mmoCsG6+gKlNy8Z3xih
        0KPsgcTg4lGznR3xm5CF1CDp6g==
X-Google-Smtp-Source: ACHHUZ49Ifw3IGPXCugcW1uWCK8DG1B1lpCN+elQI5TdLqaoq2CrgC4KbKYoN9gZK933+CpLqKxpyg==
X-Received: by 2002:ac2:52b7:0:b0:4f0:80:d0c0 with SMTP id r23-20020ac252b7000000b004f00080d0c0mr570943lfm.63.1682597398713;
        Thu, 27 Apr 2023 05:09:58 -0700 (PDT)
Received: from [192.168.1.2] (c-05d8225c.014-348-6c756e10.bbcust.telenor.se. [92.34.216.5])
        by smtp.gmail.com with ESMTPSA id e7-20020ac25467000000b004d4d7fb0e07sm2892044lfn.216.2023.04.27.05.09.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Apr 2023 05:09:58 -0700 (PDT)
From:   Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH v2 0/8] DMA40 SRAM refactoring and cleanup
Date:   Thu, 27 Apr 2023 14:09:55 +0200
Message-Id: <20230417-ux500-dma40-cleanup-v2-0-cdaa68a4b863@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIABNmSmQC/32NQQ6DIBBFr9Kw7jSAqLWr3qNxATgqiYIZ1NgY7
 170AF2+//PydhaRHEb2uu2McHXRBZ9A3m/M9tp3CK5JzCSXGVeihGXLOYdm1IqDHVD7ZYIWVft
 sKiMqm7NkGh0RDGlv+9MddZyRzmMibN125T514t7FOdD3qq/iXP+HVgEcjCwyqaq8QFW+B+c1h
 UegjtXHcfwA9c/TAtAAAAA=
To:     Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     dmaengine@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.12.2
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

I started out by augmenting the STE DMA40 driver to get
its LCPA SRAM memory from a proper SRAM handle in the
device tree instead of as a reg cell, and then I saw
that the driver was in a bit of sad state so I did a bit
of cleanups on top.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
Changes in v2:
- Amendments to the bindings after review.
- Link to v1: https://lore.kernel.org/r/20230417-ux500-dma40-cleanup-v1-0-b26324956e47@linaro.org

---
Linus Walleij (8):
      dt-bindings: dma: dma40: Prefer to pass sram through phandle
      dmaengine: ste_dma40: Get LCPA SRAM from SRAM node
      dmaengine: ste_dma40: Add dev helper variable
      dmaengine: ste_dma40: Remove platform data
      dmaengine: ste_dma40: Pass dev to OF function
      dmaengine: ste_dma40: Use managed resources
      dmaengine: ste_dma40: Return error codes properly
      ARM: dts: ux500: Add eSRAM nodes

 .../devicetree/bindings/dma/stericsson,dma40.yaml  |  36 ++-
 arch/arm/boot/dts/ste-dbx5x0.dtsi                  |  73 ++++-
 drivers/dma/Kconfig                                |   1 +
 drivers/dma/ste_dma40.c                            | 336 +++++++++------------
 .../dma-ste-dma40.h => drivers/dma/ste_dma40.h     | 101 +------
 drivers/dma/ste_dma40_ll.c                         |   3 +-
 6 files changed, 254 insertions(+), 296 deletions(-)
---
base-commit: fe15c26ee26efa11741a7b632e9f23b01aca4cc6
change-id: 20230417-ux500-dma40-cleanup-fe4f8d9b19c5

Best regards,
-- 
Linus Walleij <linus.walleij@linaro.org>

