Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3CBD65EF3E1
	for <lists+devicetree@lfdr.de>; Thu, 29 Sep 2022 13:05:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235236AbiI2LFj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Sep 2022 07:05:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42034 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235194AbiI2LFi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Sep 2022 07:05:38 -0400
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com [IPv6:2607:f8b0:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 602189082F
        for <devicetree@vger.kernel.org>; Thu, 29 Sep 2022 04:05:33 -0700 (PDT)
Received: by mail-pl1-x632.google.com with SMTP id b21so951363plz.7
        for <devicetree@vger.kernel.org>; Thu, 29 Sep 2022 04:05:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=yF0bUAb9e3HoD+z9QhDD/iTK1qOjet7jClHpQspWpbs=;
        b=TG+kTV4MscBuL/BeGN5x8R5RiLDNIyFFN5c6jSa6JPSNKBXl65277cbm+Z1C1HiOpY
         keyFP9EmFuc6eJJ+0dEB8pFAPd/1oM0Pv+AEh26OfyguHgIjOlUN9lCpXo48nkJFf+mP
         +18GSQgtLcghF1ouTFPFoFw5XS358kX7EMQgFMnPxgEwxDsfnWJBbHgFKgmSwCL1g5HV
         BAGdaHYNFS6J2zPP0WHItPjATKXuzOSMuPz8zfLKS0w6+a0vLZEvL1/m8ej75kYrEAXy
         Yf23Ir5ayE50dLGh3lUvAgyDzbU44t8hNAo+Pb4agxZuRry5zAmVofJ1fETUzMhD3OAE
         XScg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=yF0bUAb9e3HoD+z9QhDD/iTK1qOjet7jClHpQspWpbs=;
        b=DDSY/3UbqYq0DYhF+8aZqbf4TkZdfLvnEgCp0JPwsYIDPMIeXCz4qs0AH+mQS37dnH
         ucAWxxHqkDXUtKvwkPcStzdxlyjoDgnbGevFGaN1+xCxRi039T3uftpzW1djbUjZH/gO
         frwyEv44Tlpo9dntLrWsmValDHriLgTezy3BGz8tFcm8lfW2ImxmoJe7OW7STCd/MKxC
         pbe2RMxpFcmM2J7LJ13hE5GAcCNx4Q/088cXLWTm3K8zh5YuxSk/yZ2iKoDa68JDwA1v
         D5r+gEiGSuCSgjOBiIExwSe2lguJdbyebzY17TQvByfX/GLZK1J3tXaEGJpsIPSEH09a
         HB9A==
X-Gm-Message-State: ACrzQf10GihCoA4UqCrIb6O5BdYThOiR1hzcoRDOUJDinHbfjsnnmU04
        ou1dT4Q9SSy3NCeGNNCNAL2PaFlIHqRWqEJ6a73lDw==
X-Google-Smtp-Source: AMsMyM4LXTZNTpbaB2YmB8EbmJUv7BOvclWHiFwcjBsNhs0fFFq4epzNQM4I8A6yWcE4sNQYLNDKd0OitvJy0pbVQV0=
X-Received: by 2002:a17:90a:aa96:b0:205:bb67:a85f with SMTP id
 l22-20020a17090aaa9600b00205bb67a85fmr3093514pjq.202.1664449533446; Thu, 29
 Sep 2022 04:05:33 -0700 (PDT)
MIME-Version: 1.0
References: <20220928165420.1212284-1-dinguyen@kernel.org> <CAPDyKFp5oPuOz9A=37pRTvq7JPtJRdduEgmU9g+eUm0K=dZjUg@mail.gmail.com>
 <0fff7922-7932-dda7-f476-32f4b0d09fa0@linaro.org>
In-Reply-To: <0fff7922-7932-dda7-f476-32f4b0d09fa0@linaro.org>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Thu, 29 Sep 2022 13:04:57 +0200
Message-ID: <CAPDyKFohA9gKu8qwR+YUCy46tepO3k7fQqcHPvjYMznDmckLzg@mail.gmail.com>
Subject: Re: [PATCHv4 1/3] dt-bindings: mmc: synopsys-dw-mshc: document "altr,sysmgr-syscon"
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Dinh Nguyen <dinguyen@kernel.org>, jh80.chung@samsung.com,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
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

On Thu, 29 Sept 2022 at 11:39, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 29/09/2022 11:24, Ulf Hansson wrote:
> > On Wed, 28 Sept 2022 at 18:54, Dinh Nguyen <dinguyen@kernel.org> wrote:
> >>
> >> Document the optional "altr,sysmgr-syscon" binding that is used to
> >> access the System Manager register that controls the SDMMC clock
> >> phase.
> >>
> >> Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
> >> ---
> >> v4: add else statement
> >> v3: document that the "altr,sysmgr-syscon" binding is only applicable to
> >>     "altr,socfpga-dw-mshc"
> >> v2: document "altr,sysmgr-syscon" in the MMC section
> >> ---
> >>  .../bindings/mmc/synopsys-dw-mshc.yaml        | 31 +++++++++++++++++--
> >>  1 file changed, 28 insertions(+), 3 deletions(-)
> >>
> >> diff --git a/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml
> >> index ae6d6fca79e2..b73324273464 100644
> >> --- a/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml
> >> +++ b/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml
> >> @@ -6,9 +6,6 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
> >>
> >>  title: Synopsys Designware Mobile Storage Host Controller Binding
> >>
> >> -allOf:
> >> -  - $ref: "synopsys-dw-mshc-common.yaml#"
> >> -
> >>  maintainers:
> >>    - Ulf Hansson <ulf.hansson@linaro.org>
> >>
> >> @@ -38,6 +35,34 @@ properties:
> >>        - const: biu
> >>        - const: ciu
> >>
> >> +  altr,sysmgr-syscon:
> >> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> >> +    items:
> >> +      - items:
> >> +          - description: phandle to the sysmgr node
> >> +          - description: register offset that controls the SDMMC clock phase
> >> +    description:
> >> +      Contains the phandle to System Manager block that contains
> >> +      the SDMMC clock-phase control register. The first value is the pointer
> >> +      to the sysmgr and the 2nd value is the register offset for the SDMMC
> >> +      clock phase register.
> >> +
> >> +allOf:
> >> +  - $ref: "synopsys-dw-mshc-common.yaml#"
> >> +
> >> +  - if:
> >> +      properties:
> >> +        compatible:
> >> +          contains:
> >> +            const:
> >> +              - altr,socfpga-dw-mshc
> >> +    then:
> >> +      required:
> >> +        - altr,sysmgr-syscon
> >> +    else:
> >> +      properties:
> >> +        altr,sysmgr-syscon: false
> >
> > So this change will not be backwards compatible with existing DTBs. I
> > noticed that patch2 updates the DTS files for the arm64 platforms, but
> > there seems to be some arm32 platforms too. Isn't this going to be a
> > problem?
> >
>
> The backwards compatibility is actually expressed by the driver. If the
> driver keeps ABI, we can change bindings so that all DTS are being
> updated to pass the checks.

Right.

So, I should probably have responded to patch3 instead, as backwards
compatibility doesn't seem to be supported, unless I am mistaken. But
let's move the discussion over to that thread instead.

>
> On the other hand, the commit should express why it changes the bindings
> in incompatible way - this is lacking here.
>
> Best regards,
> Krzysztof
>

Kind regards
Uffe
