Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B787E4EDC63
	for <lists+devicetree@lfdr.de>; Thu, 31 Mar 2022 17:06:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234424AbiCaPIg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 31 Mar 2022 11:08:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51310 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232527AbiCaPIg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 31 Mar 2022 11:08:36 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D8BF141441
        for <devicetree@vger.kernel.org>; Thu, 31 Mar 2022 08:06:47 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id e16so41999193lfc.13
        for <devicetree@vger.kernel.org>; Thu, 31 Mar 2022 08:06:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=iEeqXgqN7qNwmQ7SU0adYJu3zAo5+AxJKS/k66U7Uuw=;
        b=cSdCZGdJoMjReN01pR3Q7RjqXLfM/ds+zF+IGB5HU994zhdMp0MUwm7zC4myMiGEIC
         8R5ssSK40FIlevjSNoHjC8kXgJFSILuT/JItQh4qmwXwKnutMvBXuiRdQBnp1jv0iemr
         kYZR0Vrlwu9rj6pF+2LiP+biOfQkfK+kamY1vle2Ye0KNJpORClIuM25P/G9ndQMo3ka
         Evb7/Q2iWADK9ySutmkfanI748dH8qelFdtI4CcrD8H4HJt4lWpqRuif896AdevqTW+B
         ZCS+6ITiFb7poKmgiSIoEX9A+zj6J0QeufKFHyLIf563VeF3Kt0tf9WxGuhXAAS4zobe
         F+vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=iEeqXgqN7qNwmQ7SU0adYJu3zAo5+AxJKS/k66U7Uuw=;
        b=0Z3/1IjSDEvuZH1WNmEE0o3TSH3dUPEvqcktUGE7qzA3clATZhASrsUjnVoNGBTKTM
         rFqlpKuq0lj9UHJvZCF69TLt1HrNsPDZQy+uDbvKmNhlsfWgkHYwH9Xrf46MkyyZLCE9
         nS1OLils3szfbkYCCROtDiv+htWQqIsqZgVH5oFvX4r1CypeBn2e28T3tUbokMyXTobt
         PAoVYCNNMcXrt1IwXDivnqYQSBVlBbs1M7Xo/bmsTU75VEep1wlzQ4YCip43QWZGxAEh
         juZOhI053pdfb+y8qRaGEdVquR+6Lt24fjJeZq0AGKepc2DOuDyK9zHm4+BBiJNeROTk
         3WqA==
X-Gm-Message-State: AOAM530ZJSfj8ro9HO5BhbxHqU3fVunxP11z++G5r2dK4sXt4z3/DhQj
        ikEyn9gJ1mXNV8NZUU7P+24=
X-Google-Smtp-Source: ABdhPJwqfhKwVkGEAlyRMgBOZAf1wO/XCh9gwyq4jSKNAmK7zbJ0HROyx7wXfMKYpLhCy8ArHZKcZg==
X-Received: by 2002:a05:6512:3f86:b0:448:9448:5561 with SMTP id x6-20020a0565123f8600b0044894485561mr10757975lfa.489.1648739198577;
        Thu, 31 Mar 2022 08:06:38 -0700 (PDT)
Received: from smtpclient.apple (31-178-191-245.dynamic.chello.pl. [31.178.191.245])
        by smtp.gmail.com with ESMTPSA id e3-20020a196743000000b0044311216c42sm2694691lfj.307.2022.03.31.08.06.36
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 31 Mar 2022 08:06:37 -0700 (PDT)
Content-Type: text/plain;
        charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: [PATCH v9 00/23] drm/rockchip: RK356x VOP2 support
From:   Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <20220331150056.GH4012@pengutronix.de>
Date:   Thu, 31 Mar 2022 17:06:35 +0200
Cc:     Andy Yan <andy.yan@rock-chips.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>,
        Sandy Huang <hjc@rock-chips.com>,
        dri-devel@lists.freedesktop.org,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        kernel@pengutronix.de,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: quoted-printable
Message-Id: <3A5C5A71-0CE0-4072-9502-75385C1C43F7@gmail.com>
References: <FB201567-AE5A-4242-82F1-7C55D8F111EA@gmail.com>
 <20220330072822.GX12181@pengutronix.de>
 <0D8F5951-5375-46B5-BFF0-7ED410371EB7@gmail.com>
 <20220330094556.GZ12181@pengutronix.de>
 <D3DA14F9-C9C6-4927-B015-5B7D25689DAA@gmail.com>
 <20220330102046.GA12181@pengutronix.de>
 <60601619-EF07-457B-91F2-64FEB598FEBE@gmail.com>
 <20220330192054.GA4012@pengutronix.de>
 <af8445e0-f4af-721b-709e-2eb7c488a8a4@rock-chips.com>
 <B7CD9D55-9F2D-42F4-9D04-17C6A5FEBB08@gmail.com>
 <20220331150056.GH4012@pengutronix.de>
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
<s.hauer@pengutronix.de> w dniu 31.03.2022, o godz. 17:00:
>=20
>=20
> Have you applied the bugfix I shared with you here:
>=20
> =
https://lore.kernel.org/linux-arm-kernel/20220330072822.GX12181@pengutroni=
x.de/
>=20

oooops

noooooo
didn't noticed :-(

let me try with it!

