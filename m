Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 44439511FD3
	for <lists+devicetree@lfdr.de>; Wed, 27 Apr 2022 20:38:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241597AbiD0QKX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Apr 2022 12:10:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49240 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242751AbiD0QJx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Apr 2022 12:09:53 -0400
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 985C048C72C
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 09:05:56 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id g20so2497882edw.6
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 09:05:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=7ILgIEY7wMcCopOsdlDifUioNzWZT1dVF0DliY6j2xA=;
        b=T4DB5lG9R3O3sQ3sn7pnH85cLUhqn6/RQbZSW20dj27Fq+ppgwj/lT1PLj6My5eb6j
         NYXwfLz610MvYk+drQvhzFa6IGwgfFwynowPQM4VlRX6pNwZ1zTZ8EMwGbPn5tUh2wZU
         OEkYPjl29hnRk8P6ZZgd33ebUC5CeVsKz+XzFQ8YtByrGjLSX+GrtgtSrU9pyPr9bW6U
         YFV3eI+XdBhWkv8XFBQuRganjmAMdLvKcBBZXiWgqPIow4pyLNU3xRDyjciaMwXYUt5t
         b+V75SjlOyPNhGeWQWCcBEATtUXfGAgO5w2X7vpyc6XUTJef/lpJ6XSu86YMlIKizp/3
         0S2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=7ILgIEY7wMcCopOsdlDifUioNzWZT1dVF0DliY6j2xA=;
        b=RKz19D5wgVEd5K0rrrj2TC6KFEzc3I1aCkIG3jJAdTuT7+heK7jXmPpSg56A9x1UFo
         XKK1ebkLKgZoLPgIEN7TX+3dH61bxKkxkmVQMmYj2fY6LB8qQ4a/Y0hqfuv7Usvg63Tn
         +yyAt79BJ7fJWkaXHC0f+8GF9uaN+hBHVUV5ZGqCBdNnlkkWCA8N2RrFRr8RSDA99cj3
         l9lMkdxVZQfdg9WBTgiDcxhAM/21SCqvsw+bflCnzLDghuCT85vakklymFXiap6hqb6K
         bXhiD2yfIYetQpoz+RLSsjuG1jDW9HPXJQV8zzosedrYOulccu4l+UtuDoUl1SMToecj
         DMag==
X-Gm-Message-State: AOAM530C3fzeifqAgyrsy2S7xG7lI2FgZOqFDDEoo5W7vay9RNfqffBi
        iS4K/hNNgLdoTBL3f2P5CnhalQ==
X-Google-Smtp-Source: ABdhPJyvfsYi1ZhGhQXgeyMBsvg1zdskaGmnft5bTfbYhAiF0ltL3Fl0UMCLahVB1o006y6tgoWprw==
X-Received: by 2002:a05:6402:1d4e:b0:423:fd93:6466 with SMTP id dz14-20020a0564021d4e00b00423fd936466mr31112598edb.304.1651075550613;
        Wed, 27 Apr 2022 09:05:50 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id b17-20020aa7dc11000000b00412ae7fda95sm8571437edu.44.2022.04.27.09.05.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Apr 2022 09:05:50 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sekhar Nori <nsekhar@ti.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 3/3] ARM: dts: dm81xx: use new 'dma-channels/requests' properties
Date:   Wed, 27 Apr 2022 18:05:38 +0200
Message-Id: <20220427160538.646044-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220427160538.646044-1-krzysztof.kozlowski@linaro.org>
References: <20220427160538.646044-1-krzysztof.kozlowski@linaro.org>
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

The '#dma-channels' and '#dma-requests' properties were deprecated in
favor of these defined by generic dma-common DT bindings.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/dm814x.dtsi | 4 ++--
 arch/arm/boot/dts/dm816x.dtsi | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/dm814x.dtsi b/arch/arm/boot/dts/dm814x.dtsi
index 7702e048e110..ab2572482ba9 100644
--- a/arch/arm/boot/dts/dm814x.dtsi
+++ b/arch/arm/boot/dts/dm814x.dtsi
@@ -167,8 +167,8 @@ cppi41dma: dma-controller@47402000 {
 				interrupts = <17>;
 				interrupt-names = "glue";
 				#dma-cells = <2>;
-				#dma-channels = <30>;
-				#dma-requests = <256>;
+				dma-channels = <30>;
+				dma-requests = <256>;
 			};
 		};
 
diff --git a/arch/arm/boot/dts/dm816x.dtsi b/arch/arm/boot/dts/dm816x.dtsi
index a9e7274806f4..317b7c74e32c 100644
--- a/arch/arm/boot/dts/dm816x.dtsi
+++ b/arch/arm/boot/dts/dm816x.dtsi
@@ -655,8 +655,8 @@ cppi41dma: dma-controller@47402000 {
 				interrupts = <17>;
 				interrupt-names = "glue";
 				#dma-cells = <2>;
-				#dma-channels = <30>;
-				#dma-requests = <256>;
+				dma-channels = <30>;
+				dma-requests = <256>;
 			};
 		};
 
-- 
2.32.0

