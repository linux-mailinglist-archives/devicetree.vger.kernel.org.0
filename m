Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 94BB433B304
	for <lists+devicetree@lfdr.de>; Mon, 15 Mar 2021 13:45:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229683AbhCOMow (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Mar 2021 08:44:52 -0400
Received: from youngberry.canonical.com ([91.189.89.112]:33309 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229926AbhCOMoa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 Mar 2021 08:44:30 -0400
Received: from mail-wm1-f72.google.com ([209.85.128.72])
        by youngberry.canonical.com with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.86_2)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1lLmaD-0004mV-Ij
        for devicetree@vger.kernel.org; Mon, 15 Mar 2021 12:44:29 +0000
Received: by mail-wm1-f72.google.com with SMTP id b20so2443267wmj.3
        for <devicetree@vger.kernel.org>; Mon, 15 Mar 2021 05:44:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=T5a037nmqIB7Yu7L87kcFosW5V8/NbvTQS1sAPH8huw=;
        b=gWR8EMCDNo5Thp5msTUu3SX/GLAXf1vFL1ojvDBgKWL7EfO7ZEf7C6W6/UuSM+Ieig
         K/Iz3yBfnrPyyEoYoXuw/7r9EbmmFfmrSo7syXW2+NHfwji3fz60oiegDd3wzRRAhpUI
         JbtCX0yPK01cC8f737vro1xINbAqT2ILKBZuBgGc4P/AlfoEQ8yzHj/vwQew9tz09swJ
         iW+JoPyKkNITdmpWHv6b05cRY3mDVnxBNbWbpC2rbGWqoTd2RPgpLB1i2ehwuII8V8SW
         tpKwCZsOvyn0g+gmAyHQWwFdonCvXA+1YfCddr+yozJ5yvX6E+dSo1mqEACkxrHhq9AS
         KrJQ==
X-Gm-Message-State: AOAM531LpFKQiPNdJC/cBDDt+9mGtE+fTigzFyYoDo/8vvvYIoXd3dEb
        dk1XBu3W0gbOH8iKhNXvR1ysET6pp7e36PnZyEstyiUdoDwnDdPoQv3ezMSlxcMC7I12EHZYHIt
        8CE7a+u1aiGFJwg6exv0cwYlvQBtUcuihOeGxPJA=
X-Received: by 2002:a05:6000:147:: with SMTP id r7mr27866531wrx.25.1615812268971;
        Mon, 15 Mar 2021 05:44:28 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyxWzPQtr1vP5aONwJdcyAtOlrXSzQrb6WrBvdgSxGpSiLPBrMHezlrN8I8lYlXgw8viyOJRA==
X-Received: by 2002:a05:6000:147:: with SMTP id r7mr27866520wrx.25.1615812268878;
        Mon, 15 Mar 2021 05:44:28 -0700 (PDT)
Received: from localhost.localdomain (adsl-84-226-167-205.adslplus.ch. [84.226.167.205])
        by smtp.gmail.com with ESMTPSA id n4sm12311444wmq.40.2021.03.15.05.44.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Mar 2021 05:44:28 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH 3/3] dt-bindings: add vendor prefix for AESOP
Date:   Mon, 15 Mar 2021 13:44:23 +0100
Message-Id: <20210315124423.115039-3-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210315124423.115039-1-krzysztof.kozlowski@canonical.com>
References: <20210315124423.115039-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add vendor prefix for AESOP Embedded Forum (http://www.aesop.or.kr).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index c20194b54315..8f167ee52904 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -57,6 +57,8 @@ patternProperties:
     description: Advantech Corporation
   "^aeroflexgaisler,.*":
     description: Aeroflex Gaisler AB
+  "^aesop,.*":
+    description: AESOP Embedded Forum
   "^al,.*":
     description: Annapurna Labs
   "^alcatel,.*":
-- 
2.25.1

