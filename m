Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8395D778D26
	for <lists+devicetree@lfdr.de>; Fri, 11 Aug 2023 13:10:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234400AbjHKLKi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Aug 2023 07:10:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50090 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231948AbjHKLKh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Aug 2023 07:10:37 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 92279E4C
        for <devicetree@vger.kernel.org>; Fri, 11 Aug 2023 04:10:36 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-99bf91956cdso247258066b.3
        for <devicetree@vger.kernel.org>; Fri, 11 Aug 2023 04:10:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1691752235; x=1692357035;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2yEmCh/4b+BWU9qDJvKWWcz5lhDGo7JYaO71Xt3Zntc=;
        b=rg3CpeIsizpP9cBrlygwF2tUMFYSdrRv01Bg7USlIfM5InOzVVsRFV/3k/6fh0w0Ux
         Z2V2LSMPKfKnoWARS8WDruUN8/YbaU0/hf0oKTnskaVhRb32QBflqXo+inHhCuG6GTcd
         y34/f/DdkuRSSJkUdYGRD2XaWBBOCIEQb1WR0r7qaC+3BLbZju9THJ/H3rccNBvLEVDA
         sRUhjUrex8Jfh3Pw6DfSgjSdHe7FooS16yIl5iVUv6TbpVJZejZIlFJ1GS25grrER9Qc
         h9Di7j2MovGQz/oaBCqUI8TI5Y0kLxUmmJSpnGBWaI0Lq5dH9QjdK72/qu0cTvKnkZ1n
         Pyvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691752235; x=1692357035;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2yEmCh/4b+BWU9qDJvKWWcz5lhDGo7JYaO71Xt3Zntc=;
        b=D+O4Weyizw2cXItDEVEXgv3TwP2rjpRHbyCDE92SaQWezVMFdHDO7JbEqTJoZAVEz2
         eGnVJF6QJ4P5AMy9ufaT37cgH1Igoo250c2/0twaN9v3ppBN4a59+pEXXAAa5QiZpRfh
         nG0JyIH79sxDPUK3ISt7Blhvi9mRZ7Ol1ytT7CwNxnvMBr2vtr5TY5FkbM20cGG9ZNYM
         c9D7CVqxiVd1G53IAgnWv2lmgQcI3WHN6nXjyfcI5Wl0H9GZ6Hyny6z6sbz58zbLPjQ8
         TIP/lSSZihWTsIozPKy427x7fuSRkgO+M73turi7eh0SlE2Q02TjJTOh20ThWNq5aEI9
         JgGQ==
X-Gm-Message-State: AOJu0YypTPojVKfbrf6nIUd/VKtxgcY68pYNjm99Tq2ZWsy6WLltyDDX
        Xs7J+XLDrKl8y716DR1VdnqWYQ==
X-Google-Smtp-Source: AGHT+IGOQB3GS+GbS6NxtqEmWT4mAjfyb2PiaIhDxlWAEMe0UmEc4sr4429o9g1VTydUfdkgXRm3GA==
X-Received: by 2002:a17:906:cc4f:b0:99b:cb7a:c164 with SMTP id mm15-20020a170906cc4f00b0099bcb7ac164mr1321450ejb.62.1691752234917;
        Fri, 11 Aug 2023 04:10:34 -0700 (PDT)
Received: from fedora.. ([188.252.220.253])
        by smtp.googlemail.com with ESMTPSA id gg15-20020a170906e28f00b00982b204678fsm2103206ejb.207.2023.08.11.04.10.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Aug 2023 04:10:34 -0700 (PDT)
From:   Robert Marko <robert.marko@sartura.hr>
To:     davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
        pabeni@redhat.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        andrew@lunn.ch, hkallweit1@gmail.com, linux@armlinux.org.uk,
        corbet@lwn.net, netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org
Cc:     luka.perkov@sartura.hr, Robert Marko <robert.marko@sartura.hr>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH net-next v2 1/2] dt-bindings: net: ethernet-controller: add PSGMII mode
Date:   Fri, 11 Aug 2023 13:10:06 +0200
Message-ID: <20230811111032.231308-1-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a new PSGMII mode which is similar to QSGMII with the difference being
that it combines 5 SGMII lines into a single link compared to 4 on QSGMII.

It is commonly used by Qualcomm on their QCA807x PHY series.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
Acked-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/net/ethernet-controller.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/net/ethernet-controller.yaml b/Documentation/devicetree/bindings/net/ethernet-controller.yaml
index 6b0d359367da..9f6a5ccbcefe 100644
--- a/Documentation/devicetree/bindings/net/ethernet-controller.yaml
+++ b/Documentation/devicetree/bindings/net/ethernet-controller.yaml
@@ -66,6 +66,7 @@ properties:
       - mii
       - gmii
       - sgmii
+      - psgmii
       - qsgmii
       - qusgmii
       - tbi
-- 
2.41.0

