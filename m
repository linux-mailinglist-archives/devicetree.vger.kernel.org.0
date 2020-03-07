Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 599FB17C9DF
	for <lists+devicetree@lfdr.de>; Sat,  7 Mar 2020 01:48:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726635AbgCGAsz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 Mar 2020 19:48:55 -0500
Received: from gateway30.websitewelcome.com ([192.185.149.4]:25464 "EHLO
        gateway30.websitewelcome.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726231AbgCGAsz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 Mar 2020 19:48:55 -0500
X-Greylist: delayed 1393 seconds by postgrey-1.27 at vger.kernel.org; Fri, 06 Mar 2020 19:48:55 EST
Received: from cm17.websitewelcome.com (cm17.websitewelcome.com [100.42.49.20])
        by gateway30.websitewelcome.com (Postfix) with ESMTP id 37F8F3224C
        for <devicetree@vger.kernel.org>; Fri,  6 Mar 2020 18:25:42 -0600 (CST)
Received: from br164.hostgator.com.br ([192.185.176.180])
        by cmsmtp with SMTP
        id ANHijcSEjAGTXANHij4lX0; Fri, 06 Mar 2020 18:25:42 -0600
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=castello.eng.br; s=default; h=Content-Transfer-Encoding:MIME-Version:
        References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
        Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
        List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=Vz7QCVTScPIXCPlremyyPp9LM84BR1/7adELzoK6PKY=; b=mSWQ807TvynUdlv1VaaaDOERWC
        9sBBiZ/MqafHffssNPhy6kUkukGykrbaVD0FZhKE8EhF1IUw303Qmbp+q4JTKKBUEV3ubL4zID8jP
        JHDwK55H916MYhc15fXvRTXKOLDHZsXgrPlm5SjXwnVv0c14UOI3aJP8ZODvrFs/AJD4F1f0NuY1C
        dqN0ThYi2y8624zwEsORDTVJrzn5NXE/481Vq9Nz1DgZd5zLU7vg2HIWSLzdWrBntdUULDN20vJeh
        rSzVsvJgryph9kGo8litMXit5wOnqj2PyfDpVfoJDHS6EVdYBPZL1AKIMSGjHKkpFo3X/D2pt/7+Y
        aV+0t9rg==;
Received: from [191.31.207.132] (port=48872 helo=castello.castello)
        by br164.hostgator.com.br with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
        (Exim 4.92)
        (envelope-from <matheus@castello.eng.br>)
        id 1jANHh-001YDM-Lp; Fri, 06 Mar 2020 21:25:42 -0300
From:   Matheus Castello <matheus@castello.eng.br>
To:     afaerber@suse.de, manivannan.sadhasivam@linaro.org,
        mark.rutland@arm.com, robh+dt@kernel.org
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Matheus Castello <matheus@castello.eng.br>
Subject: [PATCH v2 1/3] dt-bindings: Add vendor prefix for Caninos Loucos
Date:   Fri,  6 Mar 2020 21:24:51 -0300
Message-Id: <20200307002453.350430-2-matheus@castello.eng.br>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200307002453.350430-1-matheus@castello.eng.br>
References: <20200229104358.GB19610@mani>
 <20200307002453.350430-1-matheus@castello.eng.br>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - br164.hostgator.com.br
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - castello.eng.br
X-BWhitelist: no
X-Source-IP: 191.31.207.132
X-Source-L: No
X-Exim-ID: 1jANHh-001YDM-Lp
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (castello.castello) [191.31.207.132]:48872
X-Source-Auth: matheus@castello.eng.br
X-Email-Count: 10
X-Source-Cap: Y2FzdGUyNDg7Y2FzdGUyNDg7YnIxNjQuaG9zdGdhdG9yLmNvbS5icg==
X-Local-Domain: yes
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Caninos Loucos Program develops Single Board Computers with an open
structure. The Program wants to form a community of developers to use
the IoT technology and disseminate the learning of embedded systems in
Brazil.

The boards are designed and manufactured by LSI-TEC NPO.

Signed-off-by: Matheus Castello <matheus@castello.eng.br>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 9e67944bec9c..3e974dd563cf 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -167,6 +167,8 @@ patternProperties:
     description: Calxeda
   "^capella,.*":
     description: Capella Microsystems, Inc
+  "^caninos,.*":
+    description: Caninos Loucos LSI-TEC NPO
   "^cascoda,.*":
     description: Cascoda, Ltd.
   "^catalyst,.*":
--
2.25.0

