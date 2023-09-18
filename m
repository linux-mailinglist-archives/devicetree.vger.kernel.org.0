Return-Path: <devicetree+bounces-1118-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 263FE7A4C9B
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 17:37:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D40FB281DEE
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 15:37:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 668541D6A1;
	Mon, 18 Sep 2023 15:36:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1003D14AA5
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 15:36:40 +0000 (UTC)
Received: from out-210.mta1.migadu.com (out-210.mta1.migadu.com [95.215.58.210])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5FAD91738
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 08:33:51 -0700 (PDT)
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1695042020;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=+rPvYllRDLXYdpCaKzuXJQW3gGJQ00N8iG6ai2sg4/4=;
	b=ZmSg3GBBCkEs7rof7B5MUOJ0BSXWhDB//CYhBVB171ABr4QKQ5bwGu/itk5Q8Ccs7v/674
	EetMEHidRZmCQcfxjhT9LTVPZAq+LJKnwdFsZ7l/zpbNQzFyhA5xF2oL5w7uiQCSr84rWF
	lgnqEupoTUjG8bfXxlq+Ep0PzKApQQquok0WbYxyH0bTV8kHHlfi1EgyZOs+p9a55aFF9z
	jsUEru39mof9hLB5OzoacE6hitbDopYBuDHn5DuZOFfHTD4DfgaYE2UUYXKZxWEob9gx67
	G10M9T9Ttk/A3clE0MPbYvffn+iwpdVgbXwPjcLg4UmZW3kb/jS9u0nlk6jxzQ==
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
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [RFC PATCH v2 8/9] dt-bindings: vendor-prefixes: Add fascontek
Date: Mon, 18 Sep 2023 22:58:52 +1000
Message-ID: <20230918125853.2249187-9-contact@jookia.org>
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

Fascontek manufactures LCD panels such as the FS035VG158.

Signed-off-by: John Watts <contact@jookia.org>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 573578db9509..69befb76b6ce 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -468,6 +468,8 @@ patternProperties:
     description: Fairphone B.V.
   "^faraday,.*":
     description: Faraday Technology Corporation
+  "^fascontek,.*":
+    description: Fascontek
   "^fastrax,.*":
     description: Fastrax Oy
   "^fcs,.*":
-- 
2.42.0


