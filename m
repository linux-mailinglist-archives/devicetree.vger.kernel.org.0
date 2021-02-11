Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DB752318D5C
	for <lists+devicetree@lfdr.de>; Thu, 11 Feb 2021 15:29:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230191AbhBKO1m (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 Feb 2021 09:27:42 -0500
Received: from mail.kernel.org ([198.145.29.99]:44064 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232254AbhBKOZb (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 11 Feb 2021 09:25:31 -0500
Received: by mail.kernel.org (Postfix) with ESMTPSA id 849A764ECB;
        Thu, 11 Feb 2021 14:22:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1613053364;
        bh=+vkDUGE9k0q1TcP98IVbVBVpIIpuD2DYvqDyFTRnLO0=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=drTjfn23jTZ8ZOR++TJJc5hgtb8c6rsepYRLvAgrE5G7IXsNeLs+HnLZTccQivJtX
         +2cEwz4RGkKBS293Vy0KAzuGquiZUKRXMsz8wr8lJATSMxX01J3x+ntlCDBFfLOfUI
         ZGzMsE4+gqIKQoPplKpOV/UQq/ZWL5wj0s+ki00+GsUXUewMAWG9q+QdUYfKMwy+XC
         iGT/WA7LR6is60NU8ah8ozFQSv+LxEppwtVp+eMpqA2Nm/fnNdsvA99bCMBgPxwTNO
         +qKJghtnWI02Jb9IwQ2DK2YMNO/HibQSO8E07GShgSRBD3Ibbs1IoPXUtbHH75pOji
         VEpwSkdWrN44A==
Received: by mail-ej1-f48.google.com with SMTP id hs11so10364990ejc.1;
        Thu, 11 Feb 2021 06:22:44 -0800 (PST)
X-Gm-Message-State: AOAM530Crc1s8Rkak9TqUI9UEPM+uHtx0OOZHrG5P0PxoD1Cqfh4IQIj
        GFIpJZjESQLlZ9XXsZ5DMNwAmL8o0mnsIayUrg==
X-Google-Smtp-Source: ABdhPJwKIfiKYnrNMTzh7e8xbTFeq+QInygJS8clP7cezHBDgdX1QEhivWxCl4NIkaUIuJGolPZ2XLsPhQWHYFihhss=
X-Received: by 2002:a17:906:af41:: with SMTP id ly1mr8422121ejb.525.1613053362937;
 Thu, 11 Feb 2021 06:22:42 -0800 (PST)
MIME-Version: 1.0
References: <3950d7da35130a850ba9217ac7bfef781fa850b2.1613042485.git.viresh.kumar@linaro.org>
In-Reply-To: <3950d7da35130a850ba9217ac7bfef781fa850b2.1613042485.git.viresh.kumar@linaro.org>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Thu, 11 Feb 2021 08:22:30 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLfLQe7bxcGYeoSWsBnS+JoagLcOZ-RGS0hbdwjRhfBqA@mail.gmail.com>
Message-ID: <CAL_JsqLfLQe7bxcGYeoSWsBnS+JoagLcOZ-RGS0hbdwjRhfBqA@mail.gmail.com>
Subject: Re: [DTC][RFC] dtc: Allow better error reporting
To:     Viresh Kumar <viresh.kumar@linaro.org>
Cc:     David Gibson <david@gibson.dropbear.id.au>,
        Vincent Guittot <vincent.guittot@linaro.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Bill Mills <bill.mills@linaro.org>, devicetree@vger.kernel.org,
        Jon Loeliger <loeliger@gmail.com>,
        Devicetree Compiler <devicetree-compiler@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Feb 11, 2021 at 5:27 AM Viresh Kumar <viresh.kumar@linaro.org> wrote:
>
> The dtc tool doesn't do very elaborate error reporting to keep the size
> of the executables small enough for all kind of applications.
>
> This patch tries to provide a way to do better error reporting, without
> increasing the size of the executables for such cases (where we don't
> want elaborate error reporting).
>
> The error reporting will only be enabled if 'VERBOSE' (as -DVERBOSE)
> flag is passed during compilation of the tools.
>
> This also updates the fdtoverlay tool to do better error reporting,
> which is required by the Linux Kernel for now.
>
> Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
>
> ---
> Hi David,
>
> Unfortunately I am not a core DT guy and don't understand most of the
> stuff going on here. I tried to do minimal changes to get more
> information out on errors and it may require someone who understands the
> code well to write better error logs.
>
> FWIW, I stumbled upon this because of the discussion that happened here:
>
> https://lore.kernel.org/lkml/74f8aa8f-ffab-3b0f-186f-31fb7395ebbb@gmail.com/
>
> Thanks.
>
> ---
>  dtc.h                |   6 ++
>  fdtoverlay.c         |   1 +
>  libfdt/fdt_overlay.c | 156 ++++++++++++++++++++++++++++++++++---------
>  3 files changed, 132 insertions(+), 31 deletions(-)
>
> diff --git a/dtc.h b/dtc.h
> index d3e82fb8e3db..b8ffec155263 100644
> --- a/dtc.h
> +++ b/dtc.h
> @@ -29,6 +29,12 @@
>  #define debug(...)
>  #endif
>
> +#ifdef VERBOSE
> +#define dtc_err(fmt, ...)      fprintf(stderr, "DTC: %s: %d: " fmt, __func__, __LINE__, ##__VA_ARGS__)
> +#else
> +#define dtc_err(fmt, ...)
> +#endif

This needs to go in libfdt.

The executables can always print, it's the libfdt library that may or
may not be able to.

Rob
