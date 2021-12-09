Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2FBA446F5EA
	for <lists+devicetree@lfdr.de>; Thu,  9 Dec 2021 22:28:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231224AbhLIVcN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Dec 2021 16:32:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50168 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229505AbhLIVcN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Dec 2021 16:32:13 -0500
Received: from sin.source.kernel.org (sin.source.kernel.org [IPv6:2604:1380:40e1:4800::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 53A1EC061746
        for <devicetree@vger.kernel.org>; Thu,  9 Dec 2021 13:28:39 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by sin.source.kernel.org (Postfix) with ESMTPS id 9EF11CE289F
        for <devicetree@vger.kernel.org>; Thu,  9 Dec 2021 21:28:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CBEF8C341C6
        for <devicetree@vger.kernel.org>; Thu,  9 Dec 2021 21:28:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1639085315;
        bh=KVnqwJNCU1k264ybp58mfd+XaEdcTxCNIxyFR0lDK10=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=Jg7KFeaB/siysdHuvhvsWnlbaa1P39AguantLmTc5jqUQF6WmLQcWyh2t3W6qmMNC
         r+ddGr1LsIfArdiBWmBqTsKpzH0eHRc0tjsTIUmFBt+CdhB5FgpXlXkyuL4N/+j5dr
         EyhoLlrNaKTVPJXdxaBd9QqBXdAdNntSvJbdhr8vtq9SCDabC+25XfKOGu+vAjBhRk
         gbiPEIQk2NJSQDza8VfetN4wR+LH8Pe/jIgPagkn1xCAM07w+EhdCJ3ONxkOEmBOLG
         eURv4FoeXzQSdZuskpFwf4c+9dbxooBIYXPR5glClijMPQcA/L7FZhY94vQ47FgHlG
         +8uHwFlo1SxMQ==
Received: by mail-ed1-f48.google.com with SMTP id w1so23685405edc.6
        for <devicetree@vger.kernel.org>; Thu, 09 Dec 2021 13:28:35 -0800 (PST)
X-Gm-Message-State: AOAM5332Y+54O4eBEvE+A041AJm5En7VPr0UCt9wRbkzbV5ZvLSMD72h
        n5P6bAA9c2RVBbTCietytBbu7Ndub3DUXNeoiA==
X-Google-Smtp-Source: ABdhPJzon9vYLRGGDbDWMlS015feOASbjF/BGcFwN/cqIGqJWawh6rBZ6Sdc8TzNUfcAI7qoz59P6v4KbRXA2uW2UVg=
X-Received: by 2002:a17:906:5e14:: with SMTP id n20mr18760803eju.466.1639085314118;
 Thu, 09 Dec 2021 13:28:34 -0800 (PST)
MIME-Version: 1.0
References: <20211120000356.1850639-1-sjg@chromium.org>
In-Reply-To: <20211120000356.1850639-1-sjg@chromium.org>
From:   Rob Herring <robh@kernel.org>
Date:   Thu, 9 Dec 2021 15:28:22 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLWOXhwsUzGjbZtTb46a6qQSn3S2rRPYd3C03kHijopcw@mail.gmail.com>
Message-ID: <CAL_JsqLWOXhwsUzGjbZtTb46a6qQSn3S2rRPYd3C03kHijopcw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: u-boot: Add a few more options bindings
To:     Simon Glass <sjg@chromium.org>
Cc:     devicetree@vger.kernel.org, Tom Rini <trini@konsulko.com>,
        U-Boot Mailing List <u-boot@lists.denx.de>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Nov 19, 2021 at 6:04 PM Simon Glass <sjg@chromium.org> wrote:
>
> This adds three new options with varying degree of interest / precedent.

Send these to devicetree-spec list so it's not in the flood of
devicetree-discuss.

>
> This being sent to the mailing list since it might attract more review.
> A PR will be sent when this has had some review. That is why the file
> path is set up for https://github.com/devicetree-org/dt-schema rather
> than the Linux kernel.
>
> Signed-off-by: Simon Glass <sjg@chromium.org>
> ---
>
>  schemas/options/u-boot.yaml | 51 +++++++++++++++++++++++++++++++++++++
>  1 file changed, 51 insertions(+)
>
> diff --git a/schemas/options/u-boot.yaml b/schemas/options/u-boot.yaml
> index 71dfda7..b8bdec1 100644
> --- a/schemas/options/u-boot.yaml
> +++ b/schemas/options/u-boot.yaml
> @@ -71,6 +71,37 @@ properties:
>        2: use simplified command line (e.g. avoid hush)
>        3... reserved
>
> +  load-environment:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    default: 1
> +    maximum: 1
> +    description: |
> +      This allows control over whether U-Boot loads its environment after
> +      relocation. This normally happens automatically, but can pose a security
> +      risk, so disabling it in certain situations is useful.
> +
> +      Note: This could be a boolean. It is defined as an integer since that
> +      allows changing the value without resizing the devicetree. I'm not sure
> +      how ugly that is, but IMO the fact that 'false' boolean values are
> +      represented by being missing is a bit of a pain. One must either add or

But they do save space. ;)

> +      delete the property.
> +
> +      Values:
> +
> +      0: don't load the environment
> +      1: do load the environment
> +
> +  no-apm-final:
> +    $ref: /schemas/types.yaml#/definitions/flag
> +    description: |
> +      For devices running on coreboot, this tells U-Boot not to lock down the
> +      Intel Management Engine (ME) registers. This allows U-Boot to access the
> +      hardware more fully for platforms that need it.
> +
> +      Absence of this property indicates that the ME registers should be locked
> +      down as part of U-Boot's start-up sequence and before the command line is
> +      available.

Perhaps prefix with 'intel' given it is Intel specific.

> +
>    silent-console:
>      $ref: /schemas/types.yaml#/definitions/uint32
>      default: 0
> @@ -88,6 +119,23 @@ properties:
>          enabled)
>        2: console output is suppressed and not recorded
>
> +  spl-payload-offset:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    default: 0
> +    description: |
> +      If present (and SPL is controlled by the devicetree), this allows the
> +      offset of the SPL payload (typically U-Boot) to be specified. The offset
> +      is in bytes from the start of the media (typically SPI flash).
> +
> +      Note: This is quite widely used in U-Boot, but since v2018.01 it is
> +      possible to use Binman instead, to provide this offset (and various
> +      others) to SPL, or even to U-Boot proper. So far I have not tried sending
> +      the Binman bindings upstream, but perhaps that should be done instead.

At this point, you are the upstream for binman...

> +
> +      See here for details:
> +
> +      https://u-boot.readthedocs.io/en/latest/develop/package/binman.html#image-description-format
> +
>  required:
>    - compatible
>
> @@ -101,6 +149,9 @@ examples:
>          bootcmd = "vboot go auto";
>          bootdelay-sec = <(-1)>;
>          bootsecure = <1>;
> +        load-environment = <0>;
> +        no-apm-final;
>          silent-console = <1>;
> +        spl-payload-offset = <0x40000>;   /* 256K */
>        };
>      };
> --
> 2.34.0.rc2.393.gf8c9666880-goog
>
