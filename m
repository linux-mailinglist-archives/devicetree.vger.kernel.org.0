Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CF37D41E9E5
	for <lists+devicetree@lfdr.de>; Fri,  1 Oct 2021 11:42:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353346AbhJAJoI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Oct 2021 05:44:08 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:46844
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1353239AbhJAJnp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Oct 2021 05:43:45 -0400
Received: from mail-lf1-f72.google.com (mail-lf1-f72.google.com [209.85.167.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 5EA44402D9
        for <devicetree@vger.kernel.org>; Fri,  1 Oct 2021 09:42:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1633081320;
        bh=ckAlTotIT3HkVFofNi6oKZ9ggPor2IJzjyZD14XCv6I=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=Q/bWqUCrglWFHmdcM/y07AdlbSlNDZGH7L21cyKGtKGmq3rgo+AwYQXjjzMGoQpoW
         f03FZnvcwA9DTH5JiYXRhOdhBY8UbtsInMynyCT/5kEeh7rhNkcbr5mApySvJGZ6CJ
         LEnD/6Z5u0ykFgQZZtK9P7Wd+wso3qVR9FyRJ67aV1WgHerBIJyCEJ3G4Jp0Pd3WlB
         vVwPnj2uKT8ivkA68QFKNZ6lfcmE6ljNoIYLTPPaGsFz1lUBp1b1EGtRC1F7DDGtHp
         ijR6avYH6D3k5+GsrgT6r2qZxcdcQS2/w23QKcRHJFt4YbXKND0sJzN76fSwr8F9+L
         L0Y99DqHuNS0A==
Received: by mail-lf1-f72.google.com with SMTP id x7-20020a056512130700b003fd1a7424a8so3029545lfu.5
        for <devicetree@vger.kernel.org>; Fri, 01 Oct 2021 02:42:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ckAlTotIT3HkVFofNi6oKZ9ggPor2IJzjyZD14XCv6I=;
        b=UaQFWqlvsiVORmlqLirR0qw7dOiaSlyFVM1Kuj+wTIwxojzvCuCJtHWs22+bxOrGOe
         H7ZO/KnqbD6O5w3aCh3vEv14/Vl4jVCa0018sZ/GiT+o2HIVVfXhz/MI7F7xQDUYlQXY
         ER7o+C3dwTmaLblPbqKeCFWlGZF8lVcx9KBOmYB3SUqjYXs43tY2RBU+QzVOWoVzcFBn
         JaSI3nLKcneKxoGy2boCUeTuixDjJchEWXp5FsDsgSx/2NhNVCuU9CwO2nnqVrL1yO+D
         IiWpylbjKZH7qdhGkUmcdYznXRGeBOmL4+PDkZCZvUSSquBA0k9A8iwiqNXJcX5VlyCE
         bYFQ==
X-Gm-Message-State: AOAM5317DvXPKHZp0zvRuyqTAezsT96aE+sj7MrXi2yfsJOQ2IM2myNX
        iGsTN4DrnmwcurnEoSQkbWRPpAjSZsic7kYgIpnH+Vm4qlLeFTI0GSuY1mfhNtkXK1pD9X+Uhwj
        qwCv3+VF3KlkWQBgh0GKtdemlBLdDP68cBKB46PE=
X-Received: by 2002:a05:6512:3082:: with SMTP id z2mr4517810lfd.330.1633081319785;
        Fri, 01 Oct 2021 02:41:59 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwL+pVrLU2hACEbfMq1WCV0FKqNZxMiAkc83hd5rhMaSi/yXZ6C79H7J6ivvISYJNv9CRkFwA==
X-Received: by 2002:a05:6512:3082:: with SMTP id z2mr4517793lfd.330.1633081319619;
        Fri, 01 Oct 2021 02:41:59 -0700 (PDT)
Received: from localhost.localdomain ([193.178.187.25])
        by smtp.gmail.com with ESMTPSA id g29sm673784lfj.212.2021.10.01.02.41.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Oct 2021 02:41:58 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Lee Jones <lee.jones@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-samsung-soc@vger.kernel.org
Subject: [PATCH v2 10/10] dt-bindings: mfd: samsung,s5m8767: document buck and LDO supplies
Date:   Fri,  1 Oct 2021 11:41:06 +0200
Message-Id: <20211001094106.52412-11-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211001094106.52412-1-krzysztof.kozlowski@canonical.com>
References: <20211001094106.52412-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document the properties with regulator supplies for bucks and LDOs.  At
least one board uses it (Exynos5250 Arndale).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../bindings/mfd/samsung,s5m8767.yaml         | 38 +++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/samsung,s5m8767.yaml b/Documentation/devicetree/bindings/mfd/samsung,s5m8767.yaml
index b2529a48c890..12dea5aac8b6 100644
--- a/Documentation/devicetree/bindings/mfd/samsung,s5m8767.yaml
+++ b/Documentation/devicetree/bindings/mfd/samsung,s5m8767.yaml
@@ -96,6 +96,44 @@ properties:
     description: |
       GPIO specifiers for three host gpio's used for dvs.
 
+  vinb1-supply:
+    description: Power supply for buck1
+  vinb2-supply:
+    description: Power supply for buck1
+  vinb3-supply:
+    description: Power supply for buck1
+  vinb4-supply:
+    description: Power supply for buck1
+  vinb5-supply:
+    description: Power supply for buck1
+  vinb6-supply:
+    description: Power supply for buck1
+  vinb7-supply:
+    description: Power supply for buck1
+  vinb8-supply:
+    description: Power supply for buck1
+  vinb9-supply:
+    description: Power supply for buck1
+
+  vinl1-supply:
+    description: Power supply for LDO3, LDO10, LDO26, LDO27
+  vinl2-supply:
+    description: Power supply for LDO13, LDO16, LDO25, LDO28
+  vinl3-supply:
+    description: Power supply for LDO11, LDO14
+  vinl4-supply:
+    description: Power supply for LDO4, LDO9
+  vinl5-supply:
+    description: Power supply for LDO12, LDO17, LDO19, LDO23
+  vinl6-supply:
+    description: Power supply for LDO18, LDO20, LDO21, LDO24
+  vinl7-supply:
+    description: Power supply for LDO5, LDO22
+  vinl8-supply:
+    description: Power supply for LDO1, LDO6, LDO7, LDO8, LDO15
+  vinl9-supply:
+    description: Power supply for LDO2
+
   wakeup-source: true
 
 required:
-- 
2.30.2

