Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2179E75E4A8
	for <lists+devicetree@lfdr.de>; Sun, 23 Jul 2023 21:54:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229723AbjGWTye (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 23 Jul 2023 15:54:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57996 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229582AbjGWTyc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 23 Jul 2023 15:54:32 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DDF2FE43
        for <devicetree@vger.kernel.org>; Sun, 23 Jul 2023 12:54:29 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-99b9421aaebso32048866b.2
        for <devicetree@vger.kernel.org>; Sun, 23 Jul 2023 12:54:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690142068; x=1690746868;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IWhei07P7VB1yLCXpbZ3QMUD5i2h0EjqqassXoDsvvg=;
        b=ArOYD5mQ/NeiQurVYVgtEK36iNXjLbNaNg/bsEQ0vD6ji3X7kQAiWgOpYOmARDDqB8
         X6ZCwhGSOsZLjgczNRO1LI40eUU7PY/QDU5UPdlTMB3pkDMsHriN7eyfdx5rDZMlJpj8
         njt9+OLv3bpPqZ8OqyAHTS5GaNbqFwu8MwlzxAwj8C6jyBIcen4k4AOYstWgtC3MuN9R
         Q6w2yQIjWm7rXkLUEC7erestm3H+GUH+cxlXFhuZ+l/K5HRLevywrfiqeXZViSquFgkb
         HTqQOBJFuvpuZFnZtMtg3ddOOgZJZ99f5X138zGqi6nNwO/sUBBPBQUs5oXMgzLXolhy
         Pf2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690142068; x=1690746868;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IWhei07P7VB1yLCXpbZ3QMUD5i2h0EjqqassXoDsvvg=;
        b=bEmGRibuBM/AoFlT1+hei8le/v1CqHN6VZMHgzIAFlBLyvaaIqawtmY/sefycrh1Qq
         aeJ52hTHR2AB4eAA0AUPJ/uD8qJCGuakmS4QeIHp5qKrHIaqeshiTA/Mp3vUWsrwOiZd
         7ovN0miKeEBZeNQAg/27NdtrXlluTSe/fRTRC12SHs/m3dPbKYDTym6gYz4fsGoodqkX
         qWDabP3LnzBDn9xkj+D9H6caWUCA/iUkiOukOILJPaMPsg6oIBsqbDEzoR1O9c6xrqBy
         NdjmhT3wh8SP/X8F0WDGX9YrBnVyECrNwyt8MpFHd0WjUumJkXmRxhb9oxOqhW0Fu4uQ
         ETkA==
X-Gm-Message-State: ABy/qLZawDKBx5ytMWiyiWVM0V2JvaXNpKaZcR4qx8ACUx8AcQ3voJR5
        Gl248YKpnYPIeDvOUBSIbNk=
X-Google-Smtp-Source: APBJJlGhRvUGk5MRcDO/p1dMyLz/K48nQGKKk6itTvMF0KPzYSUfkZGsY4BVK7i42OW+3x/in4gKfw==
X-Received: by 2002:a17:906:1098:b0:98c:e72c:6b83 with SMTP id u24-20020a170906109800b0098ce72c6b83mr7419500eju.45.1690142068116;
        Sun, 23 Jul 2023 12:54:28 -0700 (PDT)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id pk4-20020a170906d7a400b00993004239a4sm5560046ejb.215.2023.07.23.12.54.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Jul 2023 12:54:27 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 3/3] ARM: dts: BCM53573: Add BCM53125 switch port 5
Date:   Sun, 23 Jul 2023 21:54:16 +0200
Message-Id: <20230723195416.7831-3-zajec5@gmail.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20230723195416.7831-1-zajec5@gmail.com>
References: <20230723195416.7831-1-zajec5@gmail.com>
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

It's connected to the extra Ethernet interface.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm/boot/dts/broadcom/bcm53573.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/boot/dts/broadcom/bcm53573.dtsi b/arch/arm/boot/dts/broadcom/bcm53573.dtsi
index 083304736fb3..10d0fe76ee3c 100644
--- a/arch/arm/boot/dts/broadcom/bcm53573.dtsi
+++ b/arch/arm/boot/dts/broadcom/bcm53573.dtsi
@@ -216,6 +216,16 @@ port@4 {
 							reg = <4>;
 						};
 
+						port@5 {
+							reg = <5>;
+							ethernet = <&gmac1>;
+
+							fixed-link {
+								speed = <1000>;
+								full-duplex;
+							};
+						};
+
 						port@8 {
 							reg = <8>;
 							ethernet = <&gmac0>;
-- 
2.35.3

