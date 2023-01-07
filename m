Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AC5FC6612A8
	for <lists+devicetree@lfdr.de>; Sun,  8 Jan 2023 00:56:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230120AbjAGX4h (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 7 Jan 2023 18:56:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37810 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229691AbjAGX4f (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 7 Jan 2023 18:56:35 -0500
Received: from mail-yb1-xb29.google.com (mail-yb1-xb29.google.com [IPv6:2607:f8b0:4864:20::b29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB8F218B1F
        for <devicetree@vger.kernel.org>; Sat,  7 Jan 2023 15:56:34 -0800 (PST)
Received: by mail-yb1-xb29.google.com with SMTP id 16so5513371ybc.0
        for <devicetree@vger.kernel.org>; Sat, 07 Jan 2023 15:56:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=0oToTwDnFH6g6hDh+EoePGFSIhLbzzaVsn0XI1Fj5Xc=;
        b=jLN7xnaIHIb6Y+hKXdNPw5fcuVVLcqaIlUDkZNp1Efrw0NgJ0OHF5PMgswgFzYGiGm
         JeMl8yBRhfNe1g4hZiHI6PFDZKdONh85cpkfxR74a5M63O+fGiVIgFw5p5T/QoZmTyu/
         VnxPJK9YWje9cHlrFczgCMK9X7jow3IO5zL8MIrjXl91Ey2KtTB8a2GafmCHMbJjfpWK
         7vJEDCEUnL6OaDJ3sV+JVqNkbTDBgPmU12KzNV+x1ApU62IdwqAzAlwrSGCHftiokRiY
         0bdP4tCMp5WlcldvR+vzc4f49AKqHOWLZ+rbQHNSghRzHI8IG61KtfoqFXEVYEeSyk2v
         4bNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0oToTwDnFH6g6hDh+EoePGFSIhLbzzaVsn0XI1Fj5Xc=;
        b=qPR6l7udrzEST9HcfZUjWeCCRYsQXlWfCc/WuNIGTNq6SpAri2sm/djOUguX8EIfeU
         LQv2DMrEvpD0SnaH5dNO9BCionQ5QtYl0KO4NtXKJA+HFoGc5NqfghuSj7uNLjNBYMbl
         jLVw6PlRq9939qtdfQmur+QcuEjl9XeIRTvXpUzJGzmdzTBN92Sf2S1r7e8iEtv0k08n
         ntjXMFcugNaiaM3El2rjkc7uqoyWdI1gRyz5Su7Nlh9KoIHMPTViEYrVGwX8QwR8AaxS
         FfOeOCxdu7kbbktsc58E5A6czakhPC6B88PflGvxsJg8Tsk4akJM1AYKM34GlHpqNZVI
         Ntwg==
X-Gm-Message-State: AFqh2kqEoCxYj811eOZPalXXCkea3PmgURVmh472fg/An2aUNEvl/Bh/
        N9Fn23zzhSKg2StO1gsGPW6ZugbwqsifjR4AAtpMag==
X-Google-Smtp-Source: AMrXdXv9BvmHeBIyHQiS/u/+zlClAetgPz+v7PKEjhfwaOBxSXehte1noGLiIx1Pu9BP64FJJ+qZCVNriH42jMop3kM=
X-Received: by 2002:a25:6982:0:b0:700:e0f1:6335 with SMTP id
 e124-20020a256982000000b00700e0f16335mr5290893ybc.520.1673135793948; Sat, 07
 Jan 2023 15:56:33 -0800 (PST)
MIME-Version: 1.0
References: <20230106102239.9647-1-stephan@gerhold.net>
In-Reply-To: <20230106102239.9647-1-stephan@gerhold.net>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sun, 8 Jan 2023 00:56:22 +0100
Message-ID: <CACRpkdbiQFumJek5WUh=dcxXDvOV=Dhd+WqCrzzyWJY+i-xKuQ@mail.gmail.com>
Subject: Re: [PATCH 0/3] iio: st-sensors: Add LSM303C accelerometer+magnetometer
To:     Stephan Gerhold <stephan@gerhold.net>
Cc:     Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Denis Ciocca <denis.ciocca@st.com>, linux-iio@vger.kernel.org,
        devicetree@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jan 6, 2023 at 11:24 AM Stephan Gerhold <stephan@gerhold.net> wrote:

> Add support for the ST LSM303C [1] accelerometer and magnetometer combo
> sensor in st_accel and st_magn. LSM303C seems to be more or less
> a combination of LIS2HH12 as accelerometer and LIS3MDL as magnetometer
> so this series just adds two new compatibles for the two sensors that
> are already supported.
>
> [1]: https://www.st.com/resource/en/datasheet/lsm303c.pdf
>
> Stephan Gerhold (3):
>   dt-bindings: iio: st-sensors: Add LSM303C accelerometer+magnetometer
>   iio: accel: st_accel: Add LSM303C
>   iio: magnetometer: st_magn: Add LSM303C

This patch set:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
