Return-Path: <devicetree+bounces-1103-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 89A637A4A66
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 15:01:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AF0461C20C4D
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 13:01:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D670D1D53F;
	Mon, 18 Sep 2023 13:01:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42F2B1CA81
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 13:01:08 +0000 (UTC)
Received: from out-218.mta1.migadu.com (out-218.mta1.migadu.com [IPv6:2001:41d0:203:375::da])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 603EE10F6
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 06:00:14 -0700 (PDT)
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1695042012;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=SeWaoEJqAF8ZYVajGx7WfucGGz9hM5xHxg939rbNK9c=;
	b=PHK4m9K32Yp3nyzxO6Cg6RphTVBzWi6rWgpf5Wecs5F6H/ZqdcLf9/gPoeLTh1qRs1P+OJ
	aVMcdEaW87kqG8Zu0wfvYHQcc5N5g032dKjrJwzaTHAOOsl7j0+fRCdQIVDZc3MJbLNXC5
	v6jMObQ/y1gX59jq/o2SWqFx2bXNOB5HesHY7ExF8zDjR9Wi38+G8X+KwMk2rqF3+n6DNG
	io2+oTHbXXP7QUCGaVoaePl186/xZkDdN/+wIOjeqjJWQUaDG8ogACg2gK+CfekkI9O5Sf
	MeJ5AHsmvEqzKUGULqME2NDLtEqut1UlvTIys7rnKnwC1XrPLbf0kZUeA2rzAg==
From: John Watts <contact@jookia.org>
To: dri-devel@lists.freedesktop.org
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Sam Ravnborg <sam@ravnborg.org>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Chris Morgan <macromorgan@hotmail.com>,
	Jagan Teki <jagan@edgeble.ai>,
	John Watts <contact@jookia.org>,
	Paul Cercueil <paul@crapouillou.net>,
	Christophe Branchereau <cbranchereau@gmail.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [RFC PATCH v2 7/9] dt-bindings: display: panel: Clean up leadtek,ltk035c5444t properties
Date: Mon, 18 Sep 2023 22:58:51 +1000
Message-ID: <20230918125853.2249187-8-contact@jookia.org>
In-Reply-To: <20230918125853.2249187-1-contact@jookia.org>
References: <20230918125853.2249187-1-contact@jookia.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Remove common properties listed in common yaml files.
Add required properties needed to describe the panel.

Signed-off-by: John Watts <contact@jookia.org>
---
 .../bindings/display/panel/leadtek,ltk035c5444t.yaml      | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/panel/leadtek,ltk035c5444t.yaml b/Documentation/devicetree/bindings/display/panel/leadtek,ltk035c5444t.yaml
index ebdca5f5a001..7a55961e1a3d 100644
--- a/Documentation/devicetree/bindings/display/panel/leadtek,ltk035c5444t.yaml
+++ b/Documentation/devicetree/bindings/display/panel/leadtek,ltk035c5444t.yaml
@@ -18,16 +18,12 @@ properties:
   compatible:
     const: leadtek,ltk035c5444t
 
-  backlight: true
-  port: true
-  power-supply: true
-  reg: true
-  reset-gpios: true
-
   spi-3wire: true
 
 required:
   - compatible
+  - reg
+  - port
   - power-supply
   - reset-gpios
 
-- 
2.42.0


