Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 32B30419497
	for <lists+devicetree@lfdr.de>; Mon, 27 Sep 2021 14:51:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234477AbhI0Mwe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Sep 2021 08:52:34 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:46160
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S234431AbhI0Mwd (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 27 Sep 2021 08:52:33 -0400
Received: from mail-lf1-f71.google.com (mail-lf1-f71.google.com [209.85.167.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 126CB40817
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 12:50:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1632747055;
        bh=gL2n73HFUZMgICxi9XxH4YAlloJV26Mt1lAxrRgunho=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=TCZ///ZrfcpnDDQseefV70MsTmEnDALNte4Y4xSI34M5CXNSWMWyadEfrN48wV13f
         A9tEUpbiduIRT7oxJuygjMtOSLM9dEtHox+Wx6ydzE0b+UI0jbzDWSudcTzddvI/QA
         jjhkYhsg61IkckWApeU8KUzn/CmGbyl2EbiPPbs7CrSwvDL+yWLYjTaYGGKiMuDPq0
         VBAyQgPWW3i0pHbuH377ZOqLvyufT39Nh4131MFrSsv4Kv3HRytqX1hh8bQlWD2W4/
         3USpQhl4ANvS98pljEOADAp7rpcd00cBjHkmgVG8vJjuaY57SA500A/in8bdlVxOt+
         zwrS4raMwvAaQ==
Received: by mail-lf1-f71.google.com with SMTP id bp11-20020a056512158b00b003fc7d722819so15786704lfb.7
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 05:50:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=gL2n73HFUZMgICxi9XxH4YAlloJV26Mt1lAxrRgunho=;
        b=FhCxtVBw0ugMqYFzZXsQLa38N9iEWrZUTXkyJ9ciV3HLT0/QxXB0fl/JCCe9U+Jwae
         pNBxRq/B9uozVwiEGRSLEZHExMpf2tf/cffCAURCZCFWCs2gouD89kTu8cr4Jv6FVOGW
         kdlR9NdMlh6NTqQ1nrBxA4lVoRLYwDvOCpBjP0cILwXpxD9LF/s0iYJc08lHnOuIzWZa
         sX+GelpoSiT8cKL4SZF7q5gH213qc87g8odtRBmsQdEMOGhU4QLaCZyhQqRzdfv2E8lu
         A1uphnAiBw89hX3U85SPAHnyeJidsnJNomZZoPDBqheGjaY0aEl1Ld/oiTsXFZWmZhUC
         l3gw==
X-Gm-Message-State: AOAM530vlTxbbfHyaCPXG84503e/nPecFVbQcDmKqB+Kp9VBaCrtItvu
        JBdjbr/e4nquA9rYwUF1AtUV+IzIoHBGbS0j2YkTjg88LySBEq1j7TilC2yx9VsLSc4djUd0vjs
        /rfEj2s55bk6W3foc6yxBrzn1/mZU6shh9mv76Jk=
X-Received: by 2002:ac2:4d22:: with SMTP id h2mr24000843lfk.429.1632747054380;
        Mon, 27 Sep 2021 05:50:54 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyyk4pwmdGw/4Ofbnvsd28i4hCYWPZtzP5PsR1gIz62OdaiPMEFoxgoIwLu67WJig5byBmk5g==
X-Received: by 2002:ac2:4d22:: with SMTP id h2mr24000825lfk.429.1632747054225;
        Mon, 27 Sep 2021 05:50:54 -0700 (PDT)
Received: from localhost.localdomain (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id v28sm1592102lfi.22.2021.09.27.05.50.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Sep 2021 05:50:53 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Conor Dooley <conor.dooley@microchip.com>,
        Masahiro Yamada <yamada.masahiro@socionext.com>,
        Piotr Sroka <piotrs@cadence.com>, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-riscv@lists.infradead.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH v4 5/6] riscv: dts: microchip: drop unused pinctrl-names
Date:   Mon, 27 Sep 2021 14:50:43 +0200
Message-Id: <20210927125044.20046-5-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210927125044.20046-1-krzysztof.kozlowski@canonical.com>
References: <20210927125044.20046-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

pinctrl-names without pinctrl-0 does not have any sense:

  arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dt.yaml: sdhc@20008000: 'pinctrl-0' is a dependency of 'pinctrl-names'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Reviewed-by: Geert Uytterhoeven <geert@linux-m68k.org>

---

Changes since v2:
1. Drop some patch garbage from rebase, pointed by Geert.

Changes since v1:
1. Add review.
---
 arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi b/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
index b15e93d1702b..63984e53c0b3 100644
--- a/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
+++ b/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
@@ -268,7 +268,6 @@ mmc: mmc@20008000 {
 			reg = <0x0 0x20008000 0x0 0x1000>;
 			interrupt-parent = <&plic>;
 			interrupts = <88 89>;
-			pinctrl-names = "default";
 			clocks = <&clkcfg 6>;
 			max-frequency = <200000000>;
 			status = "disabled";
-- 
2.30.2

