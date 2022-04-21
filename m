Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 26287509E59
	for <lists+devicetree@lfdr.de>; Thu, 21 Apr 2022 13:14:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1388742AbiDULQS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Apr 2022 07:16:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52342 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1388750AbiDULQR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Apr 2022 07:16:17 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D58022E681
        for <devicetree@vger.kernel.org>; Thu, 21 Apr 2022 04:13:24 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id lc2so9243667ejb.12
        for <devicetree@vger.kernel.org>; Thu, 21 Apr 2022 04:13:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=SUZ3fmbbA3bW+6zlBXPCxl05NBgb1lVxlBnVpWEBW8Y=;
        b=165sJL8oUoSSjr0w3OKtQLsIzRyJtxgQO7Ej8MD0RONhhe+wZvJoWARDnarA4pE5mW
         dxDv0NfSmc6XUShEeeSHLi/lcyDpEbgzRQp3UJESdvpkp+HXkemP7mJMWFAADnC6BmiH
         1yMwmIVTl6zGW5nXLjhvh2ESkuxc6FbbP/+VFTb+EBxfBtso8BTnBMTq4m1nXMvn1/EB
         o35K8aowKfLNe5bAqe7tJ/jO8DpoApgR5pkX/lTugxb46tgc9moGS69SYERptJgDTRbV
         Rsi+E8ivE2xlMFgN4vAUEenD8Gp+Kur8tqosOY3liV1O4YkrTvO2+fb8i5qB8uvNFYqO
         0tZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=SUZ3fmbbA3bW+6zlBXPCxl05NBgb1lVxlBnVpWEBW8Y=;
        b=triczKnviE8vY8mksOyIDTEtbMkU3pTq3Y+E/0OKqPrLzgDRu5ZvlxjDNbtGJiNKgi
         N+q8tL/PRUZkvmLEEF0X1k+nDF6R4C8rgfD1U0S4vaQ/KGtI/NLLiY/cKwmpA9pdeVVm
         iNLTF+Z6GuELK2JWjMuaA3F2n9dN+OckQFjUiMwzKF9TWlcgCu6irnFM4xSWyVPfyeXW
         wJ3mKBVzoQNfxjmH94NVYIAvsh36LtW0FcRWKqATDaVCvNMH0DFluWZx8VLjH7oLWPzx
         t1gkpTUpDt7dXF2ZvSlDuvwhX2RWxE02eoll9zEAJ2gJDJW3p8z/GgwJyehWVDe+8IIv
         iDHw==
X-Gm-Message-State: AOAM533iCKG8Rh6ZIyLxTk1k9rpb9SLRLb79HJtf05msv3Ww+B0uQyNV
        WiKDJVStrPHI+HCYrOE5KjXap8eTI6kHCFmdBLnP4A==
X-Google-Smtp-Source: ABdhPJwYj4HYIF7yTu7IcNHJEvCknc1WCtKnvOQbaKxO1PFNL7fkQ1E6VSwYW8S5yMxMaQ5lM86zEwR0ovbipUvw0xo=
X-Received: by 2002:a17:907:2a53:b0:6ce:e4fe:3f92 with SMTP id
 fe19-20020a1709072a5300b006cee4fe3f92mr22534469ejc.389.1650539603270; Thu, 21
 Apr 2022 04:13:23 -0700 (PDT)
MIME-Version: 1.0
References: <20220214212955.1178947-1-piotr.oniszczuk@gmail.com>
 <20220214212955.1178947-3-piotr.oniszczuk@gmail.com> <YjcgflUuQlFbVM/1@eze-laptop>
In-Reply-To: <YjcgflUuQlFbVM/1@eze-laptop>
From:   Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date:   Thu, 21 Apr 2022 08:13:11 -0300
Message-ID: <CAAEAJfAh60QB4JvtR8WfsykRit7RqE=XZ290u8jBOQ-7y7+P7g@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] dt-bindings: media: rockchip-vpu: Add RK3568 compatible
To:     Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Cc:     linux-media <linux-media@vger.kernel.org>,
        "open list:ARM/Rockchip SoC..." <Linux-rockchip@lists.infradead.org>,
        devicetree <devicetree@vger.kernel.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Hans Verkuil <hverkuil@xs4all.nl>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Hans,

On Sun, Mar 20, 2022 at 9:39 AM Ezequiel Garcia
<ezequiel@vanguardiasur.com.ar> wrote:
>
> Hi Piotr,
>
> On Mon, Feb 14, 2022 at 10:29:55PM +0100, Piotr Oniszczuk wrote:
> > From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
> >
> > RK356x has Hantro G1 video decoder capable to decode MPEG2/H.264/VP8
> > video formats.
> >
> > This patch adds RK3568 compatible in rockchip-vpu dt-bindings.
> >
> > Tested on [1] with FFmpeg v4l2_request code taken from [2]
> > with MPEG2, H.642 and VP8 samples with results [3].
> >
> > [1] https://github.com/warpme/minimyth2
> > [2] https://github.com/LibreELEC/LibreELEC.tv/blob/master/packages/multimedia/ffmpeg/patches/v4l2-request/ffmpeg-001-v4l2-request.patch
> > [3] https://github.com/warpme/minimyth2/blob/master/video-test-summary.txt
> >
> > Signed-off-by: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
>
> Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
>
> This dt-binding change looks trivial, so I guess it's fine
> taking it directly via the media tree?
>

I believe this series is ready for you to review.

Thanks!
Ezequiel

> Thanks,
> Ezequiel
>
> > ---
> >  Documentation/devicetree/bindings/media/rockchip-vpu.yaml | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> > index bacb60a34989..6cc4d3e5a61d 100644
> > --- a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> > +++ b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> > @@ -23,6 +23,7 @@ properties:
> >            - rockchip,rk3328-vpu
> >            - rockchip,rk3399-vpu
> >            - rockchip,px30-vpu
> > +          - rockchip,rk3568-vpu
> >        - items:
> >            - const: rockchip,rk3188-vpu
> >            - const: rockchip,rk3066-vpu
> > --
> > 2.29.2
> >
