Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5232C4D8BA9
	for <lists+devicetree@lfdr.de>; Mon, 14 Mar 2022 19:20:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243724AbiCNSV2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Mar 2022 14:21:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50228 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243741AbiCNSV2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Mar 2022 14:21:28 -0400
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 68E5C377E0
        for <devicetree@vger.kernel.org>; Mon, 14 Mar 2022 11:20:18 -0700 (PDT)
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com [209.85.208.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 33B2F405B4
        for <devicetree@vger.kernel.org>; Mon, 14 Mar 2022 18:20:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1647282015;
        bh=3F2+CAuLP5QZLFRCTc5YKJtMfEWVhLlhzdIM3Py96Yo=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=o/g0x/LPDRZnBOVMej65YdHFbrr4rtuf1ugwj/EbdyLqBzkhbcq8h69LHRbrBULZl
         56n49IYWfOLKHNQgN/EfXI5nbegDJyYwtfio16RH6d4hTvKIgzpmz1eNFhtikz9Ek/
         lMXjFKEDGXaPGmOLAsHYKTipYo0dBkAk2gKHRu3oAcXdMscbru1NOwiQRL5LlSX4nR
         Qhil2K4n+4hnGZUwMX0KMJMcARC4hL5qVPlmzOJR0gjCK9vd/nhCXNhkod0pS670R8
         LnDOCSX4fu8i2oREe0473rrUymAP3RD+HUg4o/ZargeT/Eb45ES3AF+KqaTd10bd40
         xipn+Cc57cLXA==
Received: by mail-ed1-f70.google.com with SMTP id i17-20020aa7c711000000b00415ecaefd07so9230091edq.21
        for <devicetree@vger.kernel.org>; Mon, 14 Mar 2022 11:20:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=3F2+CAuLP5QZLFRCTc5YKJtMfEWVhLlhzdIM3Py96Yo=;
        b=uGEc4kEuvD6lhuRU7NvWk3Asi/boSpmZAOSOQmO3c8OCd2jRA6ih4BKluvNKJEXrfT
         k0YXMgM7GBjnnMlerbMLtEmDrz/QQh40EoUw8MeHRHPl6IUz4RhffUPxogGi1AZagpsN
         hH+H5/X9gpYtsZc2voJmCrfED5oLBiXBg6qJJGF1q/LSvHAJzyrBtpYdtzM8+ib7X5k0
         fVlB18UwEYt6qSZWVZr5h3HbJWK6tLG4wkOsjtWoDheqDo03l2IBaXsgTEuviw7RXa9n
         RcpvGdBAzU3WtYVBW3stOU/Mp5oq+AeybLtVqNaC/GdlaDSwfIxybdsf57ZhYTaTzcCf
         Amlw==
X-Gm-Message-State: AOAM531Y74cJFptc2CSFx5MC4tHqefL9GJ9tz/YUvh4YqOjDlemlQqKm
        mycrUOzUMRaYZ9nxolEJ5p4ZKtwuCQiL9mZcJTISatkhrgp5T4qaMSl0wf+oXv6fj+wvrIYjHGW
        UOhSMj79BW3pXie5s91MqBsguvn/fUenG+DhnFiY=
X-Received: by 2002:a17:906:7953:b0:6da:951c:1173 with SMTP id l19-20020a170906795300b006da951c1173mr19830433ejo.465.1647282014951;
        Mon, 14 Mar 2022 11:20:14 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwkcwlyOc0SXQwJvd/c10csYRaaMAinbSZyI/FaYE0QvgKDO1i/aLi/j5YzU3k9ZXqrCumxNw==
X-Received: by 2002:a17:906:7953:b0:6da:951c:1173 with SMTP id l19-20020a170906795300b006da951c1173mr19830421ejo.465.1647282014773;
        Mon, 14 Mar 2022 11:20:14 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-174-239.adslplus.ch. [188.155.174.239])
        by smtp.gmail.com with ESMTPSA id i25-20020a50fd19000000b0041614eca4d1sm8566449eds.12.2022.03.14.11.20.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Mar 2022 11:20:14 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH 4/5] dt-bindings: usb: samsung,exynos-usb2: add missing required reg
Date:   Mon, 14 Mar 2022 19:19:47 +0100
Message-Id: <20220314181948.246434-4-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220314181948.246434-1-krzysztof.kozlowski@canonical.com>
References: <20220314181948.246434-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-5.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

"reg" property is required on Samsung S5PV210/Exynos EHCI/OHCI
controllers.

Fixes: 4bf2283cb208 ("dt-bindings: usb: samsung,exynos-usb2: convert to dtschema")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>

---

Fixed commit in current next. If this should go as fix, I can split it
from the second commit.
---
 Documentation/devicetree/bindings/usb/samsung,exynos-usb2.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/usb/samsung,exynos-usb2.yaml b/Documentation/devicetree/bindings/usb/samsung,exynos-usb2.yaml
index fbf07d6e707a..ef42c6fce73c 100644
--- a/Documentation/devicetree/bindings/usb/samsung,exynos-usb2.yaml
+++ b/Documentation/devicetree/bindings/usb/samsung,exynos-usb2.yaml
@@ -62,6 +62,7 @@ required:
   - interrupts
   - phys
   - phy-names
+  - reg
 
 allOf:
   - if:
-- 
2.32.0

