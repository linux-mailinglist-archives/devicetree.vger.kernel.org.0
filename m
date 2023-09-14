Return-Path: <devicetree+bounces-213-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D52B7A04A6
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 14:59:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E2808282314
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 12:59:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35EAED28D;
	Thu, 14 Sep 2023 12:58:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ACB2241E0
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 12:58:55 +0000 (UTC)
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com [IPv6:2607:f8b0:4864:20::633])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D6011FD0;
	Thu, 14 Sep 2023 05:58:55 -0700 (PDT)
Received: by mail-pl1-x633.google.com with SMTP id d9443c01a7336-1c1f7f7151fso7372955ad.1;
        Thu, 14 Sep 2023 05:58:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694696335; x=1695301135; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=54AxaIyODcmWfyJ8BtWPJ8cdzZB3lh3tOwv90coDpxQ=;
        b=Pb4HQIhlgg4Sd/Ywjp2V6cNAiDvn+MesWIY4xUxlOklR7rgCshwjw9MnfsDzxJa7ZE
         2qHpLyd6JJTqpGtmvtpdkDcTDRUctP4cdvCynoOXJZJ+3z2QminrYAKmkiSrEora+ilC
         JamCWxDLRs6mPci47K5kkhUuoeuxPLmOcleBTBuuGqyK3ILG8y/y3VcZZ/MAioTrwHPl
         Q7w59OMzOycW+s3+YQytmhEi3zDbiOXBc8C0wdKWokP1We2TOqX086pyACU+QZ0sS1cD
         nhbwWS8bZ2n814+9WAeJE6lO8ueSMKBkKSzKE7YIhhiKwuR628pR5hhHBcjcbW53cwFr
         byNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694696335; x=1695301135;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=54AxaIyODcmWfyJ8BtWPJ8cdzZB3lh3tOwv90coDpxQ=;
        b=dc+Otx+71R8/0Qz4CT9zljwgexO6LlbFMDzoWbMgLCT+4vlvi+7Lbg5GZTlxOLfpgs
         soi9HzRSClSJjIE7Yinwy0aSGMpnv+QGzHqEcU8rVqHm1Wpq0M1HUgjQOKdWpWeMJ5Mh
         zr21W2c4H4cfovj0ylJ51sDk9bpAHJL6GzzGtFjakHdtopfdJbu4vzTymq+dqUuVyyIf
         TbTPsf7dJxrR1J/ltKD0VJmiiJOeWA6/x6LlbJhUWVBziKNMT0u9K1wdfbfK9KKxy9hJ
         PbYIt3txcZdKMQfb0EJJ+mwTmkGUowmGP/oT9nD0fXs906/WGUxYsaMvluyTYa2PctBe
         ptYg==
X-Gm-Message-State: AOJu0Yyv4RRJCowxTYbfbxVpzD09uoTi4kNMzTV1YbIOrsdBRbgGnV3h
	L+icMbxWxQ5FaUmNldhfg/Y=
X-Google-Smtp-Source: AGHT+IFah//muDrvYy1m+XUIOqGzm7lgQsEg90yqAqp+DU5qq/aboBQTSLPpCR9ilHKqK7TkkrpLBw==
X-Received: by 2002:a17:902:dacb:b0:1c0:b8fd:9c7 with SMTP id q11-20020a170902dacb00b001c0b8fd09c7mr7201092plx.43.1694696334927;
        Thu, 14 Sep 2023 05:58:54 -0700 (PDT)
Received: from obliging-System-Product-Name.dhcpserver.bu9bmc.local (1-34-21-66.hinet-ip.hinet.net. [1.34.21.66])
        by smtp.gmail.com with ESMTPSA id c11-20020a170903234b00b001b8a3e2c241sm1535105plh.14.2023.09.14.05.58.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Sep 2023 05:58:54 -0700 (PDT)
From: Yang Chen <yangchen.openbmc@gmail.com>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	joel@jms.id.au,
	andrew@aj.id.au,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Cc: patrick@stwcx.xyz,
	Jerry.Lin@quantatw.com,
	Eddie.Chen@quantatw.com,
	EasonChen1@quantatw.com,
	yangchen.openbmc@gmail.com
Subject: [PATCH v2 1/2] dt-bindings: arm: aspeed: document board compatibles
Date: Thu, 14 Sep 2023 20:56:47 +0800
Message-Id: <20230914125648.3966519-2-yangchen.openbmc@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230914125648.3966519-1-yangchen.openbmc@gmail.com>
References: <20230914125648.3966519-1-yangchen.openbmc@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document the new compatibles used on the Facebook Minerva Chassis
Management Controller (CMC).

Signed-off-by: Yang Chen <yangchen.openbmc@gmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
index 68f717670f78..749ee54a3ff8 100644
--- a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
+++ b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
@@ -79,6 +79,7 @@ properties:
               - facebook,elbert-bmc
               - facebook,fuji-bmc
               - facebook,greatlakes-bmc
+              - facebook,minerva-cmc
               - facebook,yosemite4-bmc
               - ibm,everest-bmc
               - ibm,rainier-bmc
-- 
2.34.1


