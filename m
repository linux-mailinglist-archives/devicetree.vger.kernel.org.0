Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2B87D6417C1
	for <lists+devicetree@lfdr.de>; Sat,  3 Dec 2022 17:21:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229602AbiLCQVy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 3 Dec 2022 11:21:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59804 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229830AbiLCQVy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 3 Dec 2022 11:21:54 -0500
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18ECB20375
        for <devicetree@vger.kernel.org>; Sat,  3 Dec 2022 08:21:51 -0800 (PST)
Received: by mail-lj1-x235.google.com with SMTP id x6so8665344lji.10
        for <devicetree@vger.kernel.org>; Sat, 03 Dec 2022 08:21:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=WmsziUEVNyrB815nizPNa/ZJ8qOnilpxFHdElLoBzSA=;
        b=LQw7z2kjsssWSsBkfx3bILAe/YLOZgyD4Y16sUlwmkJvefhwXkM7WWNyj+p6fomstF
         Jm9rxTMlweprI+gzh0Znx/J4CbO3jm9aPGU3zMlQd2QXpFvZowYUp2QN0ECtRe5/3aqY
         +mBoN2lDn9AIWGJUAypg9WvcLh8JHlqKn4cANSZX4OvRGnhQxz8Vg2zYob3XQ9yCU/a+
         48VJfvdMhEGNYGgLliIJH+2IpYwUFIGAkK0AFUNjAGPrl5kUcG1bjLByaZYeKIlWp10G
         SAXnbuv1sShmlUsKDK6AB+8dA7eHnO76ZAGstUzKzivOSjgUtiXZaKgUuM7aYSp0Bi9k
         crgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WmsziUEVNyrB815nizPNa/ZJ8qOnilpxFHdElLoBzSA=;
        b=UWrCAy5ZjWuME9Jg/qRnrckDi1qzWB4XxBy1o6jAdWs/eskxGZavLC6+A6BrlOGCX1
         R1q3QrirLqALrS0LggiMpBCIbICaINjUUw717UK1SNkoBoDSNroKxOtG/HnoK5/aUsO0
         YrH7ZDXjbJ5CjKoKXZl8XxAcsQf06EVjxYeJZnif2t2K3XTjVelRQ/pseSaaldHRd9Ui
         14QmHcTiwAAEApQ6nuM08OM3INerkg9cPhnWy5XNTamvSmd2oOGFI8zx/aGVb+FeZX50
         fesNqBgU6jNvn3/AJUkqpGFv6iv1MpFER3r7stkA5g5D0NgGgokEGpLxh5HXQamK3zVQ
         V0xA==
X-Gm-Message-State: ANoB5pmN2gUaBXapb8QqsPjEBm+beTK7Un/FPyNEwh0Nn5MfgcYLCBOO
        enEao6ZY/fH5YZDYtSahv2WmSHHAmkMxpv5txR4=
X-Google-Smtp-Source: AA0mqf7z5dEVm1KfVLYRrxQdVeTEh+cIsEEzj4vzDM1C/l5Tlgc/KhNAEzuPMpsLbJoK8Z5qAGkiiw==
X-Received: by 2002:a2e:9b17:0:b0:279:cd10:a511 with SMTP id u23-20020a2e9b17000000b00279cd10a511mr4327347lji.502.1670084509318;
        Sat, 03 Dec 2022 08:21:49 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id bi35-20020a0565120ea300b004ac6a444b26sm1443935lfb.141.2022.12.03.08.21.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Dec 2022 08:21:47 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
        Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Daniele Alessandrelli <daniele.alessandrelli@intel.com>,
        "Paul J. Murphy" <paul.j.murphy@intel.com>,
        dmaengine@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/2] dt-bindings: Drop Jee Heng Sia
Date:   Sat,  3 Dec 2022 17:21:43 +0100
Message-Id: <20221203162144.99225-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Emails to Jee Heng Sia bounce ("550 #5.1.0 Address rejected.").  Add
Keembay platform maintainers as Keembay I2S maintainers.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/dma/snps,dw-axi-dmac.yaml    | 1 -
 Documentation/devicetree/bindings/sound/intel,keembay-i2s.yaml | 3 ++-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/dma/snps,dw-axi-dmac.yaml b/Documentation/devicetree/bindings/dma/snps,dw-axi-dmac.yaml
index 67aa7bb6d36a..ad107a4d3b33 100644
--- a/Documentation/devicetree/bindings/dma/snps,dw-axi-dmac.yaml
+++ b/Documentation/devicetree/bindings/dma/snps,dw-axi-dmac.yaml
@@ -8,7 +8,6 @@ title: Synopsys DesignWare AXI DMA Controller
 
 maintainers:
   - Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
-  - Jee Heng Sia <jee.heng.sia@intel.com>
 
 description:
   Synopsys DesignWare AXI DMA Controller DT Binding
diff --git a/Documentation/devicetree/bindings/sound/intel,keembay-i2s.yaml b/Documentation/devicetree/bindings/sound/intel,keembay-i2s.yaml
index 2ac0a4b3cd18..33ab0be036a1 100644
--- a/Documentation/devicetree/bindings/sound/intel,keembay-i2s.yaml
+++ b/Documentation/devicetree/bindings/sound/intel,keembay-i2s.yaml
@@ -8,7 +8,8 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Intel KeemBay I2S
 
 maintainers:
-  - Sia, Jee Heng <jee.heng.sia@intel.com>
+  - Daniele Alessandrelli <daniele.alessandrelli@intel.com>
+  - Paul J. Murphy <paul.j.murphy@intel.com
 
 description: |
  Intel KeemBay I2S
-- 
2.34.1

