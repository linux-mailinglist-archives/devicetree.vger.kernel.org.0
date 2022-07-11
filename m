Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 677D2570076
	for <lists+devicetree@lfdr.de>; Mon, 11 Jul 2022 13:27:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229942AbiGKL1j (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Jul 2022 07:27:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43320 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230154AbiGKL1O (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Jul 2022 07:27:14 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 276BE70994
        for <devicetree@vger.kernel.org>; Mon, 11 Jul 2022 04:04:06 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id t1so4523197lft.8
        for <devicetree@vger.kernel.org>; Mon, 11 Jul 2022 04:04:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=BAb82U1x/sK9iVlbAihHZCrOWGN1EMlrys2Ow1ABqo4=;
        b=gEyY0LvuPzTQUJ9wQtA10LciYAWiII+0oH8+1aOzurg8JmBVdi9qwDw2/hOJqPKH2A
         JL2fz+inBUWexfT6QH+j2zacG9TrhUMWjgb4OxT6oc/e2YVl5MHRWtcABz00v7FHIjuf
         SRVZ/X08xXM98toO+hd+uI0zS3kFQlgSw2aEIclr6VQ+6Aemfeb0IXdF3qEVuihAoBNc
         uMw6ZpsxV8QhsrTC8TBQ7deKVsjWiBipotaHZrue6ix63Rv+0d8EV2FhjYpHJpulcgr1
         2qjSf4r5yx3oBrO8sGpCoqvOj4zUmrc8g7D2lqjm0LoRQUXQe+pF/BU/OAfZEi/rqFva
         ckwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=BAb82U1x/sK9iVlbAihHZCrOWGN1EMlrys2Ow1ABqo4=;
        b=VW+L7TRZao1pWoJPeCrcGtAqx9vFdDPr7+Na0QscgkWzoi7HZaQvTQNUXuprvk6Jf0
         /0Ithhz1nUVlZXfcIefP3L6Gu1YFWvkDaXBhEi5bWX2MlFtv77r+PUaOmragbHl97Qb2
         gnfuS/+1D7E0MreCiHTo+mZ9DMyRwOCcuy6EkclLBDhaBwwfDKP4mqkjkbpTq/Tp9cDJ
         5pyj3FZswiFNgRpjaLlQX285F174qFx5VOYeo+QvM5L8DCnAvYO8vDGU1Jwu54zGDDYL
         AlFJScsimUNjSt5EpY65p9jJp+Ir16x9dy374nniHHh8aEcgJI7UwXLkNHhyjNGFZRYZ
         V0JA==
X-Gm-Message-State: AJIora+vLhhf0tzgV+kA1BxdwPG/Li+e1EVx6WdT0ezW0MQpVhlmxPYN
        8seUJL8TBQLM8jtDtbL+d0k=
X-Google-Smtp-Source: AGRyM1twgH9KouRtDbmHub4U5o1eQtLk6NbA0EkJqRW5rUqx/jFwM9X1qCEJRQNyzsYBEdnM19FIpw==
X-Received: by 2002:a05:6512:3049:b0:489:cf1d:39bc with SMTP id b9-20020a056512304900b00489cf1d39bcmr7073607lfb.4.1657537444305;
        Mon, 11 Jul 2022 04:04:04 -0700 (PDT)
Received: from smtpclient.apple (31-178-127-80.dynamic.chello.pl. [31.178.127.80])
        by smtp.gmail.com with ESMTPSA id d15-20020a056512368f00b0048602d54471sm1466683lfs.156.2022.07.11.04.04.01
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Jul 2022 04:04:03 -0700 (PDT)
Content-Type: text/plain;
        charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: [PATCH v11 20/24] arm64: dts: rockchip: enable vop2 and hdmi tx
 on rock-3a
From:   Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <15846ffa-f68a-2f88-55a3-40a633132c28@arm.com>
Date:   Mon, 11 Jul 2022 13:04:00 +0200
Cc:     Peter Geis <pgwipeout@gmail.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        dri-devel@lists.freedesktop.org,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Sandy Huang <hjc@rock-chips.com>,
        =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
        kernel test robot <lkp@intel.com>
Content-Transfer-Encoding: quoted-printable
Message-Id: <27F4BA6C-9C56-446D-AB82-A691E7C54772@gmail.com>
References: <20220422072841.2206452-1-s.hauer@pengutronix.de>
 <20220422072841.2206452-21-s.hauer@pengutronix.de>
 <A86359EC-5291-41BD-966E-EB7890644731@gmail.com>
 <CAMdYzYoFG3wCQaWXQNJd7mE20OMCj=ZeuewwZfaCJyoCBT-kQQ@mail.gmail.com>
 <0E6FE020-C95E-47CF-A9D6-AC3F2B2D334F@gmail.com>
 <CAMdYzYobfJ7WGN+UQ7t5e1Zy9knjfHLse8KzrGrHPfeMkkG0gw@mail.gmail.com>
 <9F2D8CFF-1EAE-4586-9EE9-82A9D67840BB@gmail.com>
 <CAMdYzYrz7DRj7F9hGaAPaTSiZkQ4eMNujAp8uPuE9geL6kAz4g@mail.gmail.com>
 <9567EECF-A154-4FE1-A03C-5ED080409030@gmail.com>
 <190C3FD3-0185-4A99-B10E-A5790047D993@gmail.com>
 <CAMdYzYqGGfWDr11iyyfzigxsL7_N2szuag9P6TUZGuzGF4oB+A@mail.gmail.com>
 <AF6176F5-995E-473B-B494-844ECC26BC03@gmail.com>
 <CAMdYzYocZw1SNtgbfqn1VuvKTCiuMNTYRn2MydiGnL-UxtnYuA@mail.gmail.com>
 <0D8B18A1-82FD-4902-A443-AD774DE43DAD@gmail.com>
 <CAMdYzYpdo6Hb30y1oEya5GT1eXHJVTETq--HcmMjF40gvCUZ9A@mail.gmail.com>
 <E9DC63DF-46A6-438E-A7F1-5F7A65F56DFC@gmail.com>
 <15846ffa-f68a-2f88-55a3-40a633132c28@arm.com>
To:     Robin Murphy <robin.murphy@arm.com>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-Spam-Status: No, score=-0.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,RCVD_IN_SORBS_WEB,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



> Wiadomo=C5=9B=C4=87 napisana przez Robin Murphy <robin.murphy@arm.com> =
w dniu 11.07.2022, o godz. 12:41:
>=20
> On 2022-06-25 16:31, Piotr Oniszczuk wrote:
>>> Wiadomo=C5=9B=C4=87 napisana przez Peter Geis <pgwipeout@gmail.com> =
w dniu 25.06.2022, o godz. 16:00:
>>>=20
>>>=20
>>> The first issue you have is the TV isn't responding until the =
absolute
>>> end.
>> I suspect this is because lack on idle gaps between cec commands sent =
from board to tv.
>> Maybe TV sw. can't deal with consecutive commands without any idle =
between them?
>> It is interesting that disconnecting TV - so CEC line is driven only =
by board - rock3a still don't have any idle gaps while rock3b (and radxa =
4.19 bsp) has them (very similar between 5.18mailine and 4.19 bsp).
>> How this is possible that change I/O from m0->m1 impacts _timings_ on =
free hanging CEC line?
>=20
> Check all the pinctrl settings beyond just the function mux - pulls, =
drive strength, output type, etc. - the defaults tend to be all over the =
place, and rarely what you want.
>=20
> Robin.

Robin,

I'm not sure do I looked in right place...

but:

=
https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/tree/arch=
/arm64/boot/dts/rockchip/rk3568-pinctrl.dtsi?h=3Dv5.18.10#n788

vs.

=
https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/tree/arch=
/arm64/boot/dts/rockchip/rk3568-pinctrl.dtsi?h=3Dv5.18.10#n795

are looking ok?


>=20
>>> This strikes me as a signal integrity issue. Do you have an
>>> oscilloscope (not a logic analyzer, you need voltages and ramp =
times)
>>> to compare the working vs non-working signals? Check both sides of =
the
>>> level shifter.
>> Indeed - i will verify this with digital oscilloscope.
>> Already ordered and must await week or 2 for delivery :-(
>> My analog oscilloscope shows correct levels and slopes "seems" to be =
the same like in working (no memory so i can compare only visually on =
fuzzy screen)
>> For me key is to understand why on rock3a there is no any idles =
between cec commands - even when nothing is connected to bard (so cec is =
only sending and nothing external impacts cec state machine)....
>> _______________________________________________
>> Linux-rockchip mailing list
>> Linux-rockchip@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-rockchip

