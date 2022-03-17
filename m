Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7D9C04DC56D
	for <lists+devicetree@lfdr.de>; Thu, 17 Mar 2022 13:03:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231219AbiCQMEU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Mar 2022 08:04:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58606 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233380AbiCQMET (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Mar 2022 08:04:19 -0400
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2510E127E
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 05:03:01 -0700 (PDT)
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com [209.85.128.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id B36303F1AF
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 12:03:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1647518580;
        bh=es7Vl2OJTx5xz9ZVFD+rlfT7kmoz9R9sawZJAjgkoT8=;
        h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
        b=Syt4M011fOn99EanBjSmc01iM6ey7t2UNxmBy1744CVQCyVOdJ/UexFklFgxIl6FF
         AB+/naGZx0YysHG1XmKNbH0Aza7oX407u2aAuVqanPeZW+ZhannRERhNi33Vk+HOEC
         ZgAXkQcc7EsyuSBO+lrD76Hs7v0dcGeK2Rbp0055dS/MZkSjRa2yYNOl9M98Vtql+p
         czMjZaVeyJXSFrF4S0fvQGOoYAS8mLFojkwU+dR4QjoMWGqRsOG3Xe7kS0zFJm3BjI
         kFm/5Q6VT/LcH0xs6Lv6rLEtWoIkq3efqFwVdWQCmpithbTUTvoeYjVFMPt3yjz3Kp
         HWaGsx60/xffw==
Received: by mail-wm1-f70.google.com with SMTP id 12-20020a05600c24cc00b0038c6caa95f7so2006009wmu.4
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 05:03:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=es7Vl2OJTx5xz9ZVFD+rlfT7kmoz9R9sawZJAjgkoT8=;
        b=WopABlSUJjfMZh49Em8wVne2Zoo3VkfnXWQ8abOL05SyAT13oNeGzqHFvCPn40ZOPJ
         G5LvGbhFuzZcqisUcasXiNiWmFDv4PMNTXUFr3ZyPcdgH8aQ5afuAOWXJGCJ299RF4HW
         W4s10QW/yaXBrdAPnXHEGyYaoreUhvhjuCqhxKj0RuHXvA/J2cgRwtTDQqk3LCWvDnTW
         q+6NsMACOe62SChoI+yshfFjlG8lPnsMwDpb2oFjzzbs1L1Hvt8o+ILvX5hnQTa9h1gI
         +WIRbSsMFfcL58FeVKciO9thNKU9TOSOOSeQivn5EGMqqzVEuOSy/8Zc2ykewq2QxSzX
         IyYA==
X-Gm-Message-State: AOAM5332/ryMdh+sPAeCD5KN0nhLp/TJ6Qa1zPrl5d/iX4y+5j5MMkyS
        MXBM0td3e9vi5D0qPvzwqQjg+vOFOi59rAq71QAbiviP4+/4iVXplkQSWvrqfg23pkKxRu8H2v2
        3pqRzGXrdsyYX9ZgmFInbZ8A/k9dmVdHiRPwWpXM=
X-Received: by 2002:a05:600c:3846:b0:38c:7e65:c9e1 with SMTP id s6-20020a05600c384600b0038c7e65c9e1mr1570110wmr.157.1647518575379;
        Thu, 17 Mar 2022 05:02:55 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw2q6MYw/Al/VlClNguK/5gmUljghVGhJck2jjKvYm+01nFaRD/SpC5HhCnJCmy/cHp8HVvhA==
X-Received: by 2002:a05:600c:3846:b0:38c:7e65:c9e1 with SMTP id s6-20020a05600c384600b0038c7e65c9e1mr1570086wmr.157.1647518575150;
        Thu, 17 Mar 2022 05:02:55 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id g10-20020adfe40a000000b00203eb3551f0sm1745689wrm.117.2022.03.17.05.02.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Mar 2022 05:02:54 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Andrew Lunn <andrew@lunn.ch>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Gregory Clement <gregory.clement@bootlin.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH] dt-bindings: irqchip: mrvl,intc: refresh maintainers
Date:   Thu, 17 Mar 2022 13:02:52 +0100
Message-Id: <20220317120252.451669-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-5.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Jason's email bounces and his address was dropped from maintainers in
commit 509920aee72a ("MAINTAINERS: Move Jason Cooper to CREDITS"), so
drop him here too.  Switch other maintainers from IRQCHIP subsystem
maintainers to Marvell Orion platform maintainers because its a bigger
chance they know the hardware.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../bindings/interrupt-controller/mrvl,intc.yaml           | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/mrvl,intc.yaml b/Documentation/devicetree/bindings/interrupt-controller/mrvl,intc.yaml
index 75d49c9e956f..6a9c0d279d9b 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/mrvl,intc.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/mrvl,intc.yaml
@@ -7,10 +7,9 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Marvell MMP/Orion Interrupt controller bindings
 
 maintainers:
-  - Thomas Gleixner <tglx@linutronix.de>
-  - Jason Cooper <jason@lakedaemon.net>
-  - Marc Zyngier <maz@kernel.org>
-  - Rob Herring <robh+dt@kernel.org>
+  - Andrew Lunn <andrew@lunn.ch>
+  - Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
+  - Gregory Clement <gregory.clement@bootlin.com>
 
 allOf:
   - $ref: /schemas/interrupt-controller.yaml#
-- 
2.32.0

