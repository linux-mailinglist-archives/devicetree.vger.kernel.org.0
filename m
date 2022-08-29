Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1DF6F5A5587
	for <lists+devicetree@lfdr.de>; Mon, 29 Aug 2022 22:29:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229975AbiH2U3G (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Aug 2022 16:29:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46224 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229475AbiH2U3F (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Aug 2022 16:29:05 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82C3285A9D
        for <devicetree@vger.kernel.org>; Mon, 29 Aug 2022 13:29:04 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id h5so6437639ejb.3
        for <devicetree@vger.kernel.org>; Mon, 29 Aug 2022 13:29:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=iBDrYuK38tP07AWX3QFXuLOTrIhoz52xxnkZBhXnKGc=;
        b=eFddmdZPTAsCg08ovPXyoXSHP6EXZ0661ss+xIP0mD30x6tQaHosOhgiWaSkYc7ypK
         2lpIjsDNS2wSj2/YBuO8s2SHN2v2MvSfIRO3z764xmDPke4LY8oxmu8r798mZqARRua0
         b/qCsQ6lTXYRQZeq5ey6d0bEbJUXpmrzlu0Do=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=iBDrYuK38tP07AWX3QFXuLOTrIhoz52xxnkZBhXnKGc=;
        b=35zFlOvypwWM8AFKIclow6U8HSb5/Fb4YwuPotXyqlSZc32IP2NkpQutxM+3k1BpAL
         Zq34ig9G06+4CDq54RtngLQU+6suJulsdwaYpltfF3Mc5yDP+PA89eHm1hi6kRCPxZP2
         /BbBFBzsaGVovfTdhf++eUuX7C/uwS2+Re8SP47EgP+mcAywnqxl+3NezlYW05ojNdty
         /YHSbcbvNxQxEztV6DFyMjfVfl0tfE4RLL0x/G1w1v12QW+DD9xSBN26LJBYJiXwIk6p
         jxeLnoKP6UMbaTCC2sJ0QrWu5pvZ6Lj7ELm7jVjzfmMRiMllCiNG0idfsJ+rq5r+4ygr
         dbWQ==
X-Gm-Message-State: ACgBeo0CWNxFC2drhBenMsK013mVKlgXIkyQDobXM4qPZvBRxjuz7aSf
        2+lof2rVFGCyrQMSbhhjGV9pc8lyqCv333waXrwbLQ==
X-Google-Smtp-Source: AA6agR6x/XIaAtR0Mo8JnsIAoaBx+9lRxsyXhIku7RHf1MsEnL3pU3ewTtuOL4HG9TWgyomlKkagwsvL9tX6SCpjqqs=
X-Received: by 2002:a17:907:6089:b0:734:be0c:e0cd with SMTP id
 ht9-20020a170907608900b00734be0ce0cdmr15135531ejc.474.1661804943116; Mon, 29
 Aug 2022 13:29:03 -0700 (PDT)
MIME-Version: 1.0
References: <20220824080903.3696847-2-jagan@amarulasolutions.com> <20220829201752.518374-1-naoki@radxa.com>
In-Reply-To: <20220829201752.518374-1-naoki@radxa.com>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Tue, 30 Aug 2022 01:58:52 +0530
Message-ID: <CAMty3ZDxvaFSYpjYniXwpA6Wfyyn=c8mW5XNNUaiuqSb1niC9w@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: rk3399: Radxa ROCK 4C+
To:     FUKAUMI Naoki <naoki@radxa.com>
Cc:     abbaraju.manojsai@amarulasolutions.com, devicetree@vger.kernel.org,
        heiko@sntech.de, krzysztof.kozlowski+dt@linaro.org,
        linux-amarula@amarulasolutions.com,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
        stephen@radxa.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Aug 30, 2022 at 1:48 AM FUKAUMI Naoki <naoki@radxa.com> wrote:
>
> Hello,
>
> thank you very much for your work!
>
> > +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-4c-plus.dtb
>
> this is not an objection, just a note for me, currently our(Radxa)
> u-boot try to load "rk3399-rock-pi-4c-plus.dtb".
>
> > +#include "rk3399-opp.dtsi"
>
> ROCK 4C+ has RK3399-T. it needs different opp table.

Yes, I will update this in V3.

>
> > +     aliases {
> > +             mmc0 = &sdmmc;
>
> please add
>
>                 mmc1 = &sdhci;
>
> as like as other ROCK (Pi) 4 series.
>
> > +&hdmi_sound {
> > +     status = "okay";
> > +};
>
> please add
>
> &i2s2 {
>         status = "okay";
> };
>
> too.
>
> > +&sdmmc {
> > +     bus-width = <4>;
> > +     cap-mmc-highspeed;
> > +     cap-sd-highspeed;
> > +     card-detect-delay = <800>;
> > +     disable-wp;
> > +     pinctrl-names = "default";
> > +     pinctrl-0 = <&sdmmc_clk &sdmmc_cd &sdmmc_cmd &sdmmc_bus4>;
> > +     vqmmc-supply = <&vccio_sd>;
> > +     status = "okay";
> > +};
>
> does card detect work for you? it doesn't work for me. I think it
> needs

Yes. it is detecting for me. I've booted from SD. 2022.03.04 V1.2
revision board.

Thanks,
Jagan.
