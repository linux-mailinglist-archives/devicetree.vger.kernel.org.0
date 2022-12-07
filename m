Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 807886459F9
	for <lists+devicetree@lfdr.de>; Wed,  7 Dec 2022 13:39:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230029AbiLGMi7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Dec 2022 07:38:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53168 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229530AbiLGMib (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Dec 2022 07:38:31 -0500
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com [IPv6:2607:f8b0:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C4EA22D769
        for <devicetree@vger.kernel.org>; Wed,  7 Dec 2022 04:38:20 -0800 (PST)
Received: by mail-pl1-x631.google.com with SMTP id g10so16879856plo.11
        for <devicetree@vger.kernel.org>; Wed, 07 Dec 2022 04:38:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=YBX0rthji88f2u2kpbjWW8XV26nJpBCfbkYDEQ0jGgs=;
        b=B5n1LzzMR+vFf49xTP/rI64mCZcTUPodYeyxpjAXXP1IkgXVgcJ+aNl3ojevp2r2Lk
         +vIcaW4NvHRmOk4n74Hr5s37NzFsIAGMEkM9JbufPIwA1EQ+G1bOsEk/iEjgMNgPs5Yv
         flnpOPpGd6JVneMa1MM5Yw/2brb3xJ8HnW6Zw/OhWH5afCcOxi+1DKCPC3nU6JXIXx2J
         7g3M6db5dnRclDMWCaW6GgjqGTCnpSCtK8lNjDwDR9KHlVBuk/COIHGwxmuyAKNypHQz
         IfGHnTnckAnkzSLJBFkD0xutbWx4DF46wJIumJqTHJ1kANqSq/HMjKUkUM7+1PBNZfiE
         QX5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YBX0rthji88f2u2kpbjWW8XV26nJpBCfbkYDEQ0jGgs=;
        b=tR70DUvWtMP2DVx8o4NAFaDFYQ6DnLQhMzoHgtgdrqrCq1xpssrRkAP1N98+ZLQTzs
         Zq6srKpVPJwqIXaAK8e0lfriEScUpgU9TOt1+Z640Ae2BYoNQGi/LWqgjMckkgD4k1xO
         4uqhxgCzOv+4zozW4CmqTlVWx0HqW2utIb9Hb6G9Clb0xKY65Un7aRpc6afvW3SX/Oon
         itgQ1Rlg9hIrKss/7bbAwsY1zjLZbDMbq7HAF0PByZM7nUAN8mkoRsEpKe56irEiIKyb
         giBaEDzEHts1vKlfuQaJf7lKSJXm66nEdWvoLwz40+Jn74zNzpuuRC6EidaB/QuZo5Eb
         JIAw==
X-Gm-Message-State: ANoB5pnAd8aADQYEeLfzUBmVi4HpQ3/KbvfE8pexvCKWS4CikKuhlHsw
        DhALVx9VEed0qogSDPP2+dYkBQDGvc+AHagDi8y+3w==
X-Google-Smtp-Source: AA0mqf6dlj8DZXyu/nXvQiw+t5H43fPAM5QS0D71Dgo3NXBcy+o/mtivw3pVjRcUk4p/o1swJO8iVOuQUMTKcoCyTqE=
X-Received: by 2002:a17:90a:7485:b0:219:ef02:a5eb with SMTP id
 p5-20020a17090a748500b00219ef02a5ebmr10667292pjk.84.1670416700348; Wed, 07
 Dec 2022 04:38:20 -0800 (PST)
MIME-Version: 1.0
References: <20221204094717.74016-1-krzysztof.kozlowski@linaro.org> <20221204094717.74016-5-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221204094717.74016-5-krzysztof.kozlowski@linaro.org>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Wed, 7 Dec 2022 13:37:44 +0100
Message-ID: <CAPDyKFpccW4cFvf4BSJtO+UZdZnAzAhaE0vrU9p92Hn22Hcx8g@mail.gmail.com>
Subject: Re: [PATCH 5/5] dt-bindings: mmc: sdhci-msm: allow dma-coherent
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Adrian Hunter <adrian.hunter@intel.com>,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>, abel.vesa@linaro.org,
        Johan Hovold <johan+linaro@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 4 Dec 2022 at 10:47, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> SM8350, SM8450 and SM8550 SDHCI controllers for SD card are marked with
> dma-coherent, so allow it.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

All five patches applied from the series and by removing the fixes tag
from patch4/5, thanks!

Kind regards
Uffe


>
> ---
>
> dma-coherent was first added to SM8450... then to SM8350 (not merged
> yet) and now it appeared in SM8550 patches, but I actually do not know
> if this is copy-paste or real need.
> ---
>  Documentation/devicetree/bindings/mmc/sdhci-msm.yaml | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
> index 39e303468bc4..6b89238f0565 100644
> --- a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
> +++ b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
> @@ -83,6 +83,8 @@ properties:
>        - const: cal
>        - const: sleep
>
> +  dma-coherent: true
> +
>    interrupts:
>      maxItems: 2
>
> --
> 2.34.1
>
