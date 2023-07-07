Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A9C7674B45F
	for <lists+devicetree@lfdr.de>; Fri,  7 Jul 2023 17:32:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229629AbjGGPcr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Jul 2023 11:32:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34618 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229573AbjGGPcq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Jul 2023 11:32:46 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9F08110EA
        for <devicetree@vger.kernel.org>; Fri,  7 Jul 2023 08:32:44 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-4fb96e2b573so3273070e87.3
        for <devicetree@vger.kernel.org>; Fri, 07 Jul 2023 08:32:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688743963; x=1691335963;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4Z27GVY72yNB7uMfRrfGrZziodxFlbSHyySn63gvbBs=;
        b=ZqzuCdqZfAq043i4bgwO9b2TF8IWVBftab9xISWlKDZxruRv3J1CleYj2JO6nFz4aq
         Rb61gPqFmsFQGX2ZHhp4V6Dxjv5in3yCD/pQ6CxWQjmUNXUDgjWKa5UNKcUVhrA3olg1
         Oo1+1zJEqaH6E7ZnTex2sbVPeSUBhVESqiiWcIaRGmeg97GgZuaDmF6ooT8L2PUAT/IR
         tiaRbJPgtEdhyKFAajL+B/cYw86i7A4yBPFiy3MiO79Tt/2ydf+xg9ygecfi+KWbf7/B
         Zx1hsC3aHnPWSRT5QHKzdF3IUB5Rh6/4NfuxTbChAyA1KlcRxovXYYl3PHaQlf9f0WvF
         fCzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688743963; x=1691335963;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4Z27GVY72yNB7uMfRrfGrZziodxFlbSHyySn63gvbBs=;
        b=DjUeiN8OMS3HIXE4wIvbGEl/FNEX0piyQM/VHXwk3PY5fXXpfzzS5kbhStWiGJyiHK
         t7BFTYxUOdp667UpBeK7+N/QWpO/V16iNaPUZ96SUIIfsu9yjvUCkzjPDIiAQQrV3NX7
         lgxx//iyJE4Pxv22xlzsgYDfV4AMPsZZVD2SmWOQ9+v3/g8UruAMjt0+HdgmE/HiqWVF
         rdrYZuoFL4h3EiZyNBadtHM1bEk3UnuKZzVybtSnqikHM8TKb3+2Xagg/GTv13XY9VXi
         VP1e8RoUUY5EirsLrz1eIQdgxjRK7S0r4p4YwXujEyE9CY5t5c47PyJkRUq9o9FKWkSF
         mulQ==
X-Gm-Message-State: ABy/qLbk8MQFxsB+p/qBNCnQK6kx1mJa6K8xHxlexJ9G69FkNTc/fSEO
        /9516r60yY2MeOePtYqVvbY=
X-Google-Smtp-Source: APBJJlFUU2NSL2HTcCVVaDY+O8wnuScCZHZTsnaDRL2kKlGmHNf6M02dBJe0DdbmxxzZN69kKd4cwA==
X-Received: by 2002:ac2:58f6:0:b0:4f8:5792:3802 with SMTP id v22-20020ac258f6000000b004f857923802mr4209217lfo.10.1688743962587;
        Fri, 07 Jul 2023 08:32:42 -0700 (PDT)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id u14-20020ac243ce000000b004fb895662d8sm724985lfl.84.2023.07.07.08.32.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Jul 2023 08:32:42 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Andre Przywara <andre.przywara@arm.com>,
        Viresh Kumar <viresh.kumar@linaro.org>,
        Nick Hawkins <nick.hawkins@hpe.com>,
        devicetree@vger.kernel.org,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] ARM: dts: BCM53573: Relicense BCM947189ACDBMR to the GPL 2.0+ / MIT
Date:   Fri,  7 Jul 2023 17:32:29 +0200
Message-Id: <20230707153229.15246-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

All BCM53573 DTS files including bcm53573.dtsi use GPL 2.0+ / MIT. That
results in some licensing spaghetti for BCM947189ACDBMR which is ISC
licensed. It's unclear what's the outcome license of this one.

Relicense Florian's file to match other SoC family files.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
Florian: let me know if you're OK with this change. Right now I'm not
sure what's the result of ISC licensed file including GPL 2.0+ / MIT
.dtsi.

Except for your changes, bcm947189acdbmr.dts file has been only touched
in rather irrelevant commits:
abe60a3a7afb ("ARM: dts: Kill off skeleton{64}.dtsi")
c5aec5611aec ("ARM: dts: broadcom: align gpio-key node names with dtschema")
af84101e3f22 ("ARM: dts: broadcom: align LED node names with dtschema")
---
 arch/arm/boot/dts/broadcom/bcm947189acdbmr.dts | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/broadcom/bcm947189acdbmr.dts b/arch/arm/boot/dts/broadcom/bcm947189acdbmr.dts
index 0b8727ae6f16..f7570b68e5f5 100644
--- a/arch/arm/boot/dts/broadcom/bcm947189acdbmr.dts
+++ b/arch/arm/boot/dts/broadcom/bcm947189acdbmr.dts
@@ -1,8 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
 /*
  * Copyright (C) 2017 Broadcom
  * Author: Florian Fainelli <f.fainelli@gmail.com>
- *
- * Licensed under the ISC license.
  */
 
 /dts-v1/;
-- 
2.35.3

