Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 89AD14BD841
	for <lists+devicetree@lfdr.de>; Mon, 21 Feb 2022 09:41:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239052AbiBUIW7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Feb 2022 03:22:59 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:35690 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239108AbiBUIW6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Feb 2022 03:22:58 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A32EA219B
        for <devicetree@vger.kernel.org>; Mon, 21 Feb 2022 00:22:35 -0800 (PST)
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com [209.85.221.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id ECBA43F1AB
        for <devicetree@vger.kernel.org>; Mon, 21 Feb 2022 08:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1645431753;
        bh=hlIj3vhV71SSbB5w21H5u6H9YDo8YKgOZoNaxfo50oc=;
        h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
        b=tWuQMxuDLtOko3MVlZFpEAluxgt4GdeT8Hxbp7mNL6TwPjkG9p1wzQOs8a0ndnXZU
         deFoH2rBYOcMtLeiFTl54NX3ZnR1v9qY8SZVX8rI2Fi4JpCCrBWEydIUJD7aS9in9i
         t34tHGWaxP8vfncI8rfPDaAhSQMZq2tRT7pxdARCjnYdd1u7tJMJjdAS/jdv0Fb9al
         EXA1xmEyr6mS2PEc1SJx9AglT21Zc708Xc4y9ViYQm6ukUwbmAHQ+jYXwh69Y3vC2D
         oAy6vsUVLdI+moRkr5WqJmhk8hijbytmZToTA3YbQby/baDPolTKwTibNehfrwjSxx
         9Oe7/TrHTosEg==
Received: by mail-wr1-f70.google.com with SMTP id e11-20020adf9bcb000000b001e316b01456so7047981wrc.21
        for <devicetree@vger.kernel.org>; Mon, 21 Feb 2022 00:22:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=hlIj3vhV71SSbB5w21H5u6H9YDo8YKgOZoNaxfo50oc=;
        b=X2VCeqFNbmWzH3AfoenpQsHkprYG2q6PD1qeZ5BSyF88H/bVvEVy16hneTVBlkSvJ4
         T3YIwkPuq6zusMnFpofud/3ymmBZZzk95m8Vi63dj0qWWrgh4F2NSV0RtyzI2iGslC83
         gXB3EtcAt0tC1rCtnGR9+rirrA6ZtFXO0vmI3qkB9yYPIuAdXRQw6uGNzp09oy6iIVXk
         4TNL14qJ58BoFJoisBSwNu93EzNFWzzNvPQVw4TdpgjdEZuuDvr8B4op4xtwTVhQee+h
         C+yfdRJk6DfW1t68xWyx2JsJbi632RgPhXqH6sXJ3jEKSdCJTcrDOnZI1JfEb+kw+0L1
         Wy1w==
X-Gm-Message-State: AOAM531EvLrFXdV40L9gfRjH92WjnQfFM8lGCCZ6axufuIleo+kk0muQ
        D44j37nsTEU0ZhdzcosqM/6slhfE/4CjvPNVsBEhf6kGDBVDj1OfdsI+fJde6FoEq+teO1PaWg3
        095LlmZylJweJboN96fNNAHg4sJ1VUVYNoUMkG6Q=
X-Received: by 2002:a5d:64cc:0:b0:1e8:f4ad:bf85 with SMTP id f12-20020a5d64cc000000b001e8f4adbf85mr13862934wri.630.1645431753279;
        Mon, 21 Feb 2022 00:22:33 -0800 (PST)
X-Google-Smtp-Source: ABdhPJykaiGNU5Li3aG1FyjXURj4iFwPk3GA+YI6LrQsfKHNOWgUmrUefkO9/8NaVDTBak7lyE72kw==
X-Received: by 2002:a5d:64cc:0:b0:1e8:f4ad:bf85 with SMTP id f12-20020a5d64cc000000b001e8f4adbf85mr13862922wri.630.1645431753107;
        Mon, 21 Feb 2022 00:22:33 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id j5-20020a05600c410500b0037bc3e4b526sm6727615wmi.7.2022.02.21.00.22.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Feb 2022 00:22:32 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Roger Quadros <rogerq@ti.com>, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Wei Xu <xuwei5@hisilicon.com>, David Heidelberg <david@ixit.cz>
Subject: [PATCH 1/3] dt-bindings: vendor-prefixes: add second HiSilicon prefix
Date:   Mon, 21 Feb 2022 09:22:26 +0100
Message-Id: <20220221082228.34407-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

There are few boards DTS using "hisi,rst-syscon" property -
undocumented "hisi" prefix.  The property will not be changed in DTS to
non-deprecated one, because of compatibility reasons.  Add deprecated
"hisi" prefix to silence DT schema warnings.

Cc: Wei Xu <xuwei5@hisilicon.com>
Cc: David Heidelberg <david@ixit.cz>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>

---

See:
https://lore.kernel.org/all/61AF1E3B.5060706@hisilicon.com/
https://www.spinics.net/lists/arm-kernel/msg887577.html
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index ebe294516937..79a172eaaaee 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -505,6 +505,9 @@ patternProperties:
     description: Himax Technologies, Inc.
   "^hirschmann,.*":
     description: Hirschmann Automation and Control GmbH
+  "^hisi,.*":
+    description: HiSilicon Limited (deprecated, use hisilicon)
+    deprecated: true
   "^hisilicon,.*":
     description: HiSilicon Limited.
   "^hit,.*":
-- 
2.32.0

