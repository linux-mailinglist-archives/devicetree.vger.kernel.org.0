Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7068E1B91E8
	for <lists+devicetree@lfdr.de>; Sun, 26 Apr 2020 18:59:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726165AbgDZQ7k (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 26 Apr 2020 12:59:40 -0400
Received: from gateway21.websitewelcome.com ([192.185.46.113]:24458 "EHLO
        gateway21.websitewelcome.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726151AbgDZQ7i (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sun, 26 Apr 2020 12:59:38 -0400
Received: from cm17.websitewelcome.com (cm17.websitewelcome.com [100.42.49.20])
        by gateway21.websitewelcome.com (Postfix) with ESMTP id 80C80400C45F6
        for <devicetree@vger.kernel.org>; Sun, 26 Apr 2020 11:59:36 -0500 (CDT)
Received: from br164.hostgator.com.br ([192.185.176.180])
        by cmsmtp with SMTP
        id SkcyjKEL1AGTXSkcyjdHN4; Sun, 26 Apr 2020 11:59:36 -0500
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=castello.eng.br; s=default; h=Content-Transfer-Encoding:MIME-Version:
        References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
        Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
        List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=L9IFJwn+V53zeEbUx2QDuDodLJgNgaJjo+gyedcMwIk=; b=vfRw+43jptaURSLFe+ah82hW/S
        C48fJGnAe5lkMiyqZ5UogmGn/nkoDwZpi1hPF65+Cv3/dO47WGyLvqwU1xdt4mpgLXGZbnZecPKPY
        NCajx1rhsNSywhB+qz/EIj7eIyFPl84gb4nXMk2+KCraTNzpGD8fo8yda/03uKY4emC8CGCmw2kea
        jhCx2FTSpKMq1cJqC0Df0xbGTkaNpLVxBxdgYypk+N7Jjnpw74Wtl0QG+VFBavHTdOibXmkO8ewbV
        1poJiSahbyu7M17IdjBqc21f8UH15QJlsBZod5SpkR6PZcMPf9DXdX6GEwECKp3F6RmhYCW2nBGEK
        8GaWp5tw==;
Received: from [191.31.197.205] (port=35482 helo=castello.castello)
        by br164.hostgator.com.br with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
        (Exim 4.92)
        (envelope-from <matheus@castello.eng.br>)
        id 1jSkcx-001TTf-St; Sun, 26 Apr 2020 13:59:36 -0300
From:   Matheus Castello <matheus@castello.eng.br>
To:     afaerber@suse.de, manivannan.sadhasivam@linaro.org,
        mark.rutland@arm.com, robh+dt@kernel.org
Cc:     edgar.righi@lsitec.org.br, igor.lima@lsitec.org.br,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-actions@lists.infradead.org,
        Matheus Castello <matheus@castello.eng.br>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v4 2/3] dt-bindings: arm: actions: Document Caninos Loucos Labrador
Date:   Sun, 26 Apr 2020 13:58:34 -0300
Message-Id: <20200426165835.105970-3-matheus@castello.eng.br>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200426165835.105970-1-matheus@castello.eng.br>
References: <f9e48fba-0da8-7ba9-d44a-7909067a1df1@castello.eng.br>
 <20200426165835.105970-1-matheus@castello.eng.br>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - br164.hostgator.com.br
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - castello.eng.br
X-BWhitelist: no
X-Source-IP: 191.31.197.205
X-Source-L: No
X-Exim-ID: 1jSkcx-001TTf-St
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (castello.castello) [191.31.197.205]:35482
X-Source-Auth: matheus@castello.eng.br
X-Email-Count: 41
X-Source-Cap: Y2FzdGUyNDg7Y2FzdGUyNDg7YnIxNjQuaG9zdGdhdG9yLmNvbS5icg==
X-Local-Domain: yes
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Update the documentation to add the Caninos Loucos Labrador. Labrador
project consists of a computer on module based on the Actions Semi S500
processor and the Labrador base board.

Signed-off-by: Matheus Castello <matheus@castello.eng.br>
Acked-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/arm/actions.yaml | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/actions.yaml b/Documentation/devicetree/bindings/arm/actions.yaml
index ace3fdaa8396..50dd976128dc 100644
--- a/Documentation/devicetree/bindings/arm/actions.yaml
+++ b/Documentation/devicetree/bindings/arm/actions.yaml
@@ -21,9 +21,14 @@ properties:
           - const: actions,s500
       - items:
           - enum:
-              - lemaker,guitar-bb-rev-b # LeMaker Guitar Base Board rev. B
-          - const: lemaker,guitar
-          - const: actions,s500
+	      - caninos,labrador-v2 # Labrador Core v2
+	      - caninos,labrador-base-m # Labrador Base Board M v1
+	  - const: actions,s500
+      - items:
+          - enum:
+	      - lemaker,guitar-bb-rev-b # LeMaker Guitar Base Board rev. B
+	  - const: lemaker,guitar
+	  - const: actions,s500

       # The Actions Semi S700 is a quad-core ARM Cortex-A53 SoC.
       - items:
--
2.25.0

