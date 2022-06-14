Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A935454BDD1
	for <lists+devicetree@lfdr.de>; Wed, 15 Jun 2022 00:42:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353692AbiFNWlz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Jun 2022 18:41:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38936 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1353684AbiFNWly (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Jun 2022 18:41:54 -0400
Received: from mail-io1-xd2f.google.com (mail-io1-xd2f.google.com [IPv6:2607:f8b0:4864:20::d2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E9B7B527DA
        for <devicetree@vger.kernel.org>; Tue, 14 Jun 2022 15:41:53 -0700 (PDT)
Received: by mail-io1-xd2f.google.com with SMTP id e80so10946458iof.3
        for <devicetree@vger.kernel.org>; Tue, 14 Jun 2022 15:41:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=9+kyzNbwL34JPEo3iqbzLbGd9UuckbxCXwZqzQQStRo=;
        b=kxZU4O5oWw0x6pDNeXPLnBAGs3Pgu48222c3blJk4xg8T3aZUo/tY4zJCYU8/9SHJc
         eqFiPRvDdjVxZPzHJ4Yr1mmtdWKKKeoKPFWWqMd1kR8Gw7kAq7NIgJhcIPmbG1qZz4OM
         yE/QC1aP/kCMscfKbNeK6lvJBePdJir4T9S6g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=9+kyzNbwL34JPEo3iqbzLbGd9UuckbxCXwZqzQQStRo=;
        b=clKprSZhvrv2BtdYbYZCSUsD8qFyuq3HYCMSW9NCc5Lsh3WTt3Yk0gnFHF978iA0ZJ
         vOK+iU0M3Ovr7EWr44lo/+WPNfM7VBp6GxjTwiA4+7QuVq+o90QfPGRovO+Ppi9phl8C
         5MosJVEOORIH8+YroeIIInl9xa2OWBKYBeE1wGdhNfHpIDYJanY2cKTzmYuGE5375ZR9
         GELMtCxiPpk/+5B57ZkjvUVGziHC42j8u0LXClX7hFYV90Hkl5WQzYE6zyLJELK+vC1k
         A69/+mYd2Sxv9cPJEAQvCON7OT6Laxsl2l7pJKBHAPw3KgI1Xd0uf1B1K1kdYylCFr34
         n4pg==
X-Gm-Message-State: AOAM531qvA+zirNrcpU0tPuZSP32AVFxknrLFWrf6ismePvcHEgyW0Q2
        BkoKJx+SEW+yJzLIP2YIJClDOYD891AvCB0W
X-Google-Smtp-Source: ABdhPJxQsIgZlSjjojJDbS/vgPJzBhPScLDI726/jvAEmPAVYuOI+nUKSgeLxQQMMIIgB5GdA+hCUg==
X-Received: by 2002:a05:6638:d8c:b0:332:15ef:657f with SMTP id l12-20020a0566380d8c00b0033215ef657fmr4056591jaj.146.1655246513160;
        Tue, 14 Jun 2022 15:41:53 -0700 (PDT)
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com. [209.85.166.49])
        by smtp.gmail.com with ESMTPSA id v10-20020a02384a000000b0033188e8cabesm5370020jae.74.2022.06.14.15.41.52
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jun 2022 15:41:52 -0700 (PDT)
Received: by mail-io1-f49.google.com with SMTP id h8so10920447iof.11
        for <devicetree@vger.kernel.org>; Tue, 14 Jun 2022 15:41:52 -0700 (PDT)
X-Received: by 2002:a02:c6c4:0:b0:333:ecb2:fc7f with SMTP id
 r4-20020a02c6c4000000b00333ecb2fc7fmr3785042jan.184.1655246512053; Tue, 14
 Jun 2022 15:41:52 -0700 (PDT)
MIME-Version: 1.0
References: <20220614195144.2794796-1-swboyd@chromium.org> <20220614195144.2794796-2-swboyd@chromium.org>
In-Reply-To: <20220614195144.2794796-2-swboyd@chromium.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Tue, 14 Jun 2022 15:41:38 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WUnMCj2GmMy2xRG8WOba1O4jzkXeUrrUic71eEA0aZrw@mail.gmail.com>
Message-ID: <CAD=FV=WUnMCj2GmMy2xRG8WOba1O4jzkXeUrrUic71eEA0aZrw@mail.gmail.com>
Subject: Re: [PATCH v6 1/2] dt-bindings: cros-ec: Reorganize property availability
To:     Stephen Boyd <swboyd@chromium.org>
Cc:     Benson Leung <bleung@chromium.org>,
        LKML <linux-kernel@vger.kernel.org>, patches@lists.linux.dev,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, chrome-platform@lists.linux.dev,
        Guenter Roeck <groeck@chromium.org>,
        Craig Hesling <hesling@chromium.org>,
        Tom Hughes <tomhughes@chromium.org>,
        Alexandru M Stan <amstan@chromium.org>,
        Tzung-Bi Shih <tzungbi@kernel.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Lee Jones <lee.jones@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, Jun 14, 2022 at 12:51 PM Stephen Boyd <swboyd@chromium.org> wrote:
>
> Various properties in the cros-ec binding only apply to different
> compatible strings. For example, the interrupts and reg property are
> required for all cros-ec devices except for the rpmsg version. Add some
> conditions to update the availability of properties so that they can't
> be used with compatibles that don't support them.
>
> Cc: Rob Herring <robh@kernel.org>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: <devicetree@vger.kernel.org>
> Cc: <chrome-platform@lists.linux.dev>
> Cc: Guenter Roeck <groeck@chromium.org>
> Cc: Douglas Anderson <dianders@chromium.org>
> Cc: Craig Hesling <hesling@chromium.org>
> Cc: Tom Hughes <tomhughes@chromium.org>
> Cc: Alexandru M Stan <amstan@chromium.org>
> Cc: Tzung-Bi Shih <tzungbi@kernel.org>
> Cc: Matthias Kaehlcke <mka@chromium.org>
> Cc: Benson Leung <bleung@chromium.org>
> Cc: Lee Jones <lee.jones@linaro.org>
> Signed-off-by: Stephen Boyd <swboyd@chromium.org>
> ---
>  .../bindings/chrome/google,cros-ec-typec.yaml |  1 +
>  .../bindings/extcon/extcon-usbc-cros-ec.yaml  |  1 +
>  .../i2c/google,cros-ec-i2c-tunnel.yaml        |  1 +
>  .../bindings/mfd/google,cros-ec.yaml          | 29 +++++++++++++------
>  .../bindings/pwm/google,cros-ec-pwm.yaml      |  1 +
>  .../regulator/google,cros-ec-regulator.yaml   |  1 +
>  .../bindings/sound/google,cros-ec-codec.yaml  |  1 +
>  7 files changed, 26 insertions(+), 9 deletions(-)

slight nit that from reading the subject of this patch I'd expect that
it was a no-op. Just a reorganization / cleanup. In fact, it actually
is more than a no-op. It enforces restrictions that should probably
have always been enforced. I think it'd be better if the subject was
something like "tighten property requirements" or something like that.


> @@ -158,12 +154,27 @@ allOf:
>                - google,cros-ec-rpmsg
>      then:
>        properties:
> +        controller-data: false
>          google,cros-ec-spi-pre-delay: false
>          google,cros-ec-spi-msg-delay: false
>          spi-max-frequency: false
>      else:
>        $ref: /schemas/spi/spi-peripheral-props.yaml
>
> +  - if:
> +      properties:
> +        compatible:
> +          not:
> +            contains:
> +              const: google,cros-ec-rpmsg
> +    then:
> +      properties:
> +        mediatek,rpmsg-name: false
> +
> +      required:
> +        - reg
> +        - interrupts

slight nit that think it would be easier to understand this bottom
section if you made the "SPI" and "RPMSG" sections more symmetric to
each other. I think it would be easy to just change the SPI one to say
"not SPI" instead of explicitly listing "i2c" and "rpmsg".

In any case, this overall looks pretty nice to me. My two requests are
both pretty small nits, so either with or without fixing them:

Reviewed-by: Douglas Anderson <dianders@chromium.org>
