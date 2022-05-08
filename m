Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1F2D351EF39
	for <lists+devicetree@lfdr.de>; Sun,  8 May 2022 21:11:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235256AbiEHTDq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 8 May 2022 15:03:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34640 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236177AbiEHRkE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 8 May 2022 13:40:04 -0400
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A852AE023
        for <devicetree@vger.kernel.org>; Sun,  8 May 2022 10:36:13 -0700 (PDT)
Received: by mail-lj1-x22f.google.com with SMTP id m23so14643724ljc.0
        for <devicetree@vger.kernel.org>; Sun, 08 May 2022 10:36:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=mc7TiSQQPMEbeG7ZiGyr90EpIeFsqchzoclKo6O9CMM=;
        b=gUkllS2et5oszpd7JkVRNeiQpsgPZCMyY06ClaMcq2HPeBS55Ms4O6ZxRUvvjJzV7c
         cxur5bB/6PRxSl+VVwtO0IQliO1EMeiy9/OOjVkRzObOf5FgJBG1HZF2mLaT38abXUVv
         mdVB8jDgsKPD2lesVSF32r/JfZZv8Kl5JbaghfvbV1f+pXk0RslhW5CyZ6F9u1dqBSA1
         COFHklgkncn4QH7RvPkwayNxdpXlcnWxV0YHw2kSB/eMqGK9IEb8nhlyPEpyBDDdTt6L
         KvWkz0Td0+G0pZ6dH6j+CaZUJ0mlx2auQf7w+MqHmSulkD7LyfiGtYJK5Pgw3fHi1Jqk
         3wsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=mc7TiSQQPMEbeG7ZiGyr90EpIeFsqchzoclKo6O9CMM=;
        b=GnT/cKtLB0x3S2iN6BIvZsnoU6v7zH9D3a435PA8h+s0e95SyRuMZHDHZAGfBitPLN
         3Tvczaqg7xqWrvKMM7d4Qdvw7dzSO9yHp2gn3z0YnhkACBpx4fUzyBUHNHl/Gf57dQg/
         avGj5r9SIKtri4JoE8Kurw8cbQLP1xY7U+YeFHTOC5GM55t7ABav7JwU/BA93RfzK0K/
         Uy0lI+nZ6LSKiRLoXRZPUF8Dagqrsf41x8VqCmK7smHzqQVilPTojRbRFFqBgbgk0mDP
         jqi/oopm2QW3g7QtvExgfpBp+RtfJ1oVLrpiwtpEVV2oL4q2utWav2kNQ4t7+MLA2QrI
         fC4A==
X-Gm-Message-State: AOAM531cwQfGcWKRA4PhGKh7hn9vXS3l1xvOT8zE9zQB6oj9KI3j0c7+
        h+k4srCzw8qek3x/q3Lo9KA=
X-Google-Smtp-Source: ABdhPJwLMv2nyA/yngcxESrM+hZXLDw0uuoQfsv9WXtNUoRf8+z/DZ4YNbFrhZR6S+KuhO0sh0XJzQ==
X-Received: by 2002:a2e:b044:0:b0:250:b16e:45df with SMTP id d4-20020a2eb044000000b00250b16e45dfmr4916785ljl.180.1652031371805;
        Sun, 08 May 2022 10:36:11 -0700 (PDT)
Received: from smtpclient.apple (31-178-191-245.dynamic.chello.pl. [31.178.191.245])
        by smtp.gmail.com with ESMTPSA id x12-20020a2e584c000000b0024f3d1daed3sm1486496ljd.91.2022.05.08.10.36.10
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 May 2022 10:36:11 -0700 (PDT)
Content-Type: text/plain;
        charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: [PATCH v11 20/24] arm64: dts: rockchip: enable vop2 and hdmi tx
 on rock-3a
From:   Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <CAMdYzYoFG3wCQaWXQNJd7mE20OMCj=ZeuewwZfaCJyoCBT-kQQ@mail.gmail.com>
Date:   Sun, 8 May 2022 19:36:09 +0200
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
        =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
        kernel test robot <lkp@intel.com>
Content-Transfer-Encoding: quoted-printable
Message-Id: <0E6FE020-C95E-47CF-A9D6-AC3F2B2D334F@gmail.com>
References: <20220422072841.2206452-1-s.hauer@pengutronix.de>
 <20220422072841.2206452-21-s.hauer@pengutronix.de>
 <A86359EC-5291-41BD-966E-EB7890644731@gmail.com>
 <CAMdYzYoFG3wCQaWXQNJd7mE20OMCj=ZeuewwZfaCJyoCBT-kQQ@mail.gmail.com>
To:     Peter Geis <pgwipeout@gmail.com>
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



> Wiadomo=C5=9B=C4=87 napisana przez Peter Geis <pgwipeout@gmail.com> w =
dniu 08.05.2022, o godz. 18:53:
>=20
>>=20
>> I was trying to do this in dts https://pastebin.com/67wu9QrH but cec =
is still non-functional
>>=20
>> Maybe You have some hints/pointers here?
>=20
> Add the following to the HDMI node:
> assigned-clocks =3D <&cru CLK_HDMI_CEC>;
> assigned-clock-rates =3D <32768>;

I think i have this already (pls see L231/L232 in =
https://pastebin.com/67wu9QrH )

>=20
>>=20
>> br
>>=20
>> btw: my dts gives me working usb2 port0/port1 and usb3 port0. but =
usb3 port1 is non-working
>> maybe you know what is missing?
>=20
> You're missing &usb2phy0_otg.

Maybe i miss something but adding:=20

&usb2phy0_otg {
	phy-supply =3D <&vcc5v0_usb_host>;
	status =3D "okay";
};

breaks working usb3 port0
(so none of usb3 ports are working)


