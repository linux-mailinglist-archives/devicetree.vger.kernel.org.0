Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6256F4579FD
	for <lists+devicetree@lfdr.de>; Sat, 20 Nov 2021 01:14:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233909AbhKTARE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 Nov 2021 19:17:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50904 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233135AbhKTARE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 Nov 2021 19:17:04 -0500
Received: from mail-ua1-x92d.google.com (mail-ua1-x92d.google.com [IPv6:2607:f8b0:4864:20::92d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9AA32C061574
        for <devicetree@vger.kernel.org>; Fri, 19 Nov 2021 16:14:01 -0800 (PST)
Received: by mail-ua1-x92d.google.com with SMTP id b17so24682090uas.0
        for <devicetree@vger.kernel.org>; Fri, 19 Nov 2021 16:14:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=jVrFLLT7t7iXERj2bUTMJYNTY4WZmty9hYe4xU9Zct4=;
        b=VeMchRhdE/cEIMKW389APtPX5jOG59f8KnwAysrR7AiUQosMXcTdX7IKm/VZtpAYO/
         LVXFSgA7xcuLvGJHclGvXSKYtMNcwLdbN0erboRx6M8XwlxbTkMtRbxWUFqPYBJwNxcS
         KeZraSLSzuM+gwSG5Icpj96Avv0V6G7nGE4mY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=jVrFLLT7t7iXERj2bUTMJYNTY4WZmty9hYe4xU9Zct4=;
        b=E02h9GSGER7sp2OHm+E79lnCX+udyds6OMmq2ZdbRKmOVLlV6sC89ELMMFFRUgRnuL
         TOpEQ4EjJNdllI+2yRqFf/vglgzaNiUX6UkE/aU+KSWUyqvBdskzUH74+0wivoekGP5V
         97wMtJOeJ09BswcUFQPW1FsifwPIbCHRMgvb9KEelFrg6iYo6cwrCdQ2YxRNXhh9bG0P
         Ti4QKugwpUwZaGZcS9Tx4q4UVcSohQ4FOgDtp+ekTJFmHKwSp+p8a2LRc2WnASgNmu/q
         6LMJ7HlSGw3JHSGJJS7Jw9sxiiW09WWYu8hRIWMSRuRCi1dodsaZeWfrrEelZO9ALHnG
         6v9w==
X-Gm-Message-State: AOAM532HvK04IEw5qY/FC2v5ztQRY6IkAlgTQeSwR++QVcbmE6xzb1Z7
        hH2zcvqt4X4pdDtUP75X6Qh8zwXxHXlIyhUcTQ/bD7TGQKc=
X-Google-Smtp-Source: ABdhPJxqHZmJLNFCH6uO4zxq3L9kOgvRYggNtwWR/IQXNGk6YBpqdNoZlyA1SYVnU74zUan3+mLhAI2KXvj5tSHKOrQ=
X-Received: by 2002:ab0:66cd:: with SMTP id d13mr55318206uaq.140.1637367240150;
 Fri, 19 Nov 2021 16:14:00 -0800 (PST)
MIME-Version: 1.0
References: <20211120000356.1850639-1-sjg@chromium.org>
In-Reply-To: <20211120000356.1850639-1-sjg@chromium.org>
From:   Simon Glass <sjg@chromium.org>
Date:   Fri, 19 Nov 2021 17:13:48 -0700
Message-ID: <CAPnjgZ0JpmK+8VpYCfwaZC=GUBSWLvdVzxcugT5S=884n6qbpA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: u-boot: Add a few more options bindings
To:     Devicetree Discuss <devicetree@vger.kernel.org>
Cc:     Tom Rini <trini@konsulko.com>,
        U-Boot Mailing List <u-boot@lists.denx.de>,
        Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

+Rob Herring oops


On Fri, 19 Nov 2021 at 17:04, Simon Glass <sjg@chromium.org> wrote:
>
> This adds three new options with varying degree of interest / precedent.
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
