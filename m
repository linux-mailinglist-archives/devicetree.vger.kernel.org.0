Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2DC3B2EBC41
	for <lists+devicetree@lfdr.de>; Wed,  6 Jan 2021 11:21:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726390AbhAFKUG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Jan 2021 05:20:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46320 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726481AbhAFKUF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Jan 2021 05:20:05 -0500
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 28CE0C061357
        for <devicetree@vger.kernel.org>; Wed,  6 Jan 2021 02:19:25 -0800 (PST)
Received: by mail-ej1-x631.google.com with SMTP id w1so4234794ejf.11
        for <devicetree@vger.kernel.org>; Wed, 06 Jan 2021 02:19:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=RfZtGQOi+5ktSfM/61J9fTw+YXtvZLAc0qQROTziMcg=;
        b=KGcqmOxid4eoEJ+pZnFPmnA4x82JGwICQnalxD1np2003L3BY1Fv6DEOfsx5LlJ2WW
         A05W3e8TzJu00JCsmnF1i7hfrBxSNdzhL810cP+7XGSGXmIWuzWGHJGPOB0zVf8uWOEx
         CnGn93JrTkN+qjLtGe+t7Se5h29RYirTKVXT0IN7nljlxesacJx0mKl0VTGZNJD1Mqpo
         Lp35sDNY7FmRX6uOidtzCiUNcD0ZicbcEacQkiaGosNFAdoplq8NRTq4gSMKJaFifYv7
         twzAJJ7EpkchymQY/ksgakKTiNnH5+y/+vnttzwOkgomI8F8SGggCi0PkNpizW1EBJ60
         5RbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=RfZtGQOi+5ktSfM/61J9fTw+YXtvZLAc0qQROTziMcg=;
        b=e9r6JBHe/bkPlDpuwtpGMDLuZGkuYrjSo4wa+s9E9c1oCZYaxdvSNTx1ZsWhHxSQCl
         ytYDFn6Pg0D+/fKq8w8S2rHXlHHxKXQIEhV7PPrwjrEIMb4geabR399Ti2qUs1CYHGWz
         QiydVwkVsXz2j2wg1RT+yDV9KidIDhOS4jXdLMAS3jmD5r+wWhL8sRL0fPwiZ8XATtRl
         ei9SqpAacbuQrIBriSJCGy1zlvYibN+IzmvdESLWkq0LCauj2RctWbO32WgYxh7ExHtE
         ozLXEAm0lgvcJec4ynmfbaqYB7G6sJlgIykVJ2v9rtS+1Q2QR3H/GRCflmeDcDsNaB/T
         NrNg==
X-Gm-Message-State: AOAM532ojFityC39gqFPUq2cRu2Jg1qdOyYrYKgvqDK/0NZOsM9Qk+Yx
        jhxZD6tUOtTj5MOxD2nDX653ZOy8H6UAvng/d45csCLc5u7WVA==
X-Google-Smtp-Source: ABdhPJzFL62QFK60+hdZhAbcob4Oy0iqPN0jL/7rw1dMuYWKmsX2ysMroEHDd8HZ8dnKB/aM7ZHeLBjaxG9IzDmF7HI=
X-Received: by 2002:a17:906:d8dc:: with SMTP id re28mr2413800ejb.168.1609928363766;
 Wed, 06 Jan 2021 02:19:23 -0800 (PST)
MIME-Version: 1.0
References: <20201209165733.8204-1-a-govindraju@ti.com>
In-Reply-To: <20201209165733.8204-1-a-govindraju@ti.com>
From:   Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date:   Wed, 6 Jan 2021 11:19:13 +0100
Message-ID: <CAMpxmJWKzd4DLjp54PN0Wojc+twyMfnKMhmnxf+hT_xuiLDaYA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: gpio: Add compatible string for AM64 SoC
To:     Aswath Govindraju <a-govindraju@ti.com>
Cc:     Sekhar Nori <nsekhar@ti.com>, Keerthy <j-keerthy@ti.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-gpio <linux-gpio@vger.kernel.org>,
        linux-devicetree <devicetree@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Dec 9, 2020 at 5:57 PM Aswath Govindraju <a-govindraju@ti.com> wrote:
>
> Add compatible string for AM64 SoC in device tree binding of davinci GPIO
> modules as the same IP is used.
>
> Signed-off-by: Aswath Govindraju <a-govindraju@ti.com>
> ---
>  Documentation/devicetree/bindings/gpio/gpio-davinci.txt | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/gpio/gpio-davinci.txt b/Documentation/devicetree/bindings/gpio/gpio-davinci.txt
> index cd91d61eac31..696ea46227d1 100644
> --- a/Documentation/devicetree/bindings/gpio/gpio-davinci.txt
> +++ b/Documentation/devicetree/bindings/gpio/gpio-davinci.txt
> @@ -7,6 +7,7 @@ Required Properties:
>                         "ti,k2g-gpio", "ti,keystone-gpio": for 66AK2G
>                         "ti,am654-gpio", "ti,keystone-gpio": for TI K3 AM654
>                         "ti,j721e-gpio", "ti,keystone-gpio": for J721E SoCs
> +                       "ti,am64-gpio", "ti,keystone-gpio": for AM64 SoCs
>
>  - reg: Physical base address of the controller and the size of memory mapped
>         registers.
> --
> 2.17.1
>

Patch applied with Rob's Ack.

Thanks!
Bartosz
