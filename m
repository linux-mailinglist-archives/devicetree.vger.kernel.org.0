Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 24DAE597843
	for <lists+devicetree@lfdr.de>; Wed, 17 Aug 2022 22:54:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234060AbiHQUuF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Aug 2022 16:50:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43138 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238209AbiHQUuE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Aug 2022 16:50:04 -0400
Received: from mail-oa1-x2c.google.com (mail-oa1-x2c.google.com [IPv6:2001:4860:4864:20::2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 70F9DAB05B
        for <devicetree@vger.kernel.org>; Wed, 17 Aug 2022 13:50:03 -0700 (PDT)
Received: by mail-oa1-x2c.google.com with SMTP id 586e51a60fabf-11c5ee9bf43so2644574fac.5
        for <devicetree@vger.kernel.org>; Wed, 17 Aug 2022 13:50:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=EzydeiK2zIhx0eqIxNSYVpGVWZrlc+mmJsHlThpyKlQ=;
        b=ONTVnI7wUuNC/hSmZ0CSdNn47jNVFQeZFQJNT4+t44UEkHNtkA24LnE/T3/srLB7nl
         csmWHXX/7HPMBWYzoKkoPEQ7wwMCc/+sr1IJt9QK9+LneJSDiaQGIp9Q3RyAmpWqF4ge
         5XcrSI1u/zB0twdXG9yDV8Er58CQh9m81LiFbhITmxJIIm/j3sOzmPrVAGNg0/mmFQwn
         uw0/pYlpmlhFOLhT0pF3SrcTRurRpmawGyMO7Zp85Y3UhOrLLAxVsmV6lu0CbO3HLUzJ
         Z1l8TLCCElK05q92fJebDZESQL/5k+KbynrPCBlfCkFbhPU6cY0x3/qrTKrdFgE0qUrn
         7oFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=EzydeiK2zIhx0eqIxNSYVpGVWZrlc+mmJsHlThpyKlQ=;
        b=DvX8Bo/AqSAkHaGxfN4ztr3koJ5L3AmFzG+EmeW5YAOW12gkuVgX1oTz653UmsZE1/
         IsUJKiOSe0cyW1qJSH24lDP+PMjq8ocqlGUNwxiIe7/RQNdPLPrBahkYHw8YQVnvEnXR
         HWyAYTTZuMZ4kXTt4s3R5qvBQRQ5t0jTs8iwmSaqUjtM/BthjM5tYoz3iAu7TJooaNNL
         yOjV+E7Kv9d7TVqpJ14E7i3KUPle8IPBxR0aClEDNcNqGQdBZMq5RRglY1i+DDv14KZn
         DyCH6U0qfzvYUjP2w86TovAZpkJrzyq8GTi8XJH8n983iPytCIV+aTS0xp8osG2G10NV
         iKgA==
X-Gm-Message-State: ACgBeo30hhfwfPNDKNbcl/KDlrsZmawIS0KeIFu4ZnRRwxMzcFCA/uGz
        cK9QN2YOfPvmA5PF8YGptFSPbZsF79Y=
X-Google-Smtp-Source: AA6agR4+5xv1EjhCtBw95fvCC9uVgDSRUDPwLb0NpVec0oO9CR++/Czpkr8WO7JZXzZAETmUX/XWWA==
X-Received: by 2002:a05:6870:479a:b0:fe:3958:813e with SMTP id c26-20020a056870479a00b000fe3958813emr2635561oaq.279.1660769402573;
        Wed, 17 Aug 2022 13:50:02 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id o66-20020acad745000000b00342d2d79a98sm3203321oig.42.2022.08.17.13.50.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Aug 2022 13:50:02 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     devicetree@vger.kernel.org
Cc:     linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
        pgwipeout@gmail.com, Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 2/3] dt-bindings: arm: rockchip: Add Anbernic RG353 and RG503
Date:   Wed, 17 Aug 2022 15:49:53 -0500
Message-Id: <20220817204954.28135-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220817204954.28135-1-macroalpha82@gmail.com>
References: <20220817204954.28135-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

Add entry for the Anbernic RG353 and RG503 handheld devices.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 7811ba64149c..9026963694f0 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -30,6 +30,16 @@ properties:
           - const: amarula,vyasa-rk3288
           - const: rockchip,rk3288
 
+      - description: Anbernic RG353
+        items:
+          - const: anbernic,rg353
+          - const: rockchip,rk3566
+
+      - description: Anbernic RG503
+        items:
+          - const: anbernic,rg503
+          - const: rockchip,rk3566
+
       - description: Asus Tinker board
         items:
           - const: asus,rk3288-tinker
-- 
2.25.1

