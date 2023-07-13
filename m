Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8A46A752706
	for <lists+devicetree@lfdr.de>; Thu, 13 Jul 2023 17:30:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232154AbjGMP3x (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jul 2023 11:29:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58356 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230483AbjGMP3P (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Jul 2023 11:29:15 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4E1302712
        for <devicetree@vger.kernel.org>; Thu, 13 Jul 2023 08:28:54 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-3fbab0d0b88so13574165e9.0
        for <devicetree@vger.kernel.org>; Thu, 13 Jul 2023 08:28:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689262133; x=1691854133;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=Dk7c3gz9VhsIx4qVgTGY12ilcIgctHPAd46AqzeX33s=;
        b=cvKVgzY0rvgm4OkvM4Iyp4VIJ+PMtQ0TtSrTsq3VM3ULcOvJcio8bd6Sm3OT8W5bSv
         ijBer0POVkuOR93O6WwiHa7TAwLdQXpWx7mykj/+4qZznjSfilLlZLzcxUOyPWK0YIe6
         A189xDDkFTFaE14+wZpmkUGOw2fw+10Od0z05HNnCGPj160YV/yl1DOqRKHwRTd5HeCz
         OKwhmrRDlCHqDeQsvvdUPxHL0mYQiKmTCni60oP/tyRSv9E910w/Fol7Js0dSeMlsyxb
         thgC0pLBIaIIIFh8BqSkeh+ETqabVWiRNwx8KV460nyLaQiACy5oWAyD+AoJNwFQJ6DK
         LHJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689262133; x=1691854133;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Dk7c3gz9VhsIx4qVgTGY12ilcIgctHPAd46AqzeX33s=;
        b=To/LBoLPiYKBayp6n6Dqzu9zz4+ejUYI0oxJFF8PFNu+Sq3EU7qgUuTXw/RytA9J04
         hSGSAizDxMH2OVWpjCW+abc10xVewJh5m2F5mXACj6XYihLhnPHlT40U3/imL9q1Vf03
         gtprjxAghPXUbW+I32OMrIavJLHA/VaUwa8nQ3xRihwhTroAAnq1xau9qkZuiMaEwobo
         rugUFoCdufjyrDGQX4xXekasDegzaRpuOh592In8k/yXw9AF6M7wcw+nU0UdpWAyt23M
         +knR5Q7E3ypTIKP4bYJIKX5+i0+DruuGz6rQW2onjude6b7ImX19BqpiHfY5PkKRTrtU
         gmdQ==
X-Gm-Message-State: ABy/qLaBmY/1PzltjuHCZqW32Jdev1x6l1JwOfxlRg7vkcaCaK0R3N08
        to0evg7nFtmopnwEDjrzi9SmfQ==
X-Google-Smtp-Source: APBJJlEWUoeuf5dGWkDvdxMoAKsG/Z2DJAjtQ1HCUphj+qd1f83rh/PkeY7QfHENnfGc0LkAkETEIg==
X-Received: by 2002:a05:600c:3105:b0:3fa:9996:8e03 with SMTP id g5-20020a05600c310500b003fa99968e03mr14988wmo.10.1689262132820;
        Thu, 13 Jul 2023 08:28:52 -0700 (PDT)
Received: from krzk-bin.. ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id l22-20020a7bc456000000b003fbb5142c4bsm18563121wmi.18.2023.07.13.08.28.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jul 2023 08:28:52 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Paul Cercueil <paul@crapouillou.net>,
        Marek Vasut <marex@denx.de>, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, netdev@vger.kernel.org
Subject: [PATCH 0/3] dt-bindings: net: davicom,dm9000: convert to DT schema
Date:   Thu, 13 Jul 2023 17:28:45 +0200
Message-Id: <20230713152848.82752-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

Memory controller bindings have to be updated before we can convert
davicom,dm9000 to DT schema.

Please take it via net-next.

Best regards,
Krzysztof

Krzysztof Kozlowski (3):
  dt-bindings: memory-controllers: ingenic,nemc: reference peripheral
    properties
  dt-bindings: memory-controllers: reference TI GPMC peripheral
    properties
  dt-bindings: net: davicom,dm9000: convert to DT schema

 .../memory-controllers/ingenic,nemc.yaml      |  1 +
 .../mc-peripheral-props.yaml                  |  2 +
 .../bindings/net/davicom,dm9000.yaml          | 59 +++++++++++++++++++
 .../bindings/net/davicom-dm9000.txt           | 27 ---------
 4 files changed, 62 insertions(+), 27 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/net/davicom,dm9000.yaml
 delete mode 100644 Documentation/devicetree/bindings/net/davicom-dm9000.txt

-- 
2.34.1

