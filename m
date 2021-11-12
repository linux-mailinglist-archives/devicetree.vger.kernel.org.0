Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B295E44E9B6
	for <lists+devicetree@lfdr.de>; Fri, 12 Nov 2021 16:11:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231877AbhKLPNw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 Nov 2021 10:13:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51228 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229843AbhKLPNw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 Nov 2021 10:13:52 -0500
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 44383C061203
        for <devicetree@vger.kernel.org>; Fri, 12 Nov 2021 07:11:01 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id b184-20020a1c1bc1000000b0033140bf8dd5so6958201wmb.5
        for <devicetree@vger.kernel.org>; Fri, 12 Nov 2021 07:11:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=aq9hqCG8idgTpRhc5meZTF7+FM8GBSfO5tUh1K9J7b0=;
        b=WO+i2o7Jziiy0BtVpnE7pqYL0Q5027w0/uMoDNHjVvdpUzTiDfAeBccQWZBmQR25Pa
         ZNz2t3TB/E7fImoXUUvEkJLZppUTRR5+3QnuMOTlsqEpKPjrPYZN3DX0SL1tET3NRjSl
         +C7QsjzBHzc3attCinLB1ljbbfORuLK8C5TQychZ5JkQchTo1UpfYV0+XN34FYOf0XI+
         7G7sWuQOV2KaMnQgEO+uEZxxGgk8UBpYTTYVjE9ETukGEb6YbDPuqPmglR6Vyw3+lSOr
         RcWU/6YLxEzFRter4kowEpfyc/Xz8bQuKkC9b1/tuLAUgdFBzU9ko7gXv31kG5nbCuLc
         Fi6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=aq9hqCG8idgTpRhc5meZTF7+FM8GBSfO5tUh1K9J7b0=;
        b=uccwSnw6e/sdI8/c66r88rKjebtVUZqr7fle0Ys65uzyU4aGlGs23S8dmW15QckL+u
         DjPfJPiH8WyNQ+M1a+ve69EwsOsErGgWd0dRKz2d/SP/abmVhJSrt+1oF8qTBp7TSx3a
         nfHIY2O6ejtLf64Rhx98XG+SD2Q4+eqyUFR/b2lQsqcy57KjW8o8LVOAzlKljI6WzwAB
         gedlHDRxOF7pFpsKl9rMUgA3EiI4cNWyTcaN2vJqcVfCQxAXmVfaWyFEnuNif5SezKfT
         /SrzNf1ecfHQecncpaV7X9mZdlDgsPDkArm0MrOd7WYpNTacgtxupkC8h+nh+QUqABbW
         sMAA==
X-Gm-Message-State: AOAM533oNwkut1dUOCwljY7gAAYFSPmegNVS8+3SMb+Nd7aDk0fKOcp8
        R4DQ3fO0oUii8vGBthrW41RsHQ==
X-Google-Smtp-Source: ABdhPJwR5hWfk95kDgYfAnrK9AqbZuzMKtLs6G7ePVwgAHK72HqZr2HBm0By7v4Ftl1w7VgCXoj3UA==
X-Received: by 2002:a05:600c:3b1b:: with SMTP id m27mr18462847wms.125.1636729859565;
        Fri, 12 Nov 2021 07:10:59 -0800 (PST)
Received: from maple.lan (cpc141216-aztw34-2-0-cust174.18-1.cable.virginm.net. [80.7.220.175])
        by smtp.gmail.com with ESMTPSA id b197sm5822645wmb.24.2021.11.12.07.10.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Nov 2021 07:10:58 -0800 (PST)
Date:   Fri, 12 Nov 2021 15:10:57 +0000
From:   Daniel Thompson <daniel.thompson@linaro.org>
To:     Marijn Suijten <marijn.suijten@somainline.org>,
        phone-devel@vger.kernel.org, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Lee Jones <lee.jones@linaro.org>,
        Jingoo Han <jingoohan1@gmail.com>,
        ~postmarketos/upstreaming@lists.sr.ht,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Martin Botka <martin.botka@somainline.org>,
        Jami Kettunen <jami.kettunen@somainline.org>,
        Pavel Dubrova <pashadubrova@gmail.com>,
        Kiran Gunda <kgunda@codeaurora.org>,
        Bryan Wu <cooloney@gmail.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, linux-fbdev@vger.kernel.org
