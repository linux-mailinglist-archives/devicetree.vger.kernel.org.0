Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CACBF632DF5
	for <lists+devicetree@lfdr.de>; Mon, 21 Nov 2022 21:30:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229953AbiKUUaQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Nov 2022 15:30:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41350 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230235AbiKUUaP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Nov 2022 15:30:15 -0500
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com [IPv6:2607:f8b0:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B82BD907C
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 12:30:14 -0800 (PST)
Received: by mail-pf1-x42f.google.com with SMTP id x66so3772419pfx.3
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 12:30:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=9+M2W0CzPt/3Idrh2stcScSTO3IN/Wj2t7AJg/nEkVA=;
        b=YxHUTbGH3q2bQTBCEF8BcGPhzX9RTjklZuyP9KKihuNg2GbfTKSVzcjnXV0FCFZlzF
         AET+H8UWx8bvKRO09bmjuThzAk3lUftqshCEJ4T8BfwBLj15mTvtUBYUL+8r3G0hsUvm
         2442Nd26UU41Z4HjxqQ1sOSFUtpMXf0V4sOH80XRToQ1LDAeKn7y5OdbFAZpg86Cqrwx
         kY7LHSxdUZiIX12PIAMXiIbpqaC/mvKF7JdHytu8uOmBUSIo5pT3Kg3V1BiRJI9rW1Xx
         e+IVs/Vue9dMfaKGGdzu3noGQ1ZolYyDujzwG1c0ynELIbdSSATK1bejPOuJhJBV1/5l
         zI8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9+M2W0CzPt/3Idrh2stcScSTO3IN/Wj2t7AJg/nEkVA=;
        b=hjSefxaZOln1n2wbaCRF/cWR8xMS5U9koz2L/lb57NpOLqxEl86lp5oakqbWgNRNV5
         /5LHYnZdln/9Xvs9/bM5EAbzdxAwK6ESe7i5SNwGTVtrxO2vrwav9Zq/UEgiDe8Mjkol
         ZdA7CLfmXfmKMPd8SGPyvyL2HzAYoVjHWBYeFcUWTbsOgmqC9Eash+2Nl7DpTnobbiSW
         sKjXPOlU1nUo7Yh9M7Ed28uDqf3tGcJJV5TNFtDfL79fTnwl6EDr9C3kB6BOV6vJm1z4
         3Py5nOpqPtcNSvyMuNMGZKRd5OSfp57n0UCbxmQXzSxYi9ymVeRaw5k21Ri2+V2kt39W
         agtg==
X-Gm-Message-State: ANoB5plsPkKwV8aJ5MjyipYKEspKDFkE7UagLjC7zE6cwWbvcYtHpqBv
        SstkLucCVcuJ9CSKKon+Ts5w/k3iY5rTCw6rTq5cXNjSkaU=
X-Google-Smtp-Source: AA0mqf6P/4cgoOqms4Hg/SBSbh8OfDCW696Vy5GWvdjLuZqZQe1MJF6oDeEej9/G1ihbNGyvj9oxLBpQL4B4kaUnjEw=
X-Received: by 2002:a62:e80b:0:b0:56e:ad31:b98b with SMTP id
 c11-20020a62e80b000000b0056ead31b98bmr4856818pfi.40.1669062614134; Mon, 21
 Nov 2022 12:30:14 -0800 (PST)
MIME-Version: 1.0
References: <cover.1669023361.git.tonyhuang.sunplus@gmail.com>
In-Reply-To: <cover.1669023361.git.tonyhuang.sunplus@gmail.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Mon, 21 Nov 2022 21:29:37 +0100
Message-ID: <CAPDyKFp2uzqiVg1k8qxm+BGvDp_YPT7vonVR+Z7y6NBbYDrOrQ@mail.gmail.com>
Subject: Re: [PATCH v12 0/2] Add mmc driver for Sunplus SP7021 SOC
To:     Tony Huang <tonyhuang.sunplus@gmail.com>
Cc:     lhjeff911@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        p.zabel@pengutronix.de, wells.lu@sunplus.com
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

On Mon, 21 Nov 2022 at 11:07, Tony Huang <tonyhuang.sunplus@gmail.com> wrote:
>
> This is a patch series for mmc driver for Sunplus SP7021 SOC.
>
> Sunplus SP7021 is an ARM Cortex A7 (4 cores) based SoC. It integrates
> many peripherals (ex: UART, I2C, SPI, SDIO, eMMC, USB, SD card and
> etc.) into a single chip. It is designed for industrial control.
>
> Refer to:
> https://sunplus-tibbo.atlassian.net/wiki/spaces/doc/overview
> https://tibbo.com/store/plus1.html
>
> Tony Huang (2):
>   dt-binding: mmc: Add mmc yaml file for Sunplus SP7021
>   mmc: Add mmc driver for Sunplus SP7021
>
>  .../devicetree/bindings/mmc/sunplus,mmc.yaml       |   62 ++
>  MAINTAINERS                                        |    7 +
>  drivers/mmc/host/Kconfig                           |    9 +
>  drivers/mmc/host/Makefile                          |    1 +
>  drivers/mmc/host/sunplus-mmc.c                     | 1000 ++++++++++++++++++++
>  5 files changed, 1079 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mmc/sunplus,mmc.yaml
>  create mode 100644 drivers/mmc/host/sunplus-mmc.c
>

Applied for next, thanks!

Kind regards
Uffe
