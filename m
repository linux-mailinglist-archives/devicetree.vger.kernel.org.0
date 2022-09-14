Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 336505B89C5
	for <lists+devicetree@lfdr.de>; Wed, 14 Sep 2022 16:02:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229743AbiINOCu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Sep 2022 10:02:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48534 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229960AbiINOCN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Sep 2022 10:02:13 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C40E2140A9
        for <devicetree@vger.kernel.org>; Wed, 14 Sep 2022 07:01:24 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id f9so24633261lfr.3
        for <devicetree@vger.kernel.org>; Wed, 14 Sep 2022 07:01:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=tkQ2gij3IWVpYWf59I81AFLezwcjvGUELvmkiUnZplU=;
        b=DFsG/LkzdyNq1ygpJt5ZhZ/qbXe9ZrqRf+2XsUYliUGNaapd3HjPRYqrrFDHkpuP8U
         KDKCf2COGFoasFQC/T+eL9HTpvJqCw8QuOtrfwaM+2d7GN5DoEwic9ggsc3s+ST97nlB
         9OE8ywg4y3gncpe8jvI0Xd6FkFE/MepNk5idJYeKKcVuFDvH7IfaV+aEqhMaP9YC8YXO
         6I9vCkqbZgZ7zYbICIMNdCod5B8N2084jF+WlOdNm3pfBLfeWC/V0VYe2fkGMQVkF9dF
         LRywsPVL7WlsFAI1OH0bP+LbU1nLX9uzYoxQBJMD3N/i7FjZPVN6pZmXuAX0YzwFwjli
         KiDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=tkQ2gij3IWVpYWf59I81AFLezwcjvGUELvmkiUnZplU=;
        b=jHq/I1TvxF4dDVy5LCHKx4UfAXj4pQpoJ+pWAOpApljyILw2NZA9BoHPXuilI3dD0t
         IOgT3HXdZE9eQdYS73AWA7euxUD3S0n9tmroy6rqERxLWKM2hzenZkwYWaWS4LDKlWvK
         ycEtvgLhhLA/zGEaTZy94GToXLpXmKIW+TLMdXxM9NRDN1PXb5cRkl7ADOO9ffZFCWid
         RkOC5EQwWFEM9cWy1qeOvlZCl98K2qB7yaDOlhdZ+NfvFEzpT05YAd+DMxj6i/zz631c
         +oFfLGPkCY55DQjeXSNm1NVc/ZJ5YlwM7aLFLweatakbkN9Znuxr8lOOg6vab7q02Hgx
         ZCcg==
X-Gm-Message-State: ACgBeo3Pz/5EhWdosXUnmVvD+fj1btdWubgRjMMC/yx9cs/54BDVIssR
        kGM8BoLRIANKEk8k8zwYINYryNKxKXCmPEZkVx7L/g==
X-Google-Smtp-Source: AA6agR7X61E5vyWoRMVEAMnwI7yhahS3J9/2twMcEzs8aFUjVsC6q4tksh5kS0GIjvek6Xxz9vgbIFRwYNfpaT7SPTY=
X-Received: by 2002:ac2:4c42:0:b0:497:9dfe:e870 with SMTP id
 o2-20020ac24c42000000b004979dfee870mr11527722lfk.184.1663164083141; Wed, 14
 Sep 2022 07:01:23 -0700 (PDT)
MIME-Version: 1.0
References: <20220910143213.477261-1-iskren.chernev@gmail.com> <20220910143213.477261-6-iskren.chernev@gmail.com>
In-Reply-To: <20220910143213.477261-6-iskren.chernev@gmail.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Wed, 14 Sep 2022 16:00:46 +0200
Message-ID: <CAPDyKFp5kLF2kkFg3n5ZNzp3oX7hU-SAj9iSoJKDX7PAQxU75A@mail.gmail.com>
Subject: Re: [PATCH v3 5/9] dt-bindings: mmc: sdhci-msm: Add pinctrl-1 property
To:     Iskren Chernev <iskren.chernev@gmail.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, phone-devel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 10 Sept 2022 at 16:32, Iskren Chernev <iskren.chernev@gmail.com> wrote:
>
> Most mmc blocks contain two pinctrls, default and sleep. But then
> dt-schema complains about pinctrl-1 not being defined.
>
> Signed-off-by: Iskren Chernev <iskren.chernev@gmail.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/sdhci-msm.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
> index a792fa5574a0..775476d7f9f0 100644
> --- a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
> +++ b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
> @@ -97,6 +97,10 @@ properties:
>      description:
>        Should specify pin control groups used for this controller.
>
> +  pinctrl-1:
> +    description:
> +      Should specify sleep pin control groups used for this controller.
> +
>    resets:
>      maxItems: 1
>
> --
> 2.37.2
>
