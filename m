Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BFE08535491
	for <lists+devicetree@lfdr.de>; Thu, 26 May 2022 22:38:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245696AbiEZUiE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 May 2022 16:38:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43028 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347712AbiEZUiD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 May 2022 16:38:03 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3306687A26
        for <devicetree@vger.kernel.org>; Thu, 26 May 2022 13:38:02 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id w14so3940415lfl.13
        for <devicetree@vger.kernel.org>; Thu, 26 May 2022 13:38:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=mLPsbWREqiu9c9Q8xXDcxQo3AM+M+g2L9Rz25OBbk1E=;
        b=a2i3kYQuvq9txatBY+v45Yeze5v7Hq996N5nVa6obBVrO87VxOHQdh0JdPKuhPRIBI
         W0ClBOW2PaWQboHbQeqk5R78Gvq5Nf0t5Jdsl8bJAeV7y33B8Ev9Pk5rq8R83yHQ8rk+
         vZ3HvXkJdVMuxcCyG+aVg9utN783y+K2Q0MsMMSDlAw5m3Or38k6+/4vnwIJJoDjj3IK
         iVn1zS5x0h5tVzahnTCzThq4Ia4Wtgj9RLkpCSif4VJKBdh9u9iwPtng3wpBt3q0LqgZ
         ZBW3WlIo04jcp2+0HTlBrdds6M6brsu0LejiTqZszD/yvcQj05rkV7TFQveNuSVhXtwf
         K0UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=mLPsbWREqiu9c9Q8xXDcxQo3AM+M+g2L9Rz25OBbk1E=;
        b=2wL5FFyRuQ97XSuCM/sx7SORQ+4sFpo5cGdPeZt/iJY2uHKGPsmNBp4wHrJ4yHnO1D
         osZ0Fj5BFC3daey6ASB1+zc9WkSAZ7eEbzZXKv3dVezLrJWUw40rAGk2R0FNUYuM9sbo
         mAKWkV2FyMjSrRYh1C2p+ReJMd8VHjxQwb7BWBmO9uRKOdMXovBbKcnUyihFsfCTiFGO
         GFu6D2ePLBJ4PlgnR3Anz9sFcC4U9Bmc6f3s9ULazxHt7J3KQ50er12M6xUf1zGfvnN2
         EDGtbutK87FshdrqLFHfvuirp9r8+Lw709veH88gT1XXw/JEMga964a+c/HpYoMThmWX
         L8vw==
X-Gm-Message-State: AOAM5331S7+GsHgRbwexEOIKI4sp/6cv9MFUpnWGnJPHC+/uyXUMIV0r
        lpKJZ9BzZKmwhuf56qqL37g3tXim2nnTlnFJ
X-Google-Smtp-Source: ABdhPJw0tDoaETg12zQp2KEugD1GUg2LX9Kigs3f5ywz2KvO7wfhzgkyokLUUMqlacf885PgPeDXIg==
X-Received: by 2002:a17:906:d97b:b0:6fe:af2e:2966 with SMTP id rp27-20020a170906d97b00b006feaf2e2966mr28607481ejb.705.1653597457578;
        Thu, 26 May 2022 13:37:37 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id h5-20020a170906828500b006fec8e5b8a9sm797143ejx.152.2022.05.26.13.37.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 May 2022 13:37:35 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Vladimir Zapolskiy <vz@mleia.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] ARM: dts: lpc: adjust whitespace around '='
Date:   Thu, 26 May 2022 22:37:32 +0200
Message-Id: <20220526203732.831250-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fix whitespace coding style: use single space instead of tabs or
multiple spaces around '=' sign in property assignment.  No functional
changes (same DTB).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Output compared with dtx_diff and fdtdump.
---
 arch/arm/boot/dts/lpc18xx.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/lpc18xx.dtsi b/arch/arm/boot/dts/lpc18xx.dtsi
index 10b8249b8ab6..c6f8942f8d3d 100644
--- a/arch/arm/boot/dts/lpc18xx.dtsi
+++ b/arch/arm/boot/dts/lpc18xx.dtsi
@@ -183,7 +183,7 @@ mac: ethernet@40010000 {
 			compatible = "nxp,lpc1850-dwmac", "snps,dwmac-3.611", "snps,dwmac";
 			reg = <0x40010000 0x2000>;
 			interrupts = <5>;
-			interrupt-names	= "macirq";
+			interrupt-names = "macirq";
 			clocks = <&ccu1 CLK_CPU_ETHERNET>;
 			clock-names = "stmmaceth";
 			resets = <&rgu 22>;
-- 
2.34.1

