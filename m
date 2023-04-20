Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2D7D96E9DC2
	for <lists+devicetree@lfdr.de>; Thu, 20 Apr 2023 23:17:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231206AbjDTVRt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Apr 2023 17:17:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45018 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231845AbjDTVRr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Apr 2023 17:17:47 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 02CE85263
        for <devicetree@vger.kernel.org>; Thu, 20 Apr 2023 14:17:46 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-4edcdfa8638so894060e87.2
        for <devicetree@vger.kernel.org>; Thu, 20 Apr 2023 14:17:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682025464; x=1684617464;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=38MnDmLtcYQkY2PJ8DXc4HeYBW4VWVTJbBajwrKtUQY=;
        b=DZSO51QCviT1QjP1WhwzVKdJLh/f8M7hz/T60icFEz6grRPhQrz81Ec/tH9YA9UWQK
         UHdBqh4mHTxVoNfIuFU34aLTAqSIaijFl9/Ui9JvGUaxQ8XEXNmfciK0sMTr10ArBdrc
         ocaoF1OoyMYiELB3azBngOdBdA9tUc3PiR9DZJ3N0KbVx+Gb1uGYcTooebsdzLfSpo0s
         35pONWIjFl6qmUF3phWTbl+syZ358CGfaxHiDThcR+LpwrIGtHfnRTnjJ8ExGbJ8IjWc
         NmXJSMPTrq/cp8iFUxLCXtvrUURK4RAPQ/86YqxlA3WSqfCy3xkPxa72r/Qas5y5Jxqb
         c7Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682025464; x=1684617464;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=38MnDmLtcYQkY2PJ8DXc4HeYBW4VWVTJbBajwrKtUQY=;
        b=EV89NZGjY0hWUcJIqvZ8+NmjlXCQCXfxYFyZq1oeJrAuV5UguhHhHLwX7bOJnM6Miw
         i/vOsKoxH74PzCcUFPNaYw15xRV3RlByeSw4tCgfLqFKbl6UaHUlvmPGY3cyGpqWKL3E
         vC9otm9DCX83dDUfdSHQUhIjsQsbSpFQWfMnHcU9o3E8hN7jxM7sif+1rk10hdhfaUTW
         jVNf7pSIBR66gE5LNFYEP0q4liF8UxrgYaVmTH3/XIZVpF+fWrlfi+Bu++9Yn5Kh8zWB
         sw+NMOr6Ekf3qwMFjXMxsSiuGSZOgfTcNroIUG5iPEiZx5vzQAKBek4pcSepMkPdHIRU
         xgJw==
X-Gm-Message-State: AAQBX9c8xXu9aKX/E1jN9MVH21sTY94kSZO/1WKwuSQ7H9QDrEPvm8V8
        HXCzZB9X3kzEoUn3ybUVxoMMDQ==
X-Google-Smtp-Source: AKy350buOLCRnCD7f4c26vJuo+rS5/OSb0XJjewaHwuXto/FhtCR4Qkm7wExv2koM83rC7elA+FWaQ==
X-Received: by 2002:ac2:532c:0:b0:4d5:8306:4e9a with SMTP id f12-20020ac2532c000000b004d583064e9amr779212lfh.46.1682025464375;
        Thu, 20 Apr 2023 14:17:44 -0700 (PDT)
Received: from [192.168.1.2] (c-05d8225c.014-348-6c756e10.bbcust.telenor.se. [92.34.216.5])
        by smtp.gmail.com with ESMTPSA id g12-20020a19ee0c000000b004edd3f011cfsm332985lfb.43.2023.04.20.14.17.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Apr 2023 14:17:44 -0700 (PDT)
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 20 Apr 2023 23:17:34 +0200
Subject: [PATCH v2 1/2] dt-bindings: sram: Add compatible for ST-Ericsson
 U8500 eSRAM
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230417-ux500-sram-v2-1-6e62ad551faa@linaro.org>
References: <20230417-ux500-sram-v2-0-6e62ad551faa@linaro.org>
In-Reply-To: <20230417-ux500-sram-v2-0-6e62ad551faa@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Arnd Bergmann <arnd@arndb.de>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc:     Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.12.2
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds an SoC-specific binding for the banks of eSRAM
available in the ST-Ericsson U8500.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 Documentation/devicetree/bindings/sram/sram.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/sram/sram.yaml b/Documentation/devicetree/bindings/sram/sram.yaml
index 993430be355b..0922d1f71ba8 100644
--- a/Documentation/devicetree/bindings/sram/sram.yaml
+++ b/Documentation/devicetree/bindings/sram/sram.yaml
@@ -94,6 +94,7 @@ patternProperties:
             - samsung,exynos4210-sysram
             - samsung,exynos4210-sysram-ns
             - socionext,milbeaut-smp-sram
+            - stericsson,u8500-esram
 
       reg:
         description:

-- 
2.40.0

