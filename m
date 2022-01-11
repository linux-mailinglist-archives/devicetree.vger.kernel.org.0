Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D00EF48B457
	for <lists+devicetree@lfdr.de>; Tue, 11 Jan 2022 18:48:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344623AbiAKRsx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jan 2022 12:48:53 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:53936
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1344566AbiAKRsv (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 11 Jan 2022 12:48:51 -0500
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com [209.85.208.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id E782740A8B
        for <devicetree@vger.kernel.org>; Tue, 11 Jan 2022 17:48:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1641923330;
        bh=b8unpukURFoj9tYv6hEHKZIOPqKdbI+UT8tS2dxzJ3A=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=feFkn4szcvNFN/VhwFtXLsTqOixJl5WHL7zaniP9SAo3AfMzLwDi6uTrPGuy7AwEn
         h7Vyc4+y+0ZKG6R2EdlaNI9fwn7AiZ3NoOzXhx69i0fFZZSJcWhG53gx3Tvc0Qb9BB
         Z7r4W049G9V3zO9Hy/ejS2H+gi7Rpg59oG9S4NPgZ0hXlf5PRKWLFH0z44A73WknXN
         Stm81Fv00lnOh1jXRe3OxqMhr3pGb4SicDrVLu7Ex2FCLDQLXhxhsGf/IjTBvpEot6
         l5xzXfY6x7CtN0AlgNVm+/pZh8J8dptAVeezLD6573EWFdJdDJx66mcOUXAduNemSY
         zAh+bvHi49Yzg==
Received: by mail-ed1-f71.google.com with SMTP id z9-20020a05640240c900b003fea688a17eso3060024edb.10
        for <devicetree@vger.kernel.org>; Tue, 11 Jan 2022 09:48:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=b8unpukURFoj9tYv6hEHKZIOPqKdbI+UT8tS2dxzJ3A=;
        b=uTChH7gN2RalxPFwcdZvRvLD/BZarwRhIYooUtm/20Ct6rOuvCh60if2bnRV3QgPQU
         PABizJ+iEDYHqFmU3jTBuWSrzw4nrztwvS4qj8eQ8f6/lOyU/HCz500bOw9aM1g+0qAV
         rnj8RUSBWef3Q0eXD6Cs4wkKqUkVZEVfnCqiX1dVXtjStnAdTjJ+pyzBvYsBdHD16LMq
         tjp6RspNSPgvs4S11Qeg9m0sBEPygAO5GFqz6EJYyZcrmPf74l/nIwkbKrOAxUQWN5+K
         AXD8QPW+n6buNL9IcF12w0iuZu5ZKnawmnaAujYuvnixBYv13A4acgH7FrVeBg+MctSg
         uvKQ==
X-Gm-Message-State: AOAM5300rii2xkO2gqXMnZzmNgxnBrasBHwwkGji5inn4qjDFFOotkEz
        2v2NBOwnKIzQ1xSKzjq+BbXm6MNblpwhAPn02+jbZFFvhHJZoEzTFHKeuXNjQCfFvRa65wIl8n1
        ij2Vuf2ttJSahCWcltH8rEihmGGlECOETxu7VB/c=
X-Received: by 2002:a17:906:f214:: with SMTP id gt20mr4859173ejb.458.1641923330639;
        Tue, 11 Jan 2022 09:48:50 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyAM0/Z9YVcu804le5q3yh75AgpsHjTUH68ArlTniLkfQouy/WQEvSuRTc1ZiHTwflEmE8bPg==
X-Received: by 2002:a17:906:f214:: with SMTP id gt20mr4859157ejb.458.1641923330509;
        Tue, 11 Jan 2022 09:48:50 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id i23sm5224489edt.93.2022.01.11.09.48.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jan 2022 09:48:49 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Chanwoo Choi <cw00.choi@samsung.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        MyungJoo Ham <myungjoo.ham@samsung.com>,
        Rob Herring <robh+dt@kernel.org>,
        Lee Jones <lee.jones@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org
Subject: [PATCH v2 5/5] MAINTAINERS: mfd: cover MAX77843 by Maxim PMIC/MUIC for Exynos boards entry
Date:   Tue, 11 Jan 2022 18:48:05 +0100
Message-Id: <20220111174805.223732-6-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220111174805.223732-1-krzysztof.kozlowski@canonical.com>
References: <20220111174805.223732-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The MAX77843 is used in Exynos5433-based TM2 boards and shares some
parts of code with MAX77693 (regulator and haptic motor drivers).
Include all MAX77843 drivers in the entry for Maxim PMIC/MUIC drivers
for Exynos boards, so they will receive some dedicated review coverage.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 MAINTAINERS | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index e5f2758531bc..d1f8f312f322 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -11693,8 +11693,10 @@ L:	linux-kernel@vger.kernel.org
 S:	Supported
 F:	Documentation/devicetree/bindings/*/maxim,max77686.yaml
 F:	Documentation/devicetree/bindings/*/maxim,max77693.yaml
+F:	Documentation/devicetree/bindings/*/maxim,max77843.yaml
 F:	Documentation/devicetree/bindings/clock/maxim,max77686.txt
 F:	Documentation/devicetree/bindings/mfd/max14577.txt
+F:	drivers/*/*max77843.c
 F:	drivers/*/max14577*.c
 F:	drivers/*/max77686*.c
 F:	drivers/*/max77693*.c
-- 
2.32.0

