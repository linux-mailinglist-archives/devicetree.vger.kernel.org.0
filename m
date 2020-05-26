Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6172C1E0483
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2020 03:55:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388054AbgEYByI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 24 May 2020 21:54:08 -0400
Received: from gateway36.websitewelcome.com ([50.116.125.2]:44937 "EHLO
        gateway36.websitewelcome.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S2388512AbgEYByI (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sun, 24 May 2020 21:54:08 -0400
Received: from cm17.websitewelcome.com (cm17.websitewelcome.com [100.42.49.20])
        by gateway36.websitewelcome.com (Postfix) with ESMTP id 5132A400C6F2F
        for <devicetree@vger.kernel.org>; Sun, 24 May 2020 19:50:32 -0500 (CDT)
Received: from br164.hostgator.com.br ([192.185.176.180])
        by cmsmtp with SMTP
        id d1x1jZnvRAGTXd1x1jmmM1; Sun, 24 May 2020 20:30:47 -0500
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=castello.eng.br; s=default; h=Content-Transfer-Encoding:MIME-Version:
        References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
        Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
        List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=E45E1Vj+A/NTDChq03v5v3U7lpRMI2oRWZNhEsEFnGQ=; b=a6KU2szuPIjfoOQt8Wu2X8q5VP
        LuAZEH+8p+NDoRRABl0NlePlU3NLsWKsM1Uh8wj2alIjrzDoRNibqMB3T4ko21Rvd7j+FxFLdCmb/
        DTtSMucvKYUvieP94F5iBe8bfOUHTcFgXksWgdAcBWcupioVeezVIzIm9sAAeWHCESv6gyqmjew1G
        jrVsG1XXEFecb3EAp43A20UWoul2WcUGT4xP3w7QgJ00HJGLnN7H9FCTbBi7E6qIpjAjFZjHNoG/u
        CxTKG5XQ4/0LBoPPssSBu3ZVvcCftDmlmZSYNUOdzYfEa+4MVLK34IvsNyHYo0YC8p1Uw1CjpDemk
        LGDYjOQA==;
Received: from [191.31.196.240] (port=34284 helo=castello.castello)
        by br164.hostgator.com.br with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
        (Exim 4.92)
        (envelope-from <matheus@castello.eng.br>)
        id 1jd1x0-004Dik-F5; Sun, 24 May 2020 22:30:46 -0300
From:   Matheus Castello <matheus@castello.eng.br>
To:     afaerber@suse.de, manivannan.sadhasivam@linaro.org,
        mark.rutland@arm.com, robh+dt@kernel.org
Cc:     edgar.righi@lsitec.org.br, igor.lima@lsitec.org.br,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-actions@lists.infradead.org,
        Matheus Castello <matheus@castello.eng.br>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v5 2/3] dt-bindings: arm: actions: Document Caninos Loucos Labrador
Date:   Sun, 24 May 2020 22:30:07 -0300
Message-Id: <20200525013008.108750-3-matheus@castello.eng.br>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200525013008.108750-1-matheus@castello.eng.br>
References: <20200525013008.108750-1-matheus@castello.eng.br>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - br164.hostgator.com.br
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - castello.eng.br
X-BWhitelist: no
X-Source-IP: 191.31.196.240
X-Source-L: No
X-Exim-ID: 1jd1x0-004Dik-F5
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (castello.castello) [191.31.196.240]:34284
X-Source-Auth: matheus@castello.eng.br
X-Email-Count: 27
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
 Documentation/devicetree/bindings/arm/actions.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/actions.yaml b/Documentation/devicetree/bindings/arm/actions.yaml
index ace3fdaa8396..2187e1c5bc73 100644
--- a/Documentation/devicetree/bindings/arm/actions.yaml
+++ b/Documentation/devicetree/bindings/arm/actions.yaml
@@ -19,6 +19,11 @@ properties:
               - allo,sparky # Allo.com Sparky
               - cubietech,cubieboard6 # Cubietech CubieBoard6
           - const: actions,s500
+      - items:
+          - enum:
+              - caninos,labrador-v2 # Labrador Core v2
+              - caninos,labrador-base-m # Labrador Base Board M v1
+          - const: actions,s500
       - items:
           - enum:
               - lemaker,guitar-bb-rev-b # LeMaker Guitar Base Board rev. B
--
2.26.2

