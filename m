Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3058E751046
	for <lists+devicetree@lfdr.de>; Wed, 12 Jul 2023 20:10:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232887AbjGLSKB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jul 2023 14:10:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58940 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231452AbjGLSKA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jul 2023 14:10:00 -0400
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A26961BF2
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 11:09:59 -0700 (PDT)
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 408E13F120
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 18:09:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1689185397;
        bh=Bizuu4z3VnDLRN7R+//unqDeYbH2DtjnSLBh5A5U/w4=;
        h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
         To:Cc:Content-Type;
        b=BW2NfbNrSUd9tLFXlCaRtDPISAY8dwrlT2S8xiL3pN0cyomJHhAvcpNibbCLJlzwU
         wI8dfvISITrHiUFmJDhi4hWKH+Y7lie7jITPwA0kOtZGs2R2IjkIbDINWPw+VHRBYh
         HxLZYfx1c0WUk8WstVtpSfEFYGtOZ28kxN1UhBiR2V3C6hS6KaAq1Nmy2M09rvwnWv
         En2RTqy+zY0Xf7mzQbzlP3kFNB9z8cwmS/MPrwKU40XuRWnd0mSTQFOsx8MFS4YJGC
         TuCiYlWzn52vTLON1PfdYXdy6Zuv13YOpO06hWOjEWTr5Akic8EGDhCW/kmwIUxiqB
         1EdcD7LGCV+8g==
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7659924cf20so712495585a.2
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 11:09:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689185396; x=1691777396;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Bizuu4z3VnDLRN7R+//unqDeYbH2DtjnSLBh5A5U/w4=;
        b=JfIwlWYUKMoVQnl4eb76cylmQWpYCZsMrKy0qGm9jabrHLx/j4IvdgKU+cO1b0RpXi
         ITaHH84xKtFn3na2GhRDcXfPPH3U+B+w2Bbc9xhlAI00HBOVtqlajm5y0HNwcTpKdStc
         44J8r5K8YHFISSvz5/IrZB+3aZzWA4U+bZgcE9wSG/6t/CexKgmilyOALikS68VUzUHS
         b8Qczx8wtxFj3h+ZmCBxqgdUfNTz8Zac89mQvMLLeWRv6LcGI7AzfeS9XlvzLg1u6MDy
         CRTpLbeUVOfhHiec+b5zHzy9hn7nqeHWF8yB6xh5PHpUKWgivTT9ZJzONV65KiwXtSJ0
         CJmw==
X-Gm-Message-State: ABy/qLb25PP3+mFvXfuRzJf42yWKYgZhaPQPmbdguJlhv5ApIEPTy2Nl
        rI/n7ZGavVlDLHrYTGMtJc3LhCkQoLiIMQi+IZwgM6sxc57OZ6MdwQwtDcr0cett0Jvfrn2S7S6
        OzxuuVAtZcIVmc0aXXO+HQMnsSjgWxw4r/5y3Di50Ch+jHLEu8sL70Lc=
X-Received: by 2002:a05:620a:8e86:b0:765:84e3:aa1f with SMTP id rf6-20020a05620a8e8600b0076584e3aa1fmr14249041qkn.14.1689185396336;
        Wed, 12 Jul 2023 11:09:56 -0700 (PDT)
X-Google-Smtp-Source: APBJJlEHAIZXhPQbdZBMRJZmbmK7N8VreWT4Jt2xgENYnPV/7T6gHV3unJyeuLSUIcif7+F3P5osS5GQtrh30bhdIPw=
X-Received: by 2002:a05:620a:8e86:b0:765:84e3:aa1f with SMTP id
 rf6-20020a05620a8e8600b0076584e3aa1fmr14249030qkn.14.1689185396118; Wed, 12
 Jul 2023 11:09:56 -0700 (PDT)
