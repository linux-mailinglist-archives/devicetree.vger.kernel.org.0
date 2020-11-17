Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D491F2B717A
	for <lists+devicetree@lfdr.de>; Tue, 17 Nov 2020 23:23:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727202AbgKQWXA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Nov 2020 17:23:00 -0500
Received: from mail.kernel.org ([198.145.29.99]:37424 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727838AbgKQWW7 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 17 Nov 2020 17:22:59 -0500
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 27BF22463B
        for <devicetree@vger.kernel.org>; Tue, 17 Nov 2020 22:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1605651779;
        bh=UOMmLEsbOiB9eY9rrTRFpnkk6CXuLWUYV3TnXp7Jrhs=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=ac8+TzZHS49a4w2879awQLApYHZ0wDkB6ZZ3EdRqI7zI6sACM0nZZ5Per3yITTPWK
         oCJtdNRP4umIlSO7Xga7YcRShIVfx1N0P+lXt2hJUcFLJF+GSn+oNcVuo0vcCeCKPh
         qJyYvDIDdgnzNL7HTcfFkzFZZ79Fv/3gG5DNRRGQ=
Received: by mail-ot1-f49.google.com with SMTP id z16so21072430otq.6
        for <devicetree@vger.kernel.org>; Tue, 17 Nov 2020 14:22:59 -0800 (PST)
X-Gm-Message-State: AOAM5338PZRrobKdozTyGWKc8T9Cb9l9IaO2H4lOjlMQHAhHG3p82O9G
        GcF7kA800WlIh7z84dNccLo465ssTLutduHREA==
X-Google-Smtp-Source: ABdhPJzB5Uk5jzkKnHFM23+73fbPZc7IGOmZol53WV5+VgHtvWFit7SdJOzZXZVIjsZRoFVPof12fv3HA0sGz0MzDq8=
X-Received: by 2002:a9d:5e14:: with SMTP id d20mr4335401oti.107.1605651778354;
 Tue, 17 Nov 2020 14:22:58 -0800 (PST)
MIME-Version: 1.0
References: <20201117013349.2458416-1-robh@kernel.org> <20201117013349.2458416-3-robh@kernel.org>
In-Reply-To: <20201117013349.2458416-3-robh@kernel.org>
From:   Rob Herring <robh@kernel.org>
Date:   Tue, 17 Nov 2020 16:22:47 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+eOfhDzPV8A_hhGpkY3zpiVAuZ=Y353Ltn61ecCV2Dqg@mail.gmail.com>
Message-ID: <CAL_Jsq+eOfhDzPV8A_hhGpkY3zpiVAuZ=Y353Ltn61ecCV2Dqg@mail.gmail.com>
Subject: Re: [PATCH 2/4] ASoC: dt-bindings: Use OF graph schema
To:     Mark Brown <broonie@kernel.org>
Cc:     devicetree@vger.kernel.org,
        Linux-ALSA <alsa-devel@alsa-project.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
        Lubomir Rintel <lkundrak@v3.sk>,
        Sameer Pujar <spujar@nvidia.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Nov 16, 2020 at 7:33 PM Rob Herring <robh@kernel.org> wrote:
>
> Now that we have an OF graph schema, let's use it for the
> audio-graph-port schema.
>
> There's no need to define 'ports' nodes as specific bindings must define
> that and port numbering of the child 'port' nodes.
>
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
> Note that graph.yaml is part of dtschema now intead of the kernel tree.
> ---
>  .../bindings/sound/audio-graph-port.yaml         | 16 ++--------------
>  1 file changed, 2 insertions(+), 14 deletions(-)

Hold off on applying this. I think graph.yaml is going to need some
more refinement.

The rest should be able to be applied without this patch.

Rob
