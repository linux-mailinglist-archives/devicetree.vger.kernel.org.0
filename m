Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E879B6F731C
	for <lists+devicetree@lfdr.de>; Thu,  4 May 2023 21:16:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229522AbjEDTQQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 May 2023 15:16:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39294 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229499AbjEDTQQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 May 2023 15:16:16 -0400
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com [IPv6:2607:f8b0:4864:20::102e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82F27DB
        for <devicetree@vger.kernel.org>; Thu,  4 May 2023 12:16:15 -0700 (PDT)
Received: by mail-pj1-x102e.google.com with SMTP id 98e67ed59e1d1-250175762b8so534989a91.1
        for <devicetree@vger.kernel.org>; Thu, 04 May 2023 12:16:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683227775; x=1685819775;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Z7gJY1h0XBMe9/gdwAJZJNx77lWxRnFXs8IrgX7nH7s=;
        b=rLcOFLD2Gs9oY3cLY2OQBZ6BZCbf5uZ57oezBYG7V3ffGq7/zO+6S6xaY6Ka9eVgsn
         /PEy/gVbnSsLZUsea96GhACjAyRCQ30+NTrioOrj6s9jRGg2nUX3OPPIVxIGeEnyFeDD
         uvjJ/1eHgBJQwwnImUs6I5JzZVF92eW9g7syBk/es/jWRGgln0S0H+cQHkpY2A68s+ca
         5Ne1IsGP5pCIv1SfhviocYhKmThQF1Z9831RHzJGAMC5hHe55uxZK1eQaPMbFEx7z/D5
         03RrZcFXjs2ZfEVB9sVRHwu04KAjR72IvhJ4yzBQRaDm7Xx3FwEgMaWiIa+VsjR5fO1i
         WyBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683227775; x=1685819775;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z7gJY1h0XBMe9/gdwAJZJNx77lWxRnFXs8IrgX7nH7s=;
        b=Gw15hrRiz+KJqKz3U0nP4pz/OKOA//l/1y3guv2VRx/EXv4STb+Deb4sZqqhVCe3yd
         nLOwmuiRIFwdDe7udjviydB7HWESH5ZCiA6xCmsc4/f6YUi00E3PGn3AHgzrEQq8asH6
         SM87RdbcfmmeATVFUFzETaPxGN+rd9RJDkUZ9IV9G1dUzDMv46hGgyXcne4ttCCqH+cX
         VcaWT+PQ29FCNDIXTOZX6YhoPA1r5I03WxE19735+ENOUjyGV9w51Z0pCW0SkvaZZQMh
         qOUz5fN+qWqAWTm/xJyU6tCuE0oFzqDsRkUC2aPpr+VuRXpHfwxRvTnbAzwtSYDrmKvE
         GMFw==
X-Gm-Message-State: AC+VfDwrH6NkmYTomS3d9Tfvle9tePLOcAkvNMI+fHf/wsTc3TwRIdcZ
        /TwYQpoUNxL6IYxyUzekkRv1AJ4MhMyQX+xzNwUgRK8J
X-Google-Smtp-Source: ACHHUZ72F4gGSzEbsjDwIhyhYoMZizj5iYmbC4EJEk5PyUSpGBXtSdR4H97ILckfw14LWmKifnHN/XCb09MeAQWUNbw=
X-Received: by 2002:a17:90b:114:b0:24b:66fe:6b4b with SMTP id
 p20-20020a17090b011400b0024b66fe6b4bmr3038573pjz.47.1683227774810; Thu, 04
 May 2023 12:16:14 -0700 (PDT)
MIME-Version: 1.0
References: <20221216210742.3233382-1-l.stach@pengutronix.de>
 <20221216210742.3233382-4-l.stach@pengutronix.de> <20230307125821.GA722857@g0hl1n.net>
In-Reply-To: <20230307125821.GA722857@g0hl1n.net>
From:   Adam Ford <aford173@gmail.com>
Date:   Thu, 4 May 2023 14:16:03 -0500
Message-ID: <CAHCN7xLQ1PzOGtFqwpTTrkKn3cUNz-hXpt5hADWXXLTjfFzbdQ@mail.gmail.com>
Subject: Re: [PATCH v2 4/4] drm/bridge: imx: add driver for HDMI TX Parallel
 Video Interface
To:     Richard Leitner <richard.leitner@linux.dev>
Cc:     Lucas Stach <l.stach@pengutronix.de>, Marek Vasut <marex@denx.de>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, Liu Ying <victor.liu@nxp.com>,
        dri-devel@lists.freedesktop.org, patchwork-lst@pengutronix.de,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Rob Herring <robh+dt@kernel.org>,
        Robert Foss <robert.foss@linaro.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Mar 7, 2023 at 7:07=E2=80=AFAM Richard Leitner
<richard.leitner@linux.dev> wrote:
>
> Hi Lucas,
>
> hope I got the latest version of this series. If not, please feel free
> to point me to the correct one.
>
> On Fri, Dec 16, 2022 at 10:07:42PM +0100, Lucas Stach wrote:
> > This IP block is found in the HDMI subsystem of the i.MX8MP SoC. It has=
 a
> > full timing generator and can switch between different video sources. O=
n
> > the i.MX8MP however the only supported source is the LCDIF. The block
> > just needs to be powered up and told about the polarity of the video
> > sync signals to act in bypass mode.
> >
> > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> > Tested-by: Marek Vasut <marex@denx.de>
>
> I've successfully tested this patch on our custom i.MX8MP board. The
> test case was basically "cat /dev/urandom > /dev/fb1" with a 800x480
> HDMI display.
>
> Therefore please feel free to add:
>
> Tested-by: Richard Leitner <richard.leitner@skidata.com>
>

Lucas,

Is there going to be a subsequent rev of this series?  It seems to be
stuck somewhere without any movement.

thanks

adam
> > ---
> >  drivers/gpu/drm/bridge/imx/Kconfig           |   7 +
> >  drivers/gpu/drm/bridge/imx/Makefile          |   1 +
> >  drivers/gpu/drm/bridge/imx/imx8mp-hdmi-pvi.c | 202 +++++++++++++++++++
> >  3 files changed, 210 insertions(+)
> >  create mode 100644 drivers/gpu/drm/bridge/imx/imx8mp-hdmi-pvi.c
> >
