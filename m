Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B08FE51EEFD
	for <lists+devicetree@lfdr.de>; Sun,  8 May 2022 18:54:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235972AbiEHQ5Z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 8 May 2022 12:57:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235042AbiEHQ5Y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 8 May 2022 12:57:24 -0400
Received: from mail-yb1-xb36.google.com (mail-yb1-xb36.google.com [IPv6:2607:f8b0:4864:20::b36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B3CE1E010
        for <devicetree@vger.kernel.org>; Sun,  8 May 2022 09:53:33 -0700 (PDT)
Received: by mail-yb1-xb36.google.com with SMTP id m128so21042708ybm.5
        for <devicetree@vger.kernel.org>; Sun, 08 May 2022 09:53:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=3F1Pq3gU9pnrxqbFtjzJI31YKJjKY/6sCWthpC+SyWI=;
        b=q2EaRXL/xo0X/zpAUJ6IwW1+vmpwhySxUV7v1BtjeUlLo3iVY5vWnLI4MskoSMxSsj
         Ijo22uXDT092q3OsT6chJ5bTvTwuwigVs9EL9zR0o37oloNz2mvTmVzoPVezk/urE/EA
         Tk/VyNd2NJ1o5ts2dA2oMv79C01GzafvKPMB6bRtHQjbkarTERkCF8NF4m8ErTmsWCYc
         ff5yTbpTwrEDaaATRj0SRlB2kuMCbwDHryLZiNnyleK2gGYxmZug2n0T09vvF2Cz+QyH
         RHKzXG15FP7sronSdF7OZqMDosStkaCvDt1mF/93HLAh/SpsZeriMXa6OJr4lyt61asn
         qkBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=3F1Pq3gU9pnrxqbFtjzJI31YKJjKY/6sCWthpC+SyWI=;
        b=0xQHk+DE8faNCdlSza9AkWgkzNURXnFWU/0XYY9Q76BnaStw+HEfaa6+FAMXyZ2fU2
         XIaZ7wxxDm3iPBmrypbB9DVgitzgdPnexMNaxoewRl0go6sz7kuGz+YOEw9sIjW1aNqW
         BD1DqElUBoOhGYd/ZMW48uEqveNz7PSPxLuUhOwKNhfJehmeHBsISrNtDWh/JVxtBk45
         0Njq6Hf+Z53pg5BuDHFq6Zr3w2RlKSwQYlnsmk23AJ6D9ACmF92WcEaWERCZlIR1JexD
         CYau8lu9zUfm5YkS88vuwth13quS9ghjv0dAuSlBDP1e90bSMb+RJnX63I8CQ6wkJpf0
         WreA==
X-Gm-Message-State: AOAM531sUb/EIfVa2tNlqy1pIZz7NielmrF+y38FWPEmQu6a0vrwyd+f
        3LMKeV+zza7zqHut4m253VEqUwSd3M+qfAWL8p0GQkJXIDQ=
X-Google-Smtp-Source: ABdhPJwI9hCRzsuCfUL5+MI7byJrBIXIu6HCctuZjDYDKgqhMNsR/VFPkVCJcslqOpQCZ2iRWjaE+azUpqF8YwMnSVE=
X-Received: by 2002:a5b:64c:0:b0:64a:684a:2369 with SMTP id
 o12-20020a5b064c000000b0064a684a2369mr10146433ybq.173.1652028812891; Sun, 08
 May 2022 09:53:32 -0700 (PDT)
MIME-Version: 1.0
References: <20220422072841.2206452-1-s.hauer@pengutronix.de>
 <20220422072841.2206452-21-s.hauer@pengutronix.de> <A86359EC-5291-41BD-966E-EB7890644731@gmail.com>
In-Reply-To: <A86359EC-5291-41BD-966E-EB7890644731@gmail.com>
From:   Peter Geis <pgwipeout@gmail.com>
Date:   Sun, 8 May 2022 12:53:21 -0400
Message-ID: <CAMdYzYoFG3wCQaWXQNJd7mE20OMCj=ZeuewwZfaCJyoCBT-kQQ@mail.gmail.com>
Subject: Re: [PATCH v11 20/24] arm64: dts: rockchip: enable vop2 and hdmi tx
 on rock-3a
To:     Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Cc:     Sascha Hauer <s.hauer@pengutronix.de>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        dri-devel@lists.freedesktop.org,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Sandy Huang <hjc@rock-chips.com>,
        =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
        kernel test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, May 8, 2022 at 9:40 AM Piotr Oniszczuk
<piotr.oniszczuk@gmail.com> wrote:
>
>
>
> > Wiadomo=C5=9B=C4=87 napisana przez Sascha Hauer <s.hauer@pengutronix.de=
> w dniu 22.04.2022, o godz. 09:28:
> >
> > From: Michael Riesch <michael.riesch@wolfvision.net>
> >
> > Enable the RK356x Video Output Processor (VOP) 2 on the Radxa
> > ROCK3 Model A.
> >
> > Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> > Reported-by: kernel test robot <lkp@intel.com>
> > Link: https://lore.kernel.org/r/20220310210352.451136-4-michael.riesch@=
wolfvision.net
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
>
> Sascha, Michael,

Good Afternoon,
>
> I'm using v11 series on 5.18-rc5 on rk3566 tvbox with great success.
> Recently i started to work on rock3-a (rk3568).
> v11 gives me video, audio - but cec is not working on rock3-a.
>
> I was told:
>
> 32k clock needed for cec and this clock is generated by the rtc which is =
embedded in the rk8xx regulator.
> So you should make sure it is enabled when hdmi is powerd on, eg adding i=
t to the RK3568_PD_VO powerdomain should help
>
> I was trying to do this in dts https://pastebin.com/67wu9QrH but cec is s=
till non-functional
>
> Maybe You have some hints/pointers here?

Add the following to the HDMI node:
assigned-clocks =3D <&cru CLK_HDMI_CEC>;
assigned-clock-rates =3D <32768>;

The issue is the clk_rtc32k_frac clock that feeds clk_rtc_32k which
feeds clk_hdmi_cec is 24mhz at boot, which is too high for CEC to
function.
I submitted a patch to have the hdmi driver handle this, but it broke
other SoCs because 32k is an optional clock.
Since this is the case, I'd like Robin to weigh in on going the
assigned-clock route again.

>
> br
>
> btw: my dts gives me working usb2 port0/port1 and usb3 port0. but usb3 po=
rt1 is non-working
> maybe you know what is missing?

You're missing &usb2phy0_otg.

Very Respectfully,
Peter Geis
