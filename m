Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BD2F35E5D98
	for <lists+devicetree@lfdr.de>; Thu, 22 Sep 2022 10:37:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230119AbiIVIhU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Sep 2022 04:37:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60278 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230072AbiIVIhS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Sep 2022 04:37:18 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC457A61D1
        for <devicetree@vger.kernel.org>; Thu, 22 Sep 2022 01:37:15 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id dv25so19274229ejb.12
        for <devicetree@vger.kernel.org>; Thu, 22 Sep 2022 01:37:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date;
        bh=TwVaZJkLdwmom6Stee69RLiTEJKn72psfncdzouODpI=;
        b=jdxAJwiTAFGS0B//ixBkSccbSUKqSmHlo7dcQGhPy0FAOjJQPeqG0s8qNE6vwXngsd
         Sx18XH3h/nVh3UKgU0cvSlBmvr/z2TyRoG3ptmTNRK7o5QMLyfKSG0NMAN8+CNSnrysp
         odOzxlwAzfZfZDBLxLhGiWXdSrZJuOD66dWxlnUOEowakrWXUjs19IsxP6WsH4kBGJqG
         9oCdbtZkjfkKD8tEft8Dk1bslOuxZ0x30lce+IyVpKyg78G86X+4fShmiJEiUEdZ+48M
         KUAc3k/KZ3oFWs8dBRycJQFgUM81d/pIrCLHY8xRG1UGlF2jkwaU2+2a5A95K9zxSfms
         +j4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date;
        bh=TwVaZJkLdwmom6Stee69RLiTEJKn72psfncdzouODpI=;
        b=8N4bQLhqdIFQOMRIFx0QkOHDVWIOvXEwX+LawPCkK7tsvEIOXuztWBeTiv4KHLEBbe
         XYQ/nCj5+0owamJXXvrjU+L0Ft0qPhmkEqrvyUuTRgKJaOlWqtCJNxnDB83z42pQjFGg
         7G/jnfrKzqk8FjU4/E1LJ53kBQwl9UixKt11cb1mEHvjEcweJcCP+XgWZ+PcuZEs4QMU
         oZW+xt/wJsZlXt+mNyBEtY84cGS4NvU/M+Fu2aZHvp1A9Tsiv0jFKqMfsetYEQSWOEiZ
         2+1kYxiueGKptTpDD2ctYxCII3M9Hd6pTC2B+dc3cVeYs2P8elonVK/Xa2Pi8/DpIjR/
         MLjA==
X-Gm-Message-State: ACrzQf3+U16Rfe62gbtyCExcpqX+Otzp92OKve5ii4dMc7rOyLps8Zn/
        afjpPbhZqB+UcJVhHf82z5yEmEFoQpHCrh9jPAkAww==
X-Google-Smtp-Source: AMsMyM70aN5WdtKZVMkYxt4MFoCnTTjO1UEouE/n+cIuMmbkZXDhle7VhmG91bHu0r0RObEWsdg/5pI21oePMCVrOm0=
X-Received: by 2002:a17:907:9807:b0:781:feee:f87c with SMTP id
 ji7-20020a170907980700b00781feeef87cmr1812708ejc.101.1663835834350; Thu, 22
 Sep 2022 01:37:14 -0700 (PDT)
MIME-Version: 1.0
References: <20220905145555.674800-1-etienne.carriere@linaro.org>
In-Reply-To: <20220905145555.674800-1-etienne.carriere@linaro.org>
From:   Bartosz Golaszewski <brgl@bgdev.pl>
Date:   Thu, 22 Sep 2022 10:37:03 +0200
Message-ID: <CAMRc=Mcq3u+1JjvXJ2X774vknq-LOeCfE7hLj2As7Q5A13tx0w@mail.gmail.com>
Subject: Re: [PATCH v3] dt-binding: gpio: publish binding IDs under dual license
To:     Etienne Carriere <etienne.carriere@linaro.org>
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-gpio@vger.kernel.org, Stephen Warren <swarren@nvidia.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Laxman Dewangan <ldewangan@nvidia.com>,
        Andrew Jeffery <andrew@aj.id.au>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Sep 5, 2022 at 4:57 PM Etienne Carriere
<etienne.carriere@linaro.org> wrote:
>
> Changes gpio.h DT binding header file to be published under GPLv2 or
> BSD-2-Clause license terms. This change allows this GPIO generic
> bindings header file to be used in software components as bootloaders
> and OSes that are not published under GPLv2 terms.
>
> All contributors to gpio.h file in copy.
>
> Cc: Stephen Warren <swarren@nvidia.com>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Laxman Dewangan <ldewangan@nvidia.com>
> Cc: Andrew Jeffery <andrew@aj.id.au>
> Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
> Cc: Nuno S=C3=A1 <nuno.sa@analog.com>
> Cc: Bartosz Golaszewski <brgl@bgdev.pl>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
>
> Signed-off-by: Etienne Carriere <etienne.carriere@linaro.org>
> ---

Applied, thanks!

Bart
