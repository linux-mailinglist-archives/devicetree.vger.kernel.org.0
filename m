Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1459532EBA5
	for <lists+devicetree@lfdr.de>; Fri,  5 Mar 2021 13:54:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229978AbhCEMx3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Mar 2021 07:53:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41892 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230051AbhCEMxL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Mar 2021 07:53:11 -0500
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D47CCC061574
        for <devicetree@vger.kernel.org>; Fri,  5 Mar 2021 04:53:10 -0800 (PST)
Received: by mail-lj1-x22a.google.com with SMTP id k12so2571286ljg.9
        for <devicetree@vger.kernel.org>; Fri, 05 Mar 2021 04:53:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=o2gecnujG3aRfX027+2eR9MVO7oDDGNp/dYCPVkl014=;
        b=tvqRWV6/ZyaS22KJgtNNf/en9gigh2da2sqDRgvTs/ifDF7ys4PugFvJYsgmjM5qHh
         B8H9DsalfBc/lmMhhwTzYiBbXShRonHQw8hUe8p9kzsuYUmoIxPkX8BN0o+YHwt9hb5I
         aYj3Q3dxpGinaxlFQTw6ebDPYwd5uHPP3T4isYlhOqFlfIZkAxniluoj5/lDZWIHruod
         X2E476oEEsKn95cK94GuuTeid7wryh1LPPt8x2syH5TUFj6yS+tRjLZSMyWMKYFx27rk
         rg0mK369SO9kkxusAefJ0Tb24toxPJrF8DQszWetrM0dp3rc9jJTGSdnAQ+iNilqKAtS
         UOhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=o2gecnujG3aRfX027+2eR9MVO7oDDGNp/dYCPVkl014=;
        b=UXkHV+Tb+47wf7Y/xh6X93m0Ryqpu0YrZLtJwrCX6NwsibE7yqw9P7rnPblH07qVry
         SaYWibmj04t0LX7/bzFo9GoPYqY3k5brQctrNnWN/QOc3J/UUqP/G0BFTkqWclXpgK4W
         Lof+MWW1yo/OQIzAzU0S+ujAtqMOybvFV9VPpT2bojDv+Z5L50/7qQ63DeTZTopv+AgF
         cZ3P4oNcwr64abdhng5Dyzt0Ktwjfj6lpFrcM7fs538AZHLZDH6oVtbgmN1L9WnvsxyB
         q1w0R99btithTCCZ15zTlKe9yQRrLORs5MZeKIeTsHdufA3O7wyQckRfxwe0bEhMoirI
         NvhA==
X-Gm-Message-State: AOAM531LYe7zqeHuq3iGmuN2e5QxCscxXFL2CBt7WF32IHqJYT/GHHpj
        LHX8u652lVJaGTbhT9Mnu2c=
X-Google-Smtp-Source: ABdhPJwj0JqZgoHuIX1kyzLvq8AnjdG7hb5ZgJHk5Z7LxGdLi9mmmILSYplVk4Qf1sChiY1TAQnWJA==
X-Received: by 2002:a2e:b4c3:: with SMTP id r3mr5057459ljm.232.1614948789434;
        Fri, 05 Mar 2021 04:53:09 -0800 (PST)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id u3sm301359lfu.24.2021.03.05.04.53.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Mar 2021 04:53:08 -0800 (PST)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 1/2] dt-bindings: arm: bcm: document TP-Link Archer C2300 binding
Date:   Fri,  5 Mar 2021 13:53:01 +0100
Message-Id: <20210305125302.21593-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
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

