Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7C23D2ADB0E
	for <lists+devicetree@lfdr.de>; Tue, 10 Nov 2020 17:00:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730746AbgKJQAp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Nov 2020 11:00:45 -0500
Received: from mail.kernel.org ([198.145.29.99]:43872 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1729909AbgKJQAo (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 10 Nov 2020 11:00:44 -0500
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com [209.85.210.51])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id D3F48207BB
        for <devicetree@vger.kernel.org>; Tue, 10 Nov 2020 16:00:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1605024044;
        bh=RG/NgTihgLdA9a2pBThkDLJ4oix0s+fuIb+CdyGAfbg=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=Z8DHjwqkRfn0e7RHbqbZrapNBM8Xu7Kz79xi+VsLigXyvSukw22ekZ2KO3fGN3NvE
         g6ZV53DBp4+T7/h6rXBWlMUwITLGelAGeqg9NSEH3cSK9ju6VCFWKAm32QBLniP6KK
         8HBzANg2zqU1V7onj1TGmna3QxLwZywCR+uML48k=
Received: by mail-ot1-f51.google.com with SMTP id 30so7230572otx.9
        for <devicetree@vger.kernel.org>; Tue, 10 Nov 2020 08:00:43 -0800 (PST)
X-Gm-Message-State: AOAM530Xy4bYzEhIPI5dBstvXmDI85OOpwz0V3ZBhsi8fQYhsd4AGXMa
        0CH6jnVvD2AUOKHEsgPs5eQt3Acw9yQnJ8Dltw==
X-Google-Smtp-Source: ABdhPJzha/4fhemzFLUDyArlzFbgeQPDzeNA2v1DrUvZ4YO4PLgq/Upa3Zm81wPaXlzdUSWTJ33FQAKGy+fnze9zuNw=
X-Received: by 2002:a9d:5e14:: with SMTP id d20mr13486984oti.107.1605024043019;
 Tue, 10 Nov 2020 08:00:43 -0800 (PST)
MIME-Version: 1.0
References: <1604390378-23993-1-git-send-email-jiaxin.yu@mediatek.com>
 <1604390378-23993-8-git-send-email-jiaxin.yu@mediatek.com> <20201104185651.GB3946406@bogus>
In-Reply-To: <20201104185651.GB3946406@bogus>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Tue, 10 Nov 2020 10:00:31 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJAhWtK6G6vLt=H+PK3=JvDuY8JgP9+mdWuFbtFxONnCg@mail.gmail.com>
Message-ID: <CAL_JsqJAhWtK6G6vLt=H+PK3=JvDuY8JgP9+mdWuFbtFxONnCg@mail.gmail.com>
Subject: Re: [PATCH v4 7/9] dt-bindings: mediatek: mt8192: add audio afe document
To:     Jiaxin Yu <jiaxin.yu@mediatek.com>
Cc:     Philipp Zabel <p.zabel@pengutronix.de>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        Shane Chien <shane.chien@mediatek.com>,
        Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
        Mark Brown <broonie@kernel.org>, Trevor.Wu@mediatek.com,
        Bicycle.Tsai@mediatek.com, Takashi Iwai <tiwai@suse.com>,
        Tzung-Bi Shih <tzungbi@google.com>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Linux-ALSA <alsa-devel@alsa-project.org>,
        devicetree@vger.kernel.org,
        Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Nov 4, 2020 at 12:56 PM Rob Herring <robh@kernel.org> wrote:
>
> On Tue, 03 Nov 2020 15:59:36 +0800, Jiaxin Yu wrote:
> > This patch adds mt8192 audio afe document.
> >
> > Signed-off-by: Jiaxin Yu <jiaxin.yu@mediatek.com>
> > ---
> > This patch depends on following series that has not been accepted:
> > https://patchwork.kernel.org/cover/11752231
> > (dt-bindings/clock/mt8192-clk.h is included in it.)
> > https://patchwork.kernel.org/patch/11755895
> > (dt-bindings/power/mt8192-power.h is included in it.)
> > https://lore.kernel.org/patchwork/patch/1321118
> > (dt-bindings/reset-controller/mt8192-resets.h is included in it.)
> >
> >  .../bindings/sound/mt8192-afe-pcm.yaml        | 100 ++++++++++++++++++
> >  1 file changed, 100 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/sound/mt8192-afe-pcm.yaml
> >
>
>
> My bot found errors running 'make dt_binding_check' on your patch:
>
> yamllint warnings/errors:
> ./Documentation/devicetree/bindings/sound/mt8192-afe-pcm.yaml:10:4: [warning] wrong indentation: expected 2 but found 3 (indentation)
> ./Documentation/devicetree/bindings/sound/mt8192-afe-pcm.yaml:15:7: [warning] wrong indentation: expected 4 but found 6 (indentation)
>
> dtschema/dtc warnings/errors:
> Documentation/devicetree/bindings/sound/mt8192-afe-pcm.example.dts:19:18: fatal error: dt-bindings/clock/mt8192-clk.h: No such file or directory
>    19 |         #include <dt-bindings/clock/mt8192-clk.h>
>       |                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Now linux-next is broken because this dependency is not yet merged.
That needs to land soon or this be reverted.

Rob
