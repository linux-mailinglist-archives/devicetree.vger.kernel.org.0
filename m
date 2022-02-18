Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0513F4BBD2A
	for <lists+devicetree@lfdr.de>; Fri, 18 Feb 2022 17:15:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237571AbiBRQPx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Feb 2022 11:15:53 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:38014 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237580AbiBRQPt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Feb 2022 11:15:49 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 02C6B294FDF
        for <devicetree@vger.kernel.org>; Fri, 18 Feb 2022 08:15:33 -0800 (PST)
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com [209.85.208.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 7A173405B3
        for <devicetree@vger.kernel.org>; Fri, 18 Feb 2022 16:15:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1645200929;
        bh=Fdez1AmqlsBKbf0sdm0whcYqGiEOg3dPughdxsguAXI=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=NXI4erxcLg4wnIgsuHh0kFmU5I2lWf8FCMhIVgrGw8TBrb6T5DFUUGDfwyW5M5+oz
         ULtAfAVKWlILygLKj5zQ4L+10h8RgQHxNRWrNgWmKo3ov1kfoJV6hLULvMk6ZEWP9v
         ttra0hLl1n/I+E/GUF/TEDoheWpD7u1PluBhd08q9wh34/o5fLQaw64QKKXWuAzx9i
         0GmIkW56z8e1ADl40PeWqlO+XfNqCLNIWW8PP9bdjeA9yvA5rPXHQ6aJ47+Bxh2d/Y
         iq5PFOXIDK480EasAOcBLII3u12EhylNxRid+p8YC5fTIv7I6ejS9Uzq6PoGiSOBMh
         A+TOvXSYo/awA==
Received: by mail-ed1-f71.google.com with SMTP id r9-20020a05640251c900b00412d54ea618so118644edd.3
        for <devicetree@vger.kernel.org>; Fri, 18 Feb 2022 08:15:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Fdez1AmqlsBKbf0sdm0whcYqGiEOg3dPughdxsguAXI=;
        b=D5wM//D8T6Ce0sLkOpfOlDTU6mXS2yrtk6CBrHtD6X877d5k8fnayK+oTIPeV3UAJ5
         WJtpH2Q6DSKFxKw9pKAbPNzlcQEAk6BVzO6F9Yhp4NgdRLTRESqZGbQ/ZyV5nqqdbrls
         PKqQX0qzeqbjmQq0wSLdk5Ah4kAQMoigvyOcVSzQ9bJ6n6pcR/ArjiK+d4LpSX83yrzT
         K3xezhDU41AnhHkKMcBa9JZI4d9GZDoG7lfPOfbJIIWgjCA1bNp7CTM3bHP5qRtuZfHy
         FTwtbemxQMWa9N0h5c+NVHHV4rIX+Iq5CrqD+1Yv1HQJx7e3S4BHLGXfw2LQ/Gt89RqJ
         AXeA==
X-Gm-Message-State: AOAM533VM1NVVtd9WFQdcn+H9DB4t0sA5qsXgowo5UCh7OFAvbaGynP6
        sxV1xp/gdLLzrYsgFAKZ/hNVkZwcVkjLgRrJcq7slIFdBVpPVoDKuY0LXQq1Vg5jQ7IoERTHPHd
        gG4K+aNSNCJ37b+4hKlQrt/gU+7pIccQq5Rm9uas=
X-Received: by 2002:a17:907:7053:b0:6a6:b835:dbd3 with SMTP id ws19-20020a170907705300b006a6b835dbd3mr6755940ejb.190.1645200928925;
        Fri, 18 Feb 2022 08:15:28 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxif3aG4j6jnGHwS6RzVrgD+2IJjpK+S4H+3CmJ2oLVH02iXXbrxboKEJzUTsWoN3HnciK9Tg==
X-Received: by 2002:a17:907:7053:b0:6a6:b835:dbd3 with SMTP id ws19-20020a170907705300b006a6b835dbd3mr6755917ejb.190.1645200928644;
        Fri, 18 Feb 2022 08:15:28 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id y21sm2325572ejq.185.2022.02.18.08.15.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Feb 2022 08:15:28 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Dinh Nguyen <dinguyen@kernel.org>, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 3/4] dt-bindings: usb: dwc2: add disable-over-current
Date:   Fri, 18 Feb 2022 17:15:21 +0100
Message-Id: <20220218161522.52044-3-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220218161522.52044-1-krzysztof.kozlowski@canonical.com>
References: <20220218161522.52044-1-krzysztof.kozlowski@canonical.com>
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

The driver parses disable-over-current protection and some
implementations use it (e.g. Altera Stratix10), so document it in the
bindings.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 Documentation/devicetree/bindings/usb/dwc2.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/dwc2.yaml b/Documentation/devicetree/bindings/usb/dwc2.yaml
index 1ba96706bbcb..1addab83f4fd 100644
--- a/Documentation/devicetree/bindings/usb/dwc2.yaml
+++ b/Documentation/devicetree/bindings/usb/dwc2.yaml
@@ -68,6 +68,10 @@ properties:
     items:
       - const: otg
 
+  disable-over-current:
+    type: boolean
+    description: whether to disable detection of over-current condition.
+
   iommus:
     maxItems: 1
 
-- 
2.32.0

