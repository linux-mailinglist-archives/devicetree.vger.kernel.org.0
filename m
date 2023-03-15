Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EE0CA6BBE94
	for <lists+devicetree@lfdr.de>; Wed, 15 Mar 2023 22:11:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232153AbjCOVLE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Mar 2023 17:11:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51232 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232424AbjCOVLD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Mar 2023 17:11:03 -0400
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D25A2B2AD
        for <devicetree@vger.kernel.org>; Wed, 15 Mar 2023 14:11:01 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id fd5so46819146edb.7
        for <devicetree@vger.kernel.org>; Wed, 15 Mar 2023 14:11:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1678914660;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WuawNslRJtsC33cN3DASsrMzq8m1GQBJdWGYFmYOzJw=;
        b=Hm4Jn73YCvnNFAAptrzyqMve7nU/PmLdlqQ0AVEJwPboIH0zEKaOnv8wO7gglsKXcx
         WX8I0FXCivA8E6ZCRvj+ONY+7poyRpgTsW+HbDAZQ+6NOPq95YIOlhSQrkcTNWzzqR7j
         VOEeIGZSGElSdKcekINhcDP7tY65lziwvVfrI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678914660;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WuawNslRJtsC33cN3DASsrMzq8m1GQBJdWGYFmYOzJw=;
        b=ImlKBzA388HfYC0X3RPK/bkVa/yhGzGbqJp6zvM31uTF+Io5Sx10JxFUNj0Mwp3/sn
         RvKQ4ERf4y0bXT7PrmsCmMlJYcQXKbDsacK+7W/yx9v5GzNEEOa+6qxmPXC+E2JgoEQX
         kKGYOMmWu++ZM1dySF+AeXCJxsP21MKqVUeT0aSl8U/YDw1G1vZ6Ilmy8t6om0597Vp9
         TYSUddMG+1e/5DL6rIkrcAmxt2NNuPNa0tEpeuH6PJdZOlrPNWy3ftvzgb42/oN9rski
         0toL5VHA5oIWCU7JHAXJMsHc3JFOP0BO1+yFT+wr5OcQ8trlUjW9K/NEpGDojKDaPzjK
         duHw==
X-Gm-Message-State: AO0yUKXntOrcjN9eh8ZKYfSFpXrTyqkFDT4W20MTVzx6/kj0/dNrMV+C
        riF92v3LZ3Vv8K0cMbMBsQyiFA==
X-Google-Smtp-Source: AK7set/HsncufAKHkG0YqxX7s7PSud+PvzcNbyfIIX8XKDKEbQVS95BgIh70VhfY/KPT2TYhLvUVEw==
X-Received: by 2002:a17:907:742:b0:92e:b1dd:cff2 with SMTP id xc2-20020a170907074200b0092eb1ddcff2mr5202283ejb.28.1678914659863;
        Wed, 15 Mar 2023 14:10:59 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-87-0-96-89.retail.telecomitalia.it. [87.0.96.89])
        by smtp.gmail.com with ESMTPSA id o15-20020a170906600f00b0092b5384d6desm2965366ejj.153.2023.03.15.14.10.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Mar 2023 14:10:59 -0700 (PDT)
From:   Dario Binacchi <dario.binacchi@amarulasolutions.com>
To:     linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Amarula patchwork <linux-amarula@amarulasolutions.com>,
        Vincent Mailhol <mailhol.vincent@wanadoo.fr>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        michael@amarulasolutions.com, Rob Herring <robh@kernel.org>,
        Marc Kleine-Budde <mkl@pengutronix.de>,
        Dario Binacchi <dario.binacchi@amarulasolutions.com>,
        Christophe Roullier <christophe.roullier@foss.st.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Mark Brown <broonie@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sebastian Reichel <sre@kernel.org>,
        Viresh Kumar <viresh.kumar@linaro.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com
Subject: [RESEND PATCH v7 1/5] dt-bindings: arm: stm32: add compatible for syscon gcan node
Date:   Wed, 15 Mar 2023 22:10:36 +0100
Message-Id: <20230315211040.2455855-2-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20230315211040.2455855-1-dario.binacchi@amarulasolutions.com>
References: <20230315211040.2455855-1-dario.binacchi@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Since commit ad440432d1f9 ("dt-bindings: mfd: Ensure 'syscon' has a
more specific compatible")
It is required to provide at least 2 compatibles string for syscon node.
This patch documents the new compatible for stm32f4 SoC to support
global/shared CAN registers access for bxCAN controllers.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Acked-by: Rob Herring <robh@kernel.org>

---

(no changes since v5)

Changes in v5:
- Add Rob Herring's Acked-by tag.

 .../devicetree/bindings/arm/stm32/st,stm32-syscon.yaml          | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/stm32/st,stm32-syscon.yaml b/Documentation/devicetree/bindings/arm/stm32/st,stm32-syscon.yaml
index b2b156cc160a..ad8e51aa01b0 100644
--- a/Documentation/devicetree/bindings/arm/stm32/st,stm32-syscon.yaml
+++ b/Documentation/devicetree/bindings/arm/stm32/st,stm32-syscon.yaml
@@ -20,6 +20,7 @@ properties:
               - st,stm32-syscfg
               - st,stm32-power-config
               - st,stm32-tamp
+              - st,stm32f4-gcan
           - const: syscon
       - items:
           - const: st,stm32-tamp
@@ -42,6 +43,7 @@ if:
       contains:
         enum:
           - st,stm32mp157-syscfg
+          - st,stm32f4-gcan
 then:
   required:
     - clocks
-- 
2.32.0

