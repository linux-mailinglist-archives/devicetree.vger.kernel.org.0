Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 01BA45FF325
	for <lists+devicetree@lfdr.de>; Fri, 14 Oct 2022 19:51:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229867AbiJNRvP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Oct 2022 13:51:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56496 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229983AbiJNRvP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Oct 2022 13:51:15 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51BE61BE916
        for <devicetree@vger.kernel.org>; Fri, 14 Oct 2022 10:51:13 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id 13so12106076ejn.3
        for <devicetree@vger.kernel.org>; Fri, 14 Oct 2022 10:51:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=cg7vVdhKoFrdvf+T3/QjECbLlqPtMPcZt/hmwZYwoJc=;
        b=lKj4HxVXUwZMMc7IltTfynUM2wk6KMlcwiEkg2Bt84FN7mHDym/KuJmacvpknZ6wg5
         C8i2Gv8BMqY/jSoh4hoVFl8zmcGgFyC3VR0ch38z6SdcuXclGaL8vujviS0RbyvWb5en
         zpU+wl5fUD4TQ6iaYoDVlPN53OsmEJNduajwo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cg7vVdhKoFrdvf+T3/QjECbLlqPtMPcZt/hmwZYwoJc=;
        b=qPq7MUM+1d/p83DzQzcMUwj+x1P4zRBcjFF/oEhSd9b79hKGJCAIFx8KkMdLHZH+eH
         TrsPXMQhNl6BlNU2nTgnz4ds2sz1u8IZwxMETwzkF8wVTUhkOT4/pMzNqVoDUaxDRc1q
         luDeh6XHSy/vhTO/GJjrBDBXUI7sTDDlhI2ndMwztXDHdIyAbuBHXnwQ8wXWK4SCIsoh
         ojqyp8WOhA1ksJprdNxq9Jl7F4JOehAo/TI/VNFguyLeiheJjC82ZExcvwjPQvJZOMjT
         Ww/g98VI4jeFQPS2HFq2ziZZFm8ljLo3PKc2ybbYF7IMxJkbxjz6FVPpsnBmK7YEjjQ9
         dNUw==
X-Gm-Message-State: ACrzQf1DoWL4utUET0zZi1j3ezPuuaslPqg3y0/j7lgOZ5mwj8kkLq29
        iFmQBiDXjOPpgIp581sKJuQdGLe78MN2GzM3
X-Google-Smtp-Source: AMsMyM5haQKhJN1z3z5fXE7nzjtFNG30O9qELyKfCHzv3AnqwiEcdjchVQo005Tv350bSIi0n5bEyQ==
X-Received: by 2002:a17:906:7621:b0:750:c4a3:8fcd with SMTP id c1-20020a170906762100b00750c4a38fcdmr4639494ejn.180.1665769871533;
        Fri, 14 Oct 2022 10:51:11 -0700 (PDT)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com. [209.85.128.47])
        by smtp.gmail.com with ESMTPSA id kz12-20020a17090777cc00b00741a251d9e8sm1880292ejc.171.2022.10.14.10.51.08
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Oct 2022 10:51:10 -0700 (PDT)
Received: by mail-wm1-f47.google.com with SMTP id fn7-20020a05600c688700b003b4fb113b86so4136795wmb.0
        for <devicetree@vger.kernel.org>; Fri, 14 Oct 2022 10:51:08 -0700 (PDT)
X-Received: by 2002:a05:600c:1e18:b0:3b3:b9f8:2186 with SMTP id
 ay24-20020a05600c1e1800b003b3b9f82186mr4748841wmb.151.1665769868314; Fri, 14
 Oct 2022 10:51:08 -0700 (PDT)
MIME-Version: 1.0
References: <20221013184700.87260-1-krzysztof.kozlowski@linaro.org> <20221013184700.87260-2-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221013184700.87260-2-krzysztof.kozlowski@linaro.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 14 Oct 2022 10:50:55 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VyrCA4jNkfVGwRw2Zf-sCwJe21dRHidtZnJyb73i_UrQ@mail.gmail.com>
Message-ID: <CAD=FV=VyrCA4jNkfVGwRw2Zf-sCwJe21dRHidtZnJyb73i_UrQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] arm64: dts: qcom: sc7180: align TLMM pin
 configuration with DT schema
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, Oct 13, 2022 at 11:49 AM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
> index eae22e6e97c1..37abe131951c 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi

