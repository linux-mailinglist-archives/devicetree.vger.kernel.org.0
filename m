Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F2A5A526C19
	for <lists+devicetree@lfdr.de>; Fri, 13 May 2022 23:08:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1384491AbiEMVIx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 May 2022 17:08:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54936 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1377240AbiEMVIw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 May 2022 17:08:52 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 150DB1F9
        for <devicetree@vger.kernel.org>; Fri, 13 May 2022 14:08:50 -0700 (PDT)
Received: from mail-yb1-f182.google.com ([209.85.219.182]) by
 mrelayeu.kundenserver.de (mreue012 [213.165.67.97]) with ESMTPSA (Nemesis) id
 1M1aQN-1nn8l00pPn-0037Xn for <devicetree@vger.kernel.org>; Fri, 13 May 2022
 23:08:49 +0200
Received: by mail-yb1-f182.google.com with SMTP id e12so17283147ybc.11
        for <devicetree@vger.kernel.org>; Fri, 13 May 2022 14:08:49 -0700 (PDT)
X-Gm-Message-State: AOAM530cz4cItgs82oFo1/yW8WA2uNJivV5KlFt0ZGfAe2TpZ4VyzKhY
        p6LTB90UucBPl4Jh7ZQ4cKRGxQzG5i6HVk1enqA=
X-Google-Smtp-Source: ABdhPJxGsYcgRxijDnAxnaZBV41piMiw2krrZa+hZlLUYVk0W4WHqmiRXBg7o8Dt3FWJGLxvwNMsBXyok0kIZoLSF2c=
X-Received: by 2002:a25:d3c2:0:b0:645:74df:f43d with SMTP id
 e185-20020a25d3c2000000b0064574dff43dmr6794203ybf.394.1652476128026; Fri, 13
 May 2022 14:08:48 -0700 (PDT)
MIME-Version: 1.0
References: <b4383f23-0adc-b9de-a1d9-abd1c2f82b27@gmail.com>
 <CAK8P3a0iFq3X6PrLggc=Av9GdWnJU=US659jaUXqH+X4GnbYTA@mail.gmail.com> <942eb0ea-3376-f891-e8b2-a57123ddccd7@gmail.com>
In-Reply-To: <942eb0ea-3376-f891-e8b2-a57123ddccd7@gmail.com>
From:   Arnd Bergmann <arnd@arndb.de>
Date:   Fri, 13 May 2022 23:08:31 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3-zN3Dn8LeWTDMszGdh0ogAt+t45Z4vyVqi2csFJWaEA@mail.gmail.com>
Message-ID: <CAK8P3a3-zN3Dn8LeWTDMszGdh0ogAt+t45Z4vyVqi2csFJWaEA@mail.gmail.com>
Subject: Re: [GIT PULL] arm: mediatek: DT updates for v5.19
To:     Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Arnd Bergmann <arnd@arndb.de>, Yong Wu <yong.wu@mediatek.com>,
        Rob Herring <robh+dt@kernel.org>, arm-soc <arm@kernel.org>,
        SoC Team <soc@kernel.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        Evan Green <evgreen@chromium.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Hans Verkuil <hverkuil@xs4all.nl>,
        Rob Herring <robh@kernel.org>,
        DTML <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:ysz0hcLLPhYQNfcs85pD/6bFJ/LvJHc1UXXqUfqbRTf0MFIsjW2
 MzKiglxFnXSFx7DkRFuZ4uVmUqrxj8PvF9mrRSoxabAOxt4/cB2W0ToySEwvs6w8g9qP8ct
 L/OYmeYKciUeqrFp4QsuqR71pGSn4/Y33sMJQvnwFGVI//JsN4Yx5IaE/34qBT1NkoZyFnl
 AxOqavPfe+3ipH2S9AJUg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:TIP6+cUy4KQ=:RDaaLJh/V3zSMsk5SSWAN9
 GdEMgO//LgsCUgF92Q1pxnLz+VjS1QOQ3IEg0ru9xO0ZpkoSvWmVnnxB6rg/VABbhXNMiUyhx
 Aiec1FKE8WpWZIPruHuBpr81aB5+WkSUhBczYQyS7TOXPtX9x8Gzf903woHJvN2Mx08GKctlk
 3JBMienZDZS0nRWK726fWC1hIPEwdWMCQdYp0/mxtfSZCRi467NZLrTNq7SzCM2M01Kssai+w
 2bMYKlqwXsO1hugVh8wIHsiIeoIw20Jick/LSFX3Udh7jKNRCHLNu9Flr5VqyZwCqVoK2uxNe
 mcLPzC9pFu43kJiyAZ5yDEthP/BFc0sdO7mjoSDU2AX5U9gI9fXRVgU4j99NxNcYNdNQg8mG/
 6RrN4h+kndF8QsIGA4sPbDXe6I6K2SRvl5tz74+jn5mOVKXV0lyec21/Ocex1rlTHmWGTGG/a
 KnrO4sw3xMOGHF6RWlpbMeowFWpbq9K+9fd8bLxfV0/jxN9uNGDPF8544eeTZT5WwHUnsx/Rt
 WbkKEP4UxdJMkRjPHvDAfBYpVvxTIZ9Sh1pthz2xnW46HUXmZLIMDg0bOC9iD3Q8aI8+ZuEUF
 pQkhDF7J0m7d0t/9MUGyogltuk0U+TkBXb10hQowRhNws9fR+QblF96v7Mc4pAlkh8Kbeyj+V
 vyG67Sy0tFhJpASTR/t1oJOivqPCeFSP95/DlpxITCLbNFqPfa4eJjSEqTk9ZgE8XHQw=
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, May 13, 2022 at 6:06 PM Matthias Brugger <matthias.bgg@gmail.com> wrote:
> On 13/05/2022 14:11, Arnd Bergmann wrote:
> > On Fri, May 13, 2022 at 1:21 PM Matthias Brugger <matthias.bgg@gmail.com> wrote:
> >> Please have a look on the below 32 bit DT updates for v5.19. Apologies for the
> >> late pull request but I got sick and needed my time to recover.
> >
> >> Yong Wu (1):
> >>         arm: dts: mediatek: Get rid of mediatek, larb for MM nodes
> >
> > Can you clarify what this means for backwards compatibility? I see old kernels
> > used to parse these properties, does that mean that the updated DT is no
> > longer compatible with them?
> >
>
> My understanding is, that backwards compatibility is given when using older DT
> with newer kernel. This should be the common case, normally you update your
> software but nearly never your FW. No compatibility is given when using older
> kernel with newer DT.
>
> I think that's an ongoing debate if we should provide backwards compatibility
> for both kernel and DT.

