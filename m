Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D1A6A4938AF
	for <lists+devicetree@lfdr.de>; Wed, 19 Jan 2022 11:37:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343802AbiASKh6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Jan 2022 05:37:58 -0500
Received: from mx1.tq-group.com ([93.104.207.81]:45853 "EHLO mx1.tq-group.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S240089AbiASKh5 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 19 Jan 2022 05:37:57 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1642588677; x=1674124677;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=nboWHX4BgLcHJEeXNjpBTRq9PFWyiiGqPdaxjDNw1Ho=;
  b=nzdN6ulhfAcaOJg850Si69ObQGIXvZW2QclKeLdiz3s9nOqBEjK+dDIF
   +au+3HXTWOwlBCUb0dj0LQmvdI1nof8JBetMlY21Q3XFcBqHG+HHhmcS+
   WWclxo2UQsAT470WzKfVfem6XsyrXDhPwJnkWRKue7hu1RtaQzt9E9urz
   NFMFLaS/fTyX4UVtrN+ynDqW1hx0RslfAJ3w8AdzGURHjAS9/8Q5WxsBd
   PXqp/pzL4QbFoeRXWdSNbbPcHJcRFDMyXiHFtSuV0+TtWthYsDofxYsja
   evMsEpc0WsfjtabH8ioG3AKL7Vb7Y/6zDFzpY9QCkcvVVoIqdFsdPguOR
   g==;
X-IronPort-AV: E=Sophos;i="5.88,299,1635199200"; 
   d="scan'208";a="21585435"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 19 Jan 2022 11:37:56 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Wed, 19 Jan 2022 11:37:56 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Wed, 19 Jan 2022 11:37:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1642588676; x=1674124676;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=nboWHX4BgLcHJEeXNjpBTRq9PFWyiiGqPdaxjDNw1Ho=;
  b=DpdI20as0IMVnEL6fQWl/fgTKHm2/H654OPftKjeyjBPfkacWs8yFDHq
   abgS5VPah1oSJS7epW2bLwCQ3Lf2qCNkLxcSfnN5ecdVz5p41ehQdhr/V
   vVrwEmo0Dx2zCvWM9GgeJg/IhpC6Z4XIsUpV3ghX0/kQCoVhYfKw5VRtJ
   J4QrhOCcKM9W0BNiRL9thsDupH7mLPOkv1vtv+g076UfPPSRPn13S+gQ1
   0uXHKuCp3JqAPdwnU3IGFHhLqXUd0Z3I0FH0J5fWlL9dUGbBFJP+0EqeU
   rPesUkjmLhSUm7hml1JcmxiNsCJ/ThcsCsSarXkQ9wXN/STn33c/HL4ql
   A==;
X-IronPort-AV: E=Sophos;i="5.88,299,1635199200"; 
   d="scan'208";a="21585434"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 19 Jan 2022 11:37:56 +0100
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 47A27280065;
        Wed, 19 Jan 2022 11:37:56 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Robin Gong <yibin.gong@nxp.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        devicetree@vger.kernel.org
Subject: [PATCH 1/1] dt-bindings: regulators: Add missing regulator names
Date:   Wed, 19 Jan 2022 11:37:47 +0100
Message-Id: <20220119103747.58305-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The valid regulator names for the subnodes does not match the ones
mentioned in the description.
PFUZE3000 & PFUZE3001 uses 'v33', 'vccsd' and 'vldo[1-4]' as well, so
add them to the allowed node names.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
This fixes warnings like:
arch/arm/boot/dts/imx6ul-ccimx6ulsbcpro.dt.yaml: pmic@8: regulators: 'v33',
'vccsd', 'vcoin', 'vldo1', 'vldo2', 'vldo3', 'vldo4' do not match any of the
regexes: '^(vsnvs|vref|vrefddr|swbst|coin)$',
'^sw([1-4]|[1-4][a-c]|[1-4][a-c][a-c])$', '^vgen[1-6]$', 'pinctrl-[0-9]+'

 Documentation/devicetree/bindings/regulator/pfuze100.yaml | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/regulator/pfuze100.yaml b/Documentation/devicetree/bindings/regulator/pfuze100.yaml
index f578e72778a7..a26bbd68b729 100644
--- a/Documentation/devicetree/bindings/regulator/pfuze100.yaml
+++ b/Documentation/devicetree/bindings/regulator/pfuze100.yaml
@@ -70,7 +70,11 @@ properties:
         $ref: "regulator.yaml#"
         type: object
 
-      "^(vsnvs|vref|vrefddr|swbst|coin)$":
+      "^vldo[1-4]$":
+        $ref: "regulator.yaml#"
+        type: object
+
+      "^(vsnvs|vref|vrefddr|swbst|coin|v33|vccsd)$":
         $ref: "regulator.yaml#"
         type: object
 
-- 
2.25.1

