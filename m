Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 554A578FCD8
	for <lists+devicetree@lfdr.de>; Fri,  1 Sep 2023 14:01:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349327AbjIAMBM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Sep 2023 08:01:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35950 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349325AbjIAMBL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Sep 2023 08:01:11 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4396510D2
        for <devicetree@vger.kernel.org>; Fri,  1 Sep 2023 05:01:04 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-9a58dbd5daeso240174166b.2
        for <devicetree@vger.kernel.org>; Fri, 01 Sep 2023 05:01:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693569663; x=1694174463; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oS/0ElWUbV8BeVd+6AgHAloG3yh8d3D/aZCsvM27g5c=;
        b=dYtJR3J8jVBGQWSRkwxQC1Mjk4V89T+SFg0OVPktOEX173pBH1RMBoA7Y5YY+6oXIB
         2DGKImoqatGQ1QeAy0hnb33T9YbQdsAJZ2UHsVOnaPWFqSdd6hJM+5F2Oy/AHQzocv6m
         W7zDoXC1XLctatW4Nxq0lEOfmHAR3Qs0NxAcC82jX88rn/LknrXLaVrJ5yr9gapMqJAQ
         UU2No4Aw9s0+nOLulNGyKcU5pgVyGehB7H8aQroL0jgEZAV8rFK/CaumQF5fSjoPxSJw
         DZWuI0YHl+5xZL1gLcOabkNABzxkkcHZxCSl/Q5odhRNhqdY4jkR6U0Ii84fpyviP2LT
         KW/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693569663; x=1694174463;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oS/0ElWUbV8BeVd+6AgHAloG3yh8d3D/aZCsvM27g5c=;
        b=lFGXYnh6eDWkgzN8M7A3Q+QKy9FItp7lWb6A/7ptA8C8kW0yca5QbHWgR4wscB5QVZ
         QOqBNBy+03wD+7VKE4aA4Dyr0RgjdnK3A7s/6Nm6f9tz3oU7LAQtShbo4HVRlZf3qUr6
         EaQ6N7wGKYVcj4hxAXT3F8bGo2v0/nLd7gAE9tNnMXfE1VX1zL9zOehbchoFCNATz3bU
         oiOtswEzfjNL5sJ1x4Whw4hXWNzIf9sK9QGZuqZMWmVuxQfYtwWusdDtix0vhyY/NbMu
         n+XBN5PmD0Osv2sjg0TaWGJIOuCnclcH3gABpjc2XyRlyiwNgEb8ieNAwHncexR7qT+Z
         hJOg==
X-Gm-Message-State: AOJu0YxRB1qff7XsXbCoOJWrTlO44mZAbqcS6QMyMX2yMImcPi5+XNGw
        5UYT6+tC+PJXLhk+f+93Mv+Xnw==
X-Google-Smtp-Source: AGHT+IEV6aXOvW/K5E49cBpDsHJ6RPd3sDkgSq3TDoEjuLdw9Iaukbt/a2aU3OL05Q/sA3k8mg4Ynw==
X-Received: by 2002:a17:906:189:b0:9a2:1df2:8e08 with SMTP id 9-20020a170906018900b009a21df28e08mr1670600ejb.45.1693569662760;
        Fri, 01 Sep 2023 05:01:02 -0700 (PDT)
Received: from krzk-bin.. (77-252-46-238.static.ip.netia.com.pl. [77.252.46.238])
        by smtp.gmail.com with ESMTPSA id kg12-20020a17090776ec00b00993928e4d1bsm1877343ejc.24.2023.09.01.05.01.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Sep 2023 05:01:02 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Sebastian Reichel <sre@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 3/3] power: reset: syscon-poweroff: get regmap from parent node
Date:   Fri,  1 Sep 2023 14:00:57 +0200
Message-Id: <20230901120057.47018-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230901120057.47018-1-krzysztof.kozlowski@linaro.org>
References: <20230901120057.47018-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Just like syscon-reboot device, the syscon-poweroff is supposed to be a
child of syscon node, thus we can take the same approach as
syscon-poweroff: deprecate the 'regmap' field in favor of taking it from
the parent's node.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 drivers/power/reset/syscon-poweroff.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/power/reset/syscon-poweroff.c b/drivers/power/reset/syscon-poweroff.c
index 11b955983279..764aeea6c34a 100644
--- a/drivers/power/reset/syscon-poweroff.c
+++ b/drivers/power/reset/syscon-poweroff.c
@@ -37,8 +37,11 @@ static int syscon_poweroff_probe(struct platform_device *pdev)
 
 	map = syscon_regmap_lookup_by_phandle(dev->of_node, "regmap");
 	if (IS_ERR(map)) {
-		dev_err(dev, "unable to get syscon");
-		return PTR_ERR(map);
+		map = syscon_node_to_regmap(dev->parent->of_node);
+		if (IS_ERR(map)) {
+			dev_err(dev, "unable to get syscon");
+			return PTR_ERR(map);
+		}
 	}
 
 	if (of_property_read_u32(dev->of_node, "offset", &offset)) {
-- 
2.34.1

