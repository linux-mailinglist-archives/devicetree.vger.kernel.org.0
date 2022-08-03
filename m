Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F1947589485
	for <lists+devicetree@lfdr.de>; Thu,  4 Aug 2022 00:48:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236738AbiHCWsz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Aug 2022 18:48:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36320 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229529AbiHCWsy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Aug 2022 18:48:54 -0400
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com [209.85.166.51])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1639205E3
        for <devicetree@vger.kernel.org>; Wed,  3 Aug 2022 15:48:50 -0700 (PDT)
Received: by mail-io1-f51.google.com with SMTP id c185so13998073iof.7
        for <devicetree@vger.kernel.org>; Wed, 03 Aug 2022 15:48:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=RReN6ZzZO3PJDfjRIwW0G/yVwqO2C+knR2/AOXQf8hM=;
        b=RGaVy4vQmaxwuYZFAJhUCbdzp3RdlDMFyM9LUP3QpP0pd3pq6DG5HWKA+HtIAMlEcF
         7/7suJeFXcG9p6F5Nvq+aZdEQiww1nlQrtG3bkpuvztROrsvVquLVR5ydRanJ86QPK/1
         x+ITTdumzJekJm723v5M5rRkX+SW1TDZtSreERb/3VYZ1Qwr6dUpv9o4GhySbeuWtzFk
         n4llSv/8Y/ghEvB6zPAyAPhasPo7F3Kn6mc8Z84LQ8fRcOIS/gEDO5EYjMuuOMlizQxv
         HfBYLOEtp9tF//10pnSRUDNmzN9QKcN6NO8unDIgBJHvFbp3+5OC6vBtLpB6p6Sid/Wg
         lehg==
X-Gm-Message-State: AJIora8Uhsx2BKMGaeUaoCO6Zf0vo50vsIPz2cFMmJVgH6eVkd4zdMbn
        9yFPrdnN07VTC7hwuEMMuw==
X-Google-Smtp-Source: AGRyM1tbtVMXQSuuAFMfOC+T4htuSdZjU1rnJ2aO/vyAvWL4PqomNXTD3HQFncqdUES0U+MHceLF1Q==
X-Received: by 2002:a05:6638:4089:b0:33f:7f78:1cd2 with SMTP id m9-20020a056638408900b0033f7f781cd2mr11743691jam.130.1659566930205;
        Wed, 03 Aug 2022 15:48:50 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id c37-20020a023b25000000b003427281824csm4662945jaa.128.2022.08.03.15.48.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Aug 2022 15:48:49 -0700 (PDT)
Received: (nullmailer pid 2760021 invoked by uid 1000);
        Wed, 03 Aug 2022 22:48:48 -0000
Date:   Wed, 3 Aug 2022 16:48:48 -0600
From:   Rob Herring <robh@kernel.org>
To:     Sean Anderson <sean.anderson@seco.com>
Cc:     Ioana Ciornei <ioana.ciornei@nxp.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH] dt-bindings: net: dpmac: Add phys property
Message-ID: <20220803224848.GA2759970-robh@kernel.org>
References: <20220801181347.3873041-1-sean.anderson@seco.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220801181347.3873041-1-sean.anderson@seco.com>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 01 Aug 2022 14:13:46 -0400, Sean Anderson wrote:
> This silences warnings like
> 
> arch/arm64/boot/dts/freescale/fsl-lx2160a-honeycomb.dtb: ethernet@8: 'phys', 'sfp' do not match any of the regexes: 'pinctrl-[0-9]+'
> 	From schema: Documentation/devicetree/bindings/net/fsl,qoriq-mc-dpmac.yaml
> 
> Fixes: f978fe85b8d1 ("dpaa2-mac: configure the SerDes phy on a protocol change")
> Signed-off-by: Sean Anderson <sean.anderson@seco.com>
> ---
> 
>  Documentation/devicetree/bindings/net/fsl,qoriq-mc-dpmac.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
