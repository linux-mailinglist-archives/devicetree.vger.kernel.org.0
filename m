Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5BDE35813A0
	for <lists+devicetree@lfdr.de>; Tue, 26 Jul 2022 14:56:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238655AbiGZM4g (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jul 2022 08:56:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51850 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238242AbiGZM4e (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jul 2022 08:56:34 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 001B625C73
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 05:56:32 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id v17so1088410wrr.10
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 05:56:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:date:subject:mime-version:content-transfer-encoding:message-id
         :references:in-reply-to:cc;
        bh=x4rd2qMk0FSrQt9Tp0ZdFh0cgNgJW8TRDOygBl1e4h8=;
        b=jBV9Ngo00RRoTUt2Xj5EYf/dE7L2U6bM74cr7SdwSryF4TUdRF1/eYGJr24ZvLjOlb
         QUskTKO7LRHcn+sdJZ3dlJOAPsmTAXCxNky0QjNdgrMFQVB8KsdPEn7STZTnADd3SMVe
         IrLjc8eCQ+ATkshZj9pm9LJ6QNSyxhQE0ilkKiYgTZIb7HXL77wkLY6VsxGiwzI84BRj
         UlTUnPpGrnYPhK00P1ysdWbDxJSvNJ9hjxZI8R3s4fiA17U7Hyy40oNHdeULJbX7f5XQ
         k99JyD9NV+/jcOZO4DrWF4XY0lLGnWCNXIXNdgwq4W6To6zT/djTDwRuLP4BRTJWPsu5
         ai1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:date:subject:mime-version
         :content-transfer-encoding:message-id:references:in-reply-to:cc;
        bh=x4rd2qMk0FSrQt9Tp0ZdFh0cgNgJW8TRDOygBl1e4h8=;
        b=8MjwfiQjJMtfmBvFw5pKdPiQlmlBplXuvD9fLX2WygEHnco/fr9FCD6Pv8sVEAPw7T
         fjfC/HbCwcwZM1p9q5I0TX4Vgia/LwUQF1OVFDbJFxn9mLRjiEDwYwkWmQngaVfdSltD
         GL9P+XaHw6byrtQracTo01tQ2wke+nBj4lDXh3CLJ/TK701/y/C16Oq02Yp+4OJavoeW
         IddLQv8BH9dkSROm0THblePnJ9dHwejGsqE3FhsSLpychnbaxh1jN1I8ELItgjMnxghe
         sAc//CeSCk9HFNLNiLETzb8Abj1I0mZnGHuDI4Agt3+wFdCBuxeuCExqKWWnBPCkObtN
         MChg==
X-Gm-Message-State: AJIora9mm8+zupP3Qf+uPw7Ohm/h9BJFuhi4KexKIadtvgAisGIYxLjj
        jwAMn110KXY3hNkZred3cIxOcw==
X-Google-Smtp-Source: AGRyM1uKvnBcknnv711COXWaOOlOVb5UPvyj/NuyjcwMG8AesFqGx+UzkQqX5RP1klFJxFLrocFwFA==
X-Received: by 2002:adf:ef8d:0:b0:21e:a5e3:35af with SMTP id d13-20020adfef8d000000b0021ea5e335afmr2009077wro.671.1658840191473;
        Tue, 26 Jul 2022 05:56:31 -0700 (PDT)
Received: from [192.168.2.253] ([82.66.159.240])
        by smtp.gmail.com with ESMTPSA id k1-20020adff5c1000000b0020fff0ea0a3sm14171549wrp.116.2022.07.26.05.56.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Jul 2022 05:56:31 -0700 (PDT)
From:   Mattijs Korpershoek <mkorpershoek@baylibre.com>
Date:   Tue, 26 Jul 2022 14:56:08 +0200
Subject: [PATCH v2 3/7] dt-bindings: mediatek,mt6779-keypad: add
 mediatek,keys-per-group
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20220720-mt8183-keypad-v2-3-6d42c357cb76@baylibre.com>
References: <20220720-mt8183-keypad-v2-0-6d42c357cb76@baylibre.com>
In-Reply-To: <20220720-mt8183-keypad-v2-0-6d42c357cb76@baylibre.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Fabien Parent <fparent@baylibre.com>,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-input@vger.kernel.org,
        Fabien Parent <parent.f@gmail.com>
X-Mailer: b4 0.10.0-dev-78725
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,MISSING_HEADERS,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
To:     unlisted-recipients:; (no To-header on input)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The MediaTek keypad has 2 modes of detecting key events:
* single key: each (row, column) can detect one key
* double key: each (row, column) is a group of 2 keys

With double key, two keys are physically wired to one (row, column) pin.
These keys are in the same "group".

Multiple keys in the same group reduces the number of pins which
minimizes cost.

Add a keys-per-group property to describe this.

Signed-off-by: Mattijs Korpershoek <mkorpershoek@baylibre.com>

diff --git a/Documentation/devicetree/bindings/input/mediatek,mt6779-keypad.yaml b/Documentation/devicetree/bindings/input/mediatek,mt6779-keypad.yaml
index ca8ae40a73f7..387d0448ff77 100644
--- a/Documentation/devicetree/bindings/input/mediatek,mt6779-keypad.yaml
+++ b/Documentation/devicetree/bindings/input/mediatek,mt6779-keypad.yaml
@@ -49,6 +49,12 @@ properties:
     maximum: 256
     default: 16
 
+  mediatek,keys-per-group:
+    description: each (row, column) group has multiple keys
+    $ref: /schemas/types.yaml#/definitions/uint32
+    default: 1
+    maximum: 2
+
 required:
   - compatible
   - reg

-- 
b4 0.10.0-dev-78725
