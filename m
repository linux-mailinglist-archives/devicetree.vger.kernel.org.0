Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 58A42516F33
	for <lists+devicetree@lfdr.de>; Mon,  2 May 2022 14:02:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1384842AbiEBMFq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 May 2022 08:05:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1384836AbiEBMFq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 May 2022 08:05:46 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3DA4A13D6D
        for <devicetree@vger.kernel.org>; Mon,  2 May 2022 05:02:16 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id bv19so27335343ejb.6
        for <devicetree@vger.kernel.org>; Mon, 02 May 2022 05:02:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=N75s0zlZ/grfCnjSSDgj4JMBZsdJ4ACb/MkzbjrMPK0=;
        b=2C8SNpetrT95gaXxl4PKvpcPFXCNt7hD8Rkw5YSjWw75sN7WvDyWUE20xLW3aAc9JO
         +Rpd1A4w/6YR6qfkgsBfZMH0F6RQdHGgbiN23YkPJE/o5615Hk1kScxhk67aaEydZvQx
         gUr3gQznUpZQ8WULmMVrW9fmeTdhAmf3QZcN3dS3QMCCegj8D/mHFiyimgwqKQTXly2R
         y9MfZ6hTC+1JrGkjf6Sm2dpq2JKqkbm1fjpGeLhulBvJZ+PnCzOMN926eNiC6p12WCZf
         ppEczvZ3ho5OKyefWPj3empmDu2x4QGZClpsgJq5zBH85WlWvFaKr7hDQ4OpyfNpFc93
         tt7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=N75s0zlZ/grfCnjSSDgj4JMBZsdJ4ACb/MkzbjrMPK0=;
        b=1FUhLs2xeGF4dcEa2BzxCKN07qlSOs7m5HNE0cD3hJgIyymPXuWP35cbv64s6aNJJj
         oIQQSwfVWWonjruXPIQV9Lvp5+kEB0wfuMZhFWUDFJvdfebtBtfd7PKsEwiUBomjSiR0
         DbEnmh76HbO8kAp+w6J9gn1gFOlpepl/WbNfJM63U4LVcI2HZbhkX1cSGwj4FjYdgmtU
         PjP7Ne00alGgQOoRKGI0uB5upJzkagIgu9of2IWibEYCzbd/KCqw6CtMUBy8NK1tnDC2
         9YtqWGIl83TvmBi/khfnNL9kR4wty008slVviEL/zXxmzuN+hwrlD8ydBEoRb5LWXFyn
         iuvQ==
X-Gm-Message-State: AOAM533qlQjOkEvB2SE3HOxEc0IWVFAM8Ge/X28ZmLjjZxtc9Iy47NNw
        CDeskaUPtZ2uG2AFhupy20rb0LW5f4570pzMQRhZiq2g1RPKcA==
X-Google-Smtp-Source: ABdhPJy3H4B9Xv6DMwPGyJFAVkCyL7HSoolYUgy9O4RpHeAO8P+IrocSLqSxIuMS7CSVBa8yNk/VwwJ8+38L2DDuuOo=
X-Received: by 2002:a17:907:9490:b0:6f4:5606:d98b with SMTP id
 dm16-20020a170907949000b006f45606d98bmr3892736ejc.734.1651492934588; Mon, 02
 May 2022 05:02:14 -0700 (PDT)
MIME-Version: 1.0
References: <20220426175938.2262966-1-robh@kernel.org>
In-Reply-To: <20220426175938.2262966-1-robh@kernel.org>
From:   Bartosz Golaszewski <brgl@bgdev.pl>
Date:   Mon, 2 May 2022 14:02:03 +0200
Message-ID: <CAMRc=MfrvUn8w_aPL0_kej83-tf06GTUcJJ3bC0p8O8rd2Ae0Q@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: eeprom/at24: Add samsung,s524ad0xd1 compatible
To:     Rob Herring <robh@kernel.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        linux-i2c <linux-i2c@vger.kernel.org>,
        devicetree <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-samsung-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Apr 26, 2022 at 8:00 PM Rob Herring <robh@kernel.org> wrote:
>
> The samsung,s524ad0xd1 compatible is in use, but not documented. According
> to arch/arm/mach-s3c/mach-smdk6410.c, the samsung,s524ad0xd1 is compatible
> with the 24c128. As the schema requires a fallback compatible to the
> corresponding Atmel compatible, 'atmel,24c128' is added as a fallback.
>
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
> v2:
>  - Fix the example in samsung,s3c2410-i2c.yaml
>
>  Documentation/devicetree/bindings/eeprom/at24.yaml            | 4 +++-

For at24 part:

Acked-by: Bartosz Golaszewski <brgl@bgdev.pl>

>  .../devicetree/bindings/i2c/samsung,s3c2410-i2c.yaml          | 2 +-
>  2 files changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/eeprom/at24.yaml b/Documentation/devicetree/bindings/eeprom/at24.yaml
> index 6b61a8cf6137..d14e0accbda8 100644
> --- a/Documentation/devicetree/bindings/eeprom/at24.yaml
> +++ b/Documentation/devicetree/bindings/eeprom/at24.yaml
> @@ -120,7 +120,9 @@ properties:
>            - const: giantec,gt24c32a
>            - const: atmel,24c32
>        - items:
> -          - const: renesas,r1ex24128
> +          - enum:
> +              - renesas,r1ex24128
> +              - samsung,s524ad0xd1
>            - const: atmel,24c128
>
>    label:
> diff --git a/Documentation/devicetree/bindings/i2c/samsung,s3c2410-i2c.yaml b/Documentation/devicetree/bindings/i2c/samsung,s3c2410-i2c.yaml
> index c26230518957..3d5782deb97d 100644
> --- a/Documentation/devicetree/bindings/i2c/samsung,s3c2410-i2c.yaml
> +++ b/Documentation/devicetree/bindings/i2c/samsung,s3c2410-i2c.yaml
> @@ -123,7 +123,7 @@ examples:
>          samsung,i2c-slave-addr = <0x66>;
>
>          eeprom@50 {
> -            compatible = "samsung,s524ad0xd1";
> +            compatible = "samsung,s524ad0xd1", "atmel,24c128";
>              reg = <0x50>;
>          };
>      };
> --
> 2.34.1
>
