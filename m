Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 10DDB74B005
	for <lists+devicetree@lfdr.de>; Fri,  7 Jul 2023 13:40:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231184AbjGGLka (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Jul 2023 07:40:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43686 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229556AbjGGLk3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Jul 2023 07:40:29 -0400
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 16C741FF9
        for <devicetree@vger.kernel.org>; Fri,  7 Jul 2023 04:40:27 -0700 (PDT)
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-2b708e49059so23768991fa.3
        for <devicetree@vger.kernel.org>; Fri, 07 Jul 2023 04:40:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688730025; x=1691322025;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VJohZ7lGAq1LM6T9V/hW+S4IxuOJhGHNO2dnXDZkySE=;
        b=oYjMGkyCga6VRQpvbFYt0nQ4pfdloi0zvRnO3AKyddcJn87qEkVbyKbGsX8X0riTUq
         3hebvOBCGbBOwfT3kd3+xOaWdxPd659cLVCkFJ2lqw7Z7t82PyuMKFgfvRJcxQHZ8APP
         UNlvPHiZ74VkzSHfE2aWh8Y0vb4BXyJqQelPnhCj+xutGv1YvieESVjxA92+CgbT+iWe
         6ap5LdZpJ4jYgNTBDhGliAcuDVDDN5fzSoMpnFL2scm6dmbm9tb76mlumzkzgHQg5n0K
         U/BbfCe8J6wD0TBfoJ8W7aKaw5qe+UjwZpu/wLC/2f6tuJkEqq/QJN7tclzAi2AAjVZQ
         Pjcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688730025; x=1691322025;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VJohZ7lGAq1LM6T9V/hW+S4IxuOJhGHNO2dnXDZkySE=;
        b=VVS9uLVtXM4q8qAuJJOJpjQ6F9FwkngjLPBGhqBmMdwki7HicfjLK5GX5a4eJEY0ao
         aY05GD3tgvIS2O85M8k6jFD+uEB2gufOHCkVa+7L+YXhmkn2DnOXrlxmdyadNtNES5Sv
         Zd7f+vhtQHN+DdMQtZw979fIH7jvZ2X29e1G51czWrhAmnad/GuYCjKocg7x9fNIp08+
         HeoMMDx4DZyYSn4BIdTCzqshQOKoeagh/l4OBgAXnVLQQH2eBBjIanhmlfaaDNGTC1gU
         TSN7URAQtpjmsxacOXVwnbNSHevxUWIq7Dn3XBE9aVFqCewKOJHQKdIUvB33PCL4i6kR
         m7MQ==
X-Gm-Message-State: ABy/qLYbXx1uzWtv7kyo83LPJ+4ATsE8wHLAWpkgAL2VoXdPLJswUbtl
        afYDqPoOZqCHLRhNxnj2CURI0722RDE=
X-Google-Smtp-Source: APBJJlH5WsXKCy7D4MQGZiB0dKPD+0Lsp5dZju6RkAeLGPNHVX6dQyUzirzTjOpa5hK8WNS8Oo84vA==
X-Received: by 2002:a2e:97c7:0:b0:2b7:a64:6c3c with SMTP id m7-20020a2e97c7000000b002b70a646c3cmr2408659ljj.37.1688730025178;
        Fri, 07 Jul 2023 04:40:25 -0700 (PDT)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id k19-20020a2e9213000000b002b708450951sm607722ljg.88.2023.07.07.04.40.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Jul 2023 04:40:25 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Andre Przywara <andre.przywara@arm.com>,
        Viresh Kumar <viresh.kumar@linaro.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 2/4] ARM: dts: BCM53573: Drop nonexistent #usb-cells
Date:   Fri,  7 Jul 2023 13:40:02 +0200
Message-Id: <20230707114004.2740-2-zajec5@gmail.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20230707114004.2740-1-zajec5@gmail.com>
References: <20230707114004.2740-1-zajec5@gmail.com>
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

Such property simply doesn't exist (is not documented or used anywhere).

This fixes:
arch/arm/boot/dts/broadcom/bcm47189-luxul-xap-1440.dtb: usb@d000: Unevaluated properties are not allowed ('#usb-cells' was unexpected)
        From schema: Documentation/devicetree/bindings/usb/generic-ohci.yaml

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm/boot/dts/broadcom/bcm53573.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/boot/dts/broadcom/bcm53573.dtsi b/arch/arm/boot/dts/broadcom/bcm53573.dtsi
index 3f03a381db0f..3cb71829e859 100644
--- a/arch/arm/boot/dts/broadcom/bcm53573.dtsi
+++ b/arch/arm/boot/dts/broadcom/bcm53573.dtsi
@@ -156,8 +156,6 @@ ehci_port2: port@2 {
 			};
 
 			ohci: usb@d000 {
-				#usb-cells = <0>;
-
 				compatible = "generic-ohci";
 				reg = <0xd000 0x1000>;
 				interrupt-parent = <&gic>;
-- 
2.35.3

