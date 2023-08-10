Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E196A7775AD
	for <lists+devicetree@lfdr.de>; Thu, 10 Aug 2023 12:23:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234628AbjHJKXV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Aug 2023 06:23:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59344 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234511AbjHJKXV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Aug 2023 06:23:21 -0400
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F0324DF
        for <devicetree@vger.kernel.org>; Thu, 10 Aug 2023 03:23:14 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-52327d63d7cso898270a12.1
        for <devicetree@vger.kernel.org>; Thu, 10 Aug 2023 03:23:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1691662993; x=1692267793;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=uVAzrUIqQ9diO6f2u0NWNjX2u+ZjP5K7qMievd2A660=;
        b=hJ45zfRpOYvB9JblZi3cj58/X8ZpBpVh7B5ZNIUJLwMWrxMgUhexUXk8G9/iomD9XD
         8X0RSYzDaBRvBQH3YEH9mU0ad/A5UGXjKKBvS1djZUooBG3n2nx0QWSjbnRO4H/ypgW8
         5YBExlR+q+b3vOBGS9HXi8VvPvWWCVASfFCFhpZPAD90NPCmRlg6cwXzzM859iQe2S91
         BY6noSIw1HxBCLTtOlSVUvd0TUERPCD9TlFfqsIPcXne9k/9SNnAhTI/k9MUq2CvQtnh
         XGLXdnWbB4WHUTqp6ULnOa++GiuUhY1ojHI/4reJS8HCrg92gOlz/7IA6iZS03VH2gCC
         PymA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691662993; x=1692267793;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uVAzrUIqQ9diO6f2u0NWNjX2u+ZjP5K7qMievd2A660=;
        b=kl7iUMXD+FhBXF6KrxjIMwgksjA3NhEDpXaGi2P5IdutOsILHUspzBzxBbyF60xXM7
         zf+2v3sdGDpOGz4pfmIRBu5SqOmHVk1cHTAxBLJLAkS4+YdkCqbAVFUFGbHk1Metg3FN
         L0t7M2iXXLO2En3TlIWOuGGjrEZPa0XusVAduWPWhg5oZBPisxO460VTafvEVLuU2e9J
         2umr6/NDJfTSPIPGdgbMUqCAI7Ali/J4bIOsDlLGwJYT5k2vRjvXvYpKi8moHPRW3qIi
         cYC+3ZXDt3Df7Gr8Leq0npAtwg+OQkq27Z6hzthBOT+a/1A5GfWbT3e5GvUGw+ML9zFP
         2ANg==
X-Gm-Message-State: AOJu0Yw2BrPYDnhvLkbsH4hL/lpHTPTZoynZOTWgNXcvAJPGUlB6JbOo
        I0lzL1UIxhYy7UnacRNMBiSZ5w==
X-Google-Smtp-Source: AGHT+IFyi6cbqtnFnA3nh4AJCySW1uhnlMRdbKrfO/9YtVfcIBaN4XouGmQ3czoWZJeiFDcmv0wxyg==
X-Received: by 2002:a17:906:14d:b0:99b:f392:10b2 with SMTP id 13-20020a170906014d00b0099bf39210b2mr2066808ejh.39.1691662993360;
        Thu, 10 Aug 2023 03:23:13 -0700 (PDT)
Received: from fedora.. ([88.207.97.255])
        by smtp.googlemail.com with ESMTPSA id kg23-20020a17090776f700b0099cfd0b2437sm734576ejc.99.2023.08.10.03.23.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Aug 2023 03:23:12 -0700 (PDT)
From:   Robert Marko <robert.marko@sartura.hr>
To:     davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
        pabeni@redhat.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        andrew@lunn.ch, hkallweit1@gmail.com, linux@armlinux.org.uk,
        netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     luka.perkov@sartura.hr, Robert Marko <robert.marko@sartura.hr>
Subject: [PATCH net-next 1/2] dt-bindings: net: ethernet-controller: add PSGMII mode
Date:   Thu, 10 Aug 2023 12:22:54 +0200
Message-ID: <20230810102309.223183-1-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,T_SPF_TEMPERROR autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a new PSGMII mode which is similar to QSGMII with the difference being
that it combines 5 SGMII lines into a single link compared to 4 on QSGMII.

It is commonly used by Qualcomm on their QCA807x PHY series.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
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

