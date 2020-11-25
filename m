Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2965F2C3EAA
	for <lists+devicetree@lfdr.de>; Wed, 25 Nov 2020 12:02:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726903AbgKYLCI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 Nov 2020 06:02:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35832 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726202AbgKYLCH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 25 Nov 2020 06:02:07 -0500
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com [IPv6:2a00:1450:4864:20::144])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B9C42C0613D4
        for <devicetree@vger.kernel.org>; Wed, 25 Nov 2020 03:01:54 -0800 (PST)
Received: by mail-lf1-x144.google.com with SMTP id z21so2493173lfe.12
        for <devicetree@vger.kernel.org>; Wed, 25 Nov 2020 03:01:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Dcnude+Jqq7fAeywgeA1MXbNhuoiElUp/2KRRl3nUXQ=;
        b=rLRgJFiEot9SgUDGL32LWEnE/LStm2ULtdOuIY/jX2x2bjTbC1daJCPD/3L4c0t5hF
         wyTLWvttNWSf4QYrtc7ZbYLIBb0zLhlYdkSY1QZRdOKWdaTjCDmpzKEVFOeeusIkhciB
         5x+EJ8vla2hqjtq4MejI1BcfI8TcP3R8mbVxqvI7TkyZUf+AXjlifbhVkeorkCGqK9F3
         +QWGM2c9lVk/WQBA086O/dmodRVsuY6i2un+t8xcZ3sT4KvhCVx9pncHWgUcCIzWH5qw
         h1uN/5pGXnmg5otcZp9SYJ53ImBx0J/Va2AQZGTBOZ7mtUdQjOXKnVMwryIxp0QwGwkU
         TVmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Dcnude+Jqq7fAeywgeA1MXbNhuoiElUp/2KRRl3nUXQ=;
        b=BhefJ0h/2rqmVmYBpLGRnPPxvRiUAkVnduby7Sj3deqD+mcr7+4gkWNMuRJJwD34DS
         Y9ACaQBnNkY7Q1Kd7pmLm7tfFNIknZ1/ngwAZD9dqqzw/JX2ZsYI+uvdEop1VLW5oZ7P
         37rTFRWa/THb+wSqdDb/4aMJk8CCCJzsmCM4PDbWdBnXLHeZTfyr3iQjKWwFZSLIQTMf
         cR+XYWliOZZDzK7hZpOuaJolFl3sHzajqnH3ohYzqqaVu2afDCqoV1KizLNv2MK0DkdT
         78Y7e2KuKzMPYcp3JZZo0qTR7Deg0BZw4X1aXS8iYqS/RxtFZ+kAMfI/1a1C+bl3kvST
         /0Cw==
X-Gm-Message-State: AOAM532xVAQ3PBbFrZ736jnNBA80VPWi5T120zbNjSj1v45BJAuZKZCh
        bIDK+hh0cAM4ZswfQ4vORa0=
X-Google-Smtp-Source: ABdhPJwfHod5YA/Ya2L/WV+IzJt8w6BCCIjb81dZMcN0jpubzr9yDOkEbKiWnePTO56TsTVN4qALDg==
X-Received: by 2002:a19:3f94:: with SMTP id m142mr1098585lfa.113.1606302113263;
        Wed, 25 Nov 2020 03:01:53 -0800 (PST)
Received: from elitebook.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id w11sm218037lfl.33.2020.11.25.03.01.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Nov 2020 03:01:52 -0800 (PST)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] dt-bindings: arm: bcm: bcm4908: fix yaml validation
Date:   Wed, 25 Nov 2020 12:01:30 +0100
Message-Id: <20201125110130.3877-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

Root node can obviously have various subnodes so "additionalProperties"
should be set to true.

This fixes:
arch/arm64/boot/dts/broadcom/bcm4908/bcm4908-asus-gt-ac5300.dt.yaml: /: '#address-cells', '#size-cells', 'aliases', 'axi@81000000', 'chosen', 'clocks', 'cpus', 'gpio-keys-polled', 'interrupt-parent', 'memory@0', 'model', 'pmu', 'soc', 'timer', 'ubus@ff800000' do not match any of the regexes: 'pinctrl-[0-9]+'
        From schema: Documentation/devicetree/bindings/arm/bcm/brcm,bcm4908.yaml

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
Sorry Florian for that. I've just learnt dtbs_check.
---
 Documentation/devicetree/bindings/arm/bcm/brcm,bcm4908.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4908.yaml b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4908.yaml
index dfe1c1c6bb8c..5fec063d9a13 100644
--- a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4908.yaml
+++ b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4908.yaml
@@ -33,6 +33,6 @@ properties:
           - const: brcm,bcm49408
           - const: brcm,bcm4908
 
-additionalProperties: false
+additionalProperties: true
 
 ...
-- 
2.26.2

