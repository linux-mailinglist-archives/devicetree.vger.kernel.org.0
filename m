Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D785F333690
	for <lists+devicetree@lfdr.de>; Wed, 10 Mar 2021 08:46:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229643AbhCJHqT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Mar 2021 02:46:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56788 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229900AbhCJHqP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Mar 2021 02:46:15 -0500
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C37AC06174A
        for <devicetree@vger.kernel.org>; Tue,  9 Mar 2021 23:46:15 -0800 (PST)
Received: by mail-lf1-x12a.google.com with SMTP id x4so25169366lfu.7
        for <devicetree@vger.kernel.org>; Tue, 09 Mar 2021 23:46:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=SzXivdTOCvIZS4rAkfG4jXFG92ohPQe7A3aF14ZFuDo=;
        b=UfgHXhWd2jOmyTPwbE75lahl3D0cNQoA0JA4bd82WUrFTPjbDbzRv32RXEup9v8jPQ
         nFI0F20OIosZRHEF6ShmkbrIwNZGfY+Bk9nQpsJjLAmjBn1pf5pzaFmvdCPZ4/3xvUWR
         T4B4kwOfM27EVPm+T8NOWn1jurPw7DqXO8rqXw668fDmuZ6Drj2lElHpOC/fgjWgNe8d
         If5DlrmYTtvCC5yUfuCscjCDj3NM9hmtrfpz3uvyU/p0Wg64KZCb/EmmikX3uT3RO0vH
         rIL9IcOg/F9JYkyzm2Y8m3E52VZVSoB9+7t0W307RROQb+gBeVF+IG1RPHUAiGNLu7gW
         alXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=SzXivdTOCvIZS4rAkfG4jXFG92ohPQe7A3aF14ZFuDo=;
        b=Y3iCHryvjx+16/Vvom8DoW0NyQT+uM6GBHsSsx9sR8AGWg88WpOCL94DbjqaRynOB+
         i97EfZJKApMHbj8LdGl5aYIBxSBqhBSRGhgQYddTTbweM06s+vpxgN9jnKXQuFzzd2K0
         Cspkv6JZL3o36JAygl8PKo/zosbyBRXIZYV4cugr/xN1LsOhX9NpIohWB/2j+0CVPU+y
         e+C+DYw7lPr8MO+cLynSDjwnqW6Koe1bFeb+OZao08p7hZhu2xf7IuipvMjFkju6gcdf
         8VURCv6Xm5/PyWL55Wp8IxrtveIPZ1/2DJ4ug2czaG20ZnF2eqLgD5JY6FV+WvZf5lGH
         LtcA==
X-Gm-Message-State: AOAM533kl4hBOwPm79mPDFPSfMAQdwjc9l3IE18TipZLLnJPJCbdrL0M
        UImEjbyJXZMijpwgtYMZ0+M=
X-Google-Smtp-Source: ABdhPJwtIy6SseFDPRQoTTUgwmEaXmyD2L7DL3XXSfhlcyao5rFb/pzs7DGJpthsdGB3QLGfytHEVA==
X-Received: by 2002:ac2:47ef:: with SMTP id b15mr1205794lfp.615.1615362373493;
        Tue, 09 Mar 2021 23:46:13 -0800 (PST)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id t16sm2858133ljj.137.2021.03.09.23.46.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Mar 2021 23:46:12 -0800 (PST)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH V3 1/2] dt-bindings: arm: bcm: document TP-Link Archer C2300 binding
Date:   Wed, 10 Mar 2021 08:46:02 +0100
Message-Id: <20210310074603.17715-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210308131850.22576-1-zajec5@gmail.com>
References: <20210308131850.22576-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

One more BCM4906 based device.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
Reviewed-by: Rob Herring <robh@kernel.org>
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

