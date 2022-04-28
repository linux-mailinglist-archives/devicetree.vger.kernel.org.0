Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E2144513880
	for <lists+devicetree@lfdr.de>; Thu, 28 Apr 2022 17:38:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233663AbiD1PlQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Apr 2022 11:41:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48454 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233280AbiD1PlP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Apr 2022 11:41:15 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D4B0B0A6C
        for <devicetree@vger.kernel.org>; Thu, 28 Apr 2022 08:38:00 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id p18so5983328edr.7
        for <devicetree@vger.kernel.org>; Thu, 28 Apr 2022 08:37:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=uAQT8HaM1F/C7tI0w3YAOWuIicIw4A32c+GrUwkdwpQ=;
        b=aFj7WCsl9W2elIghvPF/0aoqi+ZIwLetMRy93r16p5B5v2Z9g0a/wGR9ENUf36Yqqn
         P4N6UC5a1do9q3I7xV8inSoMr7BYKd/gM/oDozailW2vC4ysRvTBi32rUo1cFuw9pmGC
         Ndiagl5DtuLdbsmZZLk+131jtQO4I2gs21A7s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=uAQT8HaM1F/C7tI0w3YAOWuIicIw4A32c+GrUwkdwpQ=;
        b=irnXDk9e/awIdtOwYaIulfMVxb43TURtLcndwA+LrgH0JoXBh8sZrF37Um6057Iur9
         EjAE6GtzF+vQsbZkl4TinZEAWUC7cPnkOFq985lB0RouLmIVwnexQRbcjLU9PrIZKXpA
         UIFgwJnv7OgHqYpOfdzoJdczkYzANh3JkZMnv4iUMRrM1a3OMhKjLTmzlBNy4MWgiCUC
         w3q2HfOo5MlxcDXVUpYliU6LgHA5aCN1Bjm7FWeVDehamb4LwFcrCaJcW7mY/1KVVWnW
         D10oTOikQqQxAWkiwN9GUwyyxFz3ltrrBMQ/nwALWWqN7JT8znMhaq4oVyWc6h4iPgNu
         PBFw==
X-Gm-Message-State: AOAM5300if8CKFWRPUl79Aq8PUigf3StKyo0sxXbxOEMcy6ZclKx4d3o
        EAx339VXUHwSyreQBif935N3HhPBo7ffO7oO
X-Google-Smtp-Source: ABdhPJwPGgwRrqTz1Q2lF4lD+9zDgqd64plWmFRhlxR6QOlMURNR3who1h3GQd9oPgir99Cw6bQeiw==
X-Received: by 2002:a05:6402:254c:b0:426:13bd:3e48 with SMTP id l12-20020a056402254c00b0042613bd3e48mr10101938edb.58.1651160278080;
        Thu, 28 Apr 2022 08:37:58 -0700 (PDT)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com. [209.85.221.52])
        by smtp.gmail.com with ESMTPSA id b11-20020a17090630cb00b006e83fb1e6b1sm124839ejb.100.2022.04.28.08.37.56
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Apr 2022 08:37:57 -0700 (PDT)
Received: by mail-wr1-f52.google.com with SMTP id w4so7265196wrg.12
        for <devicetree@vger.kernel.org>; Thu, 28 Apr 2022 08:37:56 -0700 (PDT)
X-Received: by 2002:a05:6000:c7:b0:20a:d8c1:d044 with SMTP id
 q7-20020a05600000c700b0020ad8c1d044mr18483210wrx.422.1651160276475; Thu, 28
 Apr 2022 08:37:56 -0700 (PDT)
MIME-Version: 1.0
References: <20220428014022.v1.1.I08a15a73996211d37dff16810c40ee1539658601@changeid>
In-Reply-To: <20220428014022.v1.1.I08a15a73996211d37dff16810c40ee1539658601@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 28 Apr 2022 08:37:44 -0700
X-Gmail-Original-Message-ID: <CAD=FV=W716PePPFRJ+tjyKWg5CGtC7qz1+amVpq=iVk7neqkqg@mail.gmail.com>
Message-ID: <CAD=FV=W716PePPFRJ+tjyKWg5CGtC7qz1+amVpq=iVk7neqkqg@mail.gmail.com>
Subject: Re: [PATCH v1] arm64: dts: qcom: sc7180: Add mrbland dts files
To:     "Joseph S. Barrera III" <joebar@chromium.org>
Cc:     LKML <linux-kernel@vger.kernel.org>,
        Alexandru M Stan <amstan@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, Apr 28, 2022 at 1:41 AM Joseph S. Barrera III
<joebar@chromium.org> wrote:
>
> +&i2c4 {
> +       status = "okay";
> +       clock-frequency = <400000>;
> +
> +       ap_ts: touchscreen@5d {
> +               compatible = "goodix,gt7375p";
> +               reg = <0x5d>;
> +               pinctrl-names = "default";
> +               pinctrl-0 = <&ts_int_l>, <&ts_reset_l>;
> +
> +               interrupt-parent = <&tlmm>;
> +               interrupts = <9 IRQ_TYPE_LEVEL_LOW>;
> +
> +               reset-gpios = <&tlmm 8 GPIO_ACTIVE_LOW>;
> +
> +               vdd-supply = <&pp3300_ts>;
> +       };
> +};

This is a detachable, right? So can you add these to match what
Stephen is doing for existing detachables [1]

&keyboard_controller {
       /delete-property/keypad,num-rows;
       /delete-property/keypad,num-columns;
};

It should be sorted based on the name of the node you're overriding,
so it should come right after &i2c4 I believe.


> +tp_en: &en_pp3300_dx_edp {
> +       pinmux {
> +               pins = "gpio85";
> +               };
> +       pinconf {
> +               pins = "gpio85";
> +       };
> +};

The above has the exact same problem that Stephen asked you to fix on
wormdingler [2] about indentation / blank lines. Can you fix it here
too?

In addition to the changes requested above, it's probably nicer to
keep all 3 patches you're sending in one series just because they all
touch the Makefile.

[1] https://lore.kernel.org/r/20220426225748.324759-1-swboyd@chromium.org
[2] https://lore.kernel.org/r/CAE-0n53juQ8--Sai=wKypj8URw+V1giOOhzd-p13fVbe_vxZ0Q@mail.gmail.com/
