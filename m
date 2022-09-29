Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 152655EF1DB
	for <lists+devicetree@lfdr.de>; Thu, 29 Sep 2022 11:25:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234683AbiI2JZG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Sep 2022 05:25:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42898 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234315AbiI2JZE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Sep 2022 05:25:04 -0400
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E23D5386AC
        for <devicetree@vger.kernel.org>; Thu, 29 Sep 2022 02:25:02 -0700 (PDT)
Received: by mail-pj1-x102c.google.com with SMTP id u59-20020a17090a51c100b00205d3c44162so5381097pjh.2
        for <devicetree@vger.kernel.org>; Thu, 29 Sep 2022 02:25:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=1u95457ImSK7IT/OW0kMB2C3/yW1UVlDtXtAOxPIYzE=;
        b=poGnVSGusP35IFp3mFe4IaXLOyomB2ncxVguPLDQDDC4AskRehuKsH6dCXZRF+DLdA
         UFuVZvkzfIk/SuGZ9FEUAQ1GykDklyYkscSD63TxhY3653Ghgv38kXFfbtnWzTDKN3dC
         vlboM3r0DZdINx0t04k7LmROOWsd0OUBqSeoZZYCxsf8g0ydW86C5KVGaKdtFAXV14Uq
         /OeEXvCV1M4P+Cq1yIr4Rerx/YbK8EjEH/JfG1jvVDTstSuO/xiyyaX8Iy2aG1eCa6Bd
         leoWdi0vimI559jxe3IU7f1FM9fVUB0GORj6LVkXqfs1kpPkC+dwrsJ3AC5PSJdbjET6
         IKpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=1u95457ImSK7IT/OW0kMB2C3/yW1UVlDtXtAOxPIYzE=;
        b=yRoSrIsIV/5+Ng3TXMF7sKFbgPteeRszxPRlEYf7lWlZp2cCPLy9migb3ydGJFtqmw
         1M+HOS+ih1Zvg+xnlvE2xP1l296PVZa4eSOVaSjTVpbJD6zFDw1atuWS9Azrm8Pf3VuG
         LNvo8QLO+EESD8K/8vFbKsA0H3HwjaXgU0QQKeWEGOvfBX7+DuvflkwFta27X/gOYBP7
         nElqIaO5TZHg7wZu3zi9bTpjBhd0nf45kTGr2RNqhkVA8eCHVW44q3Jm1yIgnrQcfk+r
         90qO1eHXCna0z83hndMbf5SkikEb5N8P3cZ3mdjCEAaPxvXa5ESik6tP+CY9THlrQGnz
         n17A==
X-Gm-Message-State: ACrzQf3tRpR3HSWZeKMPgdwQs79tEZPT6gvjEs0Ox3mDIle2uOkKRO85
        MQtI7KNfbzNC4G695wV1K0EdavsTBWEg2JCgwW0THA==
X-Google-Smtp-Source: AMsMyM5nEwK755O4EVFdHZ1YVXdjoPdmRUI4r48lBSfsjdgk2YUg7wxh9pzlZVDPVSun9kbE66thrfuzqWfxlW7MWCA=
X-Received: by 2002:a17:90a:aa96:b0:205:bb67:a85f with SMTP id
 l22-20020a17090aaa9600b00205bb67a85fmr2654224pjq.202.1664443502430; Thu, 29
 Sep 2022 02:25:02 -0700 (PDT)
MIME-Version: 1.0
References: <20220928165420.1212284-1-dinguyen@kernel.org>
In-Reply-To: <20220928165420.1212284-1-dinguyen@kernel.org>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Thu, 29 Sep 2022 11:24:24 +0200
Message-ID: <CAPDyKFp5oPuOz9A=37pRTvq7JPtJRdduEgmU9g+eUm0K=dZjUg@mail.gmail.com>
Subject: Re: [PATCHv4 1/3] dt-bindings: mmc: synopsys-dw-mshc: document "altr,sysmgr-syscon"
To:     Dinh Nguyen <dinguyen@kernel.org>
Cc:     jh80.chung@samsung.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-mmc@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 28 Sept 2022 at 18:54, Dinh Nguyen <dinguyen@kernel.org> wrote:
>
> Document the optional "altr,sysmgr-syscon" binding that is used to
> access the System Manager register that controls the SDMMC clock
> phase.
>
> Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
> ---
> v4: add else statement
> v3: document that the "altr,sysmgr-syscon" binding is only applicable to
>     "altr,socfpga-dw-mshc"
> v2: document "altr,sysmgr-syscon" in the MMC section
> ---
>  .../bindings/mmc/synopsys-dw-mshc.yaml        | 31 +++++++++++++++++--
>  1 file changed, 28 insertions(+), 3 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml
> index ae6d6fca79e2..b73324273464 100644
> --- a/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml
> +++ b/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml
> @@ -6,9 +6,6 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
>
>  title: Synopsys Designware Mobile Storage Host Controller Binding
>
> -allOf:
> -  - $ref: "synopsys-dw-mshc-common.yaml#"
> -
>  maintainers:
>    - Ulf Hansson <ulf.hansson@linaro.org>
>
> @@ -38,6 +35,34 @@ properties:
>        - const: biu
>        - const: ciu
>
> +  altr,sysmgr-syscon:
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    items:
> +      - items:
> +          - description: phandle to the sysmgr node
> +          - description: register offset that controls the SDMMC clock phase
> +    description:
> +      Contains the phandle to System Manager block that contains
> +      the SDMMC clock-phase control register. The first value is the pointer
> +      to the sysmgr and the 2nd value is the register offset for the SDMMC
> +      clock phase register.
> +
> +allOf:
> +  - $ref: "synopsys-dw-mshc-common.yaml#"
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const:
> +              - altr,socfpga-dw-mshc
> +    then:
> +      required:
> +        - altr,sysmgr-syscon
> +    else:
> +      properties:
> +        altr,sysmgr-syscon: false

So this change will not be backwards compatible with existing DTBs. I
noticed that patch2 updates the DTS files for the arm64 platforms, but
there seems to be some arm32 platforms too. Isn't this going to be a
problem?

> +
>  required:
>    - compatible
>    - reg
> --
> 2.25.1
>

Kind regards
Uffe
