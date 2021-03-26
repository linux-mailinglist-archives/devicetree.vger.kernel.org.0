Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 582B734B102
	for <lists+devicetree@lfdr.de>; Fri, 26 Mar 2021 22:02:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230107AbhCZVCP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Mar 2021 17:02:15 -0400
Received: from mail.kernel.org ([198.145.29.99]:55186 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229957AbhCZVBt (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 26 Mar 2021 17:01:49 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id C5BBD61A24
        for <devicetree@vger.kernel.org>; Fri, 26 Mar 2021 21:01:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1616792509;
        bh=jlkeGi9j17trfQ6S6m1guFm6W28IQ6cuMyY9jRNcnjE=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=CAz8OKIf9UsIG/W3Ed/my6oJhgz76p3AmM7HesB0vpUmMSpu4iFfIa5MuWVZggTWB
         nPwHzQlu9ifrwr+cTGL6s/KwzrUkkBkiBoqTpibdcDmZUeIFYxqli+Hejh+SWgj5cq
         9QJDolE1Ekc5IBm0qGU3iCUxZPt6iJJdp+4x1VdqYFsKL3i6mf5o0lYw9zk0ippUI0
         P82AZOxQ4YE9Vhso6tcXZLjrdYMSuAkMRqkGbYlVayCDFLJ6dgYppYGRi5Dkrx0klR
         181ipADnB6TNzOrzSucVtNUrVcytq6ORORJEJRS9i/G27l27QF+kpLm+XKfVBFLU6P
         P6MlsVyy6KV7w==
Received: by mail-ej1-f48.google.com with SMTP id w3so10389183ejc.4
        for <devicetree@vger.kernel.org>; Fri, 26 Mar 2021 14:01:48 -0700 (PDT)
X-Gm-Message-State: AOAM530uGiJjLLt5nHkLc5HwPA5IKwoIUHifMcMgHZFs+ovwY6r7mFKs
        7mG2nIq4UaQOv5jRzlXV3ECDg12NJn5vr+/qBw==
X-Google-Smtp-Source: ABdhPJxe7HVKVAhRaeZmT0fSiqd+rP9S0dwUe9synkBMGqpzO4koufs4H1Nvzg/U7Pb2BUV7WfFne1leI7eV7LPz2Hc=
X-Received: by 2002:a17:906:d153:: with SMTP id br19mr16892035ejb.360.1616792507280;
 Fri, 26 Mar 2021 14:01:47 -0700 (PDT)
MIME-Version: 1.0
References: <20210218152837.1080819-1-maxime@cerno.tech> <20210223212624.GA89721@robh.at.kernel.org>
In-Reply-To: <20210223212624.GA89721@robh.at.kernel.org>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Fri, 26 Mar 2021 15:01:34 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKtGz3mtzc1KTASVtAcc7PSV7Z8Y-n8JjOzxua8EpQ5ZQ@mail.gmail.com>
Message-ID: <CAL_JsqKtGz3mtzc1KTASVtAcc7PSV7Z8Y-n8JjOzxua8EpQ5ZQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: bcm2711-hdmi: Fix broken schema
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Frank Rowand <frowand.list@gmail.com>, devicetree@vger.kernel.org,
        dri-devel <dri-devel@lists.freedesktop.org>,
        Stephen Rothwell <sfr@canb.auug.org.au>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Feb 23, 2021 at 2:26 PM Rob Herring <robh@kernel.org> wrote:
>
> On Thu, 18 Feb 2021 16:28:37 +0100, Maxime Ripard wrote:
> > For some reason, unevaluatedProperties doesn't work and
> > additionalProperties is required. Fix it by switching to
> > additionalProperties.
> >
> > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> > ---
> >  .../devicetree/bindings/display/brcm,bcm2711-hdmi.yaml          | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
>
> Applied, thanks!

Something weird is going on with this fix. linux-next doesn't end up
with the change even though 5.12-rc2 has it. I suspect it's because
the original commit is in 2 branches (drm-misc-next and
drm-misc-fixes), but the fix was applied by me. I'm not sure how
linux-next didn't have a manual merge for this.

Rob
