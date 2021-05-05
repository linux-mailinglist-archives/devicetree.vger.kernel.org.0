Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 438CC373CE5
	for <lists+devicetree@lfdr.de>; Wed,  5 May 2021 16:02:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233679AbhEEODI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 May 2021 10:03:08 -0400
Received: from youngberry.canonical.com ([91.189.89.112]:54828 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233666AbhEEODI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 May 2021 10:03:08 -0400
Received: from mail-qk1-f200.google.com ([209.85.222.200])
        by youngberry.canonical.com with esmtps  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
        (Exim 4.93)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1leI6M-0008Rp-Uj
        for devicetree@vger.kernel.org; Wed, 05 May 2021 14:02:11 +0000
Received: by mail-qk1-f200.google.com with SMTP id s143-20020a3745950000b029028274263008so1188438qka.9
        for <devicetree@vger.kernel.org>; Wed, 05 May 2021 07:02:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=uG3IhWnYJ6fyYsVocuySQ5JKR2LBx5PqBbvNRl2SVd0=;
        b=n/c9PqnafRGdqXFZXnfq5CIbyIIB0s6mwpcQWN29m4nLpryAVLL++XnHFLsCzeKkn+
         5RT9paG4wT8/hMUeD6MkyhbMi+A81Wv5xs+558x9ntCW0NKyHaCJdoxICjJcySqG3vps
         nuOamryZ0qXVRII9jACw8ox6Uw182/GwGZr1YPL+XU3zGE28SCGjnq7jHlEBEKVJ7PTz
         DoiMaDVOcKnuHagLl1LnURkExZl2o5fau2gnCvb5hWRHk4iZfAWj7mVlaGquZNKTyjQ3
         GizSJozbVWvIB/imzjodK/Rjy4dQT0ycqqh7c9OsdRXoAqDOFn5QNcuI6OZmo1ZDu9PZ
         vYKg==
X-Gm-Message-State: AOAM533dtRX3VToWMtFMaQ6QcWXXxtn8VBAfu8nmlvrmXOY57jJmeZgk
        9Yn3+UF2+a/+sN7FITKlcRFXF9+3OR97eXJwTJBcI8RqMM79256/zIOfZhrD3pY9tdcnnrsdjo+
        b3mUCNIFpZXb18le1vnjv48GVN9W+eqHRllDF1rA=
X-Received: by 2002:a0c:bdae:: with SMTP id n46mr19634795qvg.8.1620223330119;
        Wed, 05 May 2021 07:02:10 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxvpwKt32Tux6lMKuRokRqen9fF9Fsl6hXDXet9MjMQiWuxT9uXSD7+Nhiu/bsn0sJalz7Xxw==
X-Received: by 2002:a0c:bdae:: with SMTP id n46mr19634777qvg.8.1620223329987;
        Wed, 05 May 2021 07:02:09 -0700 (PDT)
Received: from localhost.localdomain ([45.237.49.2])
        by smtp.gmail.com with ESMTPSA id 97sm5016632qte.20.2021.05.05.07.02.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 May 2021 07:02:09 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/5] ARM: dts: exynos: replace legacy MMS114 touchscreen x/y properties in GT-N7100
Date:   Wed,  5 May 2021 09:59:38 -0400
Message-Id: <20210505135941.59898-2-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210505135941.59898-1-krzysztof.kozlowski@canonical.com>
References: <20210505135941.59898-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Replace legacy MMS114 touchscreen properties to fix dtschema warnings:

  arch/arm/boot/dts/exynos4412-n710x.dt.yaml: touchscreen@48:
    'x-size', 'y-size' do not match any of the regexes: 'pinctrl-[0-9]+'
  arch/arm/boot/dts/exynos4412-n710x.dt.yaml: touchscreen@48:
    'touchscreen-size-x' is a required property

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm/boot/dts/exynos4412-n710x.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/exynos4412-n710x.dts b/arch/arm/boot/dts/exynos4412-n710x.dts
index c49dbb7847b8..2c792142605c 100644
--- a/arch/arm/boot/dts/exynos4412-n710x.dts
+++ b/arch/arm/boot/dts/exynos4412-n710x.dts
@@ -50,8 +50,8 @@ touchscreen@48 {
 		reg = <0x48>;
 		interrupt-parent = <&gpm2>;
 		interrupts = <3 IRQ_TYPE_EDGE_FALLING>;
-		x-size = <720>;
-		y-size = <1280>;
+		touchscreen-size-x = <720>;
+		touchscreen-size-y = <1280>;
 		avdd-supply = <&ldo23_reg>;
 		vdd-supply = <&ldo24_reg>;
 	};
-- 
2.25.1

