Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 20DE13F1D33
	for <lists+devicetree@lfdr.de>; Thu, 19 Aug 2021 17:45:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240668AbhHSPqE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Aug 2021 11:46:04 -0400
Received: from smtp-relay-canonical-1.canonical.com ([185.125.188.121]:42410
        "EHLO smtp-relay-canonical-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S240649AbhHSPqD (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 19 Aug 2021 11:46:03 -0400
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com [209.85.208.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-canonical-1.canonical.com (Postfix) with ESMTPS id EB9C0411F3
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 15:45:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1629387925;
        bh=8A01Ti4iWFCly0K7Cu7pOp84vfobY1MUZZvBkKJ35Ik=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=pYLYrZUpqwJqpFdhVmug8yPxw9y6G8FR72yA5faNq1VnPSvYDtlrJSsCmnpR7yC+Z
         eII3Pk2/YDga/EaogRD9SrarfudPbiIPGlQyPvVTwyWNHeImp0CuByhfeAO+IhRN2N
         Umt9elLMFlRVxGEf+kxdhEgqoxhU3WBmUSyP3vBQA+7Pepn5H2svU9CvFL91iP2Fu2
         fNKuM4e2h+hJgIqRrtj5KNLAPbHZp58oBRCMVY7LVyXTX4heXZtdqnmuQI4zVId9Qa
         w3C1KPy0D8Vn1Aox2N1iURLcfezl9QQ9AS8/oAoLPGgt1U00P+dqo5zKeC475hyoSD
         CcJGYiLjgaNag==
Received: by mail-ed1-f72.google.com with SMTP id dd25-20020a056402313900b003bed8169691so3043384edb.7
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 08:45:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8A01Ti4iWFCly0K7Cu7pOp84vfobY1MUZZvBkKJ35Ik=;
        b=Hf+9okUDuaqTfawCJLKxrp5HWEKKQf+bEJo+foMKb26dKjrXiohBnxgoz0ApOYVI+d
         PEJ75KgIerxpogC3KysIH7buB5wOrfglEDalMvFE8uekQvqKhH1be74GobD9U6Y9SrG+
         iEmjHPV1/++oDukR7P5GJvGptTWzAW+elgxvze/cjRw6ua7hICaKGV6oLfPIG0226gBu
         LKuLAjTVEVQz2+PxiSV9AJ1WrTEgjqEsIyYpntp9ba6k0ugKbTzBUxUF2rQ8dSEwwe6i
         rdCGj7329r2Nd390DiKJmEuC7O0wZ61ZW+mYp1SlSv+gCWAbw04ynvrRKPg2DrSlYBYR
         Refw==
X-Gm-Message-State: AOAM53109f5VfWJR+qaDvDNzn2HsboXYTvM9h3iAhy8Kc9aOOo4sr+uT
        DMR0xAJoSiSIfKzg5GgJRCGGAH8RNuhx9CBBwhutSEOUuSJNmBhONhA51XLpzuKdYIDRaRBqOus
        Z8MkkgAq8Uf+gmtOK1eEIwyufPXM8/922aokoExo=
X-Received: by 2002:a17:906:7b53:: with SMTP id n19mr16394835ejo.14.1629387925474;
        Thu, 19 Aug 2021 08:45:25 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzop3xk9uOpzYONSS6eh+yJG5Jh6O2SpXAk8eo8bL4yAUYTFJUcq4vRwvvEVjARPWSfETkepw==
X-Received: by 2002:a17:906:7b53:: with SMTP id n19mr16394819ejo.14.1629387925347;
        Thu, 19 Aug 2021 08:45:25 -0700 (PDT)
Received: from localhost.localdomain ([86.32.42.198])
        by smtp.gmail.com with ESMTPSA id f16sm1925373edw.79.2021.08.19.08.45.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Aug 2021 08:45:24 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Atish Patra <atish.patra@wdc.com>,
        Yash Shah <yash.shah@sifive.com>,
        Masahiro Yamada <yamada.masahiro@socionext.com>,
        Piotr Sroka <piotrs@cadence.com>, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-riscv@lists.infradead.org
Subject: [PATCH 6/6] riscv: microchip: mpfs: drop unused pinctrl-names
Date:   Thu, 19 Aug 2021 17:44:36 +0200
Message-Id: <20210819154436.117798-6-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210819154436.117798-1-krzysztof.kozlowski@canonical.com>
References: <20210819154436.117798-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

pinctrl-names without pinctrl-0 does not have any sense:

  arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dt.yaml: sdhc@20008000: 'pinctrl-0' is a dependency of 'pinctrl-names'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi b/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
index c4ccd7e4d3eb..d9f7ee747d0d 100644
--- a/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
+++ b/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
@@ -267,7 +267,6 @@ mmc: mmc@20008000 {
 			reg = <0x0 0x20008000 0x0 0x1000>;
 			interrupt-parent = <&plic>;
 			interrupts = <88>;
-			pinctrl-names = "default";
 			clocks = <&clkcfg 6>;
 			bus-width = <4>;
 			max-frequency = <200000000>;
-- 
2.30.2

