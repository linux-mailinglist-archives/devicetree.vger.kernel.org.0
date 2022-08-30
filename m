Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C249F5A6C4E
	for <lists+devicetree@lfdr.de>; Tue, 30 Aug 2022 20:35:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229836AbiH3Sfr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Aug 2022 14:35:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38882 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229736AbiH3Sfq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Aug 2022 14:35:46 -0400
Received: from mail-oa1-f43.google.com (mail-oa1-f43.google.com [209.85.160.43])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB740606AB
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 11:35:45 -0700 (PDT)
Received: by mail-oa1-f43.google.com with SMTP id 586e51a60fabf-11dca1c9c01so18860831fac.2
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 11:35:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=s+37fRPFMxmXAJ4VHnz6r1f26rT3ROa7J+qGjKVDu08=;
        b=JxAO15fCVlP7oz4L0pdLsNFIgAEXAVSOxo3yzr73OLdq7r1lzAF6JblR4uCNn4jj5c
         u9ph9Lk6FbfJpI1hqUQMHHgm9MC2LnKPoxz1wZ12diG+OieAlzdHhQ0/inFPkFdU8535
         7RH1MtoAuJ2qAc3y2BiVxNCY9VkBDBuTgWQ08NTx/lcpdx4ARB0C8Yk4YBZPUqf4efVT
         OUg+iUaMKiLQkZudrU1TV1dDdX0tDJjPMDpLVSS6D3wxj9G52JQkNINT6DU7zFcNPLMN
         QZccdYTzyB5KIpZ2u13wxVkMDr7RG49niC62B63CoAcioPhfnIAAC3ps0KFHyuE13qC0
         /2/w==
X-Gm-Message-State: ACgBeo1qGd6C6r6Eccij/3pefz4Uxoh1Ox0CueY6cbSiwsXWaIBm8/ZW
        MHBKkfc5z7H/hAWx6PKXRF6YtMwZQg==
X-Google-Smtp-Source: AA6agR5nZAeJJ1RfK097wT0B8bteTpQtrHAJXYKt3hea3H0GIkM/je3+va/IpiJpXa7MJCt/T3da6w==
X-Received: by 2002:a05:6870:7390:b0:11c:fe11:da56 with SMTP id z16-20020a056870739000b0011cfe11da56mr10349165oam.235.1661884545020;
        Tue, 30 Aug 2022 11:35:45 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id h17-20020a056870d35100b0010c727a3c79sm8483418oag.26.2022.08.30.11.35.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Aug 2022 11:35:44 -0700 (PDT)
Received: (nullmailer pid 1823993 invoked by uid 1000);
        Tue, 30 Aug 2022 18:35:43 -0000
Date:   Tue, 30 Aug 2022 13:35:43 -0500
From:   Rob Herring <robh@kernel.org>
To:     Andrew Lunn <andrew@lunn.ch>
Cc:     Device Tree <devicetree@vger.kernel.org>,
        Gregory Clement <gregory.clement@bootlin.com>,
        arm-soc <arm@kernel.org>
Subject: Re: [PATCH v2 02/12] dt-bindings: thermal: marvell,kirkwood-thermal:
 Convert to DT schema
Message-ID: <20220830183543.GA1823932-robh@kernel.org>
References: <20220825013258.3459714-1-andrew@lunn.ch>
 <20220825013258.3459714-3-andrew@lunn.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220825013258.3459714-3-andrew@lunn.ch>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 25 Aug 2022 03:32:48 +0200, Andrew Lunn wrote:
> Add a simple YAML description of the thermal binding for the kirkwood
> thermal sensor.
> 
> Signed-off-by: Andrew Lunn <andrew@lunn.ch>
> ---
>  .../bindings/thermal/kirkwood-thermal.txt     | 15 ---------
>  .../thermal/marvell,kirkwood-thermal.yaml     | 32 +++++++++++++++++++
>  2 files changed, 32 insertions(+), 15 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/thermal/kirkwood-thermal.txt
>  create mode 100644 Documentation/devicetree/bindings/thermal/marvell,kirkwood-thermal.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
