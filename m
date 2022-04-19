Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D3330507308
	for <lists+devicetree@lfdr.de>; Tue, 19 Apr 2022 18:35:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230428AbiDSQh5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Apr 2022 12:37:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49392 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1354668AbiDSQhx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Apr 2022 12:37:53 -0400
Received: from mail-oa1-f54.google.com (mail-oa1-f54.google.com [209.85.160.54])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5CA1964DB
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 09:35:10 -0700 (PDT)
Received: by mail-oa1-f54.google.com with SMTP id 586e51a60fabf-e2fa360f6dso18095790fac.2
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 09:35:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=XNfkRWBV8WszhVFYtMRjdEG5n7LtAJ40uPMEBMo7C28=;
        b=viexHJ7zdpUbU0AjUIbgQety/mAhjVAyp+Xs0k86H+oMCtqagVk+rWF1yfmuBIWSKb
         rekM6Y3V1+VjsWdt3JRUXszcMOzksoj3N8wHSSFA5rCSNPjt+9zo8iZSenmtewzHUI17
         hmbMvk2g5cPDZurkGT6xzjOcfE6jJGZzdh1GSKMTnU5M4kOVb7D7TnM9l/1hL8Ib/QHF
         9x+tpFXFoH2nnAQgdtJqneAw4pI1UsqSH/NzE2uYXIG3Eio1GEZcl5BMbfsQhBMuXrCE
         LrjhvQ6RXbyxjNpJ8L4qn6LuIYJtiz2MBHAL/yQJegLheVlyU6GiXLtvEl9w1ozZrpi8
         2Faw==
X-Gm-Message-State: AOAM530jZeub0JrVYCHqkRel/zfoGn0Ys3K4Gqg+xF1NOsDsjL5xVTt6
        6mu6QIfz48Ont5Sjg3/q0IUVp60Mrg==
X-Google-Smtp-Source: ABdhPJwaBT3RDj3fcld5zJ0gTPnn/0BKOHxIX5QzeE1YgYzPAknoO483YytUktxhDpys+EshFRvQPA==
X-Received: by 2002:a05:6870:d210:b0:e2:c10b:a7b with SMTP id g16-20020a056870d21000b000e2c10b0a7bmr6906261oac.181.1650386109753;
        Tue, 19 Apr 2022 09:35:09 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id q7-20020a9d6307000000b005ea12d6454bsm5468650otk.38.2022.04.19.09.35.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Apr 2022 09:35:09 -0700 (PDT)
Received: (nullmailer pid 2917388 invoked by uid 1000);
        Tue, 19 Apr 2022 16:35:08 -0000
Date:   Tue, 19 Apr 2022 11:35:08 -0500
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     Lucas Stach <l.stach@pengutronix.de>, devicetree@vger.kernel.org,
        Peng Fan <peng.fan@nxp.com>, dri-devel@lists.freedesktop.org,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Stefan Agner <stefan@agner.ch>, Robby Cai <robby.cai@nxp.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: lcdif: Add compatible for i.MX8MP
Message-ID: <Yl7kvNOUWbsgc+Hg@robh.at.kernel.org>
References: <20220417014550.293773-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220417014550.293773-1-marex@denx.de>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 17 Apr 2022 03:45:49 +0200, Marek Vasut wrote:
> Add compatible string for i.MX8MP LCDIF variant. This is called LCDIFv3
> and is completely different from the LCDIFv3 found in i.MX23 in that it
> has a completely scrambled register layout compared to all previous LCDIF
> variants. The new LCDIFv3 also supports 36bit address space. However,
> except for the complete bit reshuffling, this is still LCDIF and it still
> works like one.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Alexander Stein <alexander.stein@ew.tq-group.com>
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: Peng Fan <peng.fan@nxp.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Robby Cai <robby.cai@nxp.com>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: Stefan Agner <stefan@agner.ch>
> Cc: devicetree@vger.kernel.org
> ---
> V2: No change
> ---
>  Documentation/devicetree/bindings/display/fsl,lcdif.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 


Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

If a tag was not added on purpose, please state why and what changed.

