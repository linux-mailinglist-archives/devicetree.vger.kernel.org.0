Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DEF0866E497
	for <lists+devicetree@lfdr.de>; Tue, 17 Jan 2023 18:14:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234511AbjAQRO1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Jan 2023 12:14:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44356 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234766AbjAQROD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Jan 2023 12:14:03 -0500
Received: from mail-oa1-f54.google.com (mail-oa1-f54.google.com [209.85.160.54])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E55D74B75C
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 09:12:22 -0800 (PST)
Received: by mail-oa1-f54.google.com with SMTP id 586e51a60fabf-15eeec85280so11520309fac.11
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 09:12:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GXlBNRvFyU5MgDW75FzyE0UnWFcuHtjWm9nMO/g5I80=;
        b=nWlvyi9j1WsyZ6UHAqLyVW7IjWyAPgaXF8FL4KBoMNqtJYyuHhLOUIrYb4ByI3xIzr
         d9vxkM18sZPBuIcyFY8v8qpVxpSVf8uaWvwov+QgbQCxWB0Ck7QaTp/VPpzLpMpOh5n6
         qxBIG9YDG3TMJspAJ11Qigz4D8YWfpFjRH7YLRpgve5lS6vKwMu/dcYQGuGFTZb5Pz+b
         /qV+aP54BH1PLhR65pMb4VxlSguHJN7EAI+spywqn8h9By9KvPT302LDgye+uPB56RVi
         cvLD+MKqKyapIZR1r52i3bO/u4xp45zWWbiVHn9lE7UklPjuvv2sgsBVPeblywDMaw3b
         5qtw==
X-Gm-Message-State: AFqh2kony/Bs3lA3nNBf6DgA2r4mSQwpJRFHZYLZ6l0XBin37MOCYY7C
        EoD5yPBwLlvgY14MBedoAew1Y37F8A==
X-Google-Smtp-Source: AMrXdXu8V+uqDI4MWC4oLGDZEHxnrDrioeXqBqtb0L0hElhLpi2SY88Kcro4xEnIAWEr2y9E0lt4Nw==
X-Received: by 2002:a05:6871:b324:b0:15f:931:5aa9 with SMTP id bd36-20020a056871b32400b0015f09315aa9mr1652176oac.59.1673975542064;
        Tue, 17 Jan 2023 09:12:22 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id u42-20020a056870f2aa00b00140d421445bsm16630106oap.11.2023.01.17.09.12.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 09:12:21 -0800 (PST)
Received: (nullmailer pid 3254601 invoked by uid 1000);
        Tue, 17 Jan 2023 17:12:21 -0000
Date:   Tue, 17 Jan 2023 11:12:21 -0600
From:   Rob Herring <robh@kernel.org>
To:     Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc:     devicetree@vger.kernel.org,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Mark Brown <broonie@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Linux-ALSA <alsa-devel@alsa-project.org>
Subject: Re: [PATCH v2 06/10] ASoC: dt-bindings: ti,pcm3168a: Convert to
 json-schema
Message-ID: <167397554057.3254544.17294836275411987169.robh@kernel.org>
References: <87358hj2ub.wl-kuninori.morimoto.gx@renesas.com>
 <87tu0xho3d.wl-kuninori.morimoto.gx@renesas.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87tu0xho3d.wl-kuninori.morimoto.gx@renesas.com>
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Wed, 11 Jan 2023 01:11:35 +0000, Kuninori Morimoto wrote:
> From: Geert Uytterhoeven <geert+renesas@glider.be>
> 
> Convert the Texas Instruments PCM3168A Audio Codec Device Tree binding
> documentation to json-schema.
> 
> Add missing properties.
> Drop unneeded pinctrl properties from example.
> 
> Link: https://lore.kernel.org/r/cover.1669980383.git.geert+renesas@glider.be
> Link: https://lore.kernel.org/r/87mt7qpylw.wl-kuninori.morimoto.gx@renesas.com
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> ---
>  .../devicetree/bindings/sound/ti,pcm3168a.txt |  56 ---------
>  .../bindings/sound/ti,pcm3168a.yaml           | 107 ++++++++++++++++++
>  2 files changed, 107 insertions(+), 56 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/sound/ti,pcm3168a.txt
>  create mode 100644 Documentation/devicetree/bindings/sound/ti,pcm3168a.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
