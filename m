Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 346002688AB
	for <lists+devicetree@lfdr.de>; Mon, 14 Sep 2020 11:42:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726340AbgINJmQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Sep 2020 05:42:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49700 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726123AbgINJmP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Sep 2020 05:42:15 -0400
Received: from mail-vk1-xa41.google.com (mail-vk1-xa41.google.com [IPv6:2607:f8b0:4864:20::a41])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A55FFC06174A
        for <devicetree@vger.kernel.org>; Mon, 14 Sep 2020 02:42:15 -0700 (PDT)
Received: by mail-vk1-xa41.google.com with SMTP id t189so3967024vka.10
        for <devicetree@vger.kernel.org>; Mon, 14 Sep 2020 02:42:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=lofEGpAOdv9VKLTBFkELALaBiwoZZBeLnDfQKfPnGWc=;
        b=r1HydzdJaFGX/Wb2URqDIrAkORnKcuoIiBtihscyt9IXv5tn4J2YrwHp+Rlk5HLuLw
         jwDWgVgS4bG41AOBYzYEDqepuTN8P2g3vDbhv/NL+cUfsCfR7z+oE0R1lcYCwYsyhg3Z
         7HjF36WMlpdrkg+/WSAANh6aQj4e08wewbAL/U/u7ROXnoRTwoifkIDoO6J62RIkZkH8
         7e6A6VuRBGROTx51N6UOg/1WbMPZyXvUzGGXzIkdUhb8mYM8Jay2M4DcRZlc37fqm+28
         LuiPi8YeREfkidcriQ91HOPlxxroUQ86ubQ7N0M/iO5on0nGKJIvPIiHzQolD+GXr0vk
         AHaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=lofEGpAOdv9VKLTBFkELALaBiwoZZBeLnDfQKfPnGWc=;
        b=MMoMc9e/bDd8iy6SOWqazoh/7FNTwEmKfuWTPHQpUxdvzmxAa62xXQiqXEeIcKNpV4
         k1apAq7FbcSo0KzowrX+PdEDPAdgomYd6WGnIxo4oZ9Hftgru0wny1qIr4qwjVbDU6ss
         6s1Tw6t55JTugh7VRwEXl//nN1fuYXMyOQkGlLoi0X3t0dBpEYrzAxyZABeLlXAamqJZ
         51qvZAqnoMLupsu2K3FpN0b8OWjjAdtkL06BiMerZlH/febKj/+6femtge1cF2/DY5ET
         r6VRZuMFgmHsIkeRpesdtGo801TtKEicyeqkDL+8gBmx/7hORYf6goUyzxjAwyXTVsVx
         xXyA==
X-Gm-Message-State: AOAM533DG5etlZWKQN3X3mTMsw2Z0cwxX8iiKM7CFLvikRwlgD4XyO6M
        nr+dQCSFf/Q+wlCeDuh9IjNEWVO3CSjQE5TdxaZGoQ==
X-Google-Smtp-Source: ABdhPJy5sfsoQdr+vGacO0I5WzNvlvQDDeaFC3FaJejFIceTY+cEeosM+E+6TqgF2xJnpawCwl17UKP8W1fypUrPlhE=
X-Received: by 2002:a1f:1dcf:: with SMTP id d198mr694666vkd.30.1600076530291;
 Mon, 14 Sep 2020 02:42:10 -0700 (PDT)
MIME-Version: 1.0
References: <20200910105440.3087723-1-andrew@aj.id.au> <20200910105440.3087723-2-andrew@aj.id.au>
In-Reply-To: <20200910105440.3087723-2-andrew@aj.id.au>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Mon, 14 Sep 2020 11:41:34 +0200
Message-ID: <CAPDyKFq+QYzJNT94eFt2EsQBVqQciUoqnMDdrr3DbbkpnHRpCw@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt: bindings: mmc: Add phase control properties for
 the Aspeed SDHCI
To:     Andrew Jeffery <andrew@aj.id.au>
Cc:     "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
        Adrian Hunter <adrian.hunter@intel.com>,
        Joel Stanley <joel@jms.id.au>,
        Rob Herring <robh+dt@kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-aspeed <linux-aspeed@lists.ozlabs.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 10 Sep 2020 at 12:54, Andrew Jeffery <andrew@aj.id.au> wrote:
>
> Add properties to control the phase delay for input and output data
> sampling.
>
> Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> ---
>  Documentation/devicetree/bindings/mmc/aspeed,sdhci.yaml | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/aspeed,sdhci.yaml b/Documentation/devicetree/bindings/mmc/aspeed,sdhci.yaml
> index 987b287f3bff..75effd411554 100644
> --- a/Documentation/devicetree/bindings/mmc/aspeed,sdhci.yaml
> +++ b/Documentation/devicetree/bindings/mmc/aspeed,sdhci.yaml
> @@ -61,6 +61,14 @@ patternProperties:
>        sdhci,auto-cmd12:
>          type: boolean
>          description: Specifies that controller should use auto CMD12
> +      "aspeed,input-phase":
> +        $ref: '/schemas/types.yaml#/definitions/uint32'
> +        description:
> +          The input clock phase delay value.
> +      "aspeed,output-phase":
> +        $ref: '/schemas/types.yaml#/definitions/uint32'
> +        description:
> +          The output clock phase delay value.

We already have a common mmc clk-phase* binding, see
mmc-controller.yaml. As matter of fact, there is one binding per speed
mode.

Could that work for this case as well?

Kind regards
Uffe
