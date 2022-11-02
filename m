Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 85AEA61627E
	for <lists+devicetree@lfdr.de>; Wed,  2 Nov 2022 13:14:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229546AbiKBMOM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Nov 2022 08:14:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38438 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229459AbiKBMOL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Nov 2022 08:14:11 -0400
Received: from mail-yw1-x112e.google.com (mail-yw1-x112e.google.com [IPv6:2607:f8b0:4864:20::112e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD9A223BC7
        for <devicetree@vger.kernel.org>; Wed,  2 Nov 2022 05:14:10 -0700 (PDT)
Received: by mail-yw1-x112e.google.com with SMTP id 00721157ae682-367b8adf788so164179097b3.2
        for <devicetree@vger.kernel.org>; Wed, 02 Nov 2022 05:14:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=EZG/ByG3yJYBkXj69Uab2Z/6HK+E8SMP0+2AXC/lf1A=;
        b=AkNUUmqO/Y45WxuoBR0rRaklH4OHqR+yZ5YeF6JnVQmYmTjluAaV46qVgaOKJ2mmgM
         PBqqDqdSWLLqNZ45Xbhc9B3t+OD2sBNtUXc4stMQoQBI48nwjPKRzZqbUNLP46fnP13T
         lQmPaz8cpBM0wcs0z2tUJuejy8JXAcpI/+Hs5tpVWFSQAdsg7I4Jl4sDzhvROmrGNqdQ
         MWBorzdi2SMHTwJ7sALIh4+WOqexvrkM688bwEJwNkjYffRbHc4ARbU+DnpEWbp7wI+u
         1X56Ly/vyk7iOdRZ842EBbJE8Gr+ggILqwOTMmQvHR0dIVSvVeQbheizloGpALSZYzdr
         XbjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EZG/ByG3yJYBkXj69Uab2Z/6HK+E8SMP0+2AXC/lf1A=;
        b=DIxz7isc3NNbyHq+8qjR4IbszXTZuSGFTN06xq3nQiNmvQJv2Vc1XTRmC6DvhNyopq
         fUQ4JoX+sVbuqqb/khgX6g8jeASaSLGeDqKm+W6NpntGgX8PM2Ii5COiyMpIdnt4KhED
         UUn+S/6HblNvN2q8qdq/GDfsrBpkPKt4iTXl2orpZw1tNzyriikgsTk/HD1qRAVrZJ6E
         w4Jme88hTXqLv4j4RMmdWkE9+r1yB+u7N7lEX9NcJjdKViuySfT9Q+xoPygyw4c17lXU
         mrNgb9g/mBSdsYQvdYVQBq+A9pglDIBAc9VSCDJZbQJxiGKO7+CQEgXwSlj0rT2SLkhx
         7aWw==
X-Gm-Message-State: ACrzQf1ONJ802xtkPdmAL3wKRYc4M05Ysw+5DYNbwml0NXcPn/IDLqgL
        2utjZ/n/CsVET9VqwZBLCTZ4JAjaBqVTJU5xQow/3Q==
X-Google-Smtp-Source: AMsMyM78NfzDgrg2IPxctI0tS2AzDrlpnwtNUe18UdnC0fjfl1bmHHKpixedQ85u2WDA5JObnaAM2Jkhsl48huvRB6I=
X-Received: by 2002:a81:9e47:0:b0:361:468a:7221 with SMTP id
 n7-20020a819e47000000b00361468a7221mr23413942ywj.155.1667391250013; Wed, 02
 Nov 2022 05:14:10 -0700 (PDT)
MIME-Version: 1.0
References: <20221031122224.1846221-1-ajye_huang@compal.corp-partner.google.com>
 <20221031122224.1846221-3-ajye_huang@compal.corp-partner.google.com> <549e1ff6-821a-1c26-0a4f-021bed27b093@collabora.com>
In-Reply-To: <549e1ff6-821a-1c26-0a4f-021bed27b093@collabora.com>
From:   Ajye Huang <ajye_huang@compal.corp-partner.google.com>
Date:   Wed, 2 Nov 2022 20:13:58 +0800
Message-ID: <CALprXBbL6HDaZhGU5eG6cnDP_rqymvamjTNGy7acaOk1rTMNmA@mail.gmail.com>
Subject: Re: [PATCH v5 2/2] ASoC: mediatek: mt8186-rt5682: Modify machine
 driver for two DMICs case
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     linux-kernel@vger.kernel.org, Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-mediatek@lists.infradead.org,
        "chunxu . li" <chunxu.li@mediatek.com>,
        Takashi Iwai <tiwai@suse.com>,
        Jaroslav Kysela <perex@perex.cz>,
        Jiaxin Yu <jiaxin.yu@mediatek.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        =?UTF-8?B?TsOtY29sYXMgRiAuIFIgLiBBIC4gUHJhZG8=?= 
        <nfraprado@collabora.com>, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, alsa-devel@alsa-project.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi AngeloGioacchino,

On Wed, Nov 2, 2022 at 6:44 PM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> > A "dmic-gpios" property is used for a mixer control to switch
> > the dmic signal source between the Front and Rear Dmic.
> >
> > Refer to this one as an example,
> > commit 3cfbf07c6d27
> > ("ASoC: qcom: sc7180: Modify machine driver for 2mic")
> >

> > +static const char * const dmic_mux_text[] = {
> > +     "FrontMic",
> > +     "RearMic",
>
> Why are the two words joined?
> s/FrontMic/Front Mic/g
> s/RearMic/Rear Mic/g
>
> Like that, we keep it consistent with the naming that was given in the commit
> that you mentioned in the commit description.
>
> Regards,
> Angelo

Thank you for your review.
Yes, you are correct, I should keep the string format consistent with
the commit I mentioned in descriptions to avoid confusion.
I will submit the next. Thanks. Regards.