[ ... cut ... ]

>  &spi0 {
> -       pinctrl-0 = <&qup_spi0_cs_gpio_init_high>, <&qup_spi0_cs_gpio>;
> +       pinctrl-0 = <&qup_spi0_cs_gpio_init_high>, <&qup_spi0_spi>;
>         cs-gpios = <&tlmm 37 GPIO_ACTIVE_LOW>;
>  };

Something still looks wrong with the above. I would have expected:

  <&qup_spi0_cs_gpio_init_high>, <&qup_spi0_spi>, <&qup_spi0_cs_gpio>;

Specifically the old commit e440e30e26dd ("arm64: dts: qcom: sc7180:
Avoid glitching SPI CS at bootup on trogdor") only worked correctly
because "qup_spi0_cs_gpio_init_high" didn't specify a "function".
That meant it was guaranteed to _just_ set the GPIO output to be
high without changing the mux. Then later we'd change the mux and
the output would already be high and we'd have no glitch.

As I mentioned earlier, I didn't love that solution but I didn't
see a better way. Specifically, I don't think that the properties
within a device tree node are ordered. Thus with your new definition:

  qup_spi0_cs_gpio_init_high: qup-spi0-cs-gpio-init-high-state {
    pins = "gpio37";
    function = "gpio";
    output-high;
  };

Nothing tells the pinctrl subsystem whether it should apply the
'output-high' before the 'function = "gpio"' or vice versa. From
my previous investigation it seemed to set the function first
and then the output to be high. Maybe that's because I happened
to list the function first, but I wouldn't have thought it was
legal to rely on the ordering of properties.

On the other hand, values within a property _are_ ordered. That
means that when we specify:

 <&qup_spi0_cs_gpio_init_high>, <&qup_spi0_spi>, <&qup_spi0_cs_gpio>;

The pinctrl subsystem can see that we want "init_high" done first,
then the SPI pins setup, and then the GPIO setup.

I confirmed that with your patches applied that the EC was reporting
a glitch, though I haven't (yet) managed to reproduce the cros-ec
probe failure that we were seeing in the past.

Unfortunately, I then reverted your patches and the EC was _still_
glitching. :( It looks like things broke in commit b991f8c3622c ("pinctrl:
core: Handling pinmux and pinconf separately"). :( Sure enough,
reverting that patch fixes the glitching.

OK, several hours later and I've come up with a proposed solution [1].
Assuming that solution lands, then I think the answer is:

a) Totally get rid of the '_init_high' entries.
b) trogdor should just specify:
   <&qup_spi0_spi>, <&qup_spi0_cs_gpio>;

[ ... cut ... ]

> +&qup_spi0_spi {
> +       drive-strength = <2>;
> +       bias-disable;
>  };
>
>  &qup_spi0_cs_gpio {
> -       pinconf {
> -               pins = "gpio34", "gpio35", "gpio36", "gpio37";
> -               drive-strength = <2>;
> -               bias-disable;
> -       };
> +       drive-strength = <2>;
> +       bias-disable;
> +};
> +
> +&qup_spi6_spi {
> +       drive-strength = <2>;
> +       bias-disable;
>  };
>
>  &qup_spi6_cs_gpio {
> -       pinconf {
> -               pins = "gpio59", "gpio60", "gpio61", "gpio62";
> -               drive-strength = <2>;
> -               bias-disable;
> -       };
> +       drive-strength = <2>;
> +       bias-disable;
> +};
> +
> +&qup_spi10_spi {
> +       drive-strength = <2>;
> +       bias-disable;
>  };
>
>  &qup_spi10_cs_gpio {
> -       pinconf {
> -               pins = "gpio86", "gpio87", "gpio88", "gpio89";
> -               drive-strength = <2>;
> -               bias-disable;
> -       };
> +       drive-strength = <2>;
> +       bias-disable;
>  };

Mostly addressed by the above, but it should be noted that in your
patch you were specifying settings in the trogdor.dtsi file for
"qup_spi#_cs_gpio" but then never using it (it used the _init_high
versions).

[1] https://lore.kernel.org/r/20221014103217.1.I656bb2c976ed626e5d37294eb252c1cf3be769dc@changeid
