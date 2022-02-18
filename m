Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 406D44BB9FB
	for <lists+devicetree@lfdr.de>; Fri, 18 Feb 2022 14:18:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235736AbiBRNS2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Feb 2022 08:18:28 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:42946 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235737AbiBRNS1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Feb 2022 08:18:27 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D87A4CD5D
        for <devicetree@vger.kernel.org>; Fri, 18 Feb 2022 05:18:09 -0800 (PST)
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com [209.85.218.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 2F08B40300
        for <devicetree@vger.kernel.org>; Fri, 18 Feb 2022 13:18:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1645190288;
        bh=BpW5fQh3uUN/Pfl9NCOaES86qNesPQDykTGq/4H1dKc=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version:Content-Type;
        b=fjLWLsfgMQLS7Jhu7rgD90xAGimzpJRBLWJSO/G2Dser6GGz8yyEljVyoMlUlh1ch
         SVtD7oOi99mmuaPsYDmLryzhDgUBTOYTV83WM7L5l7xN3Xcj9R0j3+eF26Ur4+D9JO
         xYeRqZYRw6woadbqL4avzVC8Uq0f7T2TRc0yUqJGSUjyt70FjjPd+2VukjcSOxaQMi
         jyej5thhdI02OQLOpD0Jp1R0PWxXj6xgedOprLeNXrwb8DjjqTJ0ysIpXadzxmmpi1
         PRZumDUIajlh8mtGOpQyGBMhSRRb2rqZMZx1jnMmXo1GEFR/kphy3QmlYX+napd/MD
         J90p2VYvyvlug==
Received: by mail-ej1-f72.google.com with SMTP id gn20-20020a1709070d1400b006cf1fcb4c8dso3050854ejc.12
        for <devicetree@vger.kernel.org>; Fri, 18 Feb 2022 05:18:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=BpW5fQh3uUN/Pfl9NCOaES86qNesPQDykTGq/4H1dKc=;
        b=pMKiP0i9aiOswmxWd5gAF8HO6LziTT9dHkhuEFQTPxxn8/fRwq5lCkXp1d4xEoSyQo
         XaIkMA0xO6TM7D82JCHs94jZAQikH0pOXifJgWM1HCVPePN3+gHh/Nrs4JoE105X9p33
         gqaNtW+4Pb0e3sqqzWJuMmvPRHNC85NrKvwJnLgHDTXGP51VfzamODr5z6ZpP7oQSvKk
         QEwQ94ZGpAH/dxFH7amPvc1+MiIwWm41V8ap5QfYV71PCPl2MaA5Pze6S7/RSY3UWbBT
         QbR7U0LU17jk24y0bM3d2qnsGKKWY2XIf6a8Lnpm/DZ+u3UKSzr48uA1LZKl25DBEJaA
         vhFg==
X-Gm-Message-State: AOAM530Ad8VoTP3Ld2u182HL2xrIRewGfgodQbHPcX6dhimAIS0z4y17
        WJwpbx5v6QixuUWzQBtBsuilqnKPLiZDFcCyEDIWsg5POm1TChDi4SPr4n1LaW+ijGFNyGFK534
        4BTz1Awn8N3qjfqDamN4Vfh3jKC0MrAnorIaCi94=
X-Received: by 2002:a05:6402:4305:b0:410:d56e:efe3 with SMTP id m5-20020a056402430500b00410d56eefe3mr8202054edc.440.1645190286897;
        Fri, 18 Feb 2022 05:18:06 -0800 (PST)
X-Google-Smtp-Source: ABdhPJz8g7ylX5DfI5GDGYJJcRfIXiBC/rxttQWz/VkkQYf0o469gjXG/o2FNvU6gl8bykHatt6NgA==
X-Received: by 2002:a05:6402:4305:b0:410:d56e:efe3 with SMTP id m5-20020a056402430500b00410d56eefe3mr8202031edc.440.1645190286702;
        Fri, 18 Feb 2022 05:18:06 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id 12sm2281255ejh.30.2022.02.18.05.18.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Feb 2022 05:18:06 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     devicetree@vger.kernel.org,
        MyungJoo Ham <myungjoo.ham@samsung.com>,
        linux-pm@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linux-samsung-soc@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Kyungmin Park <kyungmin.park@samsung.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Marek Szyprowski <m.szyprowski@samsung.com>,
        Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
        Sylwester Nawrocki <snawrocki@kernel.org>
Subject: Re: (subset) [PATCH v2 3/3] ARM: dts: exynos: align PPMU event node names with dtschema
Date:   Fri, 18 Feb 2022 14:18:04 +0100
Message-Id: <164519028097.19535.13626825371267810296.b4-ty@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210920071753.38560-3-krzysztof.kozlowski@canonical.com>
References: <20210920071540.38337-1-krzysztof.kozlowski@canonical.com> <20210920071753.38560-3-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 20 Sep 2021 09:17:53 +0200, Krzysztof Kozlowski wrote:
> Use hyphen instead of underscore and align the PPMU event node name with
> dtschema.  The event-name property must match the node name, by the
> design of devfreq events and PPMU driver.
> 
> 

Applied, thanks!

[3/3] ARM: dts: exynos: align PPMU event node names with dtschema
      commit: 7cdfe3b3b60c89f0e12e8ee194a7cfbfd46515dd

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
