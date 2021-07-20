Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A6DAA3CFA30
	for <lists+devicetree@lfdr.de>; Tue, 20 Jul 2021 15:12:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234075AbhGTMbx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Jul 2021 08:31:53 -0400
Received: from mail-il1-f175.google.com ([209.85.166.175]:42966 "EHLO
        mail-il1-f175.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235524AbhGTMb3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Jul 2021 08:31:29 -0400
Received: by mail-il1-f175.google.com with SMTP id m20so445406ili.9
        for <devicetree@vger.kernel.org>; Tue, 20 Jul 2021 06:12:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=MrD9zPiZTZvwVFMJ0sm25SmAJuUN1FGIWLE0xooWCJU=;
        b=lrc6G55oevlpJNnDgAYW1iWglKE++l/RTVjCGnH2ZYhhsrHUxK8GR8hGPAZaKk+cDj
         EvC4PuY+fNKzqp7Qyr11sIuVuqtjWUpk9o14/cPuHMAwPX1fBIaFQI/3DLpNiOderTnt
         9eDPXnxkLhJSjK/JbJ4Hpy5rgfakgWPoja+2GGuHoRFrRrElsGvhFY+d3Bm7ZG6jvTKs
         tEhNwtMDAEYH5fHbTGIaUs+KKOddPhuPehdkTQqGPLEw1Q4exrVIFRzbqDNG1yErOpgg
         B03eQ9mDym58WFeOy53DToPeH2hc2HqZBjIFA4eKXSZkMmk4wuFFISschvN30hoVcOIH
         a7ZQ==
X-Gm-Message-State: AOAM532lFCtT3ba4XZWqbcoQjHtZm4sFeOLaGkSdIWool/XLyAdXOPIn
        rwFCkU8N5/MSRsTdaPaQLQ==
X-Google-Smtp-Source: ABdhPJxDm0VwI3x/qnyhQWulPyMMfC6oajosDUc1UI/060M93rUk1p7P2rq5nhNdKtKy8dOI5PsP2A==
X-Received: by 2002:a92:c7a2:: with SMTP id f2mr19724855ilk.3.1626786723965;
        Tue, 20 Jul 2021 06:12:03 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id x13sm11514009ilo.11.2021.07.20.06.12.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jul 2021 06:12:03 -0700 (PDT)
Received: (nullmailer pid 4121604 invoked by uid 1000);
        Tue, 20 Jul 2021 13:11:58 -0000
From:   Rob Herring <robh@kernel.org>
To:     Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc:     Mark Brown <broonie@kernel.org>,
        Linux-ALSA <alsa-devel@alsa-project.org>,
        devicetree@vger.kernel.org
In-Reply-To: <87wnplvk2a.wl-kuninori.morimoto.gx@renesas.com>
References: <87a6mhwyqn.wl-kuninori.morimoto.gx@renesas.com> <87wnplvk2a.wl-kuninori.morimoto.gx@renesas.com>
Subject: Re: [PATCH v2 09/14] ASoC: audio-graph-card2: add Yaml Document
Date:   Tue, 20 Jul 2021 07:11:58 -0600
Message-Id: <1626786718.731708.4121603.nullmailer@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 20 Jul 2021 10:41:01 +0900, Kuninori Morimoto wrote:
> 
> From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> 
> This patch adds Audio Graph Card2 Yaml bindings.
> It is similar to Audio Graph Card, but different.
> 
> 	- audio-graph-card  used "dais"  to indicate DAI-links,
> 	  audio-graph-card2 uses "links" to it.
> 
> 	- audio-graph-card  used "phandle" to indicate bitclock/frame-master,
> 	  audio-graph-card2 uses flag to it.
> 
> 	- audio-graph-card  used "format" to indicate DAI format,
> 	  audio-graph-card2 assumes CPU/Codec drivers have .get_fmt support.
> 
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> ---
>  .../sound/audio-graph-card2-items.yaml        | 80 +++++++++++++++++++
>  .../bindings/sound/audio-graph-card2.yaml     | 51 ++++++++++++
>  2 files changed, 131 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/sound/audio-graph-card2-items.yaml
>  create mode 100644 Documentation/devicetree/bindings/sound/audio-graph-card2.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/sound/audio-graph-card2-items.yaml: patternProperties:^ports(@[0-1])?$:properties: 'port(@[0-9a-f]+)?' does not match '^[#$a-zA-Z][a-zA-Z0-9,+\\-._@]{0,63}$'
	from schema $id: http://devicetree.org/meta-schemas/keywords.yaml#
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/sound/audio-graph-card2-items.yaml: ignoring, error in schema: patternProperties: ^ports(@[0-1])?$: properties
warning: no schema found in file: ./Documentation/devicetree/bindings/sound/audio-graph-card2-items.yaml
Documentation/devicetree/bindings/sound/audio-graph-card2.example.dt.yaml:0:0: /example-0/cpu: failed to match any schema with compatible: ['cpu-driver']
Documentation/devicetree/bindings/sound/audio-graph-card2.example.dt.yaml:0:0: /example-0/codec: failed to match any schema with compatible: ['codec-driver']
Documentation/devicetree/bindings/sound/audio-graph-card2-items.example.dt.yaml:0:0: /example-0/mix: failed to match any schema with compatible: ['audio-graph-card2-dsp']
Documentation/devicetree/bindings/sound/audio-graph-card2-items.example.dt.yaml:0:0: /example-0/multi: failed to match any schema with compatible: ['audio-graph-card2-multi']
Documentation/devicetree/bindings/sound/audio-graph-card2-items.example.dt.yaml:0:0: /example-0/codec2codec: failed to match any schema with compatible: ['audio-graph-card2-codec2codec']
\ndoc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1507357

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

