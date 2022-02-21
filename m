Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8FACF4BD833
	for <lists+devicetree@lfdr.de>; Mon, 21 Feb 2022 09:40:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242341AbiBUIW7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Feb 2022 03:22:59 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:35692 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239052AbiBUIW6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Feb 2022 03:22:58 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B49A025C1
        for <devicetree@vger.kernel.org>; Mon, 21 Feb 2022 00:22:35 -0800 (PST)
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com [209.85.221.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 900C440049
        for <devicetree@vger.kernel.org>; Mon, 21 Feb 2022 08:22:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1645431754;
        bh=UYup4czZXEinhZ8A+loL8l38+8H7kahV8D36yzE2Kx4=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=Ubt6w29mv2wCb7byKmtSlgg6EErBer4tETcH4bU8IUfKOdsiz1M+AYkQoJCgrY8A6
         QW8yo9zeY+URCWeSmXXHpSFQ3NNNbohEtajMis5AgTI0iPEtcWWvQyvj/UEqR4X1+k
         tx2Uk4wrLms1cFHxrx19EtQCLvbEXrgyY7SFwfRatlt8a79+5XIiuQ/RE+tB/SWIlq
         x2osXeqo1/pft+zIsKyucoOFtln5JIWqsa++OYSxc1vRLQxdeB8g/lQvQY1qOAE7l/
         AMvUuMiduQ0JvjfTRTIxcIkpj26rpHBS+jgpNt8i9AogsSaXCw5V20SeN3MeRrOsM8
         UZqO/6EnnTEXg==
Received: by mail-wr1-f71.google.com with SMTP id s22-20020adf9796000000b001e7e75ab581so7007310wrb.23
        for <devicetree@vger.kernel.org>; Mon, 21 Feb 2022 00:22:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=UYup4czZXEinhZ8A+loL8l38+8H7kahV8D36yzE2Kx4=;
        b=JY5Uma+NGOiJXxBnuPpLn8suCQYnwRvbzD6B2/QwyZm8MmQgKdWwMYx54aME6UEgAR
         BrfCkmus7OIIyG1z/2oYNVqCpRtOYaIzWp+AewAZdlvfWa1L3NWu2UQpg8QkrfrcNC6O
         oBlZGr8/4eKPUj6Roc/w8OjqFxAjtDlXZc1RIrK85tsnOG/bhg/k9lV9hXIzXW5k+vBG
         wEMgDVs8R0BbjIWmI8+lQ3sOSeJVsKorSYCJVSef5DRApjh8FJYVrNDarJ9EnWOrdbOZ
         Y8Cb29FjPnTwi7nK7m7RYvBMJYpAzwHIyxQT3xnoITnCw/luET3dMSswUz2Csq0IxPK6
         3xvw==
X-Gm-Message-State: AOAM5309573MMncLHKCdpv7sv/o8hGJLajH59I9AWIOIvtPfRPE6+a+I
        HA8S6PQl7ujtDBNw4LKDgoOsS26geSiHtUxa5/6YuKsIUeRqFaBidXSdx3gTQ4VmaluYBgQI7M0
        R3sJfA8+bYfknrqZcxuTQJW43VjS/8DZONE3wLMI=
X-Received: by 2002:adf:ef07:0:b0:1e3:333f:a101 with SMTP id e7-20020adfef07000000b001e3333fa101mr15096228wro.301.1645431754276;
        Mon, 21 Feb 2022 00:22:34 -0800 (PST)
X-Google-Smtp-Source: ABdhPJypyE8opdg9kZ0jMU2jAqXHrMPRem+mxaIhRXByu/6CwdnMgET9Mt6N719YwGsOoVahoJ/E8Q==
X-Received: by 2002:adf:ef07:0:b0:1e3:333f:a101 with SMTP id e7-20020adfef07000000b001e3333fa101mr15096220wro.301.1645431754133;
        Mon, 21 Feb 2022 00:22:34 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id j5-20020a05600c410500b0037bc3e4b526sm6727615wmi.7.2022.02.21.00.22.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Feb 2022 00:22:33 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Roger Quadros <rogerq@ti.com>, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/3] dt-bindings: vendor-prefixes: add second Synopsys prefix
Date:   Mon, 21 Feb 2022 09:22:27 +0100
Message-Id: <20220221082228.34407-2-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220221082228.34407-1-krzysztof.kozlowski@canonical.com>
References: <20220221082228.34407-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

There are few bindings with compatibles starting with a "synopsys"
prefix.  Document it as deprecated, to be sure no new usages will
appear.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 79a172eaaaee..9eea9e01abe4 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1192,6 +1192,9 @@ patternProperties:
     description: Synaptics Inc.
   "^synology,.*":
     description: Synology, Inc.
+  "^synopsys,.*":
+    description: Synopsys, Inc. (deprecated, use snps)
+    deprecated: true
   "^tbs,.*":
     description: TBS Technologies
   "^tbs-biometrics,.*":
-- 
2.32.0

