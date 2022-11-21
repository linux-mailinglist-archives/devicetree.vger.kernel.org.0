Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 22182632AFF
	for <lists+devicetree@lfdr.de>; Mon, 21 Nov 2022 18:30:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230112AbiKURaW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Nov 2022 12:30:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52426 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230154AbiKURaU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Nov 2022 12:30:20 -0500
Received: from mail-io1-xd2f.google.com (mail-io1-xd2f.google.com [IPv6:2607:f8b0:4864:20::d2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B2C3CDFF2
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 09:30:13 -0800 (PST)
Received: by mail-io1-xd2f.google.com with SMTP id n188so9115036iof.8
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 09:30:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/CdFA7VtSjmYPiyz7y2hV+ROJUwbYLUnLtbKUpXnpH4=;
        b=XWajUMngI/PRAhJ4ffZ78Wf045DGo/Gx4ywdvEGYTudmSCXcvC1hLHKX/Sx7mAAi48
         4bZQvdIqmN1M98mtKYPtEJ87Wp1FGuXko9EZR2yG9Ygt8GLVZxkmSq+/uL6biisvLSi6
         xGV9TSsZWJa7c6A+dk//s057R/4qWDHsftknObWoPuhdKPOK24fGkIwB3+MxOltBGVyH
         cNBQoBa6aKgucix6jJxlC9Fpvh3lBWMaRIRHO7Y0Ac7Uh2W2l9mjy/LHK1j1SaYxO7WU
         ggp/ZltpsusMJtM3ZixxDc0AUj4G8xYBu6f0n5cX3qhmhhBSlJ7gRY2CJIvDRDM5NMWd
         hewA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/CdFA7VtSjmYPiyz7y2hV+ROJUwbYLUnLtbKUpXnpH4=;
        b=8MYG1V6FVR76oR5D24gUWFAP3YqCSoXtwS5a5Z9zea3zjkO7x3rkLUtlmHKzYMdMcN
         5N2ihpou16t8s/f8bZ1NduAnFTFSTtjY7VRI3KaoS7laiSu+ZrUlhWTYti8DronqSfVo
         iMm+ljYuJGWl1OBKli9VeZDblsYMQOS/i0stlseHnKHtXFdf4KpomQZUgT2a0/+CXS2S
         sQQYWn6OMY/D0xLQTYR1tKmkQJ/Y2WVAPHK3szGGje8qDFdfVxdO1AMPtV1cbWYuSFsT
         y95XNtordJmi8JefHH4t3sCZXULYxNjk+zG7u3qEa2Y/FKI+IwM5xqHFjxFePb1jQZtD
         VCvQ==
X-Gm-Message-State: ANoB5pk1YOJkvnAshrcxZS7IuCPAp/c2hZQh19PjT8Aua+vQv9qfHWiR
        tN4VZxuu6pb/HlRxPoMf2TqQV5kuxUc9frJTW+n6YQ==
X-Google-Smtp-Source: AA0mqf5Ldn3zMPR1KTK1lb+ixNQARhU8GYZX0oMCAEPybcd4Gk7DkHHRLn+vZ7hFw9GNTzyY2cS3WOqAx8NgVUSyS+E=
X-Received: by 2002:a05:6638:20a:b0:374:f7d4:5eca with SMTP id
 e10-20020a056638020a00b00374f7d45ecamr1328041jaq.164.1669051813305; Mon, 21
 Nov 2022 09:30:13 -0800 (PST)
MIME-Version: 1.0
References: <20221121151755.2072816-3-m.tretter@pengutronix.de>
 <TY3P286MB2611FB223B1CC437B01BD984980A9@TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM>
 <20221121164116.GE15565@pengutronix.de> <TY3P286MB261119C709225F2DED97CF81980A9@TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM>
In-Reply-To: <TY3P286MB261119C709225F2DED97CF81980A9@TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM>
From:   Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date:   Mon, 21 Nov 2022 14:30:02 -0300
Message-ID: <CAAEAJfC74Am19+GSpCpbWJVpdbgv4n=3pjMHNkpRcCQfwi5xQA@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add RGA2 support to rk356x
To:     Shengyu Qu <wiagn233@outlook.com>
Cc:     Michael Tretter <m.tretter@pengutronix.de>,
        devicetree@vger.kernel.org, heiko@sntech.de, jacob-chen@iotwrt.com,
        kernel@pengutronix.de, krzysztof.kozlowski+dt@linaro.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, michael.riesch@wolfvision.net,
        robh+dt@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Shengyu, Michael,

On Mon, Nov 21, 2022 at 2:13 PM Shengyu Qu <wiagn233@outlook.com> wrote:
>
> Hi,
> I remember someone said that rga2 has only 32bit address space but not ha=
ving a mmu or mmu needs to be configured. Better ask by yourself in pine64 =
discord since I'm not sure about that.
>
> Shengyu
>
>
> =E4=BA=8E 2022=E5=B9=B411=E6=9C=8822=E6=97=A5 GMT+08:00 =E4=B8=8A=E5=8D=
=8812:41:16, Michael Tretter <m.tretter@pengutronix.de> =E5=86=99=E5=88=B0:
> >Hi,
> >
> >On Tue, 22 Nov 2022 00:01:28 +0800, Shengyu Qu wrote:
> >> Someone from pine64 discord found that RGA2 doesn't work properly on o=
ver
> >>
> >> 4GB memory RK3568 devices. Are you sure current driver works now?
> >
> >I am absolutely sure that the driver works on a 2GB ROCK3A board.
> >Unfortunately, I don't have a device with 4GB or more memory and I canno=
t test
> >the driver with such a device.
> >
> >As the documentation for the RGA2 is the same in the TRM of the rk3288 a=
nd
> >rk3568, I would guess that the driver doesn't work on a rk3288 with more=
 than
> >4GB (if there is such a thing) either and the driver needs to be fixed f=
or
> >both SoCs.
> >

In any case, if there's some kind of issue it must be in the driver,
and not in the device tree binding (i.e. this patchset).

Regards,
Ezequiel
