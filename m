Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A422532EBC0
	for <lists+devicetree@lfdr.de>; Fri,  5 Mar 2021 13:59:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229690AbhCEM7V (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Mar 2021 07:59:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43188 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230039AbhCEM7Q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Mar 2021 07:59:16 -0500
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7DE3EC061574
        for <devicetree@vger.kernel.org>; Fri,  5 Mar 2021 04:59:15 -0800 (PST)
Received: by mail-lf1-x134.google.com with SMTP id n16so3465965lfb.4
        for <devicetree@vger.kernel.org>; Fri, 05 Mar 2021 04:59:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=HkWBKDaRVhrdmZiH0J1SfPgamJVu7fZc0LeYHE+u9S4=;
        b=pAd9m4p6Eg8xInjhY1qO0Sabq8silRnD3+3iCAF1stH25y1juuQSesvPlCA4hm1m6i
         uxP8i0/0zQdH20MKUy67mgy+BeBSHO+2qHBEZLqaM5aMmMCHRpeONuAm3tlCrPgsEx3Q
         PpMN1nuzBEWtScs6YCdEOzV4oXL98eSXW1We3xEPLWpK27N265W11EhUfARUpLfJzoRE
         1WBxuZiVfYKmHMr/eIb4dF5i/x8qxTN/rZb8VbX6tOwzc+JjZh4eRRcBfYSkthkQcp2J
         g++oLUN3QoQ5tUtCaEsM5brnt/FJf64efJO6vPDEjZ3+Xl1aNLSDfodc88PSFB5b/2/d
         DpnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=HkWBKDaRVhrdmZiH0J1SfPgamJVu7fZc0LeYHE+u9S4=;
        b=Bh4g+Df6u1GJX7kEKyW3/aIf+K5cn+dOSS885+P/DOn/oAxIz1MbcC3YHiTMMvIyPb
         N0hCI91pVSyN1LyHSFOWs9SZH0hDfVF6059Of/tTvrQ6j4MIejB/T0d/onin6R7oh5EK
         93uNUGM8xWk3CcfVar2RJqB4zbw8ruv4YColcAIyx4scjpwPqCyZsD+FbUxG1iWJ4TgS
         9FhgYoVR4cpokQF2guLLx8ETQ7J3N4Cuxj8kLH4McuZhfZO/+NY0x4qeVz65SBP8y555
         ngrNULhzIRHBoQbGWrRpyAt54WouQa/XN4yXiMnWBf2XuomEGIrGvMQTBZLPIBlcMgks
         yZFw==
X-Gm-Message-State: AOAM532yJBT95WitFTYm9/s3CvfOtvUGN2g2F2sFLU+m6D7ZGIhY6Fy1
        Im/wJSPeXL3TjxH0iLUjKt4=
X-Google-Smtp-Source: ABdhPJwf3JpN1G0cXxJ+IB8fDk6dSWqaP38QeGKV0megKYlZBBjNbobiYapPomNhwOIagWMgu7kr3g==
X-Received: by 2002:a19:e48:: with SMTP id 69mr5126693lfo.469.1614949154068;
        Fri, 05 Mar 2021 04:59:14 -0800 (PST)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id 30sm308138lfr.200.2021.03.05.04.59.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Mar 2021 04:59:13 -0800 (PST)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH RESEND 1/2] dt-bindings: arm: bcm: document TP-Link Archer C2300 binding
Date:   Fri,  5 Mar 2021 13:59:06 +0100
Message-Id: <20210305125907.21943-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210305125302.21593-1-zajec5@gmail.com>
References: <20210305125302.21593-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

One more BCM4906 based device.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
RESEND: Got "550 Unknown recipient" for linux-arm-kernel@lists.infradead.org
<dwmw2_go`> yeah, the mailman setup on the new host got commented out for a few seconds.
---
 Documentation/devicetree/bindings/arm/bcm/brcm,bcm4908.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4908.yaml b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4908.yaml
index e55731f43c84..2cd4e4a32278 100644
--- a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4908.yaml
+++ b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4908.yaml
@@ -21,6 +21,7 @@ properties:
         items:
           - enum:
               - netgear,r8000p
+              - tplink,archer-c2300-v1
           - const: brcm,bcm4906
           - const: brcm,bcm4908
 
-- 
2.26.2

