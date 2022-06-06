Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EA25F53EF23
	for <lists+devicetree@lfdr.de>; Mon,  6 Jun 2022 22:05:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232328AbiFFUFN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Jun 2022 16:05:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52704 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232991AbiFFUFB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Jun 2022 16:05:01 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7256726AD4;
        Mon,  6 Jun 2022 13:05:00 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 2784FB8198B;
        Mon,  6 Jun 2022 20:04:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BE7DDC34115;
        Mon,  6 Jun 2022 20:04:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1654545897;
        bh=5aJVFO/sTJdAi2jLXXYvc/yW2UHoYPJFra6Dk2+5WnY=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=DoWVmVRitvCQobQsuicMy8434K/lq8spTm2sWnLfgdsHiJevDQ28W1DoCgKSob46v
         dw6X+QZDY/TbkLozRcaeTjqwluLR9kRbm/PWOFp7qau3Vev6o+g4BUppTjAS4rKA8m
         NHUoHhVvaNGazdIZVU7shHYqM9I/n+GDK/Nw7cBUFNJxGur/41BUJGHVfmKzzWbbwi
         sZpjlPocVIIfxvtF/E85c+OmxxZqEwxs7zSXLgzqmtxjwx13Nfi9XjtMmamIHfSrlc
         LRjvcxE8AneSuGu3SNi0idVNg6+CAyrNkESdBaDSY61oPKtGWHzrGiFL8H2xM9pJik
         ijGOCU7XVAjjA==
Received: by mail-vs1-f54.google.com with SMTP id n4so5816484vsm.6;
        Mon, 06 Jun 2022 13:04:57 -0700 (PDT)
X-Gm-Message-State: AOAM532vUADBIkPmZhViP5TjdY68pbPV4SUzXDEJ/0jfk5KmGanPjb+b
        5HWKPqpAlEKFlWOEFeubG5YRhHBY0l40Y7SJRg==
X-Google-Smtp-Source: ABdhPJy1TZS7UPJ5EbpFCNEQV4a7GfqoPObLj16Z9QweoCMwzmJ6gbZtWhnt0K0z1IfEuenJcVxttsOBhPhbJui6GfA=
X-Received: by 2002:a05:6102:1041:b0:349:cfa3:c029 with SMTP id
 h1-20020a056102104100b00349cfa3c029mr10885620vsq.0.1654545896683; Mon, 06 Jun
 2022 13:04:56 -0700 (PDT)
MIME-Version: 1.0
References: <20220428152719.2263164-1-robh@kernel.org>
In-Reply-To: <20220428152719.2263164-1-robh@kernel.org>
From:   Rob Herring <robh@kernel.org>
Date:   Mon, 6 Jun 2022 15:04:45 -0500
X-Gmail-Original-Message-ID: <CAL_JsqK4Z0QBowJrFWbWPyfWZyxqNtDV7_QwfubNYCCuMPVkUQ@mail.gmail.com>
Message-ID: <CAL_JsqK4Z0QBowJrFWbWPyfWZyxqNtDV7_QwfubNYCCuMPVkUQ@mail.gmail.com>
Subject: Re: [dtschema PATCH] schemas: clock: Add example for 'clock-indices'
To:     Ben Dooks <ben.dooks@codethink.co.uk>
Cc:     Mailing List <devicetree-spec@vger.kernel.org>,
        devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-8.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Apr 28, 2022 at 10:27 AM Rob Herring <robh@kernel.org> wrote:
>
> Add description for assigned-clocks properties from clock-binding.txt in
> the Linux kernel.
>
> This is relicensed from GPL-2.0 (the default) to BSD-2-Clause. The Cc list
> are the original authors.
>
> Cc: Ben Dooks <ben.dooks@codethink.co.uk>
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
> Please ack the license change.

Ben, need your ack on this please.

>
>  dtschema/schemas/clock/clock.yaml | 18 +++++++++++++++---
>  1 file changed, 15 insertions(+), 3 deletions(-)
>
> diff --git a/dtschema/schemas/clock/clock.yaml b/dtschema/schemas/clock/clock.yaml
> index 5299653b80b6..433a858ef31e 100644
> --- a/dtschema/schemas/clock/clock.yaml
> +++ b/dtschema/schemas/clock/clock.yaml
> @@ -94,9 +94,21 @@ properties:
>
>    clock-indices:
>      $ref: "/schemas/types.yaml#/definitions/uint32-array"
> -    description: If the identifying number for the clocks in the node
> -      is not linear from zero, then this allows the mapping of identifiers
> -      into the clock-output-names array.
> +    description: |
> +      If the identifying number for the clocks in the node is not linear from
> +      zero, then this allows the mapping of identifiers into the
> +      clock-output-names array.
> +
> +      For example, if we have two clocks <&oscillator 1> and <&oscillator 3>:
> +
> +        oscillator {
> +            compatible = "myclocktype";
> +            #clock-cells = <1>;
> +            clock-indices = <1>, <3>;
> +            clock-output-names = "clka", "clkb";
> +        }
> +
> +      This ensures we do not have any empty strings in clock-output-names
>
>    # Consumer properties
>    clocks:
> --
> 2.34.1
>
