Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0FEEF586E92
	for <lists+devicetree@lfdr.de>; Mon,  1 Aug 2022 18:32:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231653AbiHAQcm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Aug 2022 12:32:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53842 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231439AbiHAQcl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 Aug 2022 12:32:41 -0400
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com [209.85.166.53])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A5BBA1929A
        for <devicetree@vger.kernel.org>; Mon,  1 Aug 2022 09:32:40 -0700 (PDT)
Received: by mail-io1-f53.google.com with SMTP id l24so8761930ion.13
        for <devicetree@vger.kernel.org>; Mon, 01 Aug 2022 09:32:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=P77IYnhQDubE2Ls3jmoSKfwkpvjmalaSlppSMIKTGTM=;
        b=cZcLthWBV9b7xLPvdq6XhGIcILns+lBbqSI9GTuTYNLoeQDbfLjS6f76GIqEhocYb7
         /hD3Cp8sP0Aoohc5+LwnXw/chuISveqj7/gqJ9QOHKZA0zGk8e+vkqEA1SnTp5zCgz6w
         6StT1t0uD+YfPNoJfAes7ZOh/A611pkgjV3uyRiDnAS4HvdMURkMp9fHKnTx4irhHblp
         mMZmKeSAIiHlHw7HorolJrValuZSRsYshbzL9DzgqGtX7G3SPW0l2mFmGhX2sqxMW2SC
         L9EKQhjj1PEhEu5ZNb4KEiirJpBW7j7JxMAinTw700ZR+Z4vR20zTUYoMhiOCbzjX5ld
         KjyA==
X-Gm-Message-State: AJIora8mSqoJKj6QIfwmvhd1CxDEffXRhyMOlWr5+SKBNmvOCUMsj1Kl
        qSD9UPF7cYIUwVAvj3BGUG0X0LZLcw==
X-Google-Smtp-Source: AGRyM1sGSDz3McDNYyjHmCnx+CCO6rr6pBD+ZJoy5Rch8LwJhbnibMSs+18u9nKe27M/R15G0H8FIg==
X-Received: by 2002:a05:6638:2103:b0:341:4a1b:c551 with SMTP id n3-20020a056638210300b003414a1bc551mr6588973jaj.87.1659371559878;
        Mon, 01 Aug 2022 09:32:39 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id y14-20020a5e870e000000b0067bd7f5f964sm5934051ioj.7.2022.08.01.09.32.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Aug 2022 09:32:39 -0700 (PDT)
Received: (nullmailer pid 1137649 invoked by uid 1000);
        Mon, 01 Aug 2022 16:32:38 -0000
Date:   Mon, 1 Aug 2022 10:32:38 -0600
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     dri-devel@lists.freedesktop.org, robert.foss@linaro.org,
        Jagan Teki <jagan@amarulasolutions.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: display: bridge: icn6211: Add support
 for RGB/BGR swap
Message-ID: <20220801163238.GA1130127-robh@kernel.org>
References: <20220801131901.183090-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220801131901.183090-1-marex@denx.de>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Aug 01, 2022 at 03:19:00PM +0200, Marek Vasut wrote:
> The ICN6211 is capable of swapping the output DPI RGB/BGR color channels,
> document a DT property to select this swap in DT. This can be useful on
> hardware where such swap happens.

We should ensure this series[1] works for you instead.


> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Jagan Teki <jagan@amarulasolutions.com>
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Rob Herring <robh@kernel.org>
> Cc: Robert Foss <robert.foss@linaro.org>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: dri-devel@lists.freedesktop.org
> Cc: devicetree@vger.kernel.org
> ---
>  .../devicetree/bindings/display/bridge/chipone,icn6211.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/chipone,icn6211.yaml b/Documentation/devicetree/bindings/display/bridge/chipone,icn6211.yaml
> index 18563ebed1a96..e721dd76e6640 100644
> --- a/Documentation/devicetree/bindings/display/bridge/chipone,icn6211.yaml
> +++ b/Documentation/devicetree/bindings/display/bridge/chipone,icn6211.yaml
> @@ -33,6 +33,12 @@ properties:
>          Optional external clock connected to REF_CLK input.
>          The clock rate must be in 10..154 MHz range.
>  
> +  blue-and-red-swap:

'swap' assumes I know the default order and I don't. Better to make the 
property name describe the end result. ('invert' properties have the 
same issue)

> +    description:
> +      If defined, the DPI output blue and red channels are swapped,
> +      i.e. RGB becomes BGR.
> +    type: boolean
> +
>    enable-gpios:
>      description: Bridge EN pin, chip is reset when EN is low.

Rob

[1] https://lore.kernel.org/r/20220628181838.2031-3-max.oss.09@gmail.com

