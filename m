Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BE28350A152
	for <lists+devicetree@lfdr.de>; Thu, 21 Apr 2022 15:56:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1388341AbiDUN6L (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Apr 2022 09:58:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34650 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1388321AbiDUN6L (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Apr 2022 09:58:11 -0400
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F133C2C100
        for <devicetree@vger.kernel.org>; Thu, 21 Apr 2022 06:55:20 -0700 (PDT)
Received: by mail-lj1-x233.google.com with SMTP id r18so5900915ljp.0
        for <devicetree@vger.kernel.org>; Thu, 21 Apr 2022 06:55:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=0K5sa4UCW+AAk8i4/ssQSDWQtlDxhnoOfuuhPz50cEY=;
        b=jGxPAuP4XxEcbpP5UQiKSIXfu1FSfEmNm582+CatDKdMYg6j5lpR1+a78whkdNttjP
         sAbHbXu9KSFSGXYjPudc54+LySEdPjw/trgs9d6JIF4TNUmtaFa4eTURMugA4K9+lUgV
         m8T9AAZ+2HuqO2HehsMjmVTlmBc0QJG4wx/vZ9qpv6t4hz8AM0Zcrj43tMH+oI8ntl3o
         DfVNQx07ST+rV77ru3sLky5iwzKbl+ur+VOnG8M2H9Rx0CRKYiAOguwq3NxjhJQEK11u
         PM5V/L6ixUoabkzioVbGJiu2nMdVCFXvo/0Yi/Ccwbq2TwHF+88QfhDEUFDOrbmd4+vM
         PEDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=0K5sa4UCW+AAk8i4/ssQSDWQtlDxhnoOfuuhPz50cEY=;
        b=IGWdtLzfuBu9QN4WAcO6vsBUpfOGMiveXUtwEeO4jIODSFU/ShnX4kMIGV7P8ccWdY
         FB5sJX3Yy2pJtUYLQwUKZJuF35tD8rjpvM7uqWtyZcfxMx7Wrf6z/GviEQkvX+VMrPIx
         C0OPGaAxzoAGWFTWr1fdHHhn2cIAKhGNggA4M6bigSHb+diowBZfBYRHm622TfCJuFNE
         51tvqH6IWDZeHqefS1AFhSDz4yip/F6+Ii6Ulqw4JKxa6BtDHJ2XYRaBhzlMWtYoyAWX
         YfSpjc40VP5rw77yr3gQIu3c6+hpouyRRgZK6Qnws9RhXzAydf/AozZsi0tfPReFHf6H
         gqXw==
X-Gm-Message-State: AOAM533ehp5+YD3xLpZi3+9iu83RFmhikS8WGQANpC41NXoP+vLekKfX
        aV+z6vlm9qJs4+mVPAQtxcXndFS1jNvsnfri2EJ6IQ==
X-Google-Smtp-Source: ABdhPJw9+pH0JKX02raXdY3bFsTuK+Pi7yhGUW9FyrJtFC00/H/UBtSWuEUhk9cSRloTjSSG+8BIiRLJSajSNoBWl4E=
X-Received: by 2002:a2e:8199:0:b0:24d:c3cc:ff45 with SMTP id
 e25-20020a2e8199000000b0024dc3ccff45mr9937023ljg.229.1650549319281; Thu, 21
 Apr 2022 06:55:19 -0700 (PDT)
MIME-Version: 1.0
References: <20220417144223.649201-1-linus.walleij@linaro.org>
In-Reply-To: <20220417144223.649201-1-linus.walleij@linaro.org>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Thu, 21 Apr 2022 15:54:43 +0200
Message-ID: <CAPDyKFotPog=aez576hFeFWjy52GB14PvsS+772DWpim1jB1uQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mmc: Add small binding node on level shifters
To:     Linus Walleij <linus.walleij@linaro.org>
Cc:     linux-mmc@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 17 Apr 2022 at 16:44, Linus Walleij <linus.walleij@linaro.org> wrote:
>
> The VQMMC is often provided by a level shifter, so drop a small note
> in the bindings that this can be the case and how that is done.
> It is helpful information since this is pretty common.
>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/mmc-controller.yaml | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/mmc/mmc-controller.yaml b/Documentation/devicetree/bindings/mmc/mmc-controller.yaml
> index 513f3c8758aa..ff5ce89e5111 100644
> --- a/Documentation/devicetree/bindings/mmc/mmc-controller.yaml
> +++ b/Documentation/devicetree/bindings/mmc/mmc-controller.yaml
> @@ -298,7 +298,10 @@ properties:
>
>    vqmmc-supply:
>      description:
> -      Supply for the bus IO line power
> +      Supply for the bus IO line power, such as a level shifter.
> +      If the level shifter is controlled by a GPIO line, this shall
> +      be modeled as a "regulator-fixed" with a GPIO line for
> +      switching the level shifter on/off.
>
>    mmc-pwrseq:
>      $ref: /schemas/types.yaml#/definitions/phandle
> --
> 2.35.1
>
