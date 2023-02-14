Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EB3A6696356
	for <lists+devicetree@lfdr.de>; Tue, 14 Feb 2023 13:19:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232078AbjBNMTP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Feb 2023 07:19:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44128 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231745AbjBNMTO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Feb 2023 07:19:14 -0500
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com [IPv6:2607:f8b0:4864:20::1031])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EDE1B279BB
        for <devicetree@vger.kernel.org>; Tue, 14 Feb 2023 04:19:07 -0800 (PST)
Received: by mail-pj1-x1031.google.com with SMTP id z14-20020a17090abd8e00b00233bb9d6bdcso10079566pjr.4
        for <devicetree@vger.kernel.org>; Tue, 14 Feb 2023 04:19:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=uSyTPuLuU1wBaDbWkcoFTMyZUSCsuecKMj0PYuIA5S0=;
        b=UtyFQDh00wwW4KU//WECOJIVyRndF4FW071LndcUwBkhKWW6ETfQGjngKJyH/WLIkO
         HHY3PJL0xDode7S+nxPASS+y+MuAATdqfpNv3VkNNgV/Sxh1gby588iCkO3BJtXnQVsK
         i5Uhg2bvAHkaa5LLYw0up2TgGRQuKydeyZh/ZG9219bxWZOP4Q1FZqJVwlQyktQIV8tB
         hAhV5gu5YkCULjmdugBAyYSyFgjkikIdt85pin/NgfVYeMxxx9ofi9SUCZW9WPXNJup1
         +JeV5ksPQWUKAVej86tjPkY+ahVFKtvScCSpLdzmhMF+FJ9t+XfO/Reg2vsSxkQWq8lb
         hrlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uSyTPuLuU1wBaDbWkcoFTMyZUSCsuecKMj0PYuIA5S0=;
        b=liqUDOM+K79czv5iCeLT3TO988EgEwCrwTt1Kw6BvGO5vKzRilFzqYG7g2ADmIiy0V
         IQXEwyCPvr390PKaWKt9WiOFrxUNZTAPxx3lIfb4qSJ0GgHVmmaXKeVVLvy4WK82V/u/
         VsnNERha6RCQkjq2nA+tfDKyk67AvDCET22Q4G5SpSw2SWHq8xOH5s3n/dLXhg4IZLQ9
         02Q3x45fcbv/GNQY89ZFwwhhfYRlPqk33CwfWCi0kVrZoGEtlqp2AndEjID015UkDRmZ
         9IUWyCrQy0YvxXzMhfMEIl57LwTxb2xtSnn623B5YNe5lITGFsjaqNy3eODPZrozEGmt
         jSEQ==
X-Gm-Message-State: AO0yUKV/4b3vs+OxpYRsAuJamKGKteWR40UGf5Pnnrc10OhqdWZ/1IaN
        3xO6tqTpTHSPYq70c8CCKyQUd+En5I3KL1rpsahzBg==
X-Google-Smtp-Source: AK7set/rppMKL8PmLlE6ZEPS+7aWqreZKZYPF7wXZqHbPA1PNgDb/YZ4rvKhpOEHETPhdtpvcTko9h+d92SGx9X/SuA=
X-Received: by 2002:a17:90a:c710:b0:233:ce0b:5f78 with SMTP id
 o16-20020a17090ac71000b00233ce0b5f78mr2138910pjt.32.1676377147435; Tue, 14
 Feb 2023 04:19:07 -0800 (PST)
MIME-Version: 1.0
References: <20230213045233.32470-1-hayashi.kunihiko@socionext.com>
In-Reply-To: <20230213045233.32470-1-hayashi.kunihiko@socionext.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Tue, 14 Feb 2023 13:18:31 +0100
Message-ID: <CAPDyKFo7LizvRzjbohy9XcL=Nyscj9Dp-VNvUnx94fF409uzZg@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: mmc: Add resets property to cadence SDHCI binding
To:     Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 13 Feb 2023 at 05:52, Kunihiko Hayashi
<hayashi.kunihiko@socionext.com> wrote:
>
> Cadence SDHCI controller allows reset control support on UniPhier SoC.
> Add resets property to cadence SDHCI binding.
>
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/cdns,sdhci.yaml | 3 +++
>  1 file changed, 3 insertions(+)
>
> Changes since v1:
> - Add Acked-by: line
>
> diff --git a/Documentation/devicetree/bindings/mmc/cdns,sdhci.yaml b/Documentation/devicetree/bindings/mmc/cdns,sdhci.yaml
> index d3dce4d6c168..adacd0535c14 100644
> --- a/Documentation/devicetree/bindings/mmc/cdns,sdhci.yaml
> +++ b/Documentation/devicetree/bindings/mmc/cdns,sdhci.yaml
> @@ -29,6 +29,9 @@ properties:
>    clocks:
>      maxItems: 1
>
> +  resets:
> +    maxItems: 1
> +
>    # PHY DLL input delays:
>    # They are used to delay the data valid window, and align the window to
>    # sampling clock. The delay starts from 5ns (for delay parameter equal to 0)
> --
> 2.25.1
>
