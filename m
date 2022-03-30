Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8318F4ECD52
	for <lists+devicetree@lfdr.de>; Wed, 30 Mar 2022 21:35:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350754AbiC3ThO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Mar 2022 15:37:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37434 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238626AbiC3ThM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Mar 2022 15:37:12 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 279F53D1CA
        for <devicetree@vger.kernel.org>; Wed, 30 Mar 2022 12:35:26 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id z12so23830514lfu.10
        for <devicetree@vger.kernel.org>; Wed, 30 Mar 2022 12:35:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=+hFS9yiWXU5Tm3A7GxdPXoa2m44Y5zzRQ3RHb2S5heA=;
        b=lbfzE5JFB87L0Z8EWEHyM+kuNGb+OvmW8NCsV3/EVi8u1qjjiLXRq7oqKajqRZ7ZSl
         nnu1RObxvYQbZVLYJ1tkczqhTD+lqdj4SMmgpWHqqBtCO/nATFK3NhicR38BMgFj3Mn4
         lUo+3NeimaiebVbTXd0NzshKT69ZbSPfcF8FvsU/Sm93VXN7iC3h73K5gm/v+ToxP9BX
         8JESl+XrimPd+fNrEK0hGZc2KsJ8SZimPetuLJ1wL3fWb6r8XzK8vBroyS4l4NhP1Vy1
         iT5tA+HSp+fVeOfGm1CkFLuMvILcwaMALnr02RBY1tfitUFDIkrqDmbCGksMcUXMf9am
         L+Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=+hFS9yiWXU5Tm3A7GxdPXoa2m44Y5zzRQ3RHb2S5heA=;
        b=2hUUA4T9xLloT9Q5gLAwnjjAlqMgGbsM1pI5khU5vHPR4UcGdw0O79Ms6GvFV59CUf
         rBLHrtcH0zDCn7dGNsNtgiK72uy6ya28Oz4s5CUnrOiMWiU99f7k5HasIJHu5MLOW5s0
         gCKJivS8Y1VMEj/5/RbZsL+x4ncC+SNjz6es1l21b/vn22Uxaf7ucrqGXqnxku2TBAJ+
         TGuUrWccWSSZkRPkTvUqu/3PJ1NFVJgX3OmY+V2Gsd8AXVbb//wnXZOExvrcIQvxIRiA
         4R2W817+e7gs1GCFAPAzvdsILOBd2MyU04nD+FUNnankf+MB12XbzpDSXmDd4MeYBAad
         nNmg==
X-Gm-Message-State: AOAM533oHxBeFO6fUJkL9MN/2brFLaVm+/PrHidyVCu1/Y62wc8S4Egm
        cGdgk8OS5Zv4tb8h7t1fDjI=
X-Google-Smtp-Source: ABdhPJybiNtzm3A19YbhP1IZApDmGW72t2M57isGlDBtcyv1zNdYWTmgJc38kheIaiBAJl3rSRXXIg==
X-Received: by 2002:a05:6512:3e10:b0:44a:4443:76a9 with SMTP id i16-20020a0565123e1000b0044a444376a9mr7831211lfv.630.1648668921051;
        Wed, 30 Mar 2022 12:35:21 -0700 (PDT)
Received: from smtpclient.apple (31-178-191-245.dynamic.chello.pl. [31.178.191.245])
        by smtp.gmail.com with ESMTPSA id 194-20020a2e05cb000000b00247eb0e1b15sm2502598ljf.97.2022.03.30.12.35.20
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Mar 2022 12:35:20 -0700 (PDT)
Content-Type: text/plain;
        charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: [PATCH v9 00/23] drm/rockchip: RK356x VOP2 support
From:   Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <20220330192054.GA4012@pengutronix.de>
Date:   Wed, 30 Mar 2022 21:35:17 +0200
Cc:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>,
        Sandy Huang <hjc@rock-chips.com>,
        dri-devel@lists.freedesktop.org,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: quoted-printable
Message-Id: <4B10A821-DB1E-41EA-B5C2-364F2DE53F93@gmail.com>
References: <20220328151116.2034635-1-s.hauer@pengutronix.de>
 <FB201567-AE5A-4242-82F1-7C55D8F111EA@gmail.com>
 <20220330072822.GX12181@pengutronix.de>
 <0D8F5951-5375-46B5-BFF0-7ED410371EB7@gmail.com>
 <20220330094556.GZ12181@pengutronix.de>
 <D3DA14F9-C9C6-4927-B015-5B7D25689DAA@gmail.com>
 <20220330102046.GA12181@pengutronix.de>
 <60601619-EF07-457B-91F2-64FEB598FEBE@gmail.com>
 <20220330192054.GA4012@pengutronix.de>
To:     Sascha Hauer <s.hauer@pengutronix.de>
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
<s.hauer@pengutronix.de> w dniu 30.03.2022, o godz. 21:20:
>=20
>> So i tried following combinations
>>=20
>> -boot
>> -modetest -s 69@67:1920x1080 -> ok
>> -modetest -P 43@67:1920x1080@NV12 -> green screen
>=20
> I have no idea what is going on here. There same commands work for me.
> You could provide me your kernel config and upstream commitish you are
> working on, maybe that gets me closer to your setup.

Sascha

May you try with my kernel config?
=
https://github.com/warpme/minimyth2/blob/master/script/kernel/linux-5.17/f=
iles/linux-5.17-arm64-armv8.config

If this config will work for you then:

i'll try to build vanilla 5.17 + minimal possible set of patches =
allowing me to get video decoder working on rk3566.
This may help us to find why:
-you have it working
-I have it not working



