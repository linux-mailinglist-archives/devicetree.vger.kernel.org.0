Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5B43F69421E
	for <lists+devicetree@lfdr.de>; Mon, 13 Feb 2023 10:58:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229655AbjBMJ6o (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Feb 2023 04:58:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35898 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229729AbjBMJ6n (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Feb 2023 04:58:43 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 44DF2BDCF
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 01:58:42 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id co8so7753446wrb.1
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 01:58:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=AjMgJb2ixqUEs/67uyolQpFmh3OuMlDckhQRKi1L98Y=;
        b=FQ3xp3hicKBpobKBfqxwNCK/02CxQJ4R62mNhManClSG5NsgKmfTBQmkwem8t4Efey
         /IOe4ONZV2ruScKfjdGU6/zXVVvYxkpHQm72M/Tb84GkmUAo2DrgycyLTJ20gg6jwmEq
         kdzvHtIdLhdWwc1I8dHjy8FOkGpoDz2SZ+cMsClIXd1EtabqpFn5jXO9bjAzLaVEMWRT
         30pVh/hGjpAG9UkkrPZHlbbDmXbubZsNYa756NiKvEpfbvmFKw+nvXuGnu6lmgtiMNtY
         lHlpyRlHbxQR+Sge/GUrQndhvgZG9T4uf/aU9LTLRC327SLFwSkVQNxOrYSU9BGwwplw
         y3Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AjMgJb2ixqUEs/67uyolQpFmh3OuMlDckhQRKi1L98Y=;
        b=xa2BjQo1HL4SZyGw8YYPUn84u9jBjKLoVQFZao2dCAIqt3U4ILmnmxmdOLpmaVsFSP
         mEPlNqlnY/Oar5q3zCIzrkgRJ0o6hWC/+KoLky8Kz8lBPKDjwz3hskw/yw19pCU8wEux
         6I/0OEJiqapiPwukNt5Hj87RlGnkwaUBNGIGm154BuRAzmYJr0fPwCIlDvX5CE9tMWLV
         hwWlAXqx53qM+MKd30lD2ISOU81EkhdDVzNeZEiyqljrsRIm4KSp5mY0CrT57NFeyHJp
         iP377/lV3Xfit6NBErh5SM/7Iks8dLvaA0buZ3ttUTI03+4+wDI+oqYg8lcVdytqqbrT
         w8dQ==
X-Gm-Message-State: AO0yUKVWQqd9/P/AA02m5OZS1pwpj1omdcJylrbVdPdYXQnhRpMJ921D
        iu1B4NPc2w4hH+L6MVW4YgMZbg==
X-Google-Smtp-Source: AK7set+uYZsTqtSq+FM6NZkfE+ORgajvmR481WMnarK85nUaHLkfcGcszRKZzvQkouZpmDWlLi7bSw==
X-Received: by 2002:adf:fcc1:0:b0:2c3:f78f:518f with SMTP id f1-20020adffcc1000000b002c3f78f518fmr17853836wrs.39.1676282320814;
        Mon, 13 Feb 2023 01:58:40 -0800 (PST)
Received: from lmecxl1178.lme.st.com ([80.215.89.243])
        by smtp.gmail.com with ESMTPSA id k21-20020a05600c1c9500b003dd1c45a7b0sm14105801wms.23.2023.02.13.01.58.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Feb 2023 01:58:40 -0800 (PST)
From:   Etienne Carriere <etienne.carriere@linaro.org>
To:     linux-kernel@vger.kernel.org
Cc:     linux-arm-kernel@lists.infradead.org,
        Sumit Garg <sumit.garg@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Jens Wiklander <jens.wiklander@linaro.org>,
        Etienne Carriere <etienne.carriere@linaro.org>
Subject: [PATCH v4 1/2] dt-bindings: optee driver interrupt can be a per-cpu interrupt
Date:   Mon, 13 Feb 2023 10:58:28 +0100
Message-Id: <20230213095829.42911-1-etienne.carriere@linaro.org>
X-Mailer: git-send-email 2.25.1
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

Explicit in optee firmware device tree bindings that the interrupt
used by optee driver for async notification can be a peripheral
interrupt or a per-cpu interrupt.

Signed-off-by: Etienne Carriere <etienne.carriere@linaro.org>
---
Changes since v3:
- Patch added in this v4 to address review comments.
---
 .../devicetree/bindings/arm/firmware/linaro,optee-tz.yaml      | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/firmware/linaro,optee-tz.yaml b/Documentation/devicetree/bindings/arm/firmware/linaro,optee-tz.yaml
index d4dc0749f9fd..5d033570b57b 100644
--- a/Documentation/devicetree/bindings/arm/firmware/linaro,optee-tz.yaml
+++ b/Documentation/devicetree/bindings/arm/firmware/linaro,optee-tz.yaml
@@ -28,7 +28,8 @@ properties:
     maxItems: 1
     description: |
       This interrupt which is used to signal an event by the secure world
-      software is expected to be edge-triggered.
+      software is expected to be either a per-cpu interrupt or an
+      edge-triggered peripheral interrupt.
 
   method:
     enum: [smc, hvc]
-- 
2.25.1

