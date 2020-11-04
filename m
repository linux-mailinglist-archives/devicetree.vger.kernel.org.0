Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B59B92A6D42
	for <lists+devicetree@lfdr.de>; Wed,  4 Nov 2020 19:56:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731902AbgKDS4z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Nov 2020 13:56:55 -0500
Received: from mail-ot1-f67.google.com ([209.85.210.67]:38465 "EHLO
        mail-ot1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728675AbgKDS4z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Nov 2020 13:56:55 -0500
Received: by mail-ot1-f67.google.com with SMTP id b2so20287233ots.5
        for <devicetree@vger.kernel.org>; Wed, 04 Nov 2020 10:56:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=VFWuzwJSbzZgP3QJ9+E0rWgVzccQnC1YvFD5b/UokjA=;
        b=J0XFuYr1GKVOd6VW/ukMJfC/oXr48hqigHE06W08cOi6riu7CFGPxGXrhyuUtvP3x4
         aOzeODYvGZN7U4/p52f/x+eUNHXtH0kvk35RE4nGa4BP4zOQjLJ6w2zh5vPHaWnC8OAG
         5WUF2hubffdK5sU/kpL9xxqqslCpBwBORIfRCBv4kcYTJWyEKj0+P0Vnor3vCPTyxfcV
         CSHC+avU5UYwpHyO42A/QoeDXRgMwA9m7b0jxd+PZiSOaWp7tMGMmUpT5GAIEv9C4N+O
         TSnX9M/ArNvSH732IQQdpNZUehmMRERIormmlc6aX/AjZ36oz8QivUdarYHWtn8HgPpD
         Rwng==
X-Gm-Message-State: AOAM531Xqx0bPYD4fOnD2Hy6pAW+koyQFvFrVLqmeAAVQ3GqiABKwe8y
        Zl4stFaGjxo5d/Q4KOe6IQ==
X-Google-Smtp-Source: ABdhPJws0729OuS+J73/HqFJI9wECuK1AqYDP1g32egUbxndlt30IEgUrdNjDMDR5RzcZc2UJAjHSQ==
X-Received: by 2002:a05:6830:2ef:: with SMTP id r15mr5683837ote.261.1604516212970;
        Wed, 04 Nov 2020 10:56:52 -0800 (PST)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id y22sm735450ooa.2.2020.11.04.10.56.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Nov 2020 10:56:52 -0800 (PST)
Received: (nullmailer pid 3947080 invoked by uid 1000);
        Wed, 04 Nov 2020 18:56:51 -0000
Date:   Wed, 4 Nov 2020 12:56:51 -0600
From:   Rob Herring <robh@kernel.org>
To:     Jiaxin Yu <jiaxin.yu@mediatek.com>
Cc:     p.zabel@pengutronix.de, linux-mediatek@lists.infradead.org,
        shane.chien@mediatek.com, kuninori.morimoto.gx@renesas.com,
        broonie@kernel.org, Trevor.Wu@mediatek.com,
        Bicycle.Tsai@mediatek.com, tiwai@suse.com, tzungbi@google.com,
        linux-arm-kernel@lists.infradead.org, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, matthias.bgg@gmail.com,
        robh+dt@kernel.org
Subject: Re: [PATCH v4 7/9] dt-bindings: mediatek: mt8192: add audio afe
 document
Message-ID: <20201104185651.GB3946406@bogus>
References: <1604390378-23993-1-git-send-email-jiaxin.yu@mediatek.com>
 <1604390378-23993-8-git-send-email-jiaxin.yu@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1604390378-23993-8-git-send-email-jiaxin.yu@mediatek.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 03 Nov 2020 15:59:36 +0800, Jiaxin Yu wrote:
> This patch adds mt8192 audio afe document.
> 
> Signed-off-by: Jiaxin Yu <jiaxin.yu@mediatek.com>
> ---
> This patch depends on following series that has not been accepted:
> https://patchwork.kernel.org/cover/11752231
> (dt-bindings/clock/mt8192-clk.h is included in it.)
> https://patchwork.kernel.org/patch/11755895
> (dt-bindings/power/mt8192-power.h is included in it.)
> https://lore.kernel.org/patchwork/patch/1321118
> (dt-bindings/reset-controller/mt8192-resets.h is included in it.)
> 
>  .../bindings/sound/mt8192-afe-pcm.yaml        | 100 ++++++++++++++++++
>  1 file changed, 100 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/sound/mt8192-afe-pcm.yaml
> 


My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:
./Documentation/devicetree/bindings/sound/mt8192-afe-pcm.yaml:10:4: [warning] wrong indentation: expected 2 but found 3 (indentation)
./Documentation/devicetree/bindings/sound/mt8192-afe-pcm.yaml:15:7: [warning] wrong indentation: expected 4 but found 6 (indentation)

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/sound/mt8192-afe-pcm.example.dts:19:18: fatal error: dt-bindings/clock/mt8192-clk.h: No such file or directory
   19 |         #include <dt-bindings/clock/mt8192-clk.h>
      |                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
compilation terminated.
make[1]: *** [scripts/Makefile.lib:342: Documentation/devicetree/bindings/sound/mt8192-afe-pcm.example.dt.yaml] Error 1
make[1]: *** Waiting for unfinished jobs....
make: *** [Makefile:1364: dt_binding_check] Error 2


See https://patchwork.ozlabs.org/patch/1392703

The base for the patch is generally the last rc1. Any dependencies
should be noted.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

