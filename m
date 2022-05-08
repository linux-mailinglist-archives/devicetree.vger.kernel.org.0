Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 534DA51EDD6
	for <lists+devicetree@lfdr.de>; Sun,  8 May 2022 15:40:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233583AbiEHNoG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 8 May 2022 09:44:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33866 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233597AbiEHNoE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 8 May 2022 09:44:04 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 69585B1FF
        for <devicetree@vger.kernel.org>; Sun,  8 May 2022 06:40:13 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id p26so6493559lfh.10
        for <devicetree@vger.kernel.org>; Sun, 08 May 2022 06:40:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=hNugHMH0gYmqiT8RdngvmmaCgPBmeqCOezfX1bTdgH8=;
        b=a1ogE+DV8vt9+H0Mi/fvKmsEtgHDkVWC6eL/ssTxk9jTpRU8qV9U1aspYnGFQdwcgI
         C+xErjn9SZz3POxD7CLBteDeYzigHg34lyctj8PGHI1w+tVJchdJnfMuqCR0fRI8xD0g
         XPjOZ4FoEMFvNYhjoXg2IBC5COwrSs9XJdpWAkhq7lDcf5oQFCvgjkc6Cc2S7sGtu+Y1
         kEywFIW4LF9eQ7UOyHiLaI0HV/ex22GTuipSC+WUFlAYwGPhhWzIyEZc4IEwotgwDZ7c
         NgIONcyoaugrNAaMmvOpeHNPr0sTcZBfZf1X+g8OHjbzv6uky8kuKgpXBdgdLFkfCnht
         yjpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=hNugHMH0gYmqiT8RdngvmmaCgPBmeqCOezfX1bTdgH8=;
        b=WhebA/eOG35KxVYuZxBk0cplonEwdIC7BhKCvC2wxoStMSIo+lvEbpRAXupedaZmOX
         g2wE8JeMgMwVLNF7XatJrFER1F/S+z9drlCZHBdCNQ54OyXIe9PMkMNnz2yqWvHCWdNF
         PqYu9o/LtwBzyb9wYgF+WNtvL59Ane1HddAKxP99q636tD61D8qNzEHucD1+t0jC7t3p
         9Y2fuQu+NUngOdnLZ3jqIDw2Jx77feQcpUpOk5jqXbtY2bpJR92BPCNLymXbcDfW9C7S
         nxz9iJsIi6NrOO8LPmc31rDaEfIGcOL8XcL32DnjDVZhE8m1Y6yf3LPNQI6I9dh89OMI
         fNXQ==
X-Gm-Message-State: AOAM530VtStMZepCvmbtr05uTu12D/utJaeljEwbSGn918IZAUGm2ZTh
        nd3wnRzjsE25pZmxrBBe0mY=
X-Google-Smtp-Source: ABdhPJzCr7fHU4OjHw+Q2jcxaaAzu3hQtbMSZZC/N9bd3qImeaOgf1Hf2ZyLOdRp09ZiftoRQ44XVg==
X-Received: by 2002:ac2:57c7:0:b0:472:208d:926f with SMTP id k7-20020ac257c7000000b00472208d926fmr9029878lfo.224.1652017211328;
        Sun, 08 May 2022 06:40:11 -0700 (PDT)
Received: from smtpclient.apple (31-178-191-245.dynamic.chello.pl. [31.178.191.245])
        by smtp.gmail.com with ESMTPSA id a21-20020a2e88d5000000b00250a09889a1sm1035233ljk.16.2022.05.08.06.40.10
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 May 2022 06:40:10 -0700 (PDT)
Content-Type: text/plain;
        charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: [PATCH v11 20/24] arm64: dts: rockchip: enable vop2 and hdmi tx
 on rock-3a
From:   Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <20220422072841.2206452-21-s.hauer@pengutronix.de>
Date:   Sun, 8 May 2022 15:40:09 +0200
Cc:     dri-devel@lists.freedesktop.org,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Sandy Huang <hjc@rock-chips.com>,
        =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>,
        kernel test robot <lkp@intel.com>
Content-Transfer-Encoding: quoted-printable
Message-Id: <A86359EC-5291-41BD-966E-EB7890644731@gmail.com>
References: <20220422072841.2206452-1-s.hauer@pengutronix.de>
 <20220422072841.2206452-21-s.hauer@pengutronix.de>
To:     Sascha Hauer <s.hauer@pengutronix.de>,
        Michael Riesch <michael.riesch@wolfvision.net>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



> Wiadomo=C5=9B=C4=87 napisana przez Sascha Hauer =
<s.hauer@pengutronix.de> w dniu 22.04.2022, o godz. 09:28:
>=20
> From: Michael Riesch <michael.riesch@wolfvision.net>
>=20
> Enable the RK356x Video Output Processor (VOP) 2 on the Radxa
> ROCK3 Model A.
>=20
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> Reported-by: kernel test robot <lkp@intel.com>
> Link: =
https://lore.kernel.org/r/20220310210352.451136-4-michael.riesch@wolfvisio=
n.net
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---

Sascha, Michael,

I'm using v11 series on 5.18-rc5 on rk3566 tvbox with great success.
Recently i started to work on rock3-a (rk3568).
v11 gives me video, audio - but cec is not working on rock3-a.

I was told:

32k clock needed for cec and this clock is generated by the rtc which is =
embedded in the rk8xx regulator.
So you should make sure it is enabled when hdmi is powerd on, eg adding =
it to the RK3568_PD_VO powerdomain should help

I was trying to do this in dts https://pastebin.com/67wu9QrH but cec is =
still non-functional

Maybe You have some hints/pointers here?

br

btw: my dts gives me working usb2 port0/port1 and usb3 port0. but usb3 =
port1 is non-working
maybe you know what is missing?=20
 =20=
