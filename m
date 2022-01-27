Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7348749E4DF
	for <lists+devicetree@lfdr.de>; Thu, 27 Jan 2022 15:43:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242553AbiA0Onb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Jan 2022 09:43:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52766 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231443AbiA0Onb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Jan 2022 09:43:31 -0500
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F04E1C061714
        for <devicetree@vger.kernel.org>; Thu, 27 Jan 2022 06:43:30 -0800 (PST)
Received: by mail-lf1-x130.google.com with SMTP id u6so5743547lfm.10
        for <devicetree@vger.kernel.org>; Thu, 27 Jan 2022 06:43:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=Ems2AVRzgkln4g25JzOfFWh1TwoPY/Y8voDAbyyDVf0=;
        b=BAn2jTpFDnjHLFDhEgg0n9RbAV0aMMiQeP5idKwIoCPsIx0n3ulV0vAeEtTHXLcv6l
         w6gxOasGY7zf+ty0A+O5cUKuwhv2mBT2tS7Y1qp8Qxd89OMEY3hjKvRujj7LYsC1Rbx1
         zl6sT4qgfSMr8Xwn1aDyuMH6yfPUu39X2ZlGCTkqa5CHkWVF5GYqQZipcJPNgPZZEF0a
         arnr4kUhXqCz3QN3qXkxLzEXNz6oNEigJ29/Vmbw4vs12yPzLN9hBHvNHjMG9gkbEEJc
         9HpI66Fsp2Lq9QgS3dJ/XXcJBom5OLSk/FAyQtHpM/zIQ9lU1wM6OfwjwJ08WQf1qwF/
         WNcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=Ems2AVRzgkln4g25JzOfFWh1TwoPY/Y8voDAbyyDVf0=;
        b=GmHRR95lJ8j9JIyK9K6ZiUgxPaZQz2lPOEaqUlLTrZbvbfYKGCSdj+xqtykI3t11yx
         KEy1sVmhMgfnLzi84ePvrceiKmK6c8Ho8iCnoQcw0tiD0MILp1b2mxtnlXL7FHpbRE9H
         X0T5qOizM+n2pCfEZRFIL/a41B7RBx5P7w4Dka0+Z+LZalsvMbu+I8wdONhwd2sVJ9u1
         7fppOBAM4Dgu80Z5f1ERFA4p6uxRLXEoYTKGfEQdZODORxfvObo36O9i9RBHxJnd8WDY
         REQ6cU+3/T4+4kRJiE15BkuecB8pMkiaupLKpDXydBhfQfHj8I3WeEbOLcVxCFdzUEh1
         upxA==
X-Gm-Message-State: AOAM532lY9T8FVETXecIgjfEvCchmviPfzcOzle+46Qz8k3nXkBmtdEB
        eiDKUvr5eqw1kSqGrZk82lc=
X-Google-Smtp-Source: ABdhPJxNXOMj0HG4eaEtEWBOBz5dKP+jjqXxckuqFNSi9mi+FleyYUby2GFywJABEdDjRvYBB5LiMQ==
X-Received: by 2002:a05:6512:ea1:: with SMTP id bi33mr3027601lfb.571.1643294609150;
        Thu, 27 Jan 2022 06:43:29 -0800 (PST)
Received: from smtpclient.apple (31-178-191-245.dynamic.chello.pl. [31.178.191.245])
        by smtp.gmail.com with ESMTPSA id z9sm2196073lft.160.2022.01.27.06.43.27
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 27 Jan 2022 06:43:28 -0800 (PST)
Content-Type: text/plain;
        charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: [PATCH 27/27] drm: rockchip: Add VOP2 driver
From:   Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <20220127110009.GK23490@pengutronix.de>
Date:   Thu, 27 Jan 2022 15:43:24 +0100
Cc:     dri-devel@lists.freedesktop.org,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        linux-rockchip@lists.infradead.org,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>
Content-Transfer-Encoding: quoted-printable
Message-Id: <6E75EF52-3ED6-4E53-9DE3-DBEAA7BFD005@gmail.com>
References: <20220126145549.617165-1-s.hauer@pengutronix.de>
 <20220126145549.617165-28-s.hauer@pengutronix.de>
 <6588D77C-D3CB-4FB0-8B00-5EDD6ABD6923@gmail.com>
 <20220127110009.GK23490@pengutronix.de>
To:     Sascha Hauer <s.hauer@pengutronix.de>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



> Wiadomo=C5=9B=C4=87 napisana przez Sascha Hauer =
<s.hauer@pengutronix.de> w dniu 27.01.2022, o godz. 12:00:
>=20
>>=20
>> -on rk3399 it gives me 4k screen where right vertical 1/3 part of =
screen is garbage
>> -on rk3566 my samsung 4k monitor has black screen and cycle of OSD =
msgs: HDMI2 connected; HDMI2 disconnected; ....
>=20
> Same here on my rk3568, also with a samsung monitor. Was it 4k@60Hz or
> 4k@30Hz? If the former, could you give 4k@30Hz a try? That mode works
> well here.

It was 4k@30
Indeed - firmware of my samsung is total crap in UI aspects - so maybe =
in hdmi modes are as well :-p
Anyway - this crap monitor works ok with 4k@30 on =
AW/RPI4/rk3399/n3450/MacBookPro

>>=20
>> BTW: getting well working 4k HDMI modes on rk3399 was real story for =
me.
>> There is many different series of patches to address this - but all =
have some subtle issues for me (i.e. 4k HDMI modes works but i.e. Qt is =
failing with DRM atomic commits in EGLFS)
>> I developed well working [1] giving me reliable 4k on rk3399 =
(including working Qt DRM drawing in EGLFS mode)=20
>> Maybe it will be somehow helpful to get 4k modes solution for rk3566 =
_and_ rk3399 (on single kernel binary)?
>>=20
>> [1] =
https://github.com/warpme/minimyth2/blob/master/script/kernel/linux-5.16/f=
iles/0730-drm-rockchip-add-4k-videomodes-support.patch
>=20
> At least there are patches in it that I have in my series as well and
> keep popping up everywhere like "drm/rockchip: dw_hdmi: Use
> auto-generated tables" and "drm/rockchip: dw_hdmi: Set cur_ctr to 0
> always"
>=20

What was time-consuming for me was finding working patches combination =
which not breaks Qt DRM Atomic commits.
Many series floating arround various git repos/projects were offering 4k =
modes but breaking Qt in the same time....

btw: have you plans to look/address non-working DRM planes in VOP2?
Rendering to DRM plane gives me green screen on rk3566.
The same code (and binaries) are working ok on rk3399 (and other SoCs).
=20
=20=
