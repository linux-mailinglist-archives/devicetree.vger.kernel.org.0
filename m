Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4CABF4117E6
	for <lists+devicetree@lfdr.de>; Mon, 20 Sep 2021 17:09:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241176AbhITPLU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Sep 2021 11:11:20 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:40046
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S241200AbhITPLU (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 20 Sep 2021 11:11:20 -0400
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com [209.85.221.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id C01A53FE01
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 15:09:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1632150592;
        bh=zUv3tXHbbUqWbaVvQkKggzK/iHQTdWabfc1NCBtXKt8=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=WUx+n0rTL1ND8eemSxyqF+F6WAqsNjGe6ANMG/wlSCu0rnm4EtFrpF4R58yJG0uMy
         ekB9bU4AIQwysB8Pg0vcjYVlJeqQSQb4M1Sn4BZhzQFZLty1ippUI+N1KUczyEngaV
         q4+Y7pwW+MamAh0PRfOyNjKNbxVIBFEBJzNjhJ8SS57jhjchB8SoagfkszTgecNpFe
         /CTH3akQBCOptJfP4enmXCRSF8hGUJiNUw6jyYoYUNNX2L6LgO4ehap8b/bNNFagnb
         H71nbO8igm4EQ3Qa2xI8Sw+F13roCsROX5YiY79N9sQiRPa/fUGjZt6Q2EIrnJY0K4
         xHmLrS3+xPe1w==
Received: by mail-wr1-f70.google.com with SMTP id i16-20020adfded0000000b001572ebd528eso6352200wrn.19
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 08:09:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=zUv3tXHbbUqWbaVvQkKggzK/iHQTdWabfc1NCBtXKt8=;
        b=YButHYm5xu+QqbUMdceSQr3OPbSkL+ytA7YEodicv050WUn4DUYVEWLbDU2utQIMqM
         sO9c4gFtEVCS14ihsLeAfeHAe65CG8r+AMG1I/323SvqOmFwVglKIm5+oA3oxjruFqf5
         Qn1trTugDGnJ2bVosXysIafO9b1dS9SCZJNqwDURKW2GS2t2OVAlClXjWeB0OAV8Z1R4
         9EqFQzvNDm1Mu0wORp5aapaZZcEqn4pPs96NcIZK2/oF9bbQb5V/zjkQT7bDJkupintu
         54NjH00zvVBilxfPZ7rcejg9yKeZi4fbhnQZiLcadFtRy94nh22HZI4V9WfXyg8mRtkJ
         K9ww==
X-Gm-Message-State: AOAM532Uz8aWuzGi8U0txWVBe5BbnZw+ip3W0BhrhZ5bwAZgELxWvdg1
        XkqIqOHfXaBXNWEF4WfOIZeXGDgfnN16PBVk4hyP0vmlEcpGCXqxPkaGf57UQhMn1DNYm5EvSdh
        p29P2A1IJOvcGl03jp6AFypjT4WfB8AawsKDUpVk=
X-Received: by 2002:a1c:4d17:: with SMTP id o23mr23908197wmh.125.1632150592343;
        Mon, 20 Sep 2021 08:09:52 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx4go/KWD2wwvaGed5Gp8/j8w76ab4Sbq/2+KvZVoBShQAqdwysUAi7NfERcQWEBk3pzLlFbw==
X-Received: by 2002:a1c:4d17:: with SMTP id o23mr23908169wmh.125.1632150592140;
        Mon, 20 Sep 2021 08:09:52 -0700 (PDT)
Received: from kozik-lap.lan (lk.84.20.244.219.dc.cable.static.lj-kabel.net. [84.20.244.219])
        by smtp.gmail.com with ESMTPSA id i2sm15803136wrq.78.2021.09.20.08.09.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Sep 2021 08:09:41 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Conor Dooley <conor.dooley@microchip.com>,
        Masahiro Yamada <yamada.masahiro@socionext.com>,
        Piotr Sroka <piotrs@cadence.com>, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-riscv@lists.infradead.org
Subject: [PATCH v3 5/6] riscv: dts: microchip: drop unused pinctrl-names
Date:   Mon, 20 Sep 2021 17:08:06 +0200
Message-Id: <20210920150807.164673-5-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210920150807.164673-1-krzysztof.kozlowski@canonical.com>
References: <20210920150807.164673-1-krzysztof.kozlowski@canonical.com>
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
index 83bc14860960..55d86b078c53 100644
--- a/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
+++ b/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
@@ -267,7 +267,6 @@ mmc: mmc@20008000 {
 			reg = <0x0 0x20008000 0x0 0x1000>;
 			interrupt-parent = <&plic>;
 			interrupts = <88>;
-			pinctrl-names = "default";
 			clocks = <&clkcfg 6>;
 			max-frequency = <200000000>;
 			status = "disabled";
-- 
2.30.2

