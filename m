Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7729C697CEA
	for <lists+devicetree@lfdr.de>; Wed, 15 Feb 2023 14:14:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234131AbjBONOc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Feb 2023 08:14:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58556 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234133AbjBONOb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Feb 2023 08:14:31 -0500
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 90F95241E8
        for <devicetree@vger.kernel.org>; Wed, 15 Feb 2023 05:14:27 -0800 (PST)
Received: by mail-ej1-x633.google.com with SMTP id hx15so48021460ejc.11
        for <devicetree@vger.kernel.org>; Wed, 15 Feb 2023 05:14:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=j7pGfC7xDTusd6z5pgWikV3xKmcksuQG65csYT81LO8=;
        b=HlgkGbMBMm1kpIRDLdzHFSLFy+y4fm6Lbw+ofyJ59QsiyeC1wj6KTzfdboAS6oGMMP
         K69RRWHkTnGaQG5p+4WO3gn4w3hhDsnzCfDFbRXBc2oK6k6Ar9B+TovSGRu99FgvRutm
         weDrvg9e80z+khKXBakdjGun+6TBzwjjyFvdErd6+oUOvZ2fOVycZtUdD2cRlYFyuNpm
         vxGGtoR+OaIofsO6g3zT9Pzv+N7naro9AfdtmOBd2Jm6VDk92kpqvpPjIPPkk7g0R7dy
         PTgUFzA60YGG/Ea9yzpPRSqc8NASlih2R6mBNl4a1uwX0YOwzwbOroq0GWHbSgk2uWEG
         S8Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j7pGfC7xDTusd6z5pgWikV3xKmcksuQG65csYT81LO8=;
        b=zZR85lGq3ZQlAyRTwSm9EcvqQSXHojz0618oEwkSO6VnMSvx4s2wyOUYhRSHBbxd1q
         x24W5xkGQKmRnBsLpMg+Ewq9OpCWmUeBDwHt5gylkDsTe7q5WTADXR/TJRGk4qtW85kv
         llXeaGXWMbOyxbnhBnuoIFgiVmIBvPwwmWxu6Oio7LkitOv5uHTbelQo2ymoX3CTjhkV
         JV/egjwfw1wXYgA7nXOpDApQ2snMtpZX0ahumfruy3lrbgrclZShtV1/y6E0zKKoeVr4
         JnMvCKtHzot3q+49tzDi7MeNLPQEZyeKRb2a3/JUYoVHSWavVUZpxE08+tWABuGof7xq
         xKfg==
X-Gm-Message-State: AO0yUKVKFQ7XtqdqV3b+JugjKdJeZfJUTNKac0KQOTKBUr72kNi+1QJS
        SRBPlZJLJZVgYqofbmpP3NYReyBunm8aVng4IkE0nQ==
X-Google-Smtp-Source: AK7set9CC24FinuDxUg1COSSewk41cLJdoKkapFGP11oCCpkm+dmPDtDds53b1ZuB9NwFxiqhywCafs5fa1jtix0epY=
X-Received: by 2002:a17:906:c04:b0:88d:ba79:4315 with SMTP id
 s4-20020a1709060c0400b0088dba794315mr1895992ejf.5.1676466866224; Wed, 15 Feb
 2023 05:14:26 -0800 (PST)
MIME-Version: 1.0
References: <20230209105628.50294-1-bchihi@baylibre.com> <20230209105628.50294-7-bchihi@baylibre.com>
 <CAGuA+oqOgprdu0dVcmB=qJd5HJjada3d8ZazMpoG-SBPizzuPQ@mail.gmail.com> <80c60f09-56eb-cb84-43f0-7b055ea4b32c@collabora.com>
In-Reply-To: <80c60f09-56eb-cb84-43f0-7b055ea4b32c@collabora.com>
From:   Balsam CHIHI <bchihi@baylibre.com>
Date:   Wed, 15 Feb 2023 14:13:50 +0100
Message-ID: <CAGuA+oqJVTXE5YHm6rSv4pPWsGxR8nZD-T5EM7LS9gPtdcu4HA@mail.gmail.com>
Subject: Re: [PATCH v14 6/6] arm64: dts: mediatek: mt8195: Add temperature
 mitigation threshold
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     daniel.lezcano@linaro.org, rafael@kernel.org, amitk@kernel.org,
        rui.zhang@intel.com, matthias.bgg@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, rdunlap@infradead.org,
        ye.xingchen@zte.com.cn, p.zabel@pengutronix.de,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        khilman@baylibre.com, james.lo@mediatek.com,
        rex-bc.chen@mediatek.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Angelo,

On Wed, Feb 15, 2023 at 1:50 PM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Il 14/02/23 15:43, Balsam CHIHI ha scritto:
> > Hi Matthias, Angelo,
> >
> > Would you please confirm if this patch can be applied?
> > and, if it is the case, to which tree it will be applied?
> >
> > Best regards,
> > Balsam
>
> I think it's fine to apply 5/6 and 6/6, as you're adding pre-Tjunction
> max temperature - this is not board specific, but rather SoC-specific.
> In reality it's practically the same for most SoCs, even.
>
> Each board will define extensions (that are thermal envelope dependant)
> to these "please-dont-burn-my-device" initial thresholds, but that's a
> story for another day, and for other people anyway (including me).
>
> Matthias, over to you!

Indeed.
Thank you for your feedback!

Best regards,
Balsam
