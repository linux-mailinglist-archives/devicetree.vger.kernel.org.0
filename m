Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2DDBE74B006
	for <lists+devicetree@lfdr.de>; Fri,  7 Jul 2023 13:40:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229556AbjGGLkb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Jul 2023 07:40:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43692 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231316AbjGGLkb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Jul 2023 07:40:31 -0400
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE1471FFF
        for <devicetree@vger.kernel.org>; Fri,  7 Jul 2023 04:40:29 -0700 (PDT)
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2b6ff1ada5dso26786221fa.2
        for <devicetree@vger.kernel.org>; Fri, 07 Jul 2023 04:40:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688730028; x=1691322028;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QDjimKTKFAxHeFfXo9ps9ICd4FUtaFxF9/m7GnvuWdo=;
        b=nvPovBcvtvEEU2wGekaYIO5XZKiOL6RI/76v2Op0zKjc9gmnJ7N0Tu2pPluZJXWhxm
         7KE9WcvHKYoDLO+4NglbCJF9Q02ycB2l49q0Rdkp/Gk9eTwfV6C9aqRw3hj9hfA9gL6j
         Q6oKC0t8FxGQfqIWSDFnblf/dxWKTw7E4tQtyXLofW/gadaP2SrEa2U0OZ4xZ5x1BhXv
         F9r9i5+FUCuSY3M5PQLEEjC7A5f0rczYF+MwdQRBqjKSJbPTPVzpMSQ24dVsP8kL5dWT
         VFCzcJr+nR6qBOF2GySPuIuHuMIQGEIMUeREmiBdN8EsfSm9lMcDIYM1d8OmV9l8ml1p
         tUhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688730028; x=1691322028;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QDjimKTKFAxHeFfXo9ps9ICd4FUtaFxF9/m7GnvuWdo=;
        b=lnMZGOcscugduyumxLdSzjEKjYlVo5nI8EpCh+whALDpyGit2CKn4XQwGFmZFxU19p
         myd/Y0ZLFTY5UrYLzgwd8DVoFn5rzAcw2GVrUTI+q4lMdKd0EC4a71XQmafJMzQd20e4
         fb+nk0btcg26Xhhwhg1QBU8KPDk9z3AuFbIkrsbPBBurf86Sb5vev5NICanzZhHilcSF
         7o7Xu9K5wXTlLLYMToP9iibqTevyHZPT5pT8MXpEhtz7kiO40yrZn1MOt4oyT3pUb3q2
         oYNLp0DDBCMpf2vjR4DJFkv/MUKfebFQ5TUGfu6TsuuOHXLTxG/tuF3PNnEqeFvMLquG
         ppSA==
X-Gm-Message-State: ABy/qLZXLHDTIgFxG0XL7rFVnJZKsGImz0wwlV9xQPI7M5wzY5lPPoN8
        pF44bdtoZKWc1TVmYV7mP0c=
X-Google-Smtp-Source: APBJJlHFiv7bDjPZM+5ltRohWNd/FrYqZxOym4Ovmxaf0r3YvC534SCp8uSQkY/85hCvaLjJeJQP3A==
X-Received: by 2002:a2e:9c87:0:b0:2b6:ddab:506a with SMTP id x7-20020a2e9c87000000b002b6ddab506amr3576108lji.34.1688730027553;
        Fri, 07 Jul 2023 04:40:27 -0700 (PDT)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id k19-20020a2e9213000000b002b708450951sm607722ljg.88.2023.07.07.04.40.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Jul 2023 04:40:27 -0700 (PDT)
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
Subject: [PATCH 3/4] ARM: dts: BCM53573: Add cells sizes to PCIe node
Date:   Fri,  7 Jul 2023 13:40:03 +0200
Message-Id: <20230707114004.2740-3-zajec5@gmail.com>
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

This fixes:
arch/arm/boot/dts/broadcom/bcm47189-luxul-xap-1440.dtb: pcie@2000: '#address-cells' is a required property
        From schema: /lib/python3.10/site-packages/dtschema/schemas/pci/pci-bus.yaml
arch/arm/boot/dts/broadcom/bcm47189-luxul-xap-1440.dtb: pcie@2000: '#size-cells' is a required property
        From schema: /lib/python3.10/site-packages/dtschema/schemas/pci/pci-bus.yaml

Two properties that need to be added later are "device_type" and
"ranges". Adding "device_type" on its own causes a new warning and the
value of "ranges" needs to be determined yet.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm/boot/dts/broadcom/bcm53573.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/broadcom/bcm53573.dtsi b/arch/arm/boot/dts/broadcom/bcm53573.dtsi
index 3cb71829e859..eed1a6147f0b 100644
--- a/arch/arm/boot/dts/broadcom/bcm53573.dtsi
+++ b/arch/arm/boot/dts/broadcom/bcm53573.dtsi
@@ -127,6 +127,9 @@ uart0: serial@300 {
 
 		pcie0: pcie@2000 {
 			reg = <0x00002000 0x1000>;
+
+			#address-cells = <3>;
+			#size-cells = <2>;
 		};
 
 		usb2: usb2@4000 {
-- 
2.35.3

