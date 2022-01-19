Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 089B3493C31
	for <lists+devicetree@lfdr.de>; Wed, 19 Jan 2022 15:49:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241986AbiASOtE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Jan 2022 09:49:04 -0500
Received: from mail-ot1-f45.google.com ([209.85.210.45]:42592 "EHLO
        mail-ot1-f45.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241974AbiASOtD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Jan 2022 09:49:03 -0500
Received: by mail-ot1-f45.google.com with SMTP id z25-20020a0568301db900b005946f536d85so3375678oti.9
        for <devicetree@vger.kernel.org>; Wed, 19 Jan 2022 06:49:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=wl33TnrFb2S67WtYWs/c9mcXDOGMt45oDkKAFp2eic4=;
        b=L5jdC5JTWhbvXY7lYif6DaOlT2dkp2tfOTSefXEQDQJT0elXoV9DnxhvTVFxqS/PYc
         OJ/1gUfBpPw4I4Hn3sT9yLvM7qYQwOFj0bfymLMba9tjuhsWN2nFC8I/tcldHZVcXqOv
         FqqIn2Z4FDjB+aPwcw6cvtOUrz8pyaRaVs4gkLoEwMDh+dOEwqUrUOTnhzlDzxuM7/Ku
         EVTjdlTj5TW+EmAypa12V67RzfVmzDhJ9KVvKlbO6gQAVoExZG1PnmbIF5Nag0qcgTey
         RNhDmzgDCMqairdwAa9KamwxyhK55ZTi2pBpPD+NS4mPuenhHT6cZO09PMHQmciDcDQ9
         O40g==
X-Gm-Message-State: AOAM530NPhJXsn1cRw+YCt0CtL8IbAUnYtvB3tm9AF+k8wKfdFy6Kb9m
        5K7UqfDDRYWhFJYpJoz37OcoDftqTw==
X-Google-Smtp-Source: ABdhPJxsub7I4HoSlurSuoAyLjiD60nKVo1GgggFtWXQbDPFw6GSBxv3YRogfSOpS/olxjL12Vp2Kg==
X-Received: by 2002:a05:6830:2095:: with SMTP id y21mr22043895otq.368.1642603743284;
        Wed, 19 Jan 2022 06:49:03 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id w22sm4521013oiv.22.2022.01.19.06.49.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Jan 2022 06:49:02 -0800 (PST)
Received: (nullmailer pid 3540815 invoked by uid 1000);
        Wed, 19 Jan 2022 14:49:01 -0000
From:   Rob Herring <robh@kernel.org>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        patchwork-lst@pengutronix.de, linux-arm-kernel@lists.infradead.org,
        NXP Linux Team <linux-imx@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
In-Reply-To: <20220119134027.2931945-6-l.stach@pengutronix.de>
References: <20220119134027.2931945-1-l.stach@pengutronix.de> <20220119134027.2931945-6-l.stach@pengutronix.de>
Subject: Re: [PATCH 5/9] dt-bindings: soc: add binding for i.MX8MP HSIO blk-ctrl
Date:   Wed, 19 Jan 2022 08:49:01 -0600
Message-Id: <1642603741.780177.3540814.nullmailer@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 19 Jan 2022 14:40:23 +0100, Lucas Stach wrote:
> This adds the binding for the HSIO blk-ctrl on the i.MX8MP SoC.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  .../soc/imx/fsl,imx8mp-hsio-blk-ctrl.yaml     | 78 +++++++++++++++++++
>  1 file changed, 78 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-hsio-blk-ctrl.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
./Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-hsio-blk-ctrl.yaml: $id: relative path/filename doesn't match actual path or filename
	expected: http://devicetree.org/schemas/soc/imx/fsl,imx8mp-hsio-blk-ctrl.yaml#
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-disp-blk-ctrl.yaml: duplicate '$id' value 'http://devicetree.org/schemas/soc/imx/fsl,imx8mm-disp-blk-ctrl.yaml#'

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1581785

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

