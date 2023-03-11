Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 765B96B5C37
	for <lists+devicetree@lfdr.de>; Sat, 11 Mar 2023 14:24:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229541AbjCKNYY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 11 Mar 2023 08:24:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38822 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229845AbjCKNYW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 11 Mar 2023 08:24:22 -0500
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0F794F16AA
        for <devicetree@vger.kernel.org>; Sat, 11 Mar 2023 05:24:21 -0800 (PST)
Received: by mail-lf1-x12f.google.com with SMTP id i28so10227976lfv.0
        for <devicetree@vger.kernel.org>; Sat, 11 Mar 2023 05:24:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678541059;
        h=cc:to:subject:date:from:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8s9gnIYUH4a7DISj2GFil2OdRXxeDO2P0HDbRjCc19c=;
        b=pk8ePxZRpxQyvmgg8ovdK5BOVAQGKrJdicXJ+B6f0dVgc8EMqjLJmP8vDEqmzSwFJq
         k1kZU3YIrZAUVq4dFK4jjoWYEokMFQG9KTVRgCCNXh2IQ7sMykm3opTU0vFN9fHQZAIo
         DZHAQAX6UvbebdiMXQju6DSpPDObuKJxGnG7lZEQfG0vhjgrutfVA5cYPPcNNKSvTfLV
         GNexP3R6NVVn4kNRvmEbvYSAvqlks6MN6Y5ydJ6nMat7osABOhOZHqQ8syUFpALmTXbv
         6ZRKsXaODBfQ1N/ei0Pv8rDuSwEouAvfP09PTLI7W4UM6lVdob+wDarhOfzMnkBIzu/3
         PcNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678541059;
        h=cc:to:subject:date:from:message-id:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8s9gnIYUH4a7DISj2GFil2OdRXxeDO2P0HDbRjCc19c=;
        b=NnMeIzFyU2V7wePqMf0SayKCq2E/KWtMcqxL6wofIHnvHYEv9nbx5UNRscpH6TA3RK
         aYrt3I6dVPQrrf+rLp8W7Z+uWmapXCPjMKvLntu/l8yiEnlaR5PjHH8f1dsorK3Eow4m
         JklMpFQPsB4sNSLc4EfMJnWE2NzElim+fjpsV6yULx5BPyF6hffa8f0FBY460p69vva2
         66j6WyUOOkJVmd/oPO1ttXTz3W61lsceqyg7WLxbSCqwgMAzhL4KnFWuNRN+um9Su1RL
         rs7GGPiy54L8uruPv4NjMw3nF3FTc+Ut31FhnRpMDv4iCJQwfLlWoXmavF9DGzUQ8FRi
         H8OA==
X-Gm-Message-State: AO0yUKVHHExMhcgaB+Fs1QHPTY+Hrrf0OL0rEmHr+ZlN5UQL8WGoNrw5
        F823zIX/AU3IGTLQQ5druFFtDDqrHSQHFi3ouYg=
X-Google-Smtp-Source: AK7set8A84yJx0tGav7b/MFS+7LL2FUWsOYSDmaDA5Uwr4Zaa2hNSBlyfo81ClpyTF4Ah/a8Vytm7g==
X-Received: by 2002:a05:6512:38d1:b0:4e7:fb5e:de24 with SMTP id p17-20020a05651238d100b004e7fb5ede24mr1736122lft.33.1678541059140;
        Sat, 11 Mar 2023 05:24:19 -0800 (PST)
Received: from 0001-devicetree-synopsys-dw-mshc-common-add-fifo-access-3.patch (46-138-144-249.dynamic.spd-mgts.ru. [46.138.144.249])
        by smtp.gmail.com with ESMTPSA id m4-20020ac24244000000b004d61af6771dsm318636lfl.41.2023.03.11.05.24.18
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Mar 2023 05:24:18 -0800 (PST)
Message-ID: <640c8102.c20a0220.6bf04.0bda@mx.google.com>
From:   Sergey Lisov <sleirsgoevy@gmail.com>
Date:   Sat, 11 Mar 2023 15:54:22 +0300
Subject: [PATCH 1/2] devicetree: synopsys-dw-mshc-common: add
 "fifo-access-32bit" property
To:     Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jaehoon Chung <jh80.chung@samsung.com>
Cc:     linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

---
 .../devicetree/bindings/mmc/synopsys-dw-mshc-common.yaml    | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc-common.yaml b/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc-common.yaml
index 8dfad89c7..2bc5ac528 100644
--- a/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc-common.yaml
+++ b/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc-common.yaml
@@ -57,6 +57,12 @@ properties:
       force fifo watermark setting accordingly.
     $ref: /schemas/types.yaml#/definitions/flag
 
+  fifo-access-32bit:
+    description:
+      Specifies that this device requires accesses to its 64-bit registers
+      to be done as pairs of 32-bit accesses, even on architectures where
+      readq is available.
+
   dmas:
     maxItems: 1
 
-- 
2.38.3


