Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DD37E427161
	for <lists+devicetree@lfdr.de>; Fri,  8 Oct 2021 21:23:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240480AbhJHTZD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Oct 2021 15:25:03 -0400
Received: from mail.kernel.org ([198.145.29.99]:59126 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231316AbhJHTZA (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 8 Oct 2021 15:25:00 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 117736120C
        for <devicetree@vger.kernel.org>; Fri,  8 Oct 2021 19:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1633720985;
        bh=5SF9dAQW84jt+sFJIXPvCVpma/lc66zeyItpvZ+6RXg=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=duxnZbDDhRFt2DYY2k+KtpZd341YTFw2E++JmibZxOePdA1uYk7PYUgqqEK7Bxp7g
         48bWedzW1aBv1rDXSdb36hBfz5asvI4lE9nf3AfpPktrMCJeshg6YWA1VQ7hjkLuId
         1XNHLYTXeWj620cGNH6bEJ2Lh7pALoP/CNrbLICZgvXMEPIyD+Mpitt/6/VfIu3xb8
         9kO46AT8ATy71GkJyPiMDTyEBN7BHa6KqeKKh9P58DXcEv6kQ6rQ+HgytPUbNV7wV/
         oAhYrCNta1b+2SAaGKLnpzJXsRUGOgbCytJXVTSIhlVrZOGZLMjOkT2CFbBoBf/tlW
         63MiAgjRue8Ng==
Received: by mail-ed1-f43.google.com with SMTP id r18so40190172edv.12
        for <devicetree@vger.kernel.org>; Fri, 08 Oct 2021 12:23:04 -0700 (PDT)
X-Gm-Message-State: AOAM531/ARq6s8rBRp/snQhjlx4iB9buGXjoMWvrRCbFO2Rt/HnXYUXE
        3MtN9U85X7mzEMqpJrwg9zNKO5PEh9yrMJuyFQ==
X-Google-Smtp-Source: ABdhPJxr7vbwJkVU68Z/WBrwgn3iBRzg21K4k9yDQrYFJDFFABiWOPU2nd41CzNLw9EUzaKIPjJsRp/+6QDJwN43BCk=
X-Received: by 2002:a17:906:9399:: with SMTP id l25mr6294212ejx.363.1633720983371;
 Fri, 08 Oct 2021 12:23:03 -0700 (PDT)
MIME-Version: 1.0
References: <20211006113950.10782-1-srinivas.kandagatla@linaro.org>
 <20211006113950.10782-9-srinivas.kandagatla@linaro.org> <1633547293.527218.2218062.nullmailer@robh.at.kernel.org>
 <4e70e1e3-162e-13c0-5cbd-0135d2585e96@linaro.org>
In-Reply-To: <4e70e1e3-162e-13c0-5cbd-0135d2585e96@linaro.org>
From:   Rob Herring <robh@kernel.org>
Date:   Fri, 8 Oct 2021 14:22:51 -0500
X-Gmail-Original-Message-ID: <CAL_JsqK6ankPjqXO9jghPQ7y7FHFM-8K-pyPHeE8oNa98eeauQ@mail.gmail.com>
Message-ID: <CAL_JsqK6ankPjqXO9jghPQ7y7FHFM-8K-pyPHeE8oNa98eeauQ@mail.gmail.com>
Subject: Re: [PATCH v9 08/17] ASoC: dt-bindings: add q6apm digital audio
 stream bindings
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc:     Liam Girdwood <lgirdwood@gmail.com>, Takashi Iwai <tiwai@suse.de>,
        devicetree@vger.kernel.org, Mark Brown <broonie@kernel.org>,
        Patrick Lai <plai@codeaurora.org>,
        Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
        Linux-ALSA <alsa-devel@alsa-project.org>,
        Jaroslav Kysela <perex@perex.cz>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Banajit Goswami <bgoswami@codeaurora.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Oct 7, 2021 at 3:23 AM Srinivas Kandagatla
<srinivas.kandagatla@linaro.org> wrote:
>
>
>
> On 06/10/2021 20:08, Rob Herring wrote:
> > On Wed, 06 Oct 2021 12:39:41 +0100, Srinivas Kandagatla wrote:
> >> On AudioReach audio Framework, Audio Streams (PCM/Compressed) are managed by
> >> Q6APM(Audio Process Manager) service. This patch adds bindings for this DAIs
> >> exposed by the DSP.
> >>
> >> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> >> Reviewed-by: Rob Herring <robh@kernel.org>
> >> ---
> >>   .../bindings/sound/qcom,q6apm-dai.yaml        | 53 +++++++++++++++++++
> >>   1 file changed, 53 insertions(+)
> >>   create mode 100644 Documentation/devicetree/bindings/sound/qcom,q6apm-dai.yaml
> >>
> >
> > My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> > on your patch (DT_CHECKER_FLAGS is new in v5.13):
> >
> > yamllint warnings/errors:
> >
> > dtschema/dtc warnings/errors:
> > Documentation/devicetree/bindings/sound/qcom,q6apm-dai.example.dts:19:18: fatal error: dt-bindings/soc/qcom,gpr.h: No such file or directory
> >     19 |         #include <dt-bindings/soc/qcom,gpr.h>
>
> This is because QCOM SoC relevant non-audio patches in this series have
> been merged into the Qualcomm drivers-for-5.16 tree, as this series
> depends those patches an immutable tag is available at:
> https://git.kernel.org/pub/scm/linux/kernel/git/qcom/linux.git
> tags/20210927135559.738-6-srinivas.kandagatla@linaro.org
>
> which is mentioned in cover-letter.

My bot doesn't know how to read cover letters. I need a clue in the
patch or you get this email to be sure the dependency is known.

Rob
