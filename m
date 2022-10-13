Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 420C25FE578
	for <lists+devicetree@lfdr.de>; Fri, 14 Oct 2022 00:39:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229825AbiJMWjO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Oct 2022 18:39:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46378 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229826AbiJMWiz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Oct 2022 18:38:55 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82158AB83D
        for <devicetree@vger.kernel.org>; Thu, 13 Oct 2022 15:38:06 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id 10so4626299lfy.5
        for <devicetree@vger.kernel.org>; Thu, 13 Oct 2022 15:38:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=XD4O16un8WIx8MmGkVf9jRNMWtBwQXtKsr93AsZoXgw=;
        b=jVdUcM9Rt6DoCcn6LRKdPJvdpeHQOuoUEY27/8mOGbousLCJhexIcildkmnFo9K5c9
         +SyEpUSIIfIvsPQni7w29SpbUpkX2aLRc/K9bmEI4+YeFdCgpGw2ZDU8P3Z9snJhySGf
         6YVZuY66oT5Apr/zQQWl5uSlo5powTXU+wnnHcTTyBeQIgzBVAaKlYKQhgTAaO6C3EhN
         EeReSSVe4vnaJFPKirSjwIWZOBO7y1khdRu9hLzBKWtD8RTahGKb+mYX7h3bO57eRKDe
         H+II2IQPeUQGaxkqOENfK88PZIgcwxYYzgE/D/CL8cJ8rwgYbsuT+9SljIcjpWCV0tPA
         2n0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XD4O16un8WIx8MmGkVf9jRNMWtBwQXtKsr93AsZoXgw=;
        b=Tam7KKMV7ZlcoovEmDr+j/jp6e5AIl53n1u5JCGayw7oQfnBEvXFl+N/oN+UMwgCzZ
         gwLxcoHA2b1Dj1gE24wzj/zdjM/EKeev/v1VhqFag7wORMnqycvPZYTQvLFOoVgHLY1N
         38vUjB/m28YVMebEpnBK9M6y97N+AjcU4JFH1LI+EQm9RdwtK5bJsZAdz/vllYtgIgGt
         837dzlv+ALZoNOBlAhDK27yTUg/EKzPhZyhT7dMRjUiShtiwo+l9BRVcx2LsjuEQM2gH
         pEq38ngEgphskIKEI/DUdOz/bH73/VCjeHpN0WyQUpEOdN/OEJnTR8091n1dUY/EEgOP
         y2dw==
X-Gm-Message-State: ACrzQf0vN8x9tuj0ciXduWpJzjw1/kzzU2ud0lr41NZbqkg83GaNFig4
        3QDZoCmsy9m4BvNGFgP2ma1rGw==
X-Google-Smtp-Source: AMsMyM6jEm4sbix+nVrHVJa80BWGcHaHoT6Thwu9jVbKoZOQE8mveTell7gmDvZjrhb2SE177uxnjw==
X-Received: by 2002:a05:6512:15a9:b0:4a2:488e:bbd0 with SMTP id bp41-20020a05651215a900b004a2488ebbd0mr616293lfb.667.1665700661472;
        Thu, 13 Oct 2022 15:37:41 -0700 (PDT)
Received: from localhost.localdomain (c-fdcc225c.014-348-6c756e10.bbcust.telenor.se. [92.34.204.253])
        by smtp.gmail.com with ESMTPSA id d20-20020a194f14000000b00498ee99a749sm75891lfb.304.2022.10.13.15.37.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Oct 2022 15:37:41 -0700 (PDT)
From:   Linus Walleij <linus.walleij@linaro.org>
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Cc:     bcm-kernel-feedback-list@broadcom.com,
        linux-arm-kernel@lists.infradead.org,
        Linus Walleij <linus.walleij@linaro.org>,
        devicetree@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: ARM: add bindings for the D-Link DWL-8610AP
Date:   Fri, 14 Oct 2022 00:35:37 +0200
Message-Id: <20221013223538.2385601-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.37.3
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

The D-Link DWL-8610AP is a pure access point with ethernet in
and wireless (both 2.4GHz and 5GHz) out.

Cc: devicetree@vger.kernel.org
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 Documentation/devicetree/bindings/arm/bcm/brcm,bcm4708.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4708.yaml b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4708.yaml
index 958df32b4899..2657f9b82ecd 100644
--- a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4708.yaml
+++ b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4708.yaml
@@ -97,6 +97,7 @@ properties:
       - description: BCM53016 based boards
         items:
           - enum:
+              - dlink,dwl-8610ap
               - meraki,mr32
           - const: brcm,bcm53016
           - const: brcm,bcm4708
-- 
2.34.1

