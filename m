Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 79ECF57FD41
	for <lists+devicetree@lfdr.de>; Mon, 25 Jul 2022 12:19:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232971AbiGYKTY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Jul 2022 06:19:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44490 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231654AbiGYKTX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Jul 2022 06:19:23 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0484AB491
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 03:19:22 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id h9so15314241wrm.0
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 03:19:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=4qKGmWMqZhEmESnw4XiD+O0THResKBg5Q3wlwtvAW/k=;
        b=hv2GEF4dtTTSztB0obRjKRpHxTon1gEYyRohRuamIcDUPyt/tP2SXOQBZFsD7zpGE+
         bTEK8t5WDE+622xIsSiGf/Fs4gOdTrZhWaglwuctUCChX3HcB07SyaIQwElXb2W6RHRG
         iGA/Nxx3TL9R4Kd/V57KX6EiRH99aBno+/RAg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=4qKGmWMqZhEmESnw4XiD+O0THResKBg5Q3wlwtvAW/k=;
        b=yAzOlSGkKSGlZ3rcdQigLxUagJdOQaRDa6miXNLp5Wkn63NL2yeJEL81ygumiUVCzf
         hjFsE6GWl4d/dbXV6cvoRf556knaah83CT9IdhxfKuqAEvo6a+zfE2UalA9yVkFdCqkR
         wCwzp0fcU1IZR525A9h61b+K8Jmimnnz32JVA5HjhfwmQBjLzR684LOmUqvUxGhKd0m6
         57GdyHFF0wQphp0QDuOup8//bGJjk198PNweNUdtCxGoh5E63I42mAqm4TOMCxQKlr43
         qelIuj0iCCakvLRIl/qN9cfR5rqKLaHxaiOH2PqBbJuVhDhDaJk5MdEIZ7VDKBIn0BsQ
         89XQ==
X-Gm-Message-State: AJIora9eotPmHC3dYS0+n+bj2TN8lWnfOrrCBkjRoF1pcbQ5igAPPjE5
        cqdn+wOVngqiOwFnTBxEwcbERDe6f0B8DbPCM92k/Q==
X-Google-Smtp-Source: AGRyM1uN9zadKS6Nx4rG97C6xaz+jKp9LVcuSfRCaJh2ZAajRxqI38cP8WAfn6ByjTht9F2p1SRciCiBlVqAEVGzDmc=
X-Received: by 2002:a5d:59a9:0:b0:21e:5e6a:6a8e with SMTP id
 p9-20020a5d59a9000000b0021e5e6a6a8emr7812606wrr.190.1658744360514; Mon, 25
 Jul 2022 03:19:20 -0700 (PDT)
MIME-Version: 1.0
References: <20220725082447.2613231-1-treapking@chromium.org> <5856610d-510f-46dc-63b2-79e571956a7c@collabora.com>
In-Reply-To: <5856610d-510f-46dc-63b2-79e571956a7c@collabora.com>
From:   Pin-yen Lin <treapking@chromium.org>
Date:   Mon, 25 Jul 2022 18:19:09 +0800
Message-ID: <CAEXTbpeHy6-WjLOyWFkncoHzBPM+6qq4w-kUoZj7=05gf8YBjw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: mt8173-oak: Switch to SMC watchdog
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     Matthias Brugger <matthias.bgg@gmail.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        Eizan Miyamoto <eizan@chromium.org>,
        Evan Benn <evanbenn@chromium.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 25, 2022 at 4:39 PM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Il 25/07/22 10:24, Pin-yen Lin ha scritto:
> > Switch to SMC watchdog because we need direct control of HW watchdog
> > registers from kernel. The corresponding firmware was uploaded in
> > https://review.trustedfirmware.org/c/TF-A/trusted-firmware-a/+/3405.
> >
>
> There's a fundamental issue with this change, I think.
>
> What happens if we run this devicetree on a device that does *not* have
> the new(er) firmware?

I haven't tried this patch with an older firmware. I'll manage to
build one for this.
>
> The kernel *shall not* get broken when running on devices that are running
> on older firmware, especially because that's what was initially supported
> and what is working right now.

Actually the current approach does not work *right*. The device boots,
but the watchdog does not work properly.

Also, all MT8173 ChromeOS devices have this firmware updated, and we
don't have other upstream users apart from mt8173-evb. Do we want to
support the developers that are running upstream linux with their
MT8173 boards?

>
> For this reason, I think that we should get some code around that checks
> if the SMC watchdog is supported and, if not, resort to MMIO wdog.

What is the expected way to support this backward compatibility? Do we
put the old compatible strings ("mediatek,mt8173-wdt" and
"mediatek,mt6589-wdt") after "arm,smc-wdt" and reject it in the
drivers if the firmware does not support it?
>
> Regards,
> Angelo
>
>
> > Signed-off-by: Pin-yen Lin <treapking@chromium.org>
> > ---
> >
> >   arch/arm64/boot/dts/mediatek/mt8173.dtsi | 6 ++----
> >   1 file changed, 2 insertions(+), 4 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/mediatek/mt8173.dtsi b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
> > index a2aef5aa67c1..2d1c776740a5 100644
> > --- a/arch/arm64/boot/dts/mediatek/mt8173.dtsi
> > +++ b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
> > @@ -528,10 +528,8 @@ power-domain@MT8173_POWER_DOMAIN_MFG {
> >                       };
> >               };
> >
> > -             watchdog: watchdog@10007000 {
> > -                     compatible = "mediatek,mt8173-wdt",
> > -                                  "mediatek,mt6589-wdt";
> > -                     reg = <0 0x10007000 0 0x100>;
> > +             watchdog {
> > +                     compatible = "arm,smc-wdt";
> >               };
> >
> >               timer: timer@10008000 {
> >
>
>
