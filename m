Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 71AC77407C1
	for <lists+devicetree@lfdr.de>; Wed, 28 Jun 2023 03:47:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229763AbjF1BrX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Jun 2023 21:47:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51532 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229651AbjF1BrW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Jun 2023 21:47:22 -0400
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com [IPv6:2607:f8b0:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A3C51BE9
        for <devicetree@vger.kernel.org>; Tue, 27 Jun 2023 18:47:21 -0700 (PDT)
Received: by mail-oi1-x22a.google.com with SMTP id 5614622812f47-3a1ba074dadso3024345b6e.1
        for <devicetree@vger.kernel.org>; Tue, 27 Jun 2023 18:47:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20221208; t=1687916841; x=1690508841;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=39f5Ofs4Fut4oG/x67xmD5HKVQS6vifJS9n1Fqh5CNI=;
        b=xCwf9hAwyokrWOGO7CX935cGCvgM7aunAkp6xEeawz1c2RtC1heZey3QYcfDZD205r
         hrqHBiB4isLHaYtBq5xyNuHLup9OdGt/LRrEiH786z8vYdu+ws4UwiE2bO71ztqUfVEa
         9xdUBGg/I8Kt9nxdQnb+RZahB3yaUyYznzbdGDDJ7QA3TBxRZT9VmjAzfEDg7Q/GMGUM
         gcDVRgMXClox+ITMtyGgKcM1qZz5dkJBHaXn28Mchsxhyv+SeBYF5u9LtDSX0N2xngqs
         mPrTsZQ4pTIIY6ByM1galx7dSoRDyWiH7A/Y6LH7HanurvSyOsBwCyDTh4JvDaHceB9W
         PXtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687916841; x=1690508841;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=39f5Ofs4Fut4oG/x67xmD5HKVQS6vifJS9n1Fqh5CNI=;
        b=Mhufg4YLTR6+e2GH1dWOul0qwsYJDn5V40N2oZYGZzvYUPupb7hprCqi2SXu5fy32Q
         UzJ3Qt9tOOy01xwPjZd7W4bZKftbmq1Ka6rFlFVnMkxh2x2BzgWSIg5sB1NM0f4gnG1z
         pyKtTRy2EhNaXcLn8QRufpHwbcGnV0bLRwS/AiexgBxwizzrTSBhfRdh0F91A1pPfb1z
         ZKfM6c3Z9Ah3QJL0qVauNTWrgA8vWMKVG/sYnV538J9WrCLhe8uL95iXMMT23qRxNVNL
         uoNFAP1eU/hahRoZqdE/qC0MwdYz4mA6KHDWMmo0fn4IP1zYeOAUgu8j4zlc6JqGUUOs
         4q4Q==
X-Gm-Message-State: AC+VfDxrWy5XnTACEDPI2Do+1zm83lautHMVDGLVPFGHjzSJg8NxUFte
        aji8Cb89cpzRZlEr8u0esqBlJSgGqyu5TXHR3VgguQ==
X-Google-Smtp-Source: ACHHUZ7c501zOPij6leqylYmOj8Qka5FCrkxofq6AvdEns+6OFM8mCOc1asFuyTCWGmGLGr1txrh4LPuXsNJwsPyEls=
X-Received: by 2002:a05:6808:1b07:b0:399:b7bd:9041 with SMTP id
 bx7-20020a0568081b0700b00399b7bd9041mr36225966oib.34.1687916840967; Tue, 27
 Jun 2023 18:47:20 -0700 (PDT)
MIME-Version: 1.0
References: <20230627050148.2045691-1-yangcong5@huaqin.corp-partner.google.com>
 <CAD=FV=WR=fnhCxC37Eo3hinh2MV=eTNuXG+GrwgR6K_pV4Rbaw@mail.gmail.com>
In-Reply-To: <CAD=FV=WR=fnhCxC37Eo3hinh2MV=eTNuXG+GrwgR6K_pV4Rbaw@mail.gmail.com>
From:   cong yang <yangcong5@huaqin.corp-partner.google.com>
Date:   Wed, 28 Jun 2023 09:47:09 +0800
Message-ID: <CAHwB_NLDFqDEQ14cTAo3z1pvXvCZXhMeRbTXM3u93hVtpjE52w@mail.gmail.com>
Subject: Re: [v2] drm/panel: Fine tune Starry-ili9882t panel HFP and HBP
To:     Doug Anderson <dianders@google.com>
Cc:     sam@ravnborg.org, neil.armstrong@linaro.org, daniel@ffwll.ch,
        airlied@gmail.com, hsinyi@google.com,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi, Doug


On Wed, Jun 28, 2023 at 5:17=E2=80=AFAM Doug Anderson <dianders@google.com>=
 wrote:
>
> Hi,
>
> On Mon, Jun 26, 2023 at 10:01=E2=80=AFPM Cong Yang
> <yangcong5@huaqin.corp-partner.google.com> wrote:
> >
> > Because the setting of hproch is too small, there will be warning in
> > kernel log[1]. After fine tune the HFP and HBP, this warning can be
> > solved. The actual measurement frame rate is 60.1Hz.
> >
> > [1]: WARNING kernel:[drm] HFP + HBP less than d-phy, FPS will under 60H=
z
>
> Thanks for including the warming. This looks like something that's
> only printed on Mediatek display controllers. Just out of curiosity:
> is that because Mediatek controllers have special requirements, or is
> this something generic and the Mediatek controller is the only one
> that warns about it?

It seems to be a generic calculation formula for MTK controllers.
At least I have see this warning in both MT8186 and MT8188.
By the way, the same warning will also appear under coreboot.

>
>
> > Fixes: 8716a6473e6c ("drm/panel: Support for Starry-ili9882t TDDI
> > MIPI-DSI panel")
>
> Ideally the tool you have to send mail wouldn't wrap the Fixes line.
> Probably not worth resending just for this, but see if there's
> something you can do to fix this in the future.
>
> Since this is a tiny fix, I don't think we need to wait too long. I'll
> plan to land it on Thursday unless Neil wants to land it himself
> sooner.

Thank you, Doug.

>
> Reviewed-by: Douglas Anderson <dianders@chromium.org>
