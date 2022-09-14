Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DEF8A5B8804
	for <lists+devicetree@lfdr.de>; Wed, 14 Sep 2022 14:17:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229814AbiINMRp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Sep 2022 08:17:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54902 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230140AbiINMRn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Sep 2022 08:17:43 -0400
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 31D658002C
        for <devicetree@vger.kernel.org>; Wed, 14 Sep 2022 05:17:42 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id y8so15002568edc.10
        for <devicetree@vger.kernel.org>; Wed, 14 Sep 2022 05:17:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=EMYIHTFVDfc25gk6gaREiYYR4GeoWRZVutDceMgLUrQ=;
        b=2D59hopHx2Gxpi9r/3fh1liuiLjR+nX7H3V3WfF11zdMxI8CVcvDgHBEpJIti3bNyz
         MKGAA99nli9aafXnhgEshJLbJfSFdyou6rzOJvaJVF1sr4OqkePGG+xif6Kg4bFsDE9/
         Vr+1GHzd/wpBbJnKM/W0rp46oASJNqlUafw0EoaFnc+u6te9xpQNMMqCQjeCVrtTs+VJ
         vL8i7vVCHfbdBM9dTjDyWK26iseMgYw4wbNwHDDA3EtlUSUlOtbLckxlBX69T19M1+7V
         E0/+vn+NKJCeS4pfuVR4Ia1e0LqQ0+WCvSYvKoS4Zy3BNmqWxlRh2MEFxgEfx7iaZ5nR
         Pclg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=EMYIHTFVDfc25gk6gaREiYYR4GeoWRZVutDceMgLUrQ=;
        b=6UP5Cp6sGDKDoI2x3xRobN9sXK6d+ryfjn5OMg/rvRwiDY0TLios6d1ok5G4VUffrA
         +elM4uDb/6doyPi9rDz3Ldr6nwb/2r79tdxht+258++KmxrsnNJvxHumKYcyMg9Ub+iF
         uZD8kuRKALexZAgQPG2FhVyf65CA0EGAFSfmjwQ1aokv5s1+lraSTEgOr7zYzjBO62f1
         xyPtVeOTg5qjT7HaIN8cQMJSc7/VahFFQh7jGJdCU/a9hoIEJuiLQC2PHrneYZi4WQJa
         QyFn6Lpc5CnmBx9kkxmqwWqvhgFSd7Vcko8G2LeochczIHbrQ5h2gmtdiosiII1X0bLG
         QiSw==
X-Gm-Message-State: ACgBeo3Jji5CLPf1DVisNQzncHiMdytrFCcCR3CbtTOOx0v1TGZH1TX4
        6Scz3PVNYSi/61td1Ve5a2nrZz2IkWH7dH8SrCnPzQ==
X-Google-Smtp-Source: AA6agR5Kbc+mCnZEjAGwdBmNaNJfMyirzeVywDmVbzjo00jiXycRKLQAQ/YVrrmnvW0qe7TFo+L2geceTRHHgZI5uwk=
X-Received: by 2002:a05:6402:34cc:b0:451:62bf:c816 with SMTP id
 w12-20020a05640234cc00b0045162bfc816mr16631377edc.213.1663157860802; Wed, 14
 Sep 2022 05:17:40 -0700 (PDT)
MIME-Version: 1.0
References: <20220913182436.589713-1-nate.d@variscite.com>
In-Reply-To: <20220913182436.589713-1-nate.d@variscite.com>
From:   Bartosz Golaszewski <brgl@bgdev.pl>
Date:   Wed, 14 Sep 2022 14:17:30 +0200
Message-ID: <CAMRc=McBmwMb0Fs=vCXrBrADp1cg+9eadQnZKSj8tupN54fAKw@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: gpio: pca95xx: add entry for pcal6408
To:     Nate Drude <nate.d@variscite.com>
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, eran.m@variscite.com
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

On Tue, Sep 13, 2022 at 8:25 PM Nate Drude <nate.d@variscite.com> wrote:
>
> The NXP PCAL6408 is the 8-bit version of PCAL6416.
>
> Signed-off-by: Nate Drude <nate.d@variscite.com>
> ---
>  Documentation/devicetree/bindings/gpio/gpio-pca95xx.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/gpio/gpio-pca95xx.yaml b/Documentation/devicetree/bindings/gpio/gpio-pca95xx.yaml
> index 977b14db09b0..05a9fa92283f 100644
> --- a/Documentation/devicetree/bindings/gpio/gpio-pca95xx.yaml
> +++ b/Documentation/devicetree/bindings/gpio/gpio-pca95xx.yaml
> @@ -47,6 +47,7 @@ properties:
>        - nxp,pca9574
>        - nxp,pca9575
>        - nxp,pca9698
> +      - nxp,pcal6408
>        - nxp,pcal6416
>        - nxp,pcal6524
>        - nxp,pcal9535
> --
> 2.37.3
>

Both applied, thanks!

Bart
