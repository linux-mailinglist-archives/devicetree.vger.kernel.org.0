Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AC5E1562FB9
	for <lists+devicetree@lfdr.de>; Fri,  1 Jul 2022 11:20:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233881AbiGAJUD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Jul 2022 05:20:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36248 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232834AbiGAJUD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Jul 2022 05:20:03 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2782E523A6
        for <devicetree@vger.kernel.org>; Fri,  1 Jul 2022 02:20:02 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id fd6so2163247edb.5
        for <devicetree@vger.kernel.org>; Fri, 01 Jul 2022 02:20:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=AfzDKE12Yxu08Hj4MWZdUW/67hvHuToIIu6zzIovkbs=;
        b=nCfJA//B+GZXjcW6dcSAo4FSYV8cVsLDihaNkccw5VQLeJgqMgUkXs1kSjc+Pzmt0O
         pwWxpb3+lTrLGPS5+qG/4Aq7fFrnrh8kUJ4+BqBuOjttqVbcxh45osYYZwJcMCn58RU9
         q4UcA9AkEQT40/28RzdboFcaygq7SwDZhawmAZB4OrLPRNqidmOrSiEtlGex8vwUxdHq
         p5e9ykBMJZjfpDcJzH0HVUgsBYjCAmIyYfyd1UKwzd1pmWyrCx5NNGlRIFiObvYveHg9
         Qp8FQwdQASk9aZ06ZUG5mvATJa0Ym11tVce47xTUEBGZwXnI2dNXSZYfaOKEf9zwG1gy
         jOQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=AfzDKE12Yxu08Hj4MWZdUW/67hvHuToIIu6zzIovkbs=;
        b=D5OCCLxUQ9G+Oo1yl4/TPinCI6huhA3BAm/7frCc7cfTB3qU15gRatzz5Z8Uu/LgKa
         zOo7x5+2osRx0T2wbZ5d2JehHB6y454Q0U820nqUsO7OtFJMmx5F9jpVl2xMdEarSEAM
         e5lW28B12SGE4kA+4ERyKhDAHe9b54RR6DCFYbLbMNUz6aDmJiAXc1RBME013+h9Fj5D
         U8DbH0c7k1V92V5D48FUo/8Qr5Qd9xyBo+7xaHiV0JfTZds6ewhd4LKkULRn6HsFWkgN
         mQ8PvF9wRPITFn4ZmE+EAzp0pqYTNK1us3ytTdetAK7mus9XtpNwmGXU5iBVvqxodtk6
         7zIQ==
X-Gm-Message-State: AJIora+PbhgQfLoM7oVvsP9XEzv4IeZF6BbLWbJzcOFJO+8TXSEfZvgW
        kDTBqIG1x71X6hVIuuSvN3bRpdu1IbAdRtkrDamhvg==
X-Google-Smtp-Source: AGRyM1vf33S4z200yRk29HCwdi0LNRIcuc5xfCK4YImSgyKfPsESSL1D9B6PhCgdX91R/ESo78u9LdCmIeoxR85x6UY=
X-Received: by 2002:a05:6402:18:b0:435:9a79:9a40 with SMTP id
 d24-20020a056402001800b004359a799a40mr17116574edu.328.1656667200759; Fri, 01
 Jul 2022 02:20:00 -0700 (PDT)
MIME-Version: 1.0
References: <20220629170420.2712077-1-l.stach@pengutronix.de>
In-Reply-To: <20220629170420.2712077-1-l.stach@pengutronix.de>
From:   Bartosz Golaszewski <brgl@bgdev.pl>
Date:   Fri, 1 Jul 2022 11:19:50 +0200
Message-ID: <CAMRc=MekF1V5q-pD_+yL-Ai6gd1KGKW+go0Putd9E0wbL4yahQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] gpio: pca9570: Add DT bindings for NXP PCA9571
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, patchwork-lst@pengutronix.de
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

On Wed, Jun 29, 2022 at 7:04 PM Lucas Stach <l.stach@pengutronix.de> wrote:
>
> This patch adds device tree bindings for the NXP PCA9571,
> a 8-bit I2C GPIO expander.
>
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  Documentation/devicetree/bindings/gpio/gpio-pca9570.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/gpio/gpio-pca9570.yaml b/Documentation/devicetree/bindings/gpio/gpio-pca9570.yaml
> index 338c5312a106..1acaa0a3d35a 100644
> --- a/Documentation/devicetree/bindings/gpio/gpio-pca9570.yaml
> +++ b/Documentation/devicetree/bindings/gpio/gpio-pca9570.yaml
> @@ -13,6 +13,7 @@ properties:
>    compatible:
>      enum:
>        - nxp,pca9570
> +      - nxp,pca9571
>
>    reg:
>      maxItems: 1
> --
> 2.30.2
>

Applied, thanks!

Bart
