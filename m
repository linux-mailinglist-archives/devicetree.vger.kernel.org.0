Return-Path: <devicetree+bounces-654-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B528D7A27F5
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 22:20:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8ED961C20E0F
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 20:20:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C0721B274;
	Fri, 15 Sep 2023 20:20:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F5B18E09
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 20:20:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6FBD0C433C7;
	Fri, 15 Sep 2023 20:20:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694809204;
	bh=+pZKuROLmBdIrfo491pE/sQfj9kOoSQEDuZxmmaZMuY=;
	h=From:To:Cc:Subject:Date:From;
	b=pLIVKgF4dnRVJLeCqx8HYhHUY8SvSrIXIlPr7f47FMgsP0kEtUjfk18z2d64X5aA9
	 hsMUFqw/E+wJRjGSBFKA0Z4SsbvhvBlLGFxPRI4rZEXPAKqoIhNyI4cMsI4k3zMDVt
	 +UwrH+gWKrI9VGHWH4ME8qqnwVyj26I750hiwNzIayYdenFvazGKdWFKRx8nNiCNLT
	 OvOCZ7niYRmduAyapBZt/nFg3cbk4FPzF7Og+VkH3ATNbr2HCTruw/TJTvvC+bHgxT
	 8ugq+sbEaBMmqWPuknw6UpgxLNKXs0O6qgXmW8D+8+qoLXA985FF3VeRiIHygwT7Dc
	 lYKBGYj+eyqaQ==
Received: (nullmailer pid 4184984 invoked by uid 1000);
	Fri, 15 Sep 2023 20:20:00 -0000
From: Rob Herring <robh@kernel.org>
To: Conor Dooley <conor@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>
Cc: Palmer Dabbelt <palmer@sifive.com>, linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: riscv: cpus: Add missing additionalProperties on interrupt-controller node
Date: Fri, 15 Sep 2023 15:19:36 -0500
Message-Id: <20230915201946.4184468-1-robh@kernel.org>
X-Mailer: git-send-email 2.40.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The "interrupt-controller" CPU child node is missing constraints on
extra properties. Add "additionalProperties: false" to fix this.

Signed-off-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/riscv/cpus.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
index 38c0b5213736..97e8441eda1c 100644
--- a/Documentation/devicetree/bindings/riscv/cpus.yaml
+++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
@@ -91,6 +91,7 @@ properties:
 
   interrupt-controller:
     type: object
+    additionalProperties: false
     description: Describes the CPU's local interrupt controller
 
     properties:
-- 
2.40.1


