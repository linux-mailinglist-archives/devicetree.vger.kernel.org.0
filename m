Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3C99A4117E9
	for <lists+devicetree@lfdr.de>; Mon, 20 Sep 2021 17:10:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233752AbhITPLc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Sep 2021 11:11:32 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:44190
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S241220AbhITPLb (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 20 Sep 2021 11:11:31 -0400
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com [209.85.221.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 01EDF4027C
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 15:10:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1632150604;
        bh=xU11jaLpUDnoKTVDhNl4Nnz5+4KkmeAKnf0UgxOYDK0=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=Jf/UVPasI7eCutuWqByRpqmH4O20YHfMxJBg6B1H5xnqCwzKZbTfPreuFqPdQQJca
         C/QAQQXlcgNQgXyPNzTsLDea0w66Szg1jgPlXEsNmzUkhjmdpeLdrDGRZYuB1NKG/9
         3ky1JV3QWZAQNXKjb5s7ZmWHFZaq8Q+By603/nkJuGxctmPcp2S3mKjHELEUJZmPMJ
         dY+vboJjRukiJH3YV16HTu8hFjABERT8Ew0EpyMK9ZYunelSiliHxKUhBGjvJkiutC
         4GmhNwjHAf5odIs9Q47TBPByRR4teQe16mx6rLPo7cV1PJITD/2nvBR4n1dJlKb0Qv
         s6hagO9U4Stug==
Received: by mail-wr1-f72.google.com with SMTP id f7-20020a5d50c7000000b0015e288741a4so6356225wrt.9
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 08:10:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=xU11jaLpUDnoKTVDhNl4Nnz5+4KkmeAKnf0UgxOYDK0=;
        b=4wiIk6X9e2x/1KkpTZvhanf9dxMbbAknbAzYoiiR9bSKPPbhSl9Uvo+l+woeirOvDz
         OdqbBhuTN4kiWx9n6mMo1qM1GFvpL9r+A703f6lD0hL/vCVIl8tFcwEosVS6mvojKevS
         w9lGrFq+pOYo9hsqoE9Pnw0WsCrtO4RnlEEqf1TSbe0c7Rz5/l4A0k3LWoAUJgb5NnUI
         nFgxuVpfS5sdiin4NRpFzYotn5npmY4jLSPemSR3AGbEzV9lj3Nf2N1hY7UvUEN14Wdw
         C6wDJa0tmSyfBhiPPdLADYwyyuiUL5XyiQreC5IGT4+oe1bCw41P69zMJUaHTZ+bd3BL
         MMwg==
X-Gm-Message-State: AOAM533a4AIz7BirJLR1Fw5/I3N998nVohgNOEsgT7iSZV/QQRVBIDMF
        u+fPndWoTeGqzp0VygXX82Cha01q66UE8OEJIw3v+vrjaOVsJBZXBlx57FzhNWvf+yMaeEjP6Ta
        4IysxVI4WoVDYLf5Vlt+bX01bB0cVZ1w3TwQcyug=
X-Received: by 2002:adf:e44c:: with SMTP id t12mr30067250wrm.49.1632150603565;
        Mon, 20 Sep 2021 08:10:03 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzBBPH6zennF6+WXOjRYxYRZdYGj6tYy+clID7FjBpMnrSmFriKiZD1slG3/cFHjNMZVecHAA==
X-Received: by 2002:adf:e44c:: with SMTP id t12mr30067220wrm.49.1632150603368;
        Mon, 20 Sep 2021 08:10:03 -0700 (PDT)
Received: from kozik-lap.lan (lk.84.20.244.219.dc.cable.static.lj-kabel.net. [84.20.244.219])
        by smtp.gmail.com with ESMTPSA id i2sm15803136wrq.78.2021.09.20.08.09.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Sep 2021 08:09:54 -0700 (PDT)
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
Subject: [PATCH v3 6/6] riscv: dts: microchip: use vendor compatible for Cadence SD4HC
Date:   Mon, 20 Sep 2021 17:08:07 +0200
Message-Id: <20210920150807.164673-6-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210920150807.164673-1-krzysztof.kozlowski@canonical.com>
References: <20210920150807.164673-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Licensed IP blocks should have their own vendor compatible.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>

---

Changes since v1:
1. New patch
---
 arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi b/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
index 55d86b078c53..7948c4249de5 100644
--- a/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
+++ b/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
@@ -263,7 +263,7 @@ serial3: serial@20104000 {
 		};
 
 		mmc: mmc@20008000 {
-			compatible = "cdns,sd4hc";
+			compatible = "microchip,mpfs-sd4hc", "cdns,sd4hc";
 			reg = <0x0 0x20008000 0x0 0x1000>;
 			interrupt-parent = <&plic>;
 			interrupts = <88>;
-- 
2.30.2

