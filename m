Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 904D04CAD7F
	for <lists+devicetree@lfdr.de>; Wed,  2 Mar 2022 19:26:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241829AbiCBS1A (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Mar 2022 13:27:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46922 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241703AbiCBS07 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Mar 2022 13:26:59 -0500
Received: from mail-oo1-f52.google.com (mail-oo1-f52.google.com [209.85.161.52])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 78CA3939A2
        for <devicetree@vger.kernel.org>; Wed,  2 Mar 2022 10:26:16 -0800 (PST)
Received: by mail-oo1-f52.google.com with SMTP id d134-20020a4a528c000000b00319244f4b04so2880773oob.8
        for <devicetree@vger.kernel.org>; Wed, 02 Mar 2022 10:26:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=gp5Jdmk2dY01jJhkaIqI8FmvvsypijQinV6Nl2+9H60=;
        b=7dkKt0ODOqoxlre18oFVyzAlN9Q0Z0r1Byl63aHRDkZK2R0xj2JWMV2Pr8kDDwAwK6
         tyq7pE/5vUrmjbRnHA/GJcEfGS6ZAK5J5wkXSReDKpS3lmcW1ezp4or5dY87oW11G0A9
         zo3Ghdd75VRmuxct83dvN97CPmHV3ogDCWD929t996RO6gFyLL5Yh5/w8U9gExRc1K0Q
         CqjpH/hG0DpmIKumMFuwQJyEQO+pFIaH4aLJJyZ57FxhU5zBdo9U9pKqdXd0MPWMNx8k
         efsvpHdnbmFjBci9hY7bg2R9Om/nj2mC1i1u1kYxfN7oHKtkxOomTsmzzapyqu1Sz3wB
         Z4FA==
X-Gm-Message-State: AOAM531XBpbpFv3HWWuZDM2l3prLpQ1yuRUKsAkjSZxng+3pMIIsvm+k
        +vE5imlhJsob/Uo3nxGbVJwy9loGUA==
X-Google-Smtp-Source: ABdhPJzd+O7A99MupgLERBXMFwobcVlOnqp9kDZUoS0YxaahYN/XpsZZcmkdwvpvhNVcY83SHENxSQ==
X-Received: by 2002:a05:6870:64a4:b0:d9:adda:905f with SMTP id cz36-20020a05687064a400b000d9adda905fmr865258oab.147.1646245575833;
        Wed, 02 Mar 2022 10:26:15 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id e199-20020a4a55d0000000b0031ca56292bbsm3236471oob.46.2022.03.02.10.26.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Mar 2022 10:26:15 -0800 (PST)
Received: (nullmailer pid 4006322 invoked by uid 1000);
        Wed, 02 Mar 2022 18:26:13 -0000
Date:   Wed, 2 Mar 2022 12:26:13 -0600
From:   Rob Herring <robh@kernel.org>
To:     Stephan Gerhold <stephan@gerhold.net>
Cc:     Mark Brown <broonie@kernel.org>, devicetree@vger.kernel.org,
        alsa-devel@alsa-project.org, Liam Girdwood <lgirdwood@gmail.com>,
        ~postmarketos/upstreaming@lists.sr.ht,
        Jonathan Albrieux <jonathan.albrieux@gmail.com>
Subject: Re: [PATCH 1/2] ASoC: dt-bindings: Add schema for "awinic,aw8738"
Message-ID: <Yh+2xUpQLftfZ0UU@robh.at.kernel.org>
References: <20220301123742.72146-1-stephan@gerhold.net>
 <20220301123742.72146-2-stephan@gerhold.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220301123742.72146-2-stephan@gerhold.net>
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

On Tue, Mar 01, 2022 at 01:37:41PM +0100, Stephan Gerhold wrote:
> Add a DT schema for describing Awinic AW8738 audio amplifiers. They are
> fairly simple and controlled using a single GPIO. The number of pulses
> during power up selects one of a few pre-defined amplifier modes.
> 
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
> ---
>  .../bindings/sound/awinic,aw8738.yaml         | 48 +++++++++++++++++++
>  1 file changed, 48 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/sound/awinic,aw8738.yaml

Reviewed-by: Rob Herring <robh@kernel.org>
