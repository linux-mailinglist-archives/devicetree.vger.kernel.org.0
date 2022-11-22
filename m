Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E35CE6331EF
	for <lists+devicetree@lfdr.de>; Tue, 22 Nov 2022 02:09:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232046AbiKVBJg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Nov 2022 20:09:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50542 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232090AbiKVBJQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Nov 2022 20:09:16 -0500
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF888554EB
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 17:08:12 -0800 (PST)
Received: by mail-ej1-x635.google.com with SMTP id f18so32419551ejz.5
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 17:08:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DluvA8nTnzf/xofArynYdkv9W1c4RsYObyGmy30CGd0=;
        b=odpFpCw5aHWfS+pOQs4yWZQ5jGoFsNm1SxAmKBOYgGnF80lSJTac93dQPGzxjY4eF2
         FA59KdnuY3aY71rJ7sPgucxZ1iCCrlI2CdQCHQdS/9UJ6GF/AvGZEB0yiV1nLDGeLXld
         64SZO5Ps0gOHJoWh0aaSfPsEgrRc9Kq37lCKPhtdxWwiXGUGpXAeJCdsZlXFMMCX5/BU
         py0VbF67K6EiiaYw1UgKZgPfhjUOkvh2KoKj3Ai/YYuBwH7vuUMPinf4jOPdAwNDbfwg
         VAPQ8tk9dba7xiAiEAywXPbB1eGVCc0gQKnfYqMhEU1/QE8LdRiZdI5boTvdZnSw3INe
         Nk/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DluvA8nTnzf/xofArynYdkv9W1c4RsYObyGmy30CGd0=;
        b=qH3s7R4Zo/FsrOI1rcFAfiKA+Seurwfn090NoCxO/qJK44N0CJBF+VHze3+nM10dcn
         hDbLqwNlphOFSrmqPatYHD/pxls9dEfLJ5MfR69/dJsJMllJxEh/f/PADI2OylioZRj7
         nTJGh/v+1QlMVRBRLyNk3k7rzrfDfLABDIpoq3ulmjX7p3ztiHCvOr9+XZoFG+13UKuA
         bE87nbxE9s2sgD8vhkhYokxxzbiJFIdxAb4CTSmt4pmQ0M0PxEZZ8Xgnw/uueiAmB9Xk
         rX+yGZdU7ZukFe34At/YL4aAkddFP+1rUCtTDtE18Xs/z4wnYsb8W72IFeou9poma4Om
         2s8w==
X-Gm-Message-State: ANoB5pn3Gu/zorZgnqW6dF1t5gARQYeINXVe2uv+gITru4M+ZbV3r+dU
        C4BN8Otydg3okOS2Lu16KpNlNOYAEvbWEMdc
X-Google-Smtp-Source: AA0mqf68LT1nby+adF0ovbjDlH26Pq2EQGd6MYppzkQjHPVpfeEgxIrxpdLea9WAWiFKcu3RwSWFWg==
X-Received: by 2002:a17:906:a291:b0:782:9b27:94aa with SMTP id i17-20020a170906a29100b007829b2794aamr16869217ejz.542.1669079291383;
        Mon, 21 Nov 2022 17:08:11 -0800 (PST)
Received: from c64.fritz.box ([2a01:2a8:8108:8301:7643:bec8:f62b:b074])
        by smtp.gmail.com with ESMTPSA id f13-20020a1709064dcd00b007030c97ae62sm5514683ejw.191.2022.11.21.17.08.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Nov 2022 17:08:11 -0800 (PST)
From:   =?UTF-8?q?Bernhard=20Rosenkr=C3=A4nzer?= <bero@baylibre.com>
To:     devicetree@vger.kernel.org
Cc:     linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com,
        krzysztof.kozlowski@linaro.org, matthias.bgg@gmail.com,
        angelogioacchino.delregno@collabora.com, khilman@baylibre.com
Subject: [PATCH v2 4/7] dt-bindings: pinctrl: st,stm32: Deprecate pins-are-numbered
Date:   Tue, 22 Nov 2022 02:07:50 +0100
Message-Id: <20221122010753.3126828-5-bero@baylibre.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221122010753.3126828-1-bero@baylibre.com>
References: <20221122010753.3126828-1-bero@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Deprecate the pins-are-numbered property

Signed-off-by: Bernhard Rosenkränzer <bero@baylibre.com>
---
 .../devicetree/bindings/pinctrl/st,stm32-pinctrl.yaml      | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.yaml
index 9d59208d83c18..eeb29b4ad4d1a 100644
--- a/Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.yaml
@@ -34,7 +34,9 @@ properties:
     const: 1
 
   ranges: true
-  pins-are-numbered: true
+  pins-are-numbered:
+    $ref: /schemas/types.yaml#/definitions/flag
+    deprecated: true
   hwlocks: true
 
   interrupts:
@@ -206,7 +208,6 @@ required:
   - '#address-cells'
   - '#size-cells'
   - ranges
-  - pins-are-numbered
 
 additionalProperties: false
 
@@ -220,7 +221,6 @@ examples:
               #size-cells = <1>;
               compatible = "st,stm32f429-pinctrl";
               ranges = <0 0x40020000 0x3000>;
-              pins-are-numbered;
 
               gpioa: gpio@0 {
                       gpio-controller;
@@ -238,7 +238,6 @@ examples:
               #size-cells = <1>;
               compatible = "st,stm32f429-pinctrl";
               ranges = <0 0x50020000 0x3000>;
-              pins-are-numbered;
 
               gpiob: gpio@1000 {
                       gpio-controller;
-- 
2.38.1

