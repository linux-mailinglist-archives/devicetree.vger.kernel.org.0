Return-Path: <devicetree+bounces-653-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D8AF7A27E6
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 22:16:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BE6102823ED
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 20:16:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B8851B272;
	Fri, 15 Sep 2023 20:16:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75F991B26D
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 20:16:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4BC22C433C7;
	Fri, 15 Sep 2023 20:16:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694808992;
	bh=nGXQTgrcs3KREIWY3zBQSQp1+XIT8pojI0mg2noKVnQ=;
	h=From:To:Cc:Subject:Date:From;
	b=lU1+XHUXZMAUFUqsXQSsCWZn+Uos3RB5wXCnDq9MbGB1AQW8Yjz153kXHq9JDHDux
	 oyJ36pykFKv4/NmdromUyG1gfDJgVMkp21Rr+qTjY7C68fpabAt54ULJVlDpq7X8Ti
	 U8mXKhd6tfQyIcE1ZDlr1KmYQkrANrN4qcIYLCvXD9oWadQdIu7srChOLtjs17efBx
	 Fz2T4AroD88ycXuZ2ZELyInvT9zp5SV6oefZWwiATWrDnzCH2AT5OT/y+KvNlU9aJ4
	 btd2tkIB1hl6o+YLESH/MQ0zCndF1ulhWXnYwWjGjbSnRM2gPuZDmGw44wlqIqBzWO
	 5V/83jeoyrXdg==
Received: (nullmailer pid 4180862 invoked by uid 1000);
	Fri, 15 Sep 2023 20:16:30 -0000
From: Rob Herring <robh@kernel.org>
To: Damien Le Moal <dlemoal@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Linus Walleij <linus.walleij@linaro.org>
Cc: linux-ide@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: ata: pata-common: Add missing additionalProperties on child nodes
Date: Fri, 15 Sep 2023 15:16:20 -0500
Message-Id: <20230915201626.4180606-1-robh@kernel.org>
X-Mailer: git-send-email 2.40.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The PATA child node schema is missing constraints to prevent unknown
properties. As none of the users of this common binding extend the child
nodes with additional properties, adding "additionalProperties: false"
here is sufficient.

Signed-off-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/ata/pata-common.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/ata/pata-common.yaml b/Documentation/devicetree/bindings/ata/pata-common.yaml
index 337ddf1113c4..4e867dd4d402 100644
--- a/Documentation/devicetree/bindings/ata/pata-common.yaml
+++ b/Documentation/devicetree/bindings/ata/pata-common.yaml
@@ -38,6 +38,7 @@ patternProperties:
       ID number 0 and the slave drive will have ID number 1. The PATA port
       nodes will be named "ide-port".
     type: object
+    additionalProperties: false
 
     properties:
       reg:
-- 
2.40.1


