Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9ED794EA889
	for <lists+devicetree@lfdr.de>; Tue, 29 Mar 2022 09:31:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230234AbiC2Hcx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Mar 2022 03:32:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47506 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229502AbiC2Hcw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Mar 2022 03:32:52 -0400
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C5BC240BA
        for <devicetree@vger.kernel.org>; Tue, 29 Mar 2022 00:31:09 -0700 (PDT)
Received: by mail-lj1-x230.google.com with SMTP id bn33so22293944ljb.6
        for <devicetree@vger.kernel.org>; Tue, 29 Mar 2022 00:31:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=XWnk+pKdZJqmV62/h657OWIHY82bAb8Z3BgjqTiOLz4=;
        b=ZCavqCdVJwYtGfT81BfsVjv2DbWIBe15YHPAb2is2LlqnbovkJCrWB7jH14nRSJsbc
         1PeyPqzQYMIhT03U54XHuSToZmfYPBcMumixdH39LypobqzQ+YGKtqjXV/Hu9zm+Mgcv
         6gZyCzkU5ySSErh38hFZ8tOjr54LdLAsmBoW45UOoFqVTMOq0mG2Zq55SaaYQBPI1PIp
         DQohnuBitjJ7L1+05TsrmaqyziJ5QwMZZFuVe+LAj6hxFW2gv8+ZjVg9zsMGdbV6Hiv5
         NqQGtElNtHViCHkWeFk28wQyGb41x63um96QvtKx/rq3bXRIszv79P8E2F1rv7X2ODfS
         +hfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=XWnk+pKdZJqmV62/h657OWIHY82bAb8Z3BgjqTiOLz4=;
        b=JXAh1v00fBy2ehvDw0wj4qBpRiXpry6Oj8spQEX/gxG3GdwCGFbvLnwtLNHETHwlFO
         ajAy4/BT/TDtw9U6RIyv5sYdTMbgB7wRNIVr/OEcBfbNwVGQnIE2UWje04NoZMsovWuq
         qtpVvQBaszffyNTR3tCaZLOXbOOBEcbNZWKavHhKwRK0HbpbyEcZE6oqBA7ZZVykWEa8
         Pej5nCHlAmxXZI8WgwwSQdcuo7g+mYeEvCCGMvJ6TEctaA5cvmFi1OulB12ElxeMtWMh
         pC3PCFtNAE+GX64GfqV2Np4Y/nWICXHW0x0lmPE5UrvmjqpY5lcBI93ZiYPWrXnpUx1o
         Xadg==
X-Gm-Message-State: AOAM532I3/bSWLkQAbFE6A9Bzfo270IPyC5rCBySxrBAbsbqFhCqpwt5
        xAJNNuT8LH/E4LwmfdL6xao=
X-Google-Smtp-Source: ABdhPJyT5tL6mJoGz4sCX2mi3mIH2uu0ICIFJhwPC75SzUetOpN8XKJFv4/ZDm10r94iaB6qmCbJlw==
X-Received: by 2002:a2e:b179:0:b0:24a:d3da:8691 with SMTP id a25-20020a2eb179000000b0024ad3da8691mr1412035ljm.392.1648539067518;
        Tue, 29 Mar 2022 00:31:07 -0700 (PDT)
Received: from smtpclient.apple (31-178-191-245.dynamic.chello.pl. [31.178.191.245])
        by smtp.gmail.com with ESMTPSA id l18-20020a194952000000b00445bf2c3b83sm1898047lfj.58.2022.03.29.00.31.05
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Mar 2022 00:31:07 -0700 (PDT)
Content-Type: text/plain;
        charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: [PATCH v9 00/23] drm/rockchip: RK356x VOP2 support
From:   Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <20220328151116.2034635-1-s.hauer@pengutronix.de>
Date:   Tue, 29 Mar 2022 09:31:01 +0200
Cc:     dri-devel@lists.freedesktop.org,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>
Content-Transfer-Encoding: quoted-printable
Message-Id: <FB201567-AE5A-4242-82F1-7C55D8F111EA@gmail.com>
References: <20220328151116.2034635-1-s.hauer@pengutronix.de>
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
<s.hauer@pengutronix.de> w dniu 28.03.2022, o godz. 17:10:
>=20
>=20
> Changes since v8:
> - make hclk_vo a critical clock instead of enabling it in the hdmi =
driver
> - Fix vop2_setup_layer_mixer(), reported by Andy Yan
> - Limit planes possible_crtcs to actually existing crtcs
>=20
>=20

Sascha,

FYI:
I was hoping v9 will fix green screen issue i see when video player =
wants to draw to nv12 capable drm plane.
It look issue is still present :-(

You can easily reproduce with modetest utility:

modetest -P 43@67:1920x1080@NV12=20

gives green screen.

however if you do:

modetest #43 (green screen)
modetest #49  (ok)

then

modetest #43=20

gives expected result ("rainbow" picture on screen)

let me know if i can do any extra tests helping you to fix issue
=20
br


