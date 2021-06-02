Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 07C4F3992E9
	for <lists+devicetree@lfdr.de>; Wed,  2 Jun 2021 20:53:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229647AbhFBSzM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Jun 2021 14:55:12 -0400
Received: from egress-ip33b.ess.de.barracuda.com ([18.185.115.237]:52290 "EHLO
        egress-ip33b.ess.de.barracuda.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229468AbhFBSzM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Jun 2021 14:55:12 -0400
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198]) by mx-outbound17-233.eu-central-1b.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Wed, 02 Jun 2021 18:53:17 +0000
Received: by mail-pg1-f198.google.com with SMTP id 15-20020a630c4f0000b029021a6da9af28so2293993pgm.22
        for <devicetree@vger.kernel.org>; Wed, 02 Jun 2021 11:53:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=XrYpCA6rdGNmlS+jksQ4JMm2mxEbyWtSNeQ89xdlwMw=;
        b=UAFgXmA/eCDpO0cWkBTnktudoNR3kbyeiRfhONchnfoJEflvbDiLdIR4c/TNgrnaMC
         DEKvYLfhshULHnD1WGjAqVO4lj+1zdjBqQuLx780u6aset8h+sn/u+yz7fPfBA7wTfdj
         o/b8lIHEryvLqszE6K/P8RWEsDlY3wIZTeYUs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=XrYpCA6rdGNmlS+jksQ4JMm2mxEbyWtSNeQ89xdlwMw=;
        b=ZCoot+OFmiAziMcuGXJ2mHV4ernrx9POe+4FL0twhFSXVWdGBXxoG4ayTBKgRjRDop
         MZjLTF5rvMdb24tUWHBAwFhqr9LIqWaIelzuSsVJxHP/q6RqwWoLXiA0+NS6mzVnBsPR
         Ppn7WQabxP4qzaQcBic8azkANCP5wZSF/wYw+AdV4XSVYRmZXElwHAGAomAxo98byEi+
         CUAWtlKnI9gL01hlk/TK4Hz0w7kn8kz5z9IkXXTGCWazEwiJ9w52a4EW0udHvaldEjJ9
         SXXkqpizaT/wGnKds5RdKJeCD20Thq4ugHtwGAfIIjCXy69+JSNwcGgf2vChsLy4VwhO
         Rwqw==
X-Gm-Message-State: AOAM531aSOviaORonyDSTS13RAqR65IpcKc78O6RLosHaSYMYEdxnihZ
        QN5qb1gPox345oUUCog54sTwMGdoyC429SFCb6qsqLCniK5YjrnFulEC3jBvIcyxbOi35Fx8f+y
        3AMjxDdloiwSscaVobOc6vdxpzbZ5acOP3hj67s4X/GuR8wPVx3iNeS8owQ==
X-Received: by 2002:a17:902:a586:b029:fe:459b:2ce0 with SMTP id az6-20020a170902a586b02900fe459b2ce0mr32204210plb.40.1622658173844;
        Wed, 02 Jun 2021 11:22:53 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwsKVEtS/PlY1u+agz105SYw8K4DYqnaBB79e1MuChL3Oxvew52VyPfeqZhVkou8Gfn+DNpcw==
X-Received: by 2002:a17:902:a586:b029:fe:459b:2ce0 with SMTP id az6-20020a170902a586b02900fe459b2ce0mr32204193plb.40.1622658173662;
        Wed, 02 Jun 2021 11:22:53 -0700 (PDT)
Received: from localhost.localdomain ([49.207.197.28])
        by smtp.gmail.com with ESMTPSA id 14sm290904pfj.25.2021.06.02.11.22.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Jun 2021 11:22:53 -0700 (PDT)
From:   Sinthu Raja <sinthu.raja@mistralsolutions.com>
X-Google-Original-From: Sinthu Raja <sinthu.raja@ti.com>
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Device Tree Mailing List <devicetree@vger.kernel.org>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Amarnath MB <amarnath.mb@ti.com>,
        Sinthu Raja <sinthu.raja@ti.com>
Subject: [1/2] dt-bindings: arm: ti: Add bindings for J721E EAIK
Date:   Wed,  2 Jun 2021 23:52:36 +0530
Message-Id: <20210602182237.12632-2-sinthu.raja@ti.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210602182237.12632-1-sinthu.raja@ti.com>
References: <20210602182237.12632-1-sinthu.raja@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-BESS-ID: 1622659996-304585-5411-66919-1
X-BESS-VER: 2019.1_20210527.1616
X-BESS-Apparent-Source-IP: 209.85.215.198
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.232668 [from 
        cloudscan13-100.eu-central-1a.ess.aws.cudaops.com]
        Rule breakdown below
         pts rule name              description
        ---- ---------------------- --------------------------------
        0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn't match header 
        0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS91090 scores of KILL_LEVEL=7.0 tests=BSF_SC0_MISMATCH_TO, BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Sinthu Raja <sinthu.raja@ti.com>

J721E EdgeAI Kit (EAIK) is a low cost, small form factor board designed
for TI’s J721E SoC.
Add DT binding documentation for J721E EAIK

Signed-off-by: Amarnath MB <amarnath.mb@ti.com>
Signed-off-by: Sinthu Raja <sinthu.raja@ti.com>
---
 Documentation/devicetree/bindings/arm/ti/k3.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/ti/k3.yaml b/Documentation/devicetree/bindings/arm/ti/k3.yaml
index c5aa362e4026..923dd7cf1dc6 100644
--- a/Documentation/devicetree/bindings/arm/ti/k3.yaml
+++ b/Documentation/devicetree/bindings/arm/ti/k3.yaml
@@ -29,6 +29,8 @@ properties:
 
       - description: K3 J721E SoC
         items:
+          - enum:
+              - ti,j721e-eaik
           - const: ti,j721e
 
       - description: K3 J7200 SoC
-- 
2.31.1

