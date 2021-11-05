Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 56CAC446200
	for <lists+devicetree@lfdr.de>; Fri,  5 Nov 2021 11:14:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232941AbhKEKRD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Nov 2021 06:17:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54378 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230110AbhKEKRC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Nov 2021 06:17:02 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1C696C061714
        for <devicetree@vger.kernel.org>; Fri,  5 Nov 2021 03:14:23 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id d21so17663330lfg.7
        for <devicetree@vger.kernel.org>; Fri, 05 Nov 2021 03:14:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=iiWYd3VLS+kjNn3xH4WnIjlIafqOMfoqEfTBgPJp6PI=;
        b=L42bkAG+SBMWGqRZ996QRbhH96rAuK4FlYAc01TDE8XA6gO1XES1KOkMcOpQ4Z6/hO
         7X7JJp3Ugw6XKez8TurObBlLMXZmvIBrpGI2oPKdrW+X4Wj64EPO4M/6PLqXDYSMu+sq
         kcP1FvPwIDYgF0oNkXs4zIg1cd27ypGdP6fF71BERgYKRJMmo1XJ9N3aSAIFkHNoijQ7
         LLE8aWRBaJq59O7ANac9tY0eGNGVJkxeVj/pWoiycC29ErCfqn6MvElVW/VQirW718F0
         udMw6V9Jme+fQ6UBFP8jktVr6Ys+jGYbo6GdX0lb7wERlEtffEpcZFKcU/kL1NBoWFTh
         yGZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=iiWYd3VLS+kjNn3xH4WnIjlIafqOMfoqEfTBgPJp6PI=;
        b=HKaI7qtDDl7lwclAU/XOsr+qnT/hxO6RHWQpGcp/OkW47wxLuP/0lyNgwMicBOtRC3
         qII2i588qqHQIUAVLZV80nne8cXb87YqSRw8XYC5K41rJqMa7jWQWlc+Koo6DzNaW+Yg
         LIma9nWkHIoqZfcJL5CpYePEgW61cxBD2mJmXRQNACc2g/1NDSeS6Re/cfizrokUMMDF
         ftYTYPefoHPTdH8E2X00aRY2xouJ4pqtHz3Akwnm7fskAUelcJQrfDck2BpwXHhCML6d
         cE9w/eZLJBcnxjLu1D4TRpBmeGCbSLs+lD4qxdDYWS+DCbe54BgHNc7OS0vT47soHDC9
         RUTA==
X-Gm-Message-State: AOAM530NkXmvE48eM9XktF+iTnzwtDq6LG49bxyVNB8fBP7f/FehrUYa
        7I4f8YywwDU1J2ivoAq/saM=
X-Google-Smtp-Source: ABdhPJyUKlYVY+asBZsud4PEwreUuKRsmquzdF0fk0RMuad96z2gYkXrjUDvt+cBSKy2bzjkiaWcXQ==
X-Received: by 2002:ac2:4351:: with SMTP id o17mr51980629lfl.431.1636107261375;
        Fri, 05 Nov 2021 03:14:21 -0700 (PDT)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id b22sm781545lfi.67.2021.11.05.03.14.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Nov 2021 03:14:20 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 1/2] dt-bindings: arm: bcm: document Netgear RAXE500 binding
Date:   Fri,  5 Nov 2021 11:14:12 +0100
Message-Id: <20211105101413.14926-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

One more BCM4908 based device.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 Documentation/devicetree/bindings/arm/bcm/brcm,bcm4908.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4908.yaml b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4908.yaml
index 2cd4e4a32278..9b745531ff04 100644
--- a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4908.yaml
+++ b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4908.yaml
@@ -29,6 +29,7 @@ properties:
         items:
           - enum:
               - asus,gt-ac5300
+              - netgear,raxe500
           - const: brcm,bcm4908
 
       - description: BCM49408 based boards
-- 
2.31.1

