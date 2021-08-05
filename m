Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D06AD3E0F11
	for <lists+devicetree@lfdr.de>; Thu,  5 Aug 2021 09:23:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237940AbhHEHXN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Aug 2021 03:23:13 -0400
Received: from smtp-relay-canonical-1.canonical.com ([185.125.188.121]:40236
        "EHLO smtp-relay-canonical-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S238519AbhHEHXM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Aug 2021 03:23:12 -0400
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com [209.85.218.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-canonical-1.canonical.com (Postfix) with ESMTPS id 2FEEE40672
        for <devicetree@vger.kernel.org>; Thu,  5 Aug 2021 07:22:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1628148178;
        bh=ONtar7oAWeIbCQuURvJ44/IWnb3dxwE5aeYGBppPBKI=;
        h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
        b=B4+qXUqix/c4DHyf6uzs6FMn8IQAzNnMzQjUicSEJ9XfkiMpHS7qnt2gOEiVYqxO3
         jL14xl/EeA+LPECmk5+O01MaStsKM95rmFhthmpOhABSEv4jmD2FA7hen0UqoEB0Ms
         Vs1wHBe7U7rtwBHL8RMCvnx6cTwFaD7qRkVYh1Kz0sZK1ARgmzBk7HAfnak7iBFnm6
         3i3N+JqT2y9xi3VyolLgHcd05Wpw8kRLF4+vbX6J3zEvB6ZFARq9HcxIf+/5MYeHQY
         8UQyKDodE9MTcLaioOrTr/J3XHM17p4/a/bIRh26lzMMzBVHgK8IedPMsctIDfBRdK
         zriabDHeRrXIg==
Received: by mail-ej1-f72.google.com with SMTP id q19-20020a1709064cd3b02904c5f93c0124so1706756ejt.14
        for <devicetree@vger.kernel.org>; Thu, 05 Aug 2021 00:22:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ONtar7oAWeIbCQuURvJ44/IWnb3dxwE5aeYGBppPBKI=;
        b=l5zp2jOePMKJuTHcQwIWvKhOXlRKjgZN931GEt1m4hqASQ6sWl5gCBTejk+mFxzdD0
         lH/VpaxRkBq4g7O5T0h+523xvwUw12aarkyXvcGViqOteWZYiaN/RhBdX8vXCm92piq2
         pmuNbAoDuGzjeE7TjlbivmWeGK1HUaJko/4ZOSF5/MP6/FCGS8AmSqvL/uSn6sznflC6
         pkS889alwh6MU4axT5WlNGWVnKRySt/HNLDNNm+I7mbKkcwgMipyuHy6JYFDY+2w/BE3
         pCUB+xriW4DHLTHk3Zc2kPmAAFsACqeZPJvNSg4Ad+0Kcxhc25PAmjM/wimGZAWozNnw
         4xlA==
X-Gm-Message-State: AOAM533UW+Fvgx2lUmwuCCnmjO+9vJFDl9yTSAf9eGu0tgyPeQqhsSqV
        ustozy0vpw86IAGHbIgPXY0iHqouSMcVPCwdve7tGK7hiRKlvuvMvuffK+sMx0RI0geBHPmc6Ru
        fGDElQkMFKAR5sa08nPs8oqplR1Om2XHugMXijEQ=
X-Received: by 2002:a17:906:2c45:: with SMTP id f5mr3349701ejh.464.1628148177840;
        Thu, 05 Aug 2021 00:22:57 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxVhDgv6oVjoOTRB86bXt5LOi30f0RkOusmT4UWH9ZJRR52LcF3STptm7Ol4GO9LKvMy+uRnQ==
X-Received: by 2002:a17:906:2c45:: with SMTP id f5mr3349686ejh.464.1628148177729;
        Thu, 05 Aug 2021 00:22:57 -0700 (PDT)
Received: from localhost.localdomain ([86.32.42.198])
        by smtp.gmail.com with ESMTPSA id cm1sm1868470edb.68.2021.08.05.00.22.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Aug 2021 00:22:57 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Alim Akhtar <alim.akhtar@samsung.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Pankaj Dubey <pankaj.dubey@samsung.com>,
        Sam Protsenko <semen.protsenko@linaro.org>,
        Marc Zyngier <maz@kernel.org>
Subject: [PATCH] arm64: dts: exynos: correct GIC CPU interfaces address range on Exynos7
Date:   Thu,  5 Aug 2021 09:21:10 +0200
Message-Id: <20210805072110.4730-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The GIC-400 CPU interfaces address range is defined as 0x2000-0x3FFF (by
ARM).

Reported-by: Sam Protsenko <semen.protsenko@linaro.org>
Reported-by: Marc Zyngier <maz@kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm64/boot/dts/exynos/exynos7.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/exynos/exynos7.dtsi b/arch/arm64/boot/dts/exynos/exynos7.dtsi
index 8b06397ba6e7..c73a597ca66e 100644
--- a/arch/arm64/boot/dts/exynos/exynos7.dtsi
+++ b/arch/arm64/boot/dts/exynos/exynos7.dtsi
@@ -137,7 +137,7 @@ gic: interrupt-controller@11001000 {
 			#address-cells = <0>;
 			interrupt-controller;
 			reg =	<0x11001000 0x1000>,
-				<0x11002000 0x1000>,
+				<0x11002000 0x2000>,
 				<0x11004000 0x2000>,
 				<0x11006000 0x2000>;
 		};
-- 
2.30.2

