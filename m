Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CD8415AC9C8
	for <lists+devicetree@lfdr.de>; Mon,  5 Sep 2022 07:29:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235113AbiIEF2C (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Sep 2022 01:28:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44002 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234932AbiIEF2C (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Sep 2022 01:28:02 -0400
Received: from mail-il1-x135.google.com (mail-il1-x135.google.com [IPv6:2607:f8b0:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 279FD2F01E
        for <devicetree@vger.kernel.org>; Sun,  4 Sep 2022 22:27:59 -0700 (PDT)
Received: by mail-il1-x135.google.com with SMTP id k9so1008550ils.12
        for <devicetree@vger.kernel.org>; Sun, 04 Sep 2022 22:27:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date;
        bh=21G78lD0hHSSYC2z9AFKvwJo0kB+AyLNQVaxiGapq64=;
        b=fbmRqEPBRuXaqA5lND0c1JZlumuabjU8GplfW5xyR282W5LWwzVCNC5TiN31n3rPsY
         BgRz1TvELOkZeQqS8dDvpd9W//nPQQFQHfon+q05ZcC5lh+RQGS2eXWODtL2uOujTq1u
         5nx5nipKTqHa8AtGH/GTkWUhPmKdrfmpHO4AujzzZIcOi/1KEdNCpMFQKtSlDvOg0KSR
         mZqrHBSfgiF7X6jJMg4mgEeoCD81iiwyCyng8uuk91697QK45PilG6Q03YARPzUgdsUA
         ohQMJ9+Z8vSZjSBqM6FxrJaR84ishQ1E0UYr4D/44Lg0GEcZrdR4zhG41Zh7YpXNHmiH
         aAww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date;
        bh=21G78lD0hHSSYC2z9AFKvwJo0kB+AyLNQVaxiGapq64=;
        b=asyZ1tsGougjB/lAOnGsYDoDFgpBiUUROnxc5lNS7gvFtb78b1T4DjoSFZEiaHCebK
         E6wwEZ7jacqSjrpGdAVeviRJMqnJZDaavkNCpTaAVZn/f8v+7iVLgTc/eF4MBAa5tEyA
         31zTpuJporXxX6pvUNduzMSnwXrn325mApcEnM9PyeNQ661aevN7YFmPsEreZKc+Al1F
         4i8beAqBURQh9yYDuVEELGQyAJeBS/KHt4nkhir2aS0jm3hdow1mtI6SsG82hNZPl68M
         KcXdUofwJQEGGbuLXciAUINLO/2UX5xPKHT1E2PiHDg9ihgBZRNsF/abu2GMGGywoYAe
         w3Xg==
X-Gm-Message-State: ACgBeo0YH346BgI0jbfkLZsL78lyPm5115/Xp0EHSWWfyrvnpWGveF0e
        D5upMcFrkHeect87En0KM8iFLS8NML6KFAr7nI0nulhgxwdzPXDf
X-Google-Smtp-Source: AA6agR4E0MTP4UUKlwvdura/p6XljyuapEDBV12FXaemr30UbaTnDyB51Q5WS4iUO+XGgiyPfF/CX5D5ZyIdtvjxKlM=
X-Received: by 2002:a05:6e02:2181:b0:2eb:3770:e3f8 with SMTP id
 j1-20020a056e02218100b002eb3770e3f8mr16347696ila.79.1662355678485; Sun, 04
 Sep 2022 22:27:58 -0700 (PDT)
MIME-Version: 1.0
References: <20220818124132.125304-1-jagan@edgeble.ai> <20220822181009.GA80526-robh@kernel.org>
 <CA+VMnFwE8jBxXwQPVEzEUosxjuEVMNGB9NnBuHYDw_360qJztQ@mail.gmail.com> <3175969.jE0xQCEvom@diego>
In-Reply-To: <3175969.jE0xQCEvom@diego>
From:   Jagan Teki <jagan@edgeble.ai>
Date:   Mon, 5 Sep 2022 10:57:47 +0530
Message-ID: <CA+VMnFw2FSr4OfaZfxGcDcMxQHM1_=sPPRyJq+qd6mduwBY8yg@mail.gmail.com>
Subject: Re: [PATCH v3 09/19] clk: rockchip: Add dt-binding header for RV1126
To:     Kever Yang <kever.yang@rock-chips.com>
Cc:     Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Finley Xiao <finley.xiao@rock-chips.com>,
        =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Kever,

On Tue, 23 Aug 2022 at 23:26, Heiko St=C3=BCbner <heiko@sntech.de> wrote:
>
> Am Dienstag, 23. August 2022, 14:57:20 CEST schrieb Jagan Teki:
> > On Mon, 22 Aug 2022 at 23:40, Rob Herring <robh@kernel.org> wrote:
> > >
> > > On Thu, Aug 18, 2022 at 06:11:22PM +0530, Jagan Teki wrote:
> > > > Add the dt-bindings header for the Rockchip RV1126, that gets share=
d
> > > > between the clock controller and the clock references in the dts.
> > > >
> > > > Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
> > > > Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> > > > ---
> > > > Changes for v3:
> > > > - update the file name
> > > > Changes for v2:
> > > > - exclude from clk patch
> > > >
> > > >  .../dt-bindings/clock/rockchip,rv1126-cru.h   | 632 ++++++++++++++=
++++
> > > >  1 file changed, 632 insertions(+)
> > > >  create mode 100644 include/dt-bindings/clock/rockchip,rv1126-cru.h
> > > >
> > > > diff --git a/include/dt-bindings/clock/rockchip,rv1126-cru.h b/incl=
ude/dt-bindings/clock/rockchip,rv1126-cru.h
> > > > new file mode 100644
> > > > index 000000000000..cfba8226ded2
> > > > --- /dev/null
> > > > +++ b/include/dt-bindings/clock/rockchip,rv1126-cru.h
> > > > @@ -0,0 +1,632 @@
> > > > +/* SPDX-License-Identifier: GPL-2.0 */
> > >
> > > Dual license please. Need an ack from Rockchip for that (and not just
> > > on this one).
> >
> > Heiko or Kever.
> >
> > Can you comment on this?
>
> I guess this is more a question for Kever,
>
> @Kever can Rockchip allow that dual licensing for the dt-binding header
> (MIT as second license I think - at least like all the other binding head=
ers)
> both in this patch and also in the other header-patches of this series?

Any comments on this?

Jagan.
