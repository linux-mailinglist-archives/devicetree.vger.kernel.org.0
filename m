Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2F76235A48E
	for <lists+devicetree@lfdr.de>; Fri,  9 Apr 2021 19:20:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233896AbhDIRUq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Apr 2021 13:20:46 -0400
Received: from youngberry.canonical.com ([91.189.89.112]:53869 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232642AbhDIRUp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Apr 2021 13:20:45 -0400
Received: from mail-wm1-f71.google.com ([209.85.128.71])
        by youngberry.canonical.com with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.86_2)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1lUuo3-0008D5-CS
        for devicetree@vger.kernel.org; Fri, 09 Apr 2021 17:20:31 +0000
Received: by mail-wm1-f71.google.com with SMTP id x12-20020a05600c21ccb02901227f671053so767311wmj.1
        for <devicetree@vger.kernel.org>; Fri, 09 Apr 2021 10:20:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=4uyrzUrjaAi1BmA4U4HPTxMZ5ghSP8t5+bP/xEnKvPA=;
        b=qmuuqg7bNWmXUvT2dOlRJJG20FTYLBIHv+oYbbAog6vBYieVnP+N+iIfP9ATrZf+Nt
         Ovm1+D4Wrm7VytjnO2rJ4KbSOleP9Mdj14jfHF3xhrubiNq0etzYGDGbHmyZ/iaaMqZE
         XbdQ2wxfupONZDWpnF6JDjKDkewA//DKxRfU/Mv6hfqyE2RqhcfGtw0xnPqVakcc4ia/
         U4/duP5tQnEguyX+kDG+Oe6jabIkMlml4v2XKDuKn34J/0sO5ZIpx6nd6q6f5mH6gsji
         oxVzzw/skpj5lWBWmTmvdfYFA+v9J+QCiVhB+B0FBBot1v/8PioHl9n6FecCOalSZ5bp
         JsUA==
X-Gm-Message-State: AOAM533KjtXGpqFyn44eUzHfEE92CAStsHm1WmNKIVqaI3nrxe14gS0m
        xVnGogvtbGpZO/29sD71cy7Vwqc0jhNPBKYNWZsZY0jqfdjJP6H4M+3buiS2y71szUJ2Sa5BwmQ
        6cOBINBgzEc4DJkxjM9p0fb3iNrFTo7oRBf1Yge0=
X-Received: by 2002:a05:600c:228d:: with SMTP id 13mr15001640wmf.49.1617988831155;
        Fri, 09 Apr 2021 10:20:31 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw+JyoKZKJpIbVuRb8NNntAEpfeqVfkIhTYqe0bAoqdpPbIiazDgM3Y6xaCNkmht2L2eOtOrw==
X-Received: by 2002:a05:600c:228d:: with SMTP id 13mr15001626wmf.49.1617988830984;
        Fri, 09 Apr 2021 10:20:30 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-192-147.adslplus.ch. [188.155.192.147])
        by smtp.gmail.com with ESMTPSA id f8sm5444428wro.29.2021.04.09.10.20.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Apr 2021 10:20:30 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        linux-serial@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Rob Herring <robh@kernel.org>
Subject: [PATCH v3] dt-bindings: serial: samsung: include generic dtschema to match bluetooth child
Date:   Fri,  9 Apr 2021 19:20:27 +0200
Message-Id: <20210409172027.11296-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Krzysztof Kozlowski <krzk@kernel.org>

Include the generic serial.yaml dtschema so the child node like
"bluetooth" will be properly matched:

  arch/arm/boot/dts/exynos4210-universal_c210.dt.yaml:
    serial@13800000: 'bluetooth' does not match any of the regexes: 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
Reviewed-by: Rob Herring <robh@kernel.org>

---

Changes since v2:
1. Fix typo in commit msg.
2. Add Rob's review.

Changes since v1:
1. Drop the new example, as Rob suggested.
---
 Documentation/devicetree/bindings/serial/samsung_uart.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/serial/samsung_uart.yaml b/Documentation/devicetree/bindings/serial/samsung_uart.yaml
index 4f98a3896b3a..97ec8a093bf3 100644
--- a/Documentation/devicetree/bindings/serial/samsung_uart.yaml
+++ b/Documentation/devicetree/bindings/serial/samsung_uart.yaml
@@ -79,9 +79,11 @@ required:
   - interrupts
   - reg
 
-additionalProperties: false
+unevaluatedProperties: false
 
 allOf:
+  - $ref: /schemas/serial.yaml#
+
   - if:
       properties:
         compatible:
-- 
2.25.1

