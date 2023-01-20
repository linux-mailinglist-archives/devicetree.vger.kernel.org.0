Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D1E03675931
	for <lists+devicetree@lfdr.de>; Fri, 20 Jan 2023 16:54:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231627AbjATPyd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Jan 2023 10:54:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57396 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231602AbjATPyZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 Jan 2023 10:54:25 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 169DACFD1B
        for <devicetree@vger.kernel.org>; Fri, 20 Jan 2023 07:54:19 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id c4-20020a1c3504000000b003d9e2f72093so6148337wma.1
        for <devicetree@vger.kernel.org>; Fri, 20 Jan 2023 07:54:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TmCudeFR2cwI/58JohNzJuHX7Zmh/Hp6WjabUcmmzIg=;
        b=s9J8+IAOw2dXFdRofjy206BsLNmRNnhUWOojYRtVELrP7uPXhJ6iek945zT+JxLoQn
         mZOIsWdtLN+YubEzZOQbu0fpqHXwmINDfKrUzj32HO2RxU47SKXcaoge8UPg7V21UfN9
         OB62Bh2uDUiQGSC/EoDvQ5cXA8UcSxbfb2slG71Fon8oeAi0WB8eAOf3NsOfCyYT1QxK
         HOShsPhACCXJ6G8R6sgrk7mVWMhl/zzjKhZrFB9qcwEFAXgm8MLF+EBa6tMRWZP9qWHb
         cHEJub7Se0ppCVR7DlqfimsHC61+vF6r68lutqUIaMG6BipdSzhISvCX22gSBgJ31hcJ
         riuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TmCudeFR2cwI/58JohNzJuHX7Zmh/Hp6WjabUcmmzIg=;
        b=BF4mOLkCmlfl66soFPltRK5yupFkiYuAR3xD0xx087AAnBwlVHhnqqqjxVhdgqXi1+
         947jcfMdhd9HAom26o//B6k6DcjXFxTff9r1D4+AtAy9YBVFA9ycQuBsOs3wlvu9n+dG
         565sI0u/sbvCcX/vDqblDE3Ua2s+Py3Qwi+qPu7ikmX/m8FlSGu31I0srGlUKFprWO1O
         9cG9vtow4NXbJn8setMIAf6HKVcUaje+RxO+7Gex3sflUr1pIUbGKE249HjSvvwCZIid
         o2MBsVjpMC6sR9HqwKk4Hq9jrz3YhLG2L8SbNickgGwyIVAJNy+1GbiHgedXsQ9HjRky
         paDQ==
X-Gm-Message-State: AFqh2kp4ovQ7dMdiy0gDq4oZhK8o7FwD6MzcJtFNi/KSNO4P3fIFHHvO
        yZpojZi1eH3pi2la6pg02iZebA==
X-Google-Smtp-Source: AMrXdXueBGyXPqgeTrnDL/yqARb26asQETCAgBowL2JsnvMNlHwNLu8Nq4GeoDxnu5xqNn7uJAn1EQ==
X-Received: by 2002:a05:600c:3acd:b0:3cf:5583:8b3f with SMTP id d13-20020a05600c3acd00b003cf55838b3fmr14760734wms.20.1674230058600;
        Fri, 20 Jan 2023 07:54:18 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id n42-20020a05600c3baa00b003d96efd09b7sm3349596wms.19.2023.01.20.07.54.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Jan 2023 07:54:18 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Inki Dae <inki.dae@samsung.com>,
        Kyungmin Park <kyungmin.park@samsung.com>,
        Kukjin Kim <kgene@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     replicant@osuosl.org, phone-devel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht,
        =?UTF-8?q?Martin=20J=C3=BCcker?= <martin.juecker@gmail.com>,
        Henrik Grimler <henrik@grimler.se>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 04/11] ARM: dts: exynos: align pin node names in Exynos4412
Date:   Fri, 20 Jan 2023 16:53:57 +0100
Message-Id: <20230120155404.323386-5-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230120155404.323386-1-krzysztof.kozlowski@linaro.org>
References: <20230120155404.323386-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The DT schema expect pin configuration nodes to have pin prefix or
suffix:

  exynos4412-trats2.dtb: pinctrl@3860000: sleep-state: 'gpz-0', 'gpz-1', 'gpz-2', 'gpz-3', 'gpz-4', 'gpz-5', 'gpz-6'
    do not match any of the regexes: '^(pin-[a-z0-9-]+|[a-z0-9-]+-pin)$', 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/exynos4412-pinctrl.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/exynos4412-pinctrl.dtsi b/arch/arm/boot/dts/exynos4412-pinctrl.dtsi
index 58847d4fa846..8ab31c3daa48 100644
--- a/arch/arm/boot/dts/exynos4412-pinctrl.dtsi
+++ b/arch/arm/boot/dts/exynos4412-pinctrl.dtsi
@@ -12,7 +12,7 @@
 #include "exynos-pinctrl.h"
 
 #define PIN_SLP(_pin, _mode, _pull)					\
-	_pin {								\
+	pin- ## _pin {							\
 		samsung,pins = #_pin;					\
 		samsung,pin-con-pdn = <EXYNOS_PIN_PDN_ ##_mode>;	\
 		samsung,pin-pud-pdn = <EXYNOS_PIN_PULL_ ##_pull>;	\
-- 
2.34.1

