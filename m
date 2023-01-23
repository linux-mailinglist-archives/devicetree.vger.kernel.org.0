Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5B477677823
	for <lists+devicetree@lfdr.de>; Mon, 23 Jan 2023 11:02:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231672AbjAWKB5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Jan 2023 05:01:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58298 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231703AbjAWKBv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Jan 2023 05:01:51 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E950586B8
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 02:01:49 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id q8so8522008wmo.5
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 02:01:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QDRXGMLivFOcZ79NQl3aMUkhwQ0hIeAn1Ufeiz9Vo2Y=;
        b=fu7mfQyJWuiY5HuPpDK6cdHqLRbimSOEqokU4KyVJ6X3zD/9XYNNwp7YiLLHOWMq7l
         2DRLQHBaaXsRxKH1CE3tOm0HXRpjALtHpU279MBJRdJi0uLP3oCv0wcIg3X2MVmAOUiv
         ULfPo8sEOl+CqwQkJ9Js7a8ixloxaR8jjHrVxJd7eA+RuZVcwAvHiQR4Pcq9gsZvWUG2
         iDxo/QY+ovTtcKrbVv4rDZrgwrCPQbcOxf5GQNCS0SDz1dshEz+Kvxdqsvb7kpyD5QiM
         NmXROIU2UMDIUGYFKVtUXD9MyYvWkpDW0VvkG5e6JktsXcaK8dpSuTV9avdxt2mraW97
         wgmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QDRXGMLivFOcZ79NQl3aMUkhwQ0hIeAn1Ufeiz9Vo2Y=;
        b=QSjSgdgxd+80IVtrlwH5ZqQx7Sbz3w20eAVWMcoNHRO7cKGycszd+bG6dodAY75B9H
         e9RlkhIJW6xaZyMz+v5tzJ40p2NoF4jvRHDmehzM31o6IscTlil1QPUdTZHnfOLvG9Wd
         qFzFamtyL6viIcO5rxEF3KKpexZCnEebkU+UBbM1D4p4VoR1gC3a6bh0BP/hY6H5QiRk
         Dil6tOgsRFxbfm5k31UAXNtu3iQJlABueJoec2SLDNvLw+g1TfsEEIoxW3HPPo+nOZk8
         FC18OSX9zbz9CsTcl36CdGtMjlfPxhfMSUgj6SUf6iDXiGhLrAHePvW9J5C4xl/7SAgo
         +yyQ==
X-Gm-Message-State: AFqh2kqfJlyEjAe/guALUHwORLy2jbvLlD46cvEEWd07o8dMqrdU8ypf
        W/aAu2zqR5RjiZEoUjZsZ3GWVA==
X-Google-Smtp-Source: AMrXdXvxxcmeGtlioatlJ2BEj26cKVQDb3mhBz/+8zADp/Rkia6XVRhOQ4/fKNi90ZleYySqOW4uGA==
X-Received: by 2002:a05:600c:3583:b0:3d2:2d2a:d581 with SMTP id p3-20020a05600c358300b003d22d2ad581mr23431609wmq.30.1674468109516;
        Mon, 23 Jan 2023 02:01:49 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id m2-20020a05600c4f4200b003db0ad636d1sm11050831wmq.28.2023.01.23.02.01.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jan 2023 02:01:49 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Alim Akhtar <alim.akhtar@samsung.com>,
        linux-samsung-soc@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Subject: Re: [PATCH] ARM: dts: exynos: align OPP table names with DT schema
Date:   Mon, 23 Jan 2023 11:01:40 +0100
Message-Id: <167446806831.57213.14407925625428994492.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230120064724.40621-1-krzysztof.kozlowski@linaro.org>
References: <20230120064724.40621-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 20 Jan 2023 07:47:24 +0100, Krzysztof Kozlowski wrote:
> DT schema expects names of operating points tables to match certain
> pattern:
> 
>   exynos5422-odroidxu3-lite.dtb: opp-table0: $nodename:0: 'opp-table0' does not match '^opp-table(-[a-z0-9]+)?$'
> 
> 

Applied, thanks!

[1/1] ARM: dts: exynos: align OPP table names with DT schema
      https://git.kernel.org/krzk/linux/c/e1c7def07c5c1d1cd6d28aefa8f11e31032c90fe

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
