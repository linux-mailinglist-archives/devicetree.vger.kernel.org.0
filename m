Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BF8595EC144
	for <lists+devicetree@lfdr.de>; Tue, 27 Sep 2022 13:27:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231488AbiI0L1z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Sep 2022 07:27:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45618 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230384AbiI0L1e (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Sep 2022 07:27:34 -0400
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com [IPv6:2607:f8b0:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26ACF13D845
        for <devicetree@vger.kernel.org>; Tue, 27 Sep 2022 04:25:36 -0700 (PDT)
Received: by mail-pl1-x635.google.com with SMTP id f23so8793614plr.6
        for <devicetree@vger.kernel.org>; Tue, 27 Sep 2022 04:25:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=quanta-corp-partner-google-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=ZAaq9FmeiThoD73Lw5dQoFUxUYOv0Mq/cl+wLUX6lwI=;
        b=VEBlM9k+SaWxdjGRqYaCNC6Mv4oVIzQlY2XKcJSMXx3gkHYQtawVclOLjiV2Jmv7GH
         Al1chJa4tVjijyNKyX0n9swUk70lmVJNbIu6kCcVlP9k1YxH060EbzNBBoZBsFaTefS6
         J3BYfGYd/Oe5UCcOBwlQwDa7jANY/ngyQAbuuyv73tzSyN6YasZnnP67ko2gUxa4w0XT
         JLllOr6EpdcSDJ6l1AdI41xnuDUghHun2O5ZwtEP+eQoITtPbC2lhCYc5uQWyWhA2Bbv
         eHWWMYD30XZfix8+TW3/cYTrgqombY7oHpOE4ohql1UTnBdLN5oB2UTmtw0f6TonZvpv
         YeQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=ZAaq9FmeiThoD73Lw5dQoFUxUYOv0Mq/cl+wLUX6lwI=;
        b=mqMs1rxejul2stZrEj/eqbknRdfcvTpCJReOJDroyQiepjzjxg3b3ByujbvW0JEnNr
         z3R98e2trC6/3Gu12VasYx7ALRwJty0NOPo2tz0Ddw6AvyW3s5oRgQycUUGWsXHuejTD
         S5Vytn7y414bosPA7ynRyTpmfJsUNGfLKlHsNq5GnrWQlIotewgwxiXZFXBS2bs0+fB1
         uzXeF0wYyzAXkOHwzIH/x0FLwjHqGF+Sn6fV/wf75veAyPDYiuJ0aeNvKGkVeLzIFW8o
         KKRSehs0UTXqwl1oC5YGks0g4c48NN0pr3bHZ5XNXhIXdaSakkTUprop4YBf0nCx+VL+
         gbrQ==
X-Gm-Message-State: ACrzQf0LRoznhiJmz5sEfJjOUbNuUXHvfVt/wgi10xWA+mZrtQ4yGwXE
        EuUoQmvyZKJnk/MnWKMnzESfrg==
X-Google-Smtp-Source: AMsMyM7D9+4MhfpHFBPOI7o1831uorzN7IFyWF+xeJkg4w25EHG+KZVvDhFQ1DnQhVpLTaH8INFFkg==
X-Received: by 2002:a17:90b:4b88:b0:202:e381:e643 with SMTP id lr8-20020a17090b4b8800b00202e381e643mr4000264pjb.148.1664277935073;
        Tue, 27 Sep 2022 04:25:35 -0700 (PDT)
Received: from liang-Predator-PH517-52.. (60-250-232-247.hinet-ip.hinet.net. [60.250.232.247])
        by smtp.gmail.com with ESMTPSA id c13-20020a170902d48d00b001782751833bsm1275931plg.223.2022.09.27.04.25.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Sep 2022 04:25:34 -0700 (PDT)
From:   Sheng-Liang Pan <sheng-liang.pan@quanta.corp-partner.google.com>
To:     LKML <linux-kernel@vger.kernel.org>
Cc:     dianders@chromium.org,
        Sheng-Liang Pan <sheng-liang.pan@quanta.corp-partner.google.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Subject: [PATCH v4 1/2] dt-bindings: arm: qcom: Separate LTE/WIFI SKU for sc7280-evoker
Date:   Tue, 27 Sep 2022 19:23:42 +0800
Message-Id: <20220927192234.v4.1.Ide53082044aac56877c4ff5725777769e377476a@changeid>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220927112343.2700216-1-sheng-liang.pan@quanta.corp-partner.google.com>
References: <20220927112343.2700216-1-sheng-liang.pan@quanta.corp-partner.google.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

evoker will have WIFI/LTE SKU, separate it for each different setting.

Signed-off-by: Sheng-Liang Pan <sheng-liang.pan@quanta.corp-partner.google.com>
---

Changes in v4:
- fix typo in tittle and commit

 Documentation/devicetree/bindings/arm/qcom.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index b6257683a700c..065d9cc4421e0 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -575,6 +575,11 @@ properties:
           - const: google,evoker
           - const: qcom,sc7280
 
+      - description: Google Evoker with LTE (newest rev)
+        items:
+          - const: google,evoker-sku512
+          - const: qcom,sc7280
+
       - description: Google Herobrine (newest rev)
         items:
           - const: google,herobrine
-- 
2.34.1

