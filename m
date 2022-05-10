Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D4A965215D5
	for <lists+devicetree@lfdr.de>; Tue, 10 May 2022 14:49:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241974AbiEJMxi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 May 2022 08:53:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39198 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241025AbiEJMxh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 May 2022 08:53:37 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9EF41A048F
        for <devicetree@vger.kernel.org>; Tue, 10 May 2022 05:49:39 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id m20so32702797ejj.10
        for <devicetree@vger.kernel.org>; Tue, 10 May 2022 05:49:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura-hr.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=JRHr7fdKzwvGcxbeg/0F2EjB5DJIbPSUWRot3RR3KEM=;
        b=7D+vrVq8SA9FoVNefbDHdQ5HvTkCS8UrjB4ImiKDgRwrJ/fNixNn1wMl7oNxsL8vp5
         ptxtc4frm8gMQrkMBmpvi+qhcIc4yNYlqteBz8662mxEpy2T+hXdzWlR83ycKXR44eUT
         goF/UgCIq4yYl2y7JmgKu4mxberGycujdng7KVT7o45eXt0jNFhGoeF7aW9pTt3GpuaZ
         BalF62lA9VjP5wkiegCS5tq7L35Bcj7QsMu1J9dU7fbXkIEa1sgpKD0Q3RliUiOaLK9N
         xCOSgXUmlmiXzDPTYDG4+LvxmPsqlweDBbfkGVtuFgw3gnTyhXtklu6+924qYJVKYsDF
         JXLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=JRHr7fdKzwvGcxbeg/0F2EjB5DJIbPSUWRot3RR3KEM=;
        b=5GkMg3TZkIK9NtdbAvZNpIwnBj2hZGFlQNEy0mphYBL4QJKWWfsJ2zHR8JCUGnpsRj
         0DoCqqKnulUq8O7ri/VDyDNZEDnc9l1MZeyy1hqTY3hHB5U8A3C0dZfR/6xT3+6TEZJN
         n2M2NZO6znP4nQgXxRN3Z4YmaLWenAlOMMfXVZ3zhNdPvrEHWmujSQK8TRpTvcP+9fRN
         iQo6Xvl4koyxVvaK7tXh3OyRm2BlhromQglPiVs60VMI+jCfa6JiGHW90apQWxDUq4yP
         vnMEhrj/9IYnRw9b8v6bJLjlweEkyQA1PQopZQF5eAtivJ8RQOQYVrOVE1RhJQC3Z1bQ
         QqHg==
X-Gm-Message-State: AOAM532/DPcHH3Mrp1Yc2oisTcM4yEJCKfMVLKMU0rtPqwn/rEwog/Wp
        359Eh/Ehy9JZV7w53Bbtg41G5A==
X-Google-Smtp-Source: ABdhPJx/IJLiklgOedQhCBVh5VP4GbNTBuqGvGM91QlsILf4QLz6AJpZ3liRF45O7ycq7tF91hrmEA==
X-Received: by 2002:a17:907:62aa:b0:6e0:f208:b869 with SMTP id nd42-20020a17090762aa00b006e0f208b869mr19568202ejc.270.1652186978368;
        Tue, 10 May 2022 05:49:38 -0700 (PDT)
Received: from fedora.robimarko.hr (cpezg-94-253-144-75-cbl.xnet.hr. [94.253.144.75])
        by smtp.googlemail.com with ESMTPSA id gz14-20020a170907a04e00b006f3ef214e62sm6094290ejc.200.2022.05.10.05.49.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 May 2022 05:49:38 -0700 (PDT)
From:   Robert Marko <robert.marko@sartura.hr>
To:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        andrew@lunn.ch, gregory.clement@bootlin.com,
        sebastian.hesselbarth@gmail.com, kostap@marvell.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, pali@kernel.org,
        marek.behun@nic.cz
Cc:     Robert Marko <robert.marko@sartura.hr>
Subject: [PATCH v2 03/11] arm64: dts: marvell: espressobin-ultra: add generic Espressobin compatible
Date:   Tue, 10 May 2022 14:49:21 +0200
Message-Id: <20220510124929.91000-3-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220510124929.91000-1-robert.marko@sartura.hr>
References: <20220510124929.91000-1-robert.marko@sartura.hr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Espressobin Ultra is part of the Espressobin family and shares the basic
design, so add the generic "globalscale,espressobin" compatible to it as
well.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
---
 arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts b/arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts
index 070725b81be5..1b2ed63ae6a2 100644
--- a/arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts
+++ b/arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts
@@ -12,8 +12,8 @@
 
 / {
 	model = "Globalscale Marvell ESPRESSOBin Ultra Board";
-	compatible = "globalscale,espressobin-ultra", "marvell,armada3720",
-		     "marvell,armada3710";
+	compatible = "globalscale,espressobin-ultra", "globalscale,espressobin",
+		     "marvell,armada3720", "marvell,armada3710";
 
 	aliases {
 		/* ethernet1 is WAN port */
-- 
2.36.1

