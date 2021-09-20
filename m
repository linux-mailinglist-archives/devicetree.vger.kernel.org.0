Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 80AC2412347
	for <lists+devicetree@lfdr.de>; Mon, 20 Sep 2021 20:21:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351974AbhITSWr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Sep 2021 14:22:47 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:50950
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1347961AbhITSUq (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 20 Sep 2021 14:20:46 -0400
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com [209.85.221.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 25042402CE
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 18:19:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1632161959;
        bh=8LE4EIzxd0T+JDVOM82ADVNZZun+tXpi3OMlHIizBP0=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=eVoqcBF1GD5kyq/Wcy7EmPth0z9XE2VzkSppp4il5GtLtdIxm3fIoXR7dDIVho+Zq
         dYpKwhFX2/pYM0YwdNWvt4Cj2IIfxI+gPJtUoxmyTyNGu0Ifw4hE2kZxTOBzCkJpmC
         DKiUgZDvl1EyTIfnVwffCtb98ej78Diue76vgndFekPYYdYp3+hY7J2/AgWmc0Gsag
         AHDDalBT7NwOb0Fqiswd7IdqXT+3m5b0r4Mz53FU2N+bkDly8bE+qxYbqgs9Vvq3qB
         jVUwqr5w8uibKoYfMV1ovPfpvLADfa337G/oEmroLhLrJojSRyK7SFrhRKKqDSAEz6
         X9nw+TFY6Bxuw==
Received: by mail-wr1-f72.google.com with SMTP id r5-20020adfb1c5000000b0015cddb7216fso6801289wra.3
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 11:19:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8LE4EIzxd0T+JDVOM82ADVNZZun+tXpi3OMlHIizBP0=;
        b=XMxrYPXz/25JlldPDcUa8JrcodlO4EeNihotL+ZplIrZfG5oDPrnw3z2qru6nN7pWF
         DyJUfnp/X5kKYBprpqeXrxwRfUaxc4JelvgzAfvumlD+h4U4S5l3ZIeYXlUJI/cFs9bF
         KMkILFgf/m4q1rSAsJ4kF6JxPtZPUU0DgxY0n5jZaN4A6riYjUuq4zyHEGxGqhvC+nUF
         JxlNMBJRRznleFzqaYqWPNoWIOtKg/1Ko7bvHsNc5bzeY6dr+tfn7+jIm7fodH+SN/4z
         73rr9d0UXxvoB0dMcN4weFt0HYz9WEqIQ1LjfESJqJf3+YPKxz5PvVtvJsAWJYk2TQ+f
         3ddA==
X-Gm-Message-State: AOAM5331EiVggWb0UIPa+KVl8/oq06OcnXxB+fCdw88rae3yrORRa2Q/
        Mslu0UjlmujfbM5NMsQuBMZLW14fI06fRkyDpER+UB+0oLcXtQPevuyOKZjT8SUaNz2gwl9YpVg
        LSgrEeF8cOWwJquN2YtwJy5PNYtpdxWA+9Nj1b7M=
X-Received: by 2002:a5d:46c7:: with SMTP id g7mr29646439wrs.316.1632161958895;
        Mon, 20 Sep 2021 11:19:18 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyNJJwddFB3b21EgLGMrF3yJtWKG5vCNW9/ixrWYfXCGuslD2w3YlxVBQxVqbRl07dIFSGBNA==
X-Received: by 2002:a5d:46c7:: with SMTP id g7mr29646431wrs.316.1632161958775;
        Mon, 20 Sep 2021 11:19:18 -0700 (PDT)
Received: from kozik-lap.lan (lk.84.20.244.219.dc.cable.static.lj-kabel.net. [84.20.244.219])
        by smtp.gmail.com with ESMTPSA id i27sm253134wmb.40.2021.09.20.11.19.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Sep 2021 11:19:18 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Jean Delvare <jdelvare@suse.com>,
        Guenter Roeck <linux@roeck-us.net>,
        Rob Herring <robh+dt@kernel.org>,
        Jonathan Cameron <Jonathan.Cameron@huawei.com>,
        linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH v2 2/2] dt-bindings: hwmon: lm90: do not require VCC supply
Date:   Mon, 20 Sep 2021 20:19:13 +0200
Message-Id: <20210920181913.338772-2-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210920181913.338772-1-krzysztof.kozlowski@canonical.com>
References: <20210920181913.338772-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The LM90-like sensors usually need VCC supply, however this can be
hard-wired to the board main supply (like in SiFive HiFive Unmatched
RISC-V board).  Original bindings made VCC supply as required but in
practice several other boards skipped it.  Make it optional.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>

---

Changes since v1:
1. New patch
---
 Documentation/devicetree/bindings/hwmon/national,lm90.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/hwmon/national,lm90.yaml b/Documentation/devicetree/bindings/hwmon/national,lm90.yaml
index e712117da3df..6e1d54ff5d5b 100644
--- a/Documentation/devicetree/bindings/hwmon/national,lm90.yaml
+++ b/Documentation/devicetree/bindings/hwmon/national,lm90.yaml
@@ -55,7 +55,6 @@ properties:
 required:
   - compatible
   - reg
-  - vcc-supply
 
 additionalProperties: false
 
-- 
2.30.2