I agree that the case of old dt with new kernel is more important, but I still
want to hear about it when the other case (new dt on old kernel) breaks,
and why it's done.  There are clearly use cases for both forms of compatibility,
and there are reasons for ignoring them, the key is to communicate it clearly.

> > If you break compatibility, this should only be done for exceptional reasons,
> > and explain the tradeoffs. What is the oldest kernel that is still compatible
> > with the updated DT files, and why can't we just keep the properties around?
> >
>
> First kernel version that does not work with the old DT will be v5.18. This
> patch is the outcome of a change in the yaml file [1] which has a Acked-by from
> Rob. I double checked and I wasn't able to find the mail where Rob did give his
> Acked-by... Yong, can you provide a link to that email? I can see you added the
> Acked-by in v2 of the series.
>
> One thing that comes to mind, that we mark the larb phandle as deprecated in the
> yaml file, instead of deleting it. Then we could keep that in the DT files,
> although newer kernels won't work with that. Another option is, to add the code
> deleted by
> ba3cd6714aed ("media: mtk-jpeg: Get rid of mtk_smi_larb_get/put")
>
> back as fallback for older DTs. Although I fear there is much more things to fix
> in a lot of drivers. DRM, mdp and memory/mtk-smi.c are some that I found in a
> 'quick' look at the problem.
>
> Taking into account that and the fact that we are talking mainly about
> chromebooks and the Bananapi R2 as public available HW, I think we can live with
> the compatibility breakage of newer DTs not working with older kernels.

I'm less worried about the dts files that ship with the kernel than I am about
others that have custom dtbs built into the boot loader but are able to
run mainline kernels. Upgrading kernel and bootloader together is painful
here when you have limited compatibility with older versions, in particular
when you cannot dual-boot multiple kernel versions with the same dtb.

> Anyway as you can see, this patch is just the tip of the ice-berg. So if you
> feel that's something unacceptable we will need to chase people to fix backward
> compatibility.

After some more clarification on IRC, I found that this series has been
in progress since 2019 [2], and as you said, the changes to break compatibility
with pre-5.18 DTB files are getting merged through other trees, so I suppose
also breaking compatibility with old kernels isn't making it much worse.

I'll try to capture this in the merge log.

> [1]
> https://lore.kernel.org/linux-mediatek/20220117070510.17642-2-yong.wu@mediatek.com/

[2] https://lore.kernel.org/lkml/1546318276-18993-2-git-send-email-yong.wu@mediatek.com/
