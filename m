Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E5FBE7431D0
	for <lists+devicetree@lfdr.de>; Fri, 30 Jun 2023 02:42:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231315AbjF3AmF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Jun 2023 20:42:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58090 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230229AbjF3AmE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Jun 2023 20:42:04 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 11D60110
        for <devicetree@vger.kernel.org>; Thu, 29 Jun 2023 17:42:03 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-992ace062f3so144171666b.2
        for <devicetree@vger.kernel.org>; Thu, 29 Jun 2023 17:42:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1688085720; x=1690677720;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+Gb81mYg1YRwOXWbF2VsLlxsYCtOl437hvg6gzGbEbw=;
        b=VTlVFaoQ8U1QeuN0AHYtdkrY0JWUVAlwxNenW4wLFBV66mg1yjZGQCQl8cMuIBijIA
         n07AE48XhqmbeZj1rAyifG+ttfPmtiuywbMA12VrQjXYcS1eexLgE+aT3tNk5YtbyNkV
         rJQpWyP9Yvp4JBab4V2B+4ENibVNzJpm1hEGU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688085720; x=1690677720;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+Gb81mYg1YRwOXWbF2VsLlxsYCtOl437hvg6gzGbEbw=;
        b=i97ojiMFPn3QJBUVFKL0HevCkp/5ky957PLgday1b46tO6f7BCx1aRqVhg/owKfDEr
         znArxs/p7V5pkbHm/i2go7RpMijnZsvW7bsxLdUYITUkYvS2PNGdujYoaWXCFb2sgId2
         yUKQvbEYZ4dHTv9h7cQeAonyJ5ne0mw2nyQaM3q8fl/AXud6hsKWnOoQvbNyQYzGGq4T
         VBYBrsNUrkjaiJVeCMH276/CVIsj5lvNNkt34ujL2Unwb669qmc1pwttR64/gx1Y4MMI
         VCKpdl8opTGbyZbj/Sqh3kxud78XpXCTDOTVQd8OhjtF5d9wc+9q2FQGI1b+IGjvfyhm
         xZsA==
X-Gm-Message-State: AC+VfDxX/TDLoAiYnSea8u5DjaIu0WHf8ASRYBBH6ax34SWwj0eyXNy6
        yud2bH4pkc5bCwX1nbsrLm4Z5JXa+iX2H5PvdqkxG4Jg
X-Google-Smtp-Source: APBJJlFihSa6/DemMjTGAVP9+4adNBshPbd25kSVAQL7GF07sPsX52s75R9zHcovk5o4j4TjylVWJA==
X-Received: by 2002:a17:906:34c9:b0:992:9907:638b with SMTP id h9-20020a17090634c900b009929907638bmr754888ejb.6.1688085719780;
        Thu, 29 Jun 2023 17:41:59 -0700 (PDT)
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com. [209.85.208.49])
        by smtp.gmail.com with ESMTPSA id ox27-20020a170907101b00b0098d66ce416esm7556940ejb.142.2023.06.29.17.41.58
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jun 2023 17:41:59 -0700 (PDT)
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-51ddbf83ff9so4868a12.0
        for <devicetree@vger.kernel.org>; Thu, 29 Jun 2023 17:41:58 -0700 (PDT)
X-Received: by 2002:a50:baaf:0:b0:510:b2b7:8a78 with SMTP id
 x44-20020a50baaf000000b00510b2b78a78mr207972ede.5.1688085718420; Thu, 29 Jun
 2023 17:41:58 -0700 (PDT)
MIME-Version: 1.0
References: <20230627050148.2045691-1-yangcong5@huaqin.corp-partner.google.com>
 <CAD=FV=WR=fnhCxC37Eo3hinh2MV=eTNuXG+GrwgR6K_pV4Rbaw@mail.gmail.com>
In-Reply-To: <CAD=FV=WR=fnhCxC37Eo3hinh2MV=eTNuXG+GrwgR6K_pV4Rbaw@mail.gmail.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 29 Jun 2023 17:41:46 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UcFn7Wq_Ock6RCT0mPhgjpJwF7dJjcbwcoESW9nni62Q@mail.gmail.com>
Message-ID: <CAD=FV=UcFn7Wq_Ock6RCT0mPhgjpJwF7dJjcbwcoESW9nni62Q@mail.gmail.com>
Subject: Re: [v2] drm/panel: Fine tune Starry-ili9882t panel HFP and HBP
To:     Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Cc:     sam@ravnborg.org, neil.armstrong@linaro.org, daniel@ffwll.ch,
        airlied@gmail.com, hsinyi@google.com,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, Jun 27, 2023 at 2:17=E2=80=AFPM Doug Anderson <dianders@google.com>=
 wrote:
>
> Hi,
>
> On Mon, Jun 26, 2023 at 10:01=E2=80=AFPM Cong Yang
> <yangcong5@huaqin.corp-partner.google.com> wrote:
> >
> > Because the setting of hproch is too small, there will be warning in

I realized that hproch should be hporch. I fixed when applying.


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
>
> Reviewed-by: Douglas Anderson <dianders@chromium.org>

OK, landed. This is a weird time to land since this is a fix and the
fix has already made its way to Linus's tree but -rc1 isn't ready yet.
From reading the flowchart in the committer guidelines:

https://drm.pages.freedesktop.org/maintainer-tools/committer-drm-misc.html

...this means that it lands in drm-misc-next-fixes, so I've pushed it there=
.

59bba51ec2a5 drm/panel: Fine tune Starry-ili9882t panel HFP and HBP

-Doug