Subject: Re: [RESEND PATCH v2 05/13] backlight: qcom-wled: Override default
 length with qcom,enabled-strings
Message-ID: <20211112151057.h474227aln2huf6l@maple.lan>
References: <20211112002706.453289-1-marijn.suijten@somainline.org>
 <20211112002706.453289-6-marijn.suijten@somainline.org>
 <20211112121238.kb3kkt6xzv5so26j@maple.lan>
 <20211112124522.g7e3m7l2oxxxobof@SoMainline.org>
 <20211112132336.z2x4bzrfqr4u3jol@maple.lan>
 <20211112141917.akufukmeyz5enjg3@SoMainline.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211112141917.akufukmeyz5enjg3@SoMainline.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Nov 12, 2021 at 03:19:17PM +0100, Marijn Suijten wrote:
> On 2021-11-12 13:23:36, Daniel Thompson wrote:
> > On Fri, Nov 12, 2021 at 01:45:22PM +0100, Marijn Suijten wrote:
> > > On 2021-11-12 12:12:38, Daniel Thompson wrote:
> > > > On Fri, Nov 12, 2021 at 01:26:58AM +0100, Marijn Suijten wrote:
> > > > > The length of qcom,enabled-strings as property array is enough to
> > > > > determine the number of strings to be enabled, without needing to set
> > > > > qcom,num-strings to override the default number of strings when less
> > > > > than the default (which is also the maxium) is provided in DT.
> > > > > 
> > > > > Fixes: 775d2ffb4af6 ("backlight: qcom-wled: Restructure the driver for WLED3")
> > > > > Signed-off-by: Marijn Suijten <marijn.suijten@somainline.org>
> > > > > Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>
> > > > > ---
> > > > >  drivers/video/backlight/qcom-wled.c | 2 ++
> > > > >  1 file changed, 2 insertions(+)
> > > > > 
> > > > > diff --git a/drivers/video/backlight/qcom-wled.c b/drivers/video/backlight/qcom-wled.c
> > > > > index c5232478a343..9bfbf601762a 100644
> > > > > --- a/drivers/video/backlight/qcom-wled.c
> > > > > +++ b/drivers/video/backlight/qcom-wled.c
> > > > > @@ -1518,6 +1518,8 @@ static int wled_configure(struct wled *wled)
> > > > >  				return -EINVAL;
> > > > >  			}
> > > > >  		}
> > > > > +
> > > > > +		cfg->num_strings = string_len;
> > > > 
> > > > I still don't really understand why this wants to be a separate patch.
> > > 
> > > I'm viewing this as a separate issue, and this makes it easier to
> > > document the change in a loose commit.
> > > 
> > > > The warning text emitted by the previous patch (whatever text we agree
> > > > on) will be nonsense until this patch is applied.
> > > > 
> > > > If this patch cannot appear before the warning is introduces then there
> > > > is no correct order for patches 4 and 5 (which implies they should be the
> > > > same patch).
> > > 
> > > Agreed, this is a weird way of doing things in v2 - the error message is
> > > printed yet the length of qcom,enabled-strings is always ignored before
> > > this patch.
> > > 
> > > If we were to reorder patch 5 before patch 4 that should also
> > > temporarily move `cfg->num_strings = cfg->num_strings + 1;` right below
> > > this `if` so that `qcom,num-strings` remains the definitive way to
> > > set/override length.  That's doable, and makes it easier to read patch 4
> > > as that bit of code will be replaced by of_property_read_u32 on that
> > > exact line.  Let me know which method you prefer.
> > 
> > Personally I would just squash them together. There are no redundant
> > values in the DT that could be fixed until we can use the string_len
> > to set num_strings.
> 
> Reordering this patch before patch 4 in the way described above should
> allow just that, except that no warnings will be given for ambiguity
> until patch 4 is applied after that - which is weird given that that
> patch only intends the off-by-one error.  Perhaps we should keep the
> order as it is, but add the ambiguity warning in this patch instead.

That works for me. Sounds good.


Daniel.
