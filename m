Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D5BC35BE83C
	for <lists+devicetree@lfdr.de>; Tue, 20 Sep 2022 16:12:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231682AbiITOMI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Sep 2022 10:12:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42658 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229684AbiITOLs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Sep 2022 10:11:48 -0400
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com [IPv6:2607:f8b0:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DFD8D58B4F
        for <devicetree@vger.kernel.org>; Tue, 20 Sep 2022 07:10:16 -0700 (PDT)
Received: by mail-pl1-x62b.google.com with SMTP id iw17so2543190plb.0
        for <devicetree@vger.kernel.org>; Tue, 20 Sep 2022 07:10:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=QPxEn/eAqZz49dBAsNJltwqDSnOVtKaOrJil3gAFfRA=;
        b=N1PWe3VdAKaEJkhr6bQzq/58UH5Sue2qiNbAqdjfQjsdDK6LY2n/NuEGkr/00VMU9W
         xb2V3+oi7ydfMqeGmh+AvRKBE8TIPQ6nEH9I8fOfZQDKWGowIz+1QiAFw2YDXJ3LzOJi
         kU+pCrBvp5GadVnVfjsDzKMhj3aO74rFJAWRpgoOM9SQl1JbH5y4V1oA2VedNqZfKpaP
         zhn+ZJiPHPewpHqouU+UywK6VvaZAtVHPYtf2L91uMa5tSxfeoLtNjYdDL1BnqPu0qyU
         JK+fYDH/iQQxc6Y8Zj6xvFjjxdi7TnKXWNEr1gGaXks9PeWD5iFfKc4jCWZZFUmG2bJS
         OlAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=QPxEn/eAqZz49dBAsNJltwqDSnOVtKaOrJil3gAFfRA=;
        b=L5Z1TSzcz4axqUbi3Fg8zCFlomIsrxgLe9uKYBTg3t9O0xThdHOfHXWriSDhXVw/LY
         XZ/6s6VKEPIWHYbaow0TqZ2w2WCjm1RHhTg4cCU4fZ7zI1Pst7Drl2NDtFua6aMFA4GC
         xEYaLpahQo0h0BvvJZODxg9Ac4bvfdU16D/45eQEwzAM6c1oUp4kMbymCRAl6lRqwkVM
         AafFXfNMOnJn8QapQYyzNIuxWAt/Oxoxsn2gjuRK8c6QJTzPNqYvIdjvC+1xJFDUAbDn
         +jaTZRVS+lznrMwN7Dt4QOysmNoLm53tEJskrZ8g6zlF1gofHxsclqDzRlG8d/L5y6K/
         D8SQ==
X-Gm-Message-State: ACrzQf3aPHpr4VleYA4l42okB7K+LJd625+KdC9IUES/nZJYUr5Pnlvz
        S3gDx+U4vNu9MJGXP0pI9EqxcA==
X-Google-Smtp-Source: AMsMyM6lgdYkRh8kQx8SNnSS7OR+Dv+YX3GkVF950OMZj/IKhWpp/fejl4AeVrW6Ag60qZ6Iep6E7g==
X-Received: by 2002:a17:90b:1c07:b0:200:9728:b8cd with SMTP id oc7-20020a17090b1c0700b002009728b8cdmr4212275pjb.139.1663683004240;
        Tue, 20 Sep 2022 07:10:04 -0700 (PDT)
Received: from archl-hc1b.. ([103.51.75.120])
        by smtp.gmail.com with ESMTPSA id t9-20020a170902e84900b001782a0d3eeasm1499858plg.115.2022.09.20.07.09.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Sep 2022 07:10:03 -0700 (PDT)
From:   Anand Moon <anand@edgeble.ai>
To:     "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>,
        David Wu <david.wu@rock-chips.com>
Cc:     Anand Moon <anand@edgeble.ai>, linux-rockchip@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Jagan Teki <jagan@edgeble.ai>, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH net-next v3 1/2] dt-bindings: net: rockchip-dwmac: add rv1126 compatible
Date:   Tue, 20 Sep 2022 14:09:40 +0000
Message-Id: <20220920140944.2535-1-anand@edgeble.ai>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add compatible string for RV1126 gmac, and constrain it to
be compatible with Synopsys dwmac 4.20a.

Reviewed-by: Heiko Stuebner <heiko@sntech.de>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
Signed-off-by: Anand Moon <anand@edgeble.ai>
---
v3: added reviewed by Krzysztof Kozlowski
    rebased on linux-net-next
v2: add missing compatible string to property
    added reviewed by Heiko Stuebner.
---
---
 Documentation/devicetree/bindings/net/rockchip-dwmac.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
index 3c8c3a907181..42fb72b6909d 100644
--- a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
@@ -27,6 +27,7 @@ select:
           - rockchip,rk3568-gmac
           - rockchip,rk3588-gmac
           - rockchip,rv1108-gmac
+          - rockchip,rv1126-gmac
   required:
     - compatible
 
@@ -48,6 +49,7 @@ properties:
               - rockchip,rk3368-gmac
               - rockchip,rk3399-gmac
               - rockchip,rv1108-gmac
+              - rockchip,rv1126-gmac
       - items:
           - enum:
               - rockchip,rk3568-gmac
-- 
2.37.3

