Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9536758ECD2
	for <lists+devicetree@lfdr.de>; Wed, 10 Aug 2022 15:12:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232233AbiHJNMt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Aug 2022 09:12:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47228 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232529AbiHJNMq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Aug 2022 09:12:46 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3CE313FB9
        for <devicetree@vger.kernel.org>; Wed, 10 Aug 2022 06:12:41 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id d14so21139902lfl.13
        for <devicetree@vger.kernel.org>; Wed, 10 Aug 2022 06:12:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=Xt4sTSjZbsVw99EpwkCEf7vaG5aOAi9K9YMX6CS8DbU=;
        b=tDEXm9cJOo9x+jqx0eZjSaW0fOGtKkO/wjuGSXbbyLjhtHUEry6+Bb/qXO5hwNbAAr
         BctplbuasMFj9Osj0FNf1VY0R3cgmEMx0zg7AfozS5nZwReWFfsvnjUdq6y+MSiRcUVM
         mHOBaNNXyy5fS9037dkM6laEaVcv6IqsJ/po2HO4wIdbPDIPS+gH13zNcL5+/JhXqnIR
         YvYFMcqqOng1NzxOzf0w+xfO4IPX11ndEXW0VatliCPM33Q+0pz9ZyBr4Io2Ate93epE
         /4hGd4W+H8xcdAu5bn32XM8CCGMOTUGazEVX/k5gl0Ig4bmqJOXyZbr+eOeQWo3+5Bs2
         /wdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=Xt4sTSjZbsVw99EpwkCEf7vaG5aOAi9K9YMX6CS8DbU=;
        b=j2htAGOg+yDsZuOZlp6/pSfb56Iqsnllie2vDcOJhBMUd3Nyx2M36CNEUXoQQYVZRl
         XMGE6eV8Luem2PEmsot5XXzD0Y5/ct1eY9LOC6ge9Ys2DGFBWclsDOU9kyXhGn3Qeho4
         4Wxcsi50EpWyXhnTEhXBkTDJBmQQPTNiuQPk07TGBTpMSLRjMSLvG5eIqhlpyPQZ/bKy
         OPuVQSjSmHSegnEQWbYtDr5Ajfx8QJOHieXS8UKLiHd/Hp48hmh10F9qsgg9jDlpRe/p
         BAHcb7g+1G5DmQ4iATjDv7BVm3vJ5bqPPQJShA6R7AodFrbUd5pLNM576hH9aOrjoky8
         PB+A==
X-Gm-Message-State: ACgBeo0MQeoyEEAzaipplLmlv+MNrOupRlN49O9bFyuVx74ugy2T/Kyq
        N0uxw/wcCCtj0gJqWATZXY+p8Q==
X-Google-Smtp-Source: AA6agR6BSaEUe26xeOlQs51vuNIgdOU/4k/pdSwN9BiMa+HppfBY/RMrzljKL1NTppwuvFsQnxDjSg==
X-Received: by 2002:a05:6512:138e:b0:47f:77cc:327a with SMTP id p14-20020a056512138e00b0047f77cc327amr9836703lfa.277.1660137160254;
        Wed, 10 Aug 2022 06:12:40 -0700 (PDT)
Received: from localhost.localdomain ([83.146.140.105])
        by smtp.gmail.com with ESMTPSA id g2-20020a19ee02000000b0048b08f0c4ddsm334168lfb.253.2022.08.10.06.12.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Aug 2022 06:12:39 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Jonathan Hunter <jonathanh@nvidia.com>,
        Krishna Yarlagadda <kyarlagadda@nvidia.com>,
        linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
        linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] spi: dt-bindings: nvidia,tegra210-quad-peripheral-props: correct additional properties
Date:   Wed, 10 Aug 2022 16:12:36 +0300
Message-Id: <20220810131236.428529-1-krzysztof.kozlowski@linaro.org>
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

Re-usable schemas should use additionalProperties:true, so the schema
using it will check for evaluated properties.

Fixes: e23917822d3c ("spi: dt-bindings: split peripheral prods")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/spi/nvidia,tegra210-quad-peripheral-props.yaml    | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/spi/nvidia,tegra210-quad-peripheral-props.yaml b/Documentation/devicetree/bindings/spi/nvidia,tegra210-quad-peripheral-props.yaml
index 24e0c2181d25..2c3cada75339 100644
--- a/Documentation/devicetree/bindings/spi/nvidia,tegra210-quad-peripheral-props.yaml
+++ b/Documentation/devicetree/bindings/spi/nvidia,tegra210-quad-peripheral-props.yaml
@@ -29,5 +29,4 @@ properties:
     minimum: 0
     maximum: 255
 
-unevaluatedProperties: true
-
+additionalProperties: true
-- 
2.34.1

