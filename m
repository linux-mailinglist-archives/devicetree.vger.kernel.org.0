Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1692858B3DC
	for <lists+devicetree@lfdr.de>; Sat,  6 Aug 2022 06:43:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237074AbiHFEnp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 6 Aug 2022 00:43:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47824 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238132AbiHFEno (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 6 Aug 2022 00:43:44 -0400
Received: from mail-ot1-x329.google.com (mail-ot1-x329.google.com [IPv6:2607:f8b0:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EA14619035
        for <devicetree@vger.kernel.org>; Fri,  5 Aug 2022 21:43:42 -0700 (PDT)
Received: by mail-ot1-x329.google.com with SMTP id br15-20020a056830390f00b0061c9d73b8bdso3127447otb.6
        for <devicetree@vger.kernel.org>; Fri, 05 Aug 2022 21:43:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=Adh7Ypb7Bmy8isKMWTtzZFcBEH2hcOgccGX/JYLxyhY=;
        b=mQeR4p1ccfIZ2MF5ic3XoUcUw/s801es0iQrTJrc4FpnuGfRga+icLZfmBSFme8g9k
         bpgSx0fyeb8OEqbepbAz1HAgLt7QmAzg59AWyacvS3IFmTUSFOvHsKL80JQBTVFq0cMh
         LyWNdo1BNB/0j/onufu0Xzfuv+2fh4TPFURE6DsEvDrqb7kGO0vNuLWSv/VBvaq98RQx
         nzi5nJ2qiEGnvkEHHTwcesHOPQHue8Te3mkdJkl77/AjeKtLYoz6tTQitWwuNK7xrGUY
         /X4M+x7bFEUuHqYXEvAKc3xv906cO3aPoCRNzHtLkIqRwHeZp3Y40uxMBBL0SvhOCvvy
         Sn3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=Adh7Ypb7Bmy8isKMWTtzZFcBEH2hcOgccGX/JYLxyhY=;
        b=nGUQ32KScQ/EcNFJK3cRjN7MmH7f8oz1PJzFIUimv76PKVhj+73eI0R4MSer9VaZie
         VIzStkks9Y9nW7yQOYuG+4uHSccBB2B3No7rHVWcl/KQl2WBCW06xCYEgvdGlISDoMfu
         J20QWP92VDgLkkszXx6qUMiDo8JmsmObY3CfbLpmEmhJbQ3qE5B7MKpTZVPCgFGtw4YN
         s0iBudYpE/BUn2bPI3iuEvai2ALG5KsvZPC16bYjke7u/ktBCtHMLYVHZd5vYZKuX8R7
         0HInDWi46sNIbiF/XxEuUN7EnVherMguWJGyT8tPC5/4K3msV2x5U5FFgmlAI+mmBUQr
         p/iA==
X-Gm-Message-State: ACgBeo1O9YwQe3FmdF2TsgznnKgJdCDQ2baD5kdbq/g8TxEuauw0RBot
        moSpq9frYKDhB+YiA8laWZkdIrkOQSX0kzoguD7Vsg==
X-Google-Smtp-Source: AA6agR6yN3NgCkx/0jTPKa2ceXVArj9zjAtwy/GrlCnfLxfYblJodTc+tCUKfsv3lexjGrx+5CLOEM/ujyn/JnxrEGs=
X-Received: by 2002:a05:6830:3985:b0:636:aa59:ea1 with SMTP id
 bs5-20020a056830398500b00636aa590ea1mr2429045otb.44.1659761021916; Fri, 05
 Aug 2022 21:43:41 -0700 (PDT)
MIME-Version: 1.0
References: <20220805074935.1158098-1-jun.nie@linaro.org> <YuzimmCqk2pA5sFZ@gerhold.net>
In-Reply-To: <YuzimmCqk2pA5sFZ@gerhold.net>
From:   Jun Nie <jun.nie@linaro.org>
Date:   Sat, 6 Aug 2022 12:43:44 +0800
Message-ID: <CABymUCMJ0CL+aog-8PDvUiAb4ivhZRxidvUUKu6vO1453mN3qA@mail.gmail.com>
Subject: Re: [PATCH 0/4] Support dynamic voltage frequency scaling inside
 clock controller
To:     Stephan Gerhold <stephan@gerhold.net>
Cc:     abel.vesa@linaro.org, bjorn.andersson@linaro.org,
        mturquette@baylibre.com, sboyd@kernel.org, agross@kernel.org,
        shawn.guo@linaro.org, bryan.odonoghue@linaro.org,
        linux-clk@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Stephan Gerhold <stephan@gerhold.net> =E4=BA=8E2022=E5=B9=B48=E6=9C=885=E6=
=97=A5=E5=91=A8=E4=BA=94 17:32=E5=86=99=E9=81=93=EF=BC=9A
>
> On Fri, Aug 05, 2022 at 03:49:31PM +0800, Jun Nie wrote:
> > Support dynamic voltage frequency scaling inside clock controller with
> > changes in clock framework. And added msm8916 as the first SoC to
> > support this feature.
> >
>
> As far as I understand it was decided to handle this on the consumer
> driver side in mainline, together with OPP tables and "required-opps" in
> the device tree. If you look at e.g. sc7180.dtsi you can see that this
> is heavily used there. Also see e.g. [1] for some links to related
> discussions.
>
> For MSM8916 at least the SDHCI and DSI driver should support this
> already. Some other older drivers (e.g. QUP, USB) would need some change
> similar to [2] (just like they still need changes for interconnects).
>
> I'm not entirely sure why it was decided to not do this as part of the
> clock core (maybe someone can explain or link a relevant mailing list
> post?), but we should try to keep it consistent in any case. :)
>
> Thanks,
> Stephan

Hi Stephan,
Thanks for the reminder! My work in clk framework was done 2 years ago actu=
ally.
I guess it is just before the decision to use consumer side opps for
this, because
I did not see any solution at the time.

I think the consumer side required-opps is better than my solution.
Because clock
is infrastructure to initialize other devices in most cases. If clock
device depends
on power domains, we have to initialize the power domain first. So adjustme=
nt in
initialization sequence of many devices is needed sometimes. The consumer s=
ide
operation avoid such inconvenience.

So let's forget this patch set.

Regards,
Jun

>
> [1]: https://lore.kernel.org/linux-arm-msm/20200910162610.GA7008@gerhold.=
net/
> [2]: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/c=
ommit/?id=3D0472f8d3c054a0ff58122fc9d2dbf84f197a284f
