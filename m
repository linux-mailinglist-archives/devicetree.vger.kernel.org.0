Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A1C5B5899E5
	for <lists+devicetree@lfdr.de>; Thu,  4 Aug 2022 11:27:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238966AbiHDJ1S (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 Aug 2022 05:27:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49784 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229622AbiHDJ1R (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 Aug 2022 05:27:17 -0400
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 81EF965802
        for <devicetree@vger.kernel.org>; Thu,  4 Aug 2022 02:27:16 -0700 (PDT)
Received: by mail-lj1-x235.google.com with SMTP id x25so1164472ljm.5
        for <devicetree@vger.kernel.org>; Thu, 04 Aug 2022 02:27:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=28KYhVTag+j2JBtmvytZTw71Q/CcsBjx32UmQc4KhYw=;
        b=p0GLltuIZ2wwyn34RSyNzxiqdd0F4ggEEPZlR24YM1hlHFR9cLuy/PMcrInKVdvHpr
         pc+y6KogJLRRNx1vv/GA6wGq4ZbF84lKR5bma8Woz9HyD+EcTKdMqJFqEo7iZ5wzqOBw
         M9ghBItoBk30hQGPOIZRZL5b/uN1vxDsjE+mD1qG2aVH10WnPucAGka99AkVyEWl9uj8
         5lTuaNKR6I8k84BIvzDjnmPIut3gaN2Mwkr99qaoGxULf1xLqlX9VUTz1cIEoSDORT8F
         9ViC+sxCwigncPZbyBjz7Wx1ayGE4czZymaVJ8E4t3SKXIHxzsOTwIbhn4SCpy0zcoQm
         l32w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=28KYhVTag+j2JBtmvytZTw71Q/CcsBjx32UmQc4KhYw=;
        b=Msvc66bEzwFaMcC3G/ZvAoUjwnR9Sa613JCwlE0IvlWeoy0Ae6to6sffqHrfZvf9Md
         SJoaZfAYKAfWKUp5fWOhzUSqb8Rv9qgs5jfstU0LL6Si1qrhqqxPefkDqyMmSfmNKgEe
         /70PREYTte6Eb5AKJ0Vub5tfObOhcFAM3i36h+jGECufYw1qJU7Zxiydu5EM3bl+EIve
         szM89xyOMRmAuJQZbTmxRYpNCZv+ptGX+K3Ba2RVizTu9DWTzPmiLNFGEjLqC1XGDw9R
         bYPj+NxGl8PrWSa0uL95vmvUtUZ65OmMrfB4vkzh/C7RoxUdijoIn2b0g91URFqJqQsV
         gprw==
X-Gm-Message-State: ACgBeo34XxuQgkk6ihFqU9uTY/cW5zvFDlqj1SC7AHZr4CrbxMratjU6
        WPzxVlAJVTW17XL7LPIyo994rg==
X-Google-Smtp-Source: AA6agR6LQs8Dxh2DfyUwdwGwwOspgFjtcqDb42faNaU0poHFNgTwixRzCFLPmqip8KSu19pgH6dQBg==
X-Received: by 2002:a2e:93c3:0:b0:25d:d31f:ef1b with SMTP id p3-20020a2e93c3000000b0025dd31fef1bmr284211ljh.102.1659605234655;
        Thu, 04 Aug 2022 02:27:14 -0700 (PDT)
Received: from krzk-bin.. ([77.222.167.48])
        by smtp.gmail.com with ESMTPSA id h16-20020a2e5310000000b0025e42641a32sm52437ljb.123.2022.08.04.02.27.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Aug 2022 02:27:13 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Joel Stanley <joel@jms.id.au>,
        Andrew Jeffery <andrew@aj.id.au>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: arm: aspeed: adjust qcom,dc-scm-v1-bmc compatible after rename
Date:   Thu,  4 Aug 2022 11:27:10 +0200
Message-Id: <20220804092710.64636-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Nuvia DC-SCM BMC board compatible was renamed iin commit
7f058112873e ("ARM: dts: aspeed: nuvia: rename vendor nuvia to qcom"),
so adjust the bindings as well.

Fixes: f77024c80147 ("dt-bindings: arm: aspeed: document board compatibles")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
index 1895ce9de461..20469519e497 100644
--- a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
+++ b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
@@ -80,7 +80,7 @@ properties:
               - ibm,tacoma-bmc
               - inventec,transformer-bmc
               - jabil,rbp-bmc
-              - nuvia,dc-scm-bmc
+              - qcom,dc-scm-bmc
               - quanta,s6q-bmc
           - const: aspeed,ast2600
 
-- 
2.34.1

