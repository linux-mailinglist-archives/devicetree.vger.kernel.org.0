Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EB601700CD3
	for <lists+devicetree@lfdr.de>; Fri, 12 May 2023 18:20:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229535AbjELQUx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 May 2023 12:20:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52822 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229527AbjELQUx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 May 2023 12:20:53 -0400
Received: from mail-yw1-x1131.google.com (mail-yw1-x1131.google.com [IPv6:2607:f8b0:4864:20::1131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E0FE04488
        for <devicetree@vger.kernel.org>; Fri, 12 May 2023 09:20:50 -0700 (PDT)
Received: by mail-yw1-x1131.google.com with SMTP id 00721157ae682-559ded5e170so147841777b3.3
        for <devicetree@vger.kernel.org>; Fri, 12 May 2023 09:20:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683908450; x=1686500450;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+u/Q2BQN9a7YozVknL12KsnGjDJPaozy74q2a85XcJo=;
        b=pBhAiTMTnAZBJUgUDPOx7fnBrB5rAoB8S7WJhzqPKojku1Y5KbKba5aYY95NznlrgH
         EiNUGI8/JJSV6G83+nKyKwsZKBelWKcImmdtniSkOZfG6kDAOEG0vxtNKAfq4LRxkO/V
         OKgN52DF0LTt/tTVgKJTsK/GUiAbwse9j55bt/K9t6DRvH26x5XsIJFXAievPbG1hwFa
         CS/oyZKpViFY6Uiq1akDHbr7lcb2AKSjmirO9NEkTwUrJQGhlTJGnmm/c5Yz3eBudRf0
         8YsPJ37NdpwM1AF8SNyVFJiIsVU8BZE1f/AKBvOdsohG/9vXhNZhcp1S2ZCwlg2t4k3E
         6DjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683908450; x=1686500450;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+u/Q2BQN9a7YozVknL12KsnGjDJPaozy74q2a85XcJo=;
        b=ZKXF71Scr3vi9LmMexmr7CjjE14suhvtwcOjvSw8dHT+/6JGcBtJBHEGWfWcAVhw14
         eJisaj7gr4r8kUt4JJ2wDVoq2n+8hjLGVsRVX2qXLXGA8x/vwYb+Qi1kLpFf+vMpqmzx
         kddIbX5fuu0w4kaPADMFtvj5nSUbnJj07gFGw32yRbaEu+E05YHMRpnqmbnPdpA/7I+e
         hApLt1RjfWaU16vD31QtmVt2GLVWTNJDoE0GWn3JuF0aTJ1LQSL0n5Ms5D4eHZYJXxJf
         G2izFT1RSTMkhz2M/aOA1TvvaGDtX5tJFblJNtbFArkc8Z/2GUNjwUcXXfeiUKpfOvr6
         vrTg==
X-Gm-Message-State: AC+VfDxSv3xR8FVsbdky7WSzAK9ZPoc/wineWB8gfMq+1koekyuO52lJ
        HhD6wI/uKcO/4SGWEsoB+ZM=
X-Google-Smtp-Source: ACHHUZ4eQeBfZ9WUdXqu6q7U271Y+ob2Jn+mu3kLqsC7EKMmD3/BGSeNNy3eshcvYF1RYCbRFS3K0g==
X-Received: by 2002:a25:e78a:0:b0:b8f:2047:181a with SMTP id e132-20020a25e78a000000b00b8f2047181amr21552185ybh.24.1683908449968;
        Fri, 12 May 2023 09:20:49 -0700 (PDT)
Received: from localhost.localdomain ([76.244.6.13])
        by smtp.gmail.com with ESMTPSA id s19-20020a257713000000b00ba71e594cafsm340129ybc.62.2023.05.12.09.20.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 May 2023 09:20:49 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     linux-rockchip@lists.infradead.org
Cc:     devicetree@vger.kernel.org, maccraft123mc@gmail.com,
        sebastian.reichel@collabora.com, jagan@amarulasolutions.com,
        heiko@sntech.de, conor+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 1/2] dt-bindings: arm: rockchip: add Anbernic RG353PS
Date:   Fri, 12 May 2023 11:20:38 -0500
Message-Id: <20230512162039.31132-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230512162039.31132-1-macroalpha82@gmail.com>
References: <20230512162039.31132-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

Add devicetree binding for Anbernic RG353PS. This device is identical
to the RG353P, except it does not have a touchscreen, does not have
an eMMC, only includes 1GB of RAM, and ships with only the 2nd
revision panel based on a Sitronix ST7703 controller. Support for the
panel has been added in a separate commit.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index ec141c937b8b..362df3f2a037 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -40,6 +40,11 @@ properties:
           - const: anbernic,rg353p
           - const: rockchip,rk3566
 
+      - description: Anbernic RG353PS
+        items:
+          - const: anbernic,rg353ps
+          - const: rockchip,rk3566
+
       - description: Anbernic RG353V
         items:
           - const: anbernic,rg353v
-- 
2.34.1

