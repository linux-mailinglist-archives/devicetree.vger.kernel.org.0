Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4DEDF4EC76D
	for <lists+devicetree@lfdr.de>; Wed, 30 Mar 2022 16:52:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347457AbiC3OyS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Mar 2022 10:54:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59508 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243874AbiC3OyM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Mar 2022 10:54:12 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B9F048E4E
        for <devicetree@vger.kernel.org>; Wed, 30 Mar 2022 07:52:27 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id p15so36265219lfk.8
        for <devicetree@vger.kernel.org>; Wed, 30 Mar 2022 07:52:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=hc8fraLWBmPS2+8If+3/sRtFOFyaAgxs5c6eZI6wZpY=;
        b=m3AUKtB/RoJ+VRRoPr4TRft7zBZzhRqjrSHJ6EuPYQX2QVUUAsjvrYumRBliHhkKsx
         Dn4kcYGtA0NU7Vyuz5Edy5eOxK1QnQ4SeAmDUSuz8/lJoc97fvrhQ1lNDHSwWZfmqt6z
         UQqwlJXi6F5m3aPTMCVg6KZYnj1fcjZBqOtLzFOqIIKFDGbbv9qdyLLhb8/DFXCBF3qP
         bDSNhqI/aK9YAAAJlMvLRpLc7m8vB5/2+S/UVAc8fBUydLRzOddeU6BQ7QgFsfvXBtLa
         lJvHWb9RPw63H4YcOOaClFMdJqpoTcs41Wt64Xm/JK4tVL8aHQSC441jLgVCE/Dt6bGO
         wb0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=hc8fraLWBmPS2+8If+3/sRtFOFyaAgxs5c6eZI6wZpY=;
        b=AQpqdJaO6oD3mwOxE7bUSyIAep+v98RTPYCqYmXbuOpwIjAhgqWpkf/EV2/pqGSHXY
         j539aVIkr+uumw1equ0Hi7b3RuiFDLLPKtWro1ZOF6AbicZt9JaA5t0/639nsr/+bopi
         x0ltmEuFY5QrEbVaKJSrky07/iTLioVjEuH0qMWiksZTVyAIsYpHCiyBA/Q9EbFOCwVz
         zUOB1hpgxQ/2nRfNVJJK9kFttDestdwKKC/mR0mAjZGO+86ZLbKHb6gyp31G2X1FBu4m
         /om+bPGRZLQw7RYZ08yCF0LYNRTA6nIi+lR48AhK8lyRF/0oHxrZ/QEkGjm+O8VgbR2s
         uU2A==
X-Gm-Message-State: AOAM532aQejEBwfpSDWjdbxWhduxI+0jCylDER6UVrHjO3LktYYYqEpY
        hqfPh8LsAgklcEATdaxVkjA=
X-Google-Smtp-Source: ABdhPJzyYYjDtGAGoeg7trsTFkePsA5/OO3BBWaZB84gKUFc4HtGpAK0GxybtA/ISrhgDJfp9iMeag==
X-Received: by 2002:ac2:4d8b:0:b0:44a:2aec:669f with SMTP id g11-20020ac24d8b000000b0044a2aec669fmr6981393lfe.49.1648651944653;
        Wed, 30 Mar 2022 07:52:24 -0700 (PDT)
Received: from smtpclient.apple (31-178-191-245.dynamic.chello.pl. [31.178.191.245])
        by smtp.gmail.com with ESMTPSA id k2-20020a056512330200b0044a096ea7absm2351567lfe.54.2022.03.30.07.52.23
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Mar 2022 07:52:24 -0700 (PDT)
Content-Type: text/plain;
        charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: [PATCH v9 00/23] drm/rockchip: RK356x VOP2 support
From:   Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <20220330102046.GA12181@pengutronix.de>
Date:   Wed, 30 Mar 2022 16:52:22 +0200
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
Message-Id: <60601619-EF07-457B-91F2-64FEB598FEBE@gmail.com>
References: <20220328151116.2034635-1-s.hauer@pengutronix.de>
 <FB201567-AE5A-4242-82F1-7C55D8F111EA@gmail.com>
 <20220330072822.GX12181@pengutronix.de>
 <0D8F5951-5375-46B5-BFF0-7ED410371EB7@gmail.com>
 <20220330094556.GZ12181@pengutronix.de>
 <D3DA14F9-C9C6-4927-B015-5B7D25689DAA@gmail.com>
 <20220330102046.GA12181@pengutronix.de>
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
<s.hauer@pengutronix.de> w dniu 30.03.2022, o godz. 12:20:
>=20
> Does it change anything if you do a "modetest -s 69@67:1920x1080" =
before
> starting the app? Or if you run "modetest -P 43@67:1920x1080@NV12"
> before starting the app? Or other combinations thereof?

So i tried following combinations

1.
-boot
-start app
-stop app
-modetest -s 69@67:1920x1080 -> ok
-modetest -P 43@67:1920x1080@NV12 -> green screen

2.
-boot
-modetest -s 69@67:1920x1080 -> ok
-modetest -P 43@67:1920x1080@NV12 -> green screen

3.
-boot
-modetest -s 69@67:1920x1080 -> ok
-start app
-playback in app -> green screen
-stop app
-modetest -P 43@67:1920x1080@NV12 -> green screen

4.
-boot
-modetest -s 69@67:1920x1080 -> ok
-start app
-playback in app -> green screen
-stop app
-modetest -s 69@67:1920x1080 -> ok
-modetest -P 43@67:1920x1080@NV12 -> green screen

br



