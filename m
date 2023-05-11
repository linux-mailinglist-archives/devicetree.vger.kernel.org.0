Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 862BF6FECAB
	for <lists+devicetree@lfdr.de>; Thu, 11 May 2023 09:23:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237355AbjEKHXN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 May 2023 03:23:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55324 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237393AbjEKHWz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 May 2023 03:22:55 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 580EBE1
        for <devicetree@vger.kernel.org>; Thu, 11 May 2023 00:22:23 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-4f11d267d8bso9176581e87.2
        for <devicetree@vger.kernel.org>; Thu, 11 May 2023 00:22:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=melexis.com; s=google; t=1683789738; x=1686381738;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=zjiGJzhcHW4cwUX6jEfxJPFqAbKs4yiodJtSeCA33Jk=;
        b=PQWwUHoeCx2S717odpeij0CJ19xqH+ZcVTBp6g0vmBfKUi1D6EI/kiJnCYEDx7XphK
         xUGaSG+ZRnzzZDMb076b/dpx3Sshqg9UUTNBkV1UCPGs7v4vBTKg4spRq1pbkw4c+Smj
         taApKCBnJHQw1uKxojx7luMW6rj/7WTvAEHU38YQZdF9Z3zkBq0VWSNlgVs3/6MHWvDC
         eU7SaWZV9/O6bxkfRQqLVylpSoFFr+ysFVL+H5iqQNyQ2kMvxdKsV6N3Gurmo4gxrJZ5
         doW/ZhsOo/YWJA4NzGdSQf/NjYaDt086QrjqtRFH1cpRY7nHx4Y6FcC3O6to6YKc/PPG
         04BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683789738; x=1686381738;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zjiGJzhcHW4cwUX6jEfxJPFqAbKs4yiodJtSeCA33Jk=;
        b=bB6adG5HTeV0E6Z8vZD+hyZTuhZ1jD8PY5Byo+3u/Z/xecR9eKlpExsin/YCq8Q0/S
         M8Ie/qAmAlB8jjjzj6mZliNk023Rns5tPKg6ShkGe89ivHZJs48IoDmPXV09eI7fz64X
         C7K/xN0W5uA9SdGgBcgMBKDG73FaJP+2yjxj/5MsJGthriL7wofYyIQOn/1ezoUQowLa
         pL+ECoj9WFmXbHR+nLmSlMHJvUwhjWM8fbQdy8nbdiyqco8paZKPMViuyD8GNzTF6IgD
         SntbDDs8klnb8ou47lXBIolHDAHDtMuTqm7TRhtmv1iizEwi6vyZxU0AkbRELzn7ep/Z
         +rnA==
X-Gm-Message-State: AC+VfDw5cEEmD2mX3fMU5U7WGGSp5aC56Pqs4FpCFa+UzEO+iC2hN316
        c4DF2jQUdd+AM5uMwErJmV5TV1oJUS8tFzWgxyHTug==
X-Google-Smtp-Source: ACHHUZ4aJ5hRCYoHiW27DsL50VWKZLWKRFD3RGaZ9cKnUPuy5jPfiDY+Pl2G5yQOGMdVa4IPMflwNKtIbQbkfSRev+8=
X-Received: by 2002:ac2:4255:0:b0:4f1:2ebf:5370 with SMTP id
 m21-20020ac24255000000b004f12ebf5370mr2283324lfl.23.1683789738095; Thu, 11
 May 2023 00:22:18 -0700 (PDT)
MIME-Version: 1.0
References: <20230510102251.10118-1-marex@denx.de> <20230510102251.10118-4-marex@denx.de>
In-Reply-To: <20230510102251.10118-4-marex@denx.de>
From:   Crt Mori <cmo@melexis.com>
Date:   Thu, 11 May 2023 09:21:42 +0200
Message-ID: <CAKv63utdQjjNVhm8UgzDto08uKwX-7qunJY06DEnTN3iq3+d2w@mail.gmail.com>
Subject: Re: [PATCH v3 4/6] iio: mlx90614: Drop MLX90614_CONST_EMISSIVITY_RESOLUTION
To:     Marek Vasut <marex@denx.de>
Cc:     linux-iio@vger.kernel.org, Jonathan Cameron <jic23@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Peter Meerwald <pmeerw@pmeerw.net>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Acked-by: Crt Mori <cmo@melexis.com>

On Wed, 10 May 2023 at 12:23, Marek Vasut <marex@denx.de> wrote:
>
> The MLX90614_CONST_EMISSIVITY_RESOLUTION can be calculated from
> MLX90614_CONST_RAW_EMISSIVITY_MAX, perform the calculation inline
> and drio the MLX90614_CONST_EMISSIVITY_RESOLUTION.
>
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Crt Mori <cmo@melexis.com>
> Cc: Jonathan Cameron <jic23@kernel.org>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Lars-Peter Clausen <lars@metafoo.de>
> Cc: Marek Vasut <marex@denx.de>
> Cc: Peter Meerwald <pmeerw@pmeerw.net>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: devicetree@vger.kernel.org
> Cc: linux-iio@vger.kernel.org
> ---
> V3: New patch
> ---
>  drivers/iio/temperature/mlx90614.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/iio/temperature/mlx90614.c b/drivers/iio/temperature/mlx90614.c
> index b0f69a7b05abc..ecd27fe0c8666 100644
> --- a/drivers/iio/temperature/mlx90614.c
> +++ b/drivers/iio/temperature/mlx90614.c
> @@ -63,7 +63,6 @@
>  #define MLX90614_CONST_OFFSET_REM 500000 /* remainder of offset (273.15*50) */
>  #define MLX90614_CONST_SCALE 20 /* Scale in milliKelvin (0.02 * 1000) */
>  #define MLX90614_CONST_RAW_EMISSIVITY_MAX 65535 /* max value for emissivity */
> -#define MLX90614_CONST_EMISSIVITY_RESOLUTION 15259 /* 1/65535 ~ 0.000015259 */
>  #define MLX90614_CONST_FIR 0x7 /* Fixed value for FIR part of low pass filter */
>
>  struct mlx90614_data {
> @@ -283,7 +282,8 @@ static int mlx90614_read_raw(struct iio_dev *indio_dev,
>                         *val2 = 0;
>                 } else {
>                         *val = 0;
> -                       *val2 = ret * MLX90614_CONST_EMISSIVITY_RESOLUTION;
> +                       *val2 = ret * NSEC_PER_SEC /
> +                               MLX90614_CONST_RAW_EMISSIVITY_MAX;
>                 }
>                 return IIO_VAL_INT_PLUS_NANO;
>         case IIO_CHAN_INFO_LOW_PASS_FILTER_3DB_FREQUENCY: /* IIR setting with
> @@ -321,7 +321,7 @@ static int mlx90614_write_raw(struct iio_dev *indio_dev,
>                 if (val < 0 || val2 < 0 || val > 1 || (val == 1 && val2 != 0))
>                         return -EINVAL;
>                 val = val * MLX90614_CONST_RAW_EMISSIVITY_MAX +
> -                       val2 / MLX90614_CONST_EMISSIVITY_RESOLUTION;
> +                     val2 * MLX90614_CONST_RAW_EMISSIVITY_MAX / NSEC_PER_SEC;
>
>                 ret = mlx90614_power_get(data, false);
>                 if (ret < 0)
> --
> 2.39.2
>
