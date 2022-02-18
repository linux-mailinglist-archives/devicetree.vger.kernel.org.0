Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0DFB14BBD27
	for <lists+devicetree@lfdr.de>; Fri, 18 Feb 2022 17:15:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237498AbiBRQPx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Feb 2022 11:15:53 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:37894 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237571AbiBRQPs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Feb 2022 11:15:48 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 521EC2B2E3E
        for <devicetree@vger.kernel.org>; Fri, 18 Feb 2022 08:15:31 -0800 (PST)
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com [209.85.218.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 429993F1CA
        for <devicetree@vger.kernel.org>; Fri, 18 Feb 2022 16:15:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1645200926;
        bh=ArqYovumOubQeXG2JMFc63fkt0qJo0xXojg7cAGT2ys=;
        h=From:To:Subject:Date:Message-Id:MIME-Version;
        b=IfuhE60YfWrcO71eE6faaf28qx/9iergmJq7eI5NpZ0P+qm43qtLIBLxLXXTlUS5+
         nn54ncm1TgqQWHcrOxXJ9VdU2YjD4r3JVSXUqqJyqW8o7DE+nZk59lduWweQEwCc2U
         ariiY8z1jto9gyZHL3MwWTlNYdLIY5lyVrDYnSCKs2mZ8Fh2epZbgVAzcfHGNKeDrh
         PAZrdD5onQGCDKBdwzIceIOXtTk8ylhmxsgsKPYDadoB0wm4RdR0HLTQUMy2zdXVVz
         oqDenaXBrcDhCfpHltaPR5NbVxeKDMQvmNixnjvFyf+e3N0WH2yrtC9GKYl2Y+uSBQ
         pUr7EsU4NqheA==
Received: by mail-ej1-f69.google.com with SMTP id 13-20020a170906328d00b006982d0888a4so3253337ejw.9
        for <devicetree@vger.kernel.org>; Fri, 18 Feb 2022 08:15:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ArqYovumOubQeXG2JMFc63fkt0qJo0xXojg7cAGT2ys=;
        b=6LW4ql1aMOXj60uL/uEi5G2liFml9hr6t5zI/0KiuumRX6HGnuC2rWvZBwQKw+3zdq
         n9kN8nmKIH6YwHw2yvOrOEgcAoGsNrBP3fPhrmWYBQzBCWGd0hLGV3tVYK9D7+ZB0HT2
         glfyTkeH63N0x9SWCG/IR0SFz73Xas4vMjJYpoiG46YVal48tYzPd4biS1kn5X8fAZZ1
         IVWB5QhXpUPsdqvuHzmw7D75SvV6kzf+V+gV6Po4pF9F4ISDfUh4HcLBKtRxtsPUYmKz
         8EPnp2jIQkTSiWgGpNgEP8YD8h0aPBfd3jdZXbEzqy6FVCNrLyw83h1atI4j8a2HnH7h
         SiDw==
X-Gm-Message-State: AOAM5327UmyJxOsC/XHmK2JrSxyUqbSADMcjubVy2rxFLMMob2JEbtWA
        wavy59Y7ZDJvpFexJVAxMsccU7y4Jl0m5rGpZy8zqWcERYSI0lU+SIWm9jLud0mdgiDL+RbkOUe
        aW+zqsUQth/yicrXvIOtS/4dBjeWkkG4fW58EZac=
X-Received: by 2002:aa7:d403:0:b0:40f:739c:cbae with SMTP id z3-20020aa7d403000000b0040f739ccbaemr9144593edq.267.1645200925934;
        Fri, 18 Feb 2022 08:15:25 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzLUc/jtciQ3hgHthIGyTcihNgoDi/ahnpFRpSQuYK90a2g0jWHWbYdDdGVN0jKHYlqHqIOog==
X-Received: by 2002:aa7:d403:0:b0:40f:739c:cbae with SMTP id z3-20020aa7d403000000b0040f739ccbaemr9144574edq.267.1645200925759;
        Fri, 18 Feb 2022 08:15:25 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id y21sm2325572ejq.185.2022.02.18.08.15.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Feb 2022 08:15:25 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Dinh Nguyen <dinguyen@kernel.org>, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/4] dt-bindings: usb: dwc2: fix compatible of Intel Agilex
Date:   Fri, 18 Feb 2022 17:15:19 +0100
Message-Id: <20220218161522.52044-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Intel Agilex USB DWC2 node is used as compatible with generic snps,dwc2
(just like Altera's Stratix10).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 Documentation/devicetree/bindings/usb/dwc2.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/usb/dwc2.yaml b/Documentation/devicetree/bindings/usb/dwc2.yaml
index 481aaa09f3f2..048e352c531a 100644
--- a/Documentation/devicetree/bindings/usb/dwc2.yaml
+++ b/Documentation/devicetree/bindings/usb/dwc2.yaml
@@ -41,6 +41,7 @@ properties:
               - amlogic,meson8b-usb
               - amlogic,meson-gxbb-usb
               - amlogic,meson-g12a-usb
+              - intel,socfpga-agilex-hsotg
           - const: snps,dwc2
       - const: amcc,dwc-otg
       - const: apm,apm82181-dwc-otg
@@ -53,7 +54,6 @@ properties:
           - const: st,stm32mp15-hsotg
           - const: snps,dwc2
       - const: samsung,s3c6400-hsotg
-      - const: intel,socfpga-agilex-hsotg
 
   reg:
     maxItems: 1
-- 
2.32.0

