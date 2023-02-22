Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0453269F7D1
	for <lists+devicetree@lfdr.de>; Wed, 22 Feb 2023 16:31:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232482AbjBVPbZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Feb 2023 10:31:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49704 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232490AbjBVPbT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Feb 2023 10:31:19 -0500
Received: from mail-qt1-x82d.google.com (mail-qt1-x82d.google.com [IPv6:2607:f8b0:4864:20::82d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F7E73800A
        for <devicetree@vger.kernel.org>; Wed, 22 Feb 2023 07:31:17 -0800 (PST)
Received: by mail-qt1-x82d.google.com with SMTP id ay9so7777508qtb.9
        for <devicetree@vger.kernel.org>; Wed, 22 Feb 2023 07:31:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20210112.gappssmtp.com; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=fh6C77quFgb0sbEQJQh7U6O2ztcGG8ZW3pjGX3oErHE=;
        b=JUcKVHkK/pw3xPAHb2WhFwz9wUMoQ9J7CeRSJs3iHDNBfb0jpxBe28aMi9ZE9pEkb3
         VhW+w+R5ozM5s0DSWokvK0WclfvzU/QEiQq/wi//XUIVDK9I3HJBmT57ysp0QG4NdSnx
         BjntMWeRmzV2fXtzzhetQ8/jfJPCNVILrPacXSx/rjEA3qJqD4iSu+b1EnC3yKfM8rIo
         9LEIksD8Qn+sivTwdlnH817B6YN/mHsq1ZHprhCjt3VAIiNPjGWqOeF3POkmM4TWD37B
         JwD7OKbhlU3qmc/Wzbo3N/bgV6gZU+91LjNFG4vdMpd5xai9TFq4sxLLapBu+j7WDuEq
         /89w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fh6C77quFgb0sbEQJQh7U6O2ztcGG8ZW3pjGX3oErHE=;
        b=QkBngwaZCJm7FR3IkrOcrpXbCBGug0iPHtdE0sHAyTwMU5hmY1dKdrk5o/RgwbBwvq
         KW/eRpb+0cKldTP6scg9YG5I6QbxeFfVm7J929jQY+sqKHqm/jVQ+zETHUDC2vCLrQEU
         532+NCRUk0ze+7rccMTnrvw/vvyKTvAkS1w6jeq3XIIU5DkMbk97QGcNsZjqI820eXhe
         sQzP5fJuEbnBD9jTc7ob688MG2RjLqRyR7EP4HS+xmjrJPnC2k7ea/jVBnFS9yAk3Ols
         LL+AwLGJKm5roD4VckoNm78jmK9nJAA1HYGVXHfvzguYTf5WMzWq+P1FpJ0IyaE+Zria
         sqQw==
X-Gm-Message-State: AO0yUKWfEUlLvs+qtyXY4njWtrsDiJqKh7cIftc+RcA+77HfXOhYhxCh
        nq4811WQLZRvC0C+lfnrzA8zXQ==
X-Google-Smtp-Source: AK7set9O1fcF76S2nN5PHnfyp44+JWGYAs9/CQV3wl4gIeHjeJV7w23jjvq6MRKAU47RXwWoO7vppQ==
X-Received: by 2002:a05:622a:2c2:b0:3b8:6b23:4fc2 with SMTP id a2-20020a05622a02c200b003b86b234fc2mr388260qtx.15.1677079876510;
        Wed, 22 Feb 2023 07:31:16 -0800 (PST)
Received: from nicolas-tpx395.localdomain (192-222-136-102.qc.cable.ebox.net. [192.222.136.102])
        by smtp.gmail.com with ESMTPSA id ew10-20020a05622a514a00b003b8484fdfccsm4297942qtb.42.2023.02.22.07.31.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Feb 2023 07:31:15 -0800 (PST)
Message-ID: <605689aa181770ad6c7fca2a55967ab5fc5a3699.camel@ndufresne.ca>
Subject: Re: [PATCH 03/10] media: Add Y212 video format
From:   Nicolas Dufresne <nicolas@ndufresne.ca>
To:     Hans Verkuil <hverkuil-cisco@xs4all.nl>,
        Ming Qian <ming.qian@nxp.com>, mchehab@kernel.org,
        mirela.rabulea@oss.nxp.com
Cc:     shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
        festevam@gmail.com, xiahong.bao@nxp.com, linux-imx@nxp.com,
        linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Date:   Wed, 22 Feb 2023 10:31:14 -0500
In-Reply-To: <93c8ae69-c765-f88e-23c3-9c6b8cf67b40@xs4all.nl>
References: <cover.1671071730.git.ming.qian@nxp.com>
         <9aa51224d2c37cca5f1283532cb99f3c8251b120.1671071730.git.ming.qian@nxp.com>
         <93c8ae69-c765-f88e-23c3-9c6b8cf67b40@xs4all.nl>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.3 (3.46.3-1.fc37) 
MIME-Version: 1.0
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Hans, Ming,

Le vendredi 27 janvier 2023 =C3=A0 15:37 +0100, Hans Verkuil a =C3=A9crit=
=C2=A0:
> On 20/12/2022 04:11, Ming Qian wrote:
> > Y212 is a YUV format with 12-bits per component like YUYV,
> > expanded to 16bits.
> > Data in the 12 high bits, zeros in the 4 low bits,
> > arranged in little endian order.
> >=20
> >=20

[...]

> > @@ -618,6 +618,7 @@ struct v4l2_pix_format {
> >  #define V4L2_PIX_FMT_YUVA32  v4l2_fourcc('Y', 'U', 'V', 'A') /* 32  YU=
VA-8-8-8-8  */
> >  #define V4L2_PIX_FMT_YUVX32  v4l2_fourcc('Y', 'U', 'V', 'X') /* 32  YU=
VX-8-8-8-8  */
> >  #define V4L2_PIX_FMT_M420    v4l2_fourcc('M', '4', '2', '0') /* 12  YU=
V 4:2:0 2 lines y, 1 line uv interleaved */
> > +#define V4L2_PIX_FMT_Y212    v4l2_fourcc('Y', '2', '1', '2') /* 32  YU=
YV 12-bit per component */
>=20
> This definitely needs to be renamed to prevent repeating the 'P010' mista=
ke.
>=20
> It's a YUYV format, so perhaps: _YUYV_12?
>=20
> You definitely need to have 'YUYV' in the name in order to deal with diff=
erent
> YUV orders.

Hans, it seems you already accepted this exact same format from=20
Tomi Valkeinen <tomi.valkeinen+renesas@ideasonboard.com> / [PATCH v3 2/7] m=
edia:
Add Y210, Y212 and Y216 formats.

Tomi omitted to update v4l2-common.c file. Ming, do you mind keeping this p=
art
of your patch (adding Y210/Y216 support), this way we'd get that properly
implemented.

Nicolas

p.s. We can alternatively change our mind as this is not final yet I think.

[...]