MIME-Version: 1.0
References: <20230712092007.31013-1-xingyu.wu@starfivetech.com> <20230712092007.31013-8-xingyu.wu@starfivetech.com>
In-Reply-To: <20230712092007.31013-8-xingyu.wu@starfivetech.com>
From:   Emil Renner Berthing <emil.renner.berthing@canonical.com>
Date:   Wed, 12 Jul 2023 20:09:39 +0200
Message-ID: <CAJM55Z8O8eu9y51B0sDs4+6-0MAdJS19QhjNzNJiX5i2v4Jh=A@mail.gmail.com>
Subject: Re: [PATCH v7 7/9] reset: starfive: jh7110: Add StarFive STG/ISP/VOUT
 resets support
To:     Xingyu Wu <xingyu.wu@starfivetech.com>
Cc:     linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Conor Dooley <conor@kernel.org>,
        Emil Renner Berthing <kernel@esmil.dk>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Hal Feng <hal.feng@starfivetech.com>,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 12 Jul 2023 at 11:22, Xingyu Wu <xingyu.wu@starfivetech.com> wrote:
>
> Add new struct members and auxiliary_device_id of resets to support
> System-Top-Group, Image-Signal-Process and Video-Output on the StarFive
> JH7110 SoC.
>
> Reviewed-by: Hal Feng <hal.feng@starfivetech.com>

Reviewed-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>

> Signed-off-by: Xingyu Wu <xingyu.wu@starfivetech.com>
> ---
>  .../reset/starfive/reset-starfive-jh7110.c    | 30 +++++++++++++++++++
>  1 file changed, 30 insertions(+)
>
> diff --git a/drivers/reset/starfive/reset-starfive-jh7110.c b/drivers/reset/starfive/reset-starfive-jh7110.c
> index 2d26ae95c8cc..29a43f0f2ad6 100644
> --- a/drivers/reset/starfive/reset-starfive-jh7110.c
> +++ b/drivers/reset/starfive/reset-starfive-jh7110.c
> @@ -31,6 +31,24 @@ static const struct jh7110_reset_info jh7110_aon_info = {
>         .status_offset = 0x3C,
>  };
>
> +static const struct jh7110_reset_info jh7110_stg_info = {
> +       .nr_resets = JH7110_STGRST_END,
> +       .assert_offset = 0x74,
> +       .status_offset = 0x78,
> +};
> +
> +static const struct jh7110_reset_info jh7110_isp_info = {
> +       .nr_resets = JH7110_ISPRST_END,
> +       .assert_offset = 0x38,
> +       .status_offset = 0x3C,
> +};
> +
> +static const struct jh7110_reset_info jh7110_vout_info = {
> +       .nr_resets = JH7110_VOUTRST_END,
> +       .assert_offset = 0x48,
> +       .status_offset = 0x4C,
> +};
> +
>  static int jh7110_reset_probe(struct auxiliary_device *adev,
>                               const struct auxiliary_device_id *id)
>  {
> @@ -58,6 +76,18 @@ static const struct auxiliary_device_id jh7110_reset_ids[] = {
>                 .name = "clk_starfive_jh7110_sys.rst-aon",
>                 .driver_data = (kernel_ulong_t)&jh7110_aon_info,
>         },
> +       {
> +               .name = "clk_starfive_jh7110_sys.rst-stg",
> +               .driver_data = (kernel_ulong_t)&jh7110_stg_info,
> +       },
> +       {
> +               .name = "clk_starfive_jh7110_sys.rst-isp",
> +               .driver_data = (kernel_ulong_t)&jh7110_isp_info,
> +       },
> +       {
> +               .name = "clk_starfive_jh7110_sys.rst-vo",
> +               .driver_data = (kernel_ulong_t)&jh7110_vout_info,
> +       },
>         { /* sentinel */ }
>  };
>  MODULE_DEVICE_TABLE(auxiliary, jh7110_reset_ids);
> --
> 2.25.1
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv
