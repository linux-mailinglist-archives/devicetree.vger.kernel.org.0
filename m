Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 66BC44BA49D
	for <lists+devicetree@lfdr.de>; Thu, 17 Feb 2022 16:40:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238366AbiBQPkY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Feb 2022 10:40:24 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:32830 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242618AbiBQPkT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Feb 2022 10:40:19 -0500
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A5052B2E31
        for <devicetree@vger.kernel.org>; Thu, 17 Feb 2022 07:40:03 -0800 (PST)
Received: by mail-lj1-x229.google.com with SMTP id b38so8922357ljr.12
        for <devicetree@vger.kernel.org>; Thu, 17 Feb 2022 07:40:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=qKaf8T6bwo43/+sxm31m52Fuq6JfePQe5wLfdK/sZ50=;
        b=KPzAxecZid6LlUo+0wXILBlFXqEIIMlQhrTqEj6z4UqIp9jIQF/gbYiCxGu81gLFpJ
         /pIGlLeDUvdHwupl4nghICsruLArh0hORXmoOtKaH6HpqNuBvjs+4ihA3oAWbqhEwkDd
         T5ThBdpMxq1FEOb1fMDz2mAoWunpfky3vnZyTBNmJjqtuwuMvexR2rTKaztVVD9Y7mFT
         pSkdWAYemi7Dg2p/PAZ6kUQyJizRwmSoZPO3SN8oNgMcOWtjdFb59gSvTJlmKxV3ebyO
         swvV57on6z9k7ex4uQZNZiEhi7wpsexsYfo+YGjAX6eu4VmlQXo9PvDl66YhEpV8QHuQ
         vYWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=qKaf8T6bwo43/+sxm31m52Fuq6JfePQe5wLfdK/sZ50=;
        b=3ZWBinO//bpyFbeccrD9WyJwTxFdWe+WlthYMfuMXfxcgYKYQ3eWdISPn2Kw0iVe3g
         NvHyteRcIXuJv5BqeTpaBs2O/hcpX+UeKIw3pH+Z8bnNA2bfXYNw85FLKsMGhhHeMtby
         QOSR6fGvqyEUHjILKhdqvQqsWcv++pDFkUL/UOUkMWvIaYqqTllam2WAjHp1RanY74Nu
         7VrUoA6uCdZJaqbnM78Rjae+v7rDlghUEXREcfdOgOLWStKsU8cnYd0pHSkjiGS0e6NA
         32WevllufALbLV7f4INwqozsN1XYsN1HEEbgbFGPoO7/Bc89RwmtBWXNGZBQrwqGrHl0
         oo4g==
X-Gm-Message-State: AOAM532sECMOQVdhwdXbkIikz6dU1ynDIMC6R8I5grI8XP8H0wDAfs9O
        ongqJXvTUVZJ3bZOfHqsgbKEs6vt1HffYW+I7lMPOe/qN+4=
X-Google-Smtp-Source: ABdhPJy3TfM6nshThKhOgFc73bYv1Dg2ra93FL9Fw7hGDmnU8ExqI9gSmyeqSR0lzf7QncPN+wOHbziKZqL/5WQjZ/s=
X-Received: by 2002:a05:651c:50f:b0:239:3332:2a1e with SMTP id
 o15-20020a05651c050f00b0023933322a1emr2636574ljp.16.1645112401967; Thu, 17
 Feb 2022 07:40:01 -0800 (PST)
MIME-Version: 1.0
References: <20220216134346.11029-1-a-govindraju@ti.com>
In-Reply-To: <20220216134346.11029-1-a-govindraju@ti.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Thu, 17 Feb 2022 16:39:25 +0100
Message-ID: <CAPDyKFqORZ-8aGQvfm8bSVLUzDGK-wWDRr+ABFLpH0q+D92EYg@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mmc: sdhci-am654: Add compatible string for
 AM62 SoC
To:     Aswath Govindraju <a-govindraju@ti.com>
Cc:     Vignesh Raghavendra <vigneshr@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 16 Feb 2022 at 14:43, Aswath Govindraju <a-govindraju@ti.com> wrote:
>
> Add compatible string for AM62 SoC in device tree binding of AM654
> SDHCI module as the same IP is used.
>
> Signed-off-by: Aswath Govindraju <a-govindraju@ti.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/sdhci-am654.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/sdhci-am654.yaml b/Documentation/devicetree/bindings/mmc/sdhci-am654.yaml
> index 9fbf16b3bc8d..0566493c4def 100644
> --- a/Documentation/devicetree/bindings/mmc/sdhci-am654.yaml
> +++ b/Documentation/devicetree/bindings/mmc/sdhci-am654.yaml
> @@ -21,6 +21,7 @@ properties:
>        - const: ti,j721e-sdhci-4bit
>        - const: ti,am64-sdhci-8bit
>        - const: ti,am64-sdhci-4bit
> +      - const: ti,am62-sdhci
>        - items:
>            - const: ti,j7200-sdhci-8bit
>            - const: ti,j721e-sdhci-8bit
> --
> 2.17.1
>
