Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 662A047FD55
	for <lists+devicetree@lfdr.de>; Mon, 27 Dec 2021 14:32:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234052AbhL0NcJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Dec 2021 08:32:09 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:39422
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S233974AbhL0NcI (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 27 Dec 2021 08:32:08 -0500
Received: from mail-lj1-f198.google.com (mail-lj1-f198.google.com [209.85.208.198])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id C9C9D3F206
        for <devicetree@vger.kernel.org>; Mon, 27 Dec 2021 13:32:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1640611923;
        bh=QDOgrK+UXXf2EP9Xg5SGCwl/Jd4bs8eRi//6n3uyqR8=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=lziYc1EyreVicuvSUM231+QnhedgUjWnfzZWLR4kUcM6QrjdfQHQtAlaCscTiszqS
         y4ZyrK5/sBwNsRrYbOiaGj868Yda5Na8K7OHutI1macXslU1x2zGzYMURN7vMU7dXn
         BhFMj5y6hguQKPnVFIVWh0kOnGuGU4TX4bX/4Qm4sZiJZ0K6yIihb/YCapbbzzWX1M
         8jBoXw3qyJR+/QRN47LtOejHR+G3mLWvshD6icL0KXTUEPcAwzoos2pjoAkw5HQrh5
         FM7aI/kZc6dWBAI+UG04z+oy/tRGAHoao/bY8VBI7PWDQvF7fspeqQVVsg6itMqmxi
         q8iZofKL7V8Pg==
Received: by mail-lj1-f198.google.com with SMTP id d12-20020a05651c088c00b0022d989d91caso4016859ljq.20
        for <devicetree@vger.kernel.org>; Mon, 27 Dec 2021 05:32:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=QDOgrK+UXXf2EP9Xg5SGCwl/Jd4bs8eRi//6n3uyqR8=;
        b=bTiGjTZgdQWlYrZhJhTpfzKPRBFJxw9BcNkGf4gBUYleUi5iZi+4Q5PwVLm7+JZO6O
         OI2gasJxWFjgXv7li8m9GfUzmuD2nB9QrPI7nK11u+QGKQ/1SnHq9G8o53QxI33ddxc3
         YdXxOEaM81NUkOYioDOB4tyaSVT0gdkNzbqIt8e5hjUpAO+JdMXq0njyd/8xwhS6O1XE
         pfX/9rKKRpUBdiFldRZQAbmqJ5kuxqWqWTqVNA1PmoNiRiquOtGWjV4gkwLcw5AQpaud
         NnRanCFEgB20iMbkXK5gCozSuhKfam3LuAMGkidrjPE+BtDVBUzs/vbV2H1y6ENYrdfb
         t+lg==
X-Gm-Message-State: AOAM531ccKXPPYksjCSPipbHnU/ktf23f1tRLQJ5hvXjOFQgPYN00pGm
        zDor/nEWGCFxlpbUPPR4kR/JYRcaNEOCTp9i5RZ0zOem7Xmsb6ptalKqK7+0rhmTYhCogjc4ow6
        Q95vxjF4saJ2dYSms7B0kMeC8mw9fioLklU4Mtsw=
X-Received: by 2002:a2e:968d:: with SMTP id q13mr14005316lji.463.1640611923237;
        Mon, 27 Dec 2021 05:32:03 -0800 (PST)
X-Google-Smtp-Source: ABdhPJynCHx4YS7Nx8hWr33RmvpMJvVcwhIG9PNwD3XcJLGvPB1pyTdxMyPh0ubQJsJZiiyheysjag==
X-Received: by 2002:a2e:968d:: with SMTP id q13mr14005298lji.463.1640611922973;
        Mon, 27 Dec 2021 05:32:02 -0800 (PST)
Received: from krzk-bin.lan (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id d14sm1433510lfg.18.2021.12.27.05.32.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Dec 2021 05:32:02 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Dinh Nguyen <dinguyen@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-mmc@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH 01/19] dt-bindings: vendor-prefixes: add Enclustra
Date:   Mon, 27 Dec 2021 14:31:13 +0100
Message-Id: <20211227133131.134369-2-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211227133131.134369-1-krzysztof.kozlowski@canonical.com>
References: <20211227133131.134369-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add vendor prefix for Enclustra GmbH (https://www.enclustra.com).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 1497303e2600..a909dc1c8e28 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -373,6 +373,8 @@ patternProperties:
     description: Empire Electronix
   "^emtrion,.*":
     description: emtrion GmbH
+  "^enclustra,.*":
+    description: Enclustra GmbH
   "^endless,.*":
     description: Endless Mobile, Inc.
   "^ene,.*":
-- 
2.32.0

