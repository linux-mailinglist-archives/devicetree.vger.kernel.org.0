Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 53669330F04
	for <lists+devicetree@lfdr.de>; Mon,  8 Mar 2021 14:19:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229848AbhCHNTP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Mar 2021 08:19:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41658 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229729AbhCHNTA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Mar 2021 08:19:00 -0500
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CCF40C06174A
        for <devicetree@vger.kernel.org>; Mon,  8 Mar 2021 05:18:59 -0800 (PST)
Received: by mail-lj1-x232.google.com with SMTP id e2so16014025ljo.7
        for <devicetree@vger.kernel.org>; Mon, 08 Mar 2021 05:18:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=o2gecnujG3aRfX027+2eR9MVO7oDDGNp/dYCPVkl014=;
        b=R6LcK3UYeIcn7Dq2yaYFUIZM7QNrhfMfJDCIxq1gfM/uSRD1Uu4dJjbN6jJ+HzefMB
         KGfDyEPkmnNOJMZsTYP4IAmPnBSUwo4YF5bSXr9/mJzsPeAqsU6F2xnXUWqWAjzlcKbN
         p9JT2eVmGFPaUwttgJAsPzms0NklUs6qjFygJ08IfY6FcQnARVnhICA7lJ090t8l3wnT
         OO5a4RctWOr+EcCB8YVX1PkkKxqCcKuK180is/dZwGB8srjU/ZzMDAq969bKSbNE/nzL
         A/0c1OnbefQw1JWitKRsIDwMlsTOTK2ID3+ilkBNLkvqJnSI9NHO25rKt0RRZIh1y47e
         HKqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=o2gecnujG3aRfX027+2eR9MVO7oDDGNp/dYCPVkl014=;
        b=cGSiPHrY8H/hRdVOpu3k8E4k0Q4u272Kxb53G9k47OyKbcsPfDQhB5rxLZDAP4Q8qW
         cWWNb87UtHrh5WphV59JsB3vaeKJ38kdTP9y2jk8StnQ8UpsfUnMNgy1C5VMObW8SXnr
         5fVaKzNhr5xjND2EUulQXW7kvJfKFfd5KXndHypVf5vwl4f1jC37QW7GDwh3/UjsA9+I
         y2rOI8445P0ELXbZ4/XnFziTUurkXHUymgOhoaRehBcKmYiylMT6hhgui+7SlQdT0+Eh
         chvbKw3h9PlG+WK+6xZBBMd4QrXfQWCNuJ0AVhK+v3WRsbs0tc1Un/4M9eMMqCVWUpUy
         2k5A==
X-Gm-Message-State: AOAM533Eurharu0g4tFW37/iYLG1dXsnFH7JdNpgmm5Nk1EttLPfbn9S
        w76eIT6i7EBZDYBhQAwDt9w=
X-Google-Smtp-Source: ABdhPJxm/TfXrcUQkTxS4AZ4e3idnrUZwB7OontPpLpQWCCq5G5LhzTPPLMG1SErmxCKtTletB1oWg==
X-Received: by 2002:a05:651c:481:: with SMTP id s1mr64085ljc.152.1615209538414;
        Mon, 08 Mar 2021 05:18:58 -0800 (PST)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id z81sm1354735lfc.149.2021.03.08.05.18.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Mar 2021 05:18:57 -0800 (PST)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH V2 1/2] dt-bindings: arm: bcm: document TP-Link Archer C2300 binding
Date:   Mon,  8 Mar 2021 14:18:49 +0100
Message-Id: <20210308131850.22576-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210305125907.21943-1-zajec5@gmail.com>
References: <20210305125907.21943-1-zajec5@gmail.com>
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

