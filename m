Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8815B6B5D59
	for <lists+devicetree@lfdr.de>; Sat, 11 Mar 2023 16:27:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230347AbjCKP10 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 11 Mar 2023 10:27:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34478 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230326AbjCKP1Z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 11 Mar 2023 10:27:25 -0500
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C90EE682F
        for <devicetree@vger.kernel.org>; Sat, 11 Mar 2023 07:27:24 -0800 (PST)
Received: by mail-lj1-x232.google.com with SMTP id f16so8356197ljq.10
        for <devicetree@vger.kernel.org>; Sat, 11 Mar 2023 07:27:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678548442;
        h=cc:to:subject:date:from:in-reply-to:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=8s9gnIYUH4a7DISj2GFil2OdRXxeDO2P0HDbRjCc19c=;
        b=ArB2WdMz4baXM60uNkD2daK/cN1LRajMA1c1GRkEC34RqZHjGS0/hO9eJfyZqh9mlK
         wek+lvKL1ouGjUPns2DhmoYpdwRUyeoYJIv/gE30n8mHqslg95+6OBA69kQ7h83k18mZ
         DDa3WZq5f2qEPxoEnkOIelgyUnSTElYmw8N0SUk2My9OMykjxE16ksvzXjT80JRuuraL
         KCYMDXG9Zt/tclXtOp843TqcyTZaOlu8BmFlCQdaWfGD6JJxiWD5bxrxD949tNV2tlIW
         H1bhFwo8vjhfiEct+oHKw/r7x4s9KPmri7zDu6BWB+tus+VBHtJpBCQqZYxa0sNeOe0l
         l1/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678548442;
        h=cc:to:subject:date:from:in-reply-to:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8s9gnIYUH4a7DISj2GFil2OdRXxeDO2P0HDbRjCc19c=;
        b=Ami5bNKa320anxHoMlLp+p3ixZQLe812WE7tm8kyPbSS5+DohlJoa7x5o8du9D6muD
         x8aKeTSgUxjlwXVtNJwa3GztnDEDthLWnSnxt2x4eQQRQoNRi9KCTqAHG0PqMX0WEZdr
         WCeJNJ6nJboXu2xff43HYdkezOKLH3Flbe82Tt7Im0bEGEtDyImD8AT+FV75d1n3gnZx
         NLnCDcqvcI2ENZEyvh3epSEP+5UxfvDkuft4If4WFzkM8d+XynXpL2v3+YRcQFmZ1wHH
         vGVs/9xaJRLkdp6Bb4amSoJmZ3fDiQ/iSICm7QlJFeVStCq5hiHBGhWSPClSABpbawwz
         NIFg==
X-Gm-Message-State: AO0yUKViHJ37mPQnodY39fAfo0Zo5uaTBWZj4VgJnNszGMlc8JHhDkhT
        989C/3LONqRjBxzKWsev0MIv2sAfsii5OIipXFE=
X-Google-Smtp-Source: AK7set8UfwMxW5dMMe3kJphY9/1brSedJBAYPJt5H8Q/n+eBcX9sC7oNPzVb7dpx7jyAUdjYIbtqig==
X-Received: by 2002:a2e:b8cb:0:b0:298:592e:113a with SMTP id s11-20020a2eb8cb000000b00298592e113amr7628315ljp.6.1678548442260;
        Sat, 11 Mar 2023 07:27:22 -0800 (PST)
Received: from 0001-devicetree-synopsys-dw-mshc-common-add-fifo-access-3.patch (46-138-144-249.dynamic.spd-mgts.ru. [46.138.144.249])
        by smtp.gmail.com with ESMTPSA id m27-20020ac24adb000000b004b581ab4c77sm341610lfp.78.2023.03.11.07.27.21
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Mar 2023 07:27:22 -0800 (PST)
Message-Id: <1678548256.0817535-1-sleirsgoevy@gmail.com>
In-Reply-To: <1678548256.0817535-0-sleirsgoevy@gmail.com>
From:   Sergey Lisov <sleirsgoevy@gmail.com>
Date:   Sat, 11 Mar 2023 18:22:41 +0300
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


