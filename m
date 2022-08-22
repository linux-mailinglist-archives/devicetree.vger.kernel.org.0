Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9017059C7BA
	for <lists+devicetree@lfdr.de>; Mon, 22 Aug 2022 21:01:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238440AbiHVTBI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Aug 2022 15:01:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45322 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238037AbiHVS74 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Aug 2022 14:59:56 -0400
Received: from mail-oa1-x34.google.com (mail-oa1-x34.google.com [IPv6:2001:4860:4864:20::34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EEB305005B
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 11:58:00 -0700 (PDT)
Received: by mail-oa1-x34.google.com with SMTP id 586e51a60fabf-11d7a859b3aso2796463fac.4
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 11:58:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=sx+UyfDWZj9lJoQgaGCVUpt7c9rW+3UXXFU2teNnr+s=;
        b=i/Bt7QN1Iml/UvONpD1gU8CUu+5EFH2d30OyL8Oq8NZw5oZbXgC/7+WzwWJMELOE2C
         C9Nj5VCS9TGZ6MS3y17fbjtsOmBq3f+yICabfF5/i2koXeKBIJeKf5porFUTDgkRN0l3
         5utqin9WpQcztPEQX+oiBX1m6x+C1PnQrZaDk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=sx+UyfDWZj9lJoQgaGCVUpt7c9rW+3UXXFU2teNnr+s=;
        b=IF6hQ9O7DG7Kv01aKX7NIC+umTKLamsr5D7sfPlIhJkZJTCgAnzbSMUkwW5K9ZtR/H
         04vp31y9TwNUvyBC/9ek6G3RmcNSEvi++ZNJTWE2LgNukDubhgljJuK2EF7PtFpX2scO
         mF03W+wo3BqxEf0aK46NdTvNKAqaOLAkRDO5ydVjiqM0Ni8P84PxISZbj72ongs+UNk0
         CE5Tlj7NRKHxdFJOtTC7/SBFaDmiSmr189uOIp06DT/Y0+IXnZfbgcKB+Hih9p/Q0ulp
         LrQ2e72z/P/aVGJNBC+B5KFyR7hyJOq0mp8Sx7qw1vl5QzE27H0p4no7bd4liCgPegSi
         ZDDQ==
X-Gm-Message-State: ACgBeo1dC83+W1Ccih5Uh/7WWxD2bowjnlIhjKQhT/UHeE6iF87moByb
        +vmwHE/14s4t2EzTXq6MsbeyLdClgTr/Zg==
X-Google-Smtp-Source: AA6agR7eFCVhfigObL0IKuZJ1m0B0m0KkxWd73nAzkJQn4vqm+1E1z8hTjyyaR2AL+yVb8qRjnSQuQ==
X-Received: by 2002:a05:6870:210b:b0:10b:ed11:4e2d with SMTP id f11-20020a056870210b00b0010bed114e2dmr10419475oae.265.1661194677676;
        Mon, 22 Aug 2022 11:57:57 -0700 (PDT)
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com. [209.85.167.174])
        by smtp.gmail.com with ESMTPSA id b13-20020aca674d000000b00342ded07a75sm2762039oiy.18.2022.08.22.11.57.55
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Aug 2022 11:57:55 -0700 (PDT)
Received: by mail-oi1-f174.google.com with SMTP id o184so13275298oif.13
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 11:57:55 -0700 (PDT)
X-Received: by 2002:a05:6808:20e:b0:344:997f:32b8 with SMTP id
 l14-20020a056808020e00b00344997f32b8mr10008134oie.11.1661194674906; Mon, 22
 Aug 2022 11:57:54 -0700 (PDT)
MIME-Version: 1.0
References: <20220817123350.1.Ibb15bab32dbfa0d89f86321c4eae7adbc8d7ad4a@changeid>
 <f776de47-615e-d38d-8512-3e5391d6650a@linaro.org>
In-Reply-To: <f776de47-615e-d38d-8512-3e5391d6650a@linaro.org>
From:   Brian Norris <briannorris@chromium.org>
Date:   Mon, 22 Aug 2022 11:57:42 -0700
X-Gmail-Original-Message-ID: <CA+ASDXOYJrqdtzOeFhJfxtB7bCEKZuR=ADGxoVsAFM_N6zPJ+g@mail.gmail.com>
Message-ID: <CA+ASDXOYJrqdtzOeFhJfxtB7bCEKZuR=ADGxoVsAFM_N6zPJ+g@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: Add gru-scarlet sku{2,4} variants
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Heiko Stuebner <heiko@sntech.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        Linux Kernel <linux-kernel@vger.kernel.org>,
        Chen-Yu Tsai <wenst@chromium.org>,
        devicetree <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Krzysztof,

On Thu, Aug 18, 2022 at 3:02 AM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
> On 17/08/2022 22:33, Brian Norris wrote:
> > The Gru-Scarlet family includes a variety of SKU identifiers, using
> > parts of a 3-bit space {0..7}. SKU2 and SKU4 devices (under a few
> > different manufacturer names) also use the Innolux display.
> >
> > For reference, the original vendor tree source:
> >
> > CHROMIUM: arm64: dts: rockchip: add sku{0,2,4} compatibility
> > https://chromium.googlesource.com/chromiumos/third_party/kernel/+/f6ed665c9e2eb37fb2680debbb36ec9fb0e8fb97
> >
> > CHROMIUM: arm64: dts: rockchip: scarlet: add SKU0 device tree
> > https://chromium.googlesource.com/chromiumos/third_party/kernel/+/9987c8776f4b087d135d761e59f7fa6cc83fc7fc
> >
> > Signed-off-by: Brian Norris <briannorris@chromium.org>

> > --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> > +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml

> > +          - const: google,scarlet-rev15-sku2
> > +          - const: google,scarlet-rev15-sku4
>
> This does not match the sources you linked in commit msg, so I am
> confused what the links are supposed to prove.

It took 2 patches to get there (because SKU0 had some additional
customizations later, which were already upstreamed [0]), but the
result is the same. I'm not sure which part you think doesn't match.

One difference: they're listed in different order, because that seems
to be how the YAML schema is organized. But it doesn't make any
material difference, as long as the -skuX variants are listed before
the non-skuX variants (i.e., "more specific" goes first).

As to what they prove? Well, whoever applies is free to drop them if
they'd like, but I figured more documentation is better. IMO, it shows
that the real product uses those strings, and implies (but not quite
proves) the bootloader is looking for those. That is useful
information, if one expects to use an upstream kernel with the
production bootloader.

[0] https://git.kernel.org/linus/5707e34166f546bf1fcdfd3da600e8187d04d937
arm64: dts: rockchip: Add gru-scarlet-dumo board

> Is this matching at least your DTS (dtbs_check passes)?

Yes. (Well, after patch 2. I didn't try to make this bisectable.)

Brian
