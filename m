Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1C0A84C38CF
	for <lists+devicetree@lfdr.de>; Thu, 24 Feb 2022 23:32:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234079AbiBXWc2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Feb 2022 17:32:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39532 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231328AbiBXWc0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Feb 2022 17:32:26 -0500
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com [209.85.167.179])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 086FC49F27
        for <devicetree@vger.kernel.org>; Thu, 24 Feb 2022 14:31:55 -0800 (PST)
Received: by mail-oi1-f179.google.com with SMTP id 12so5396980oix.12
        for <devicetree@vger.kernel.org>; Thu, 24 Feb 2022 14:31:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Tsfv8ZJ/4kb0NrJU9/TOAUecgEBcHSioMV8xWQfHSSE=;
        b=GTYzS0JFOxkYZD4eYE7lOr9pWf2lPJOsG8cYRaITLtnZ9LhREFS6YeJCGbAsJI1DAz
         pxJ32Rxb2HdSJ+oUnZY1Fvj+PiDZbvmVk++Lv2nmFe8blzP156SN53Wof+ToXItoIfvm
         1KXSBsN4GVGCPbqPZzgASHArE0mqNKFmiGBO3lu2n//4r92EHbipUv2F7P9ij0tWUFVN
         BCHVleTY1PfsG3AwowwrSxO6cub1ZlYzqE7estisU5D1VykuGUepp2vLiESdaKmxgY2e
         N5i+tIgHiAmQ6aUjNK8JYVI+90Y+i84DCfW7/GFAIJKXbQNnnd6smWm83sJvOQs1z0zJ
         Bvug==
X-Gm-Message-State: AOAM533agWlazn2GPHIv3DYSJ9SAUJEJfSVmSzVpT90xDi6/UU6zQXw1
        /Oq4p4aA1kTEDG9U7C0g3VQ2BNXrdg==
X-Google-Smtp-Source: ABdhPJzlxBYJ5gGfLq3dMHQKdtPN6QbkMDKeDoUsCSUg6P0kzoWCHZ0zU0AjSlveHAkR6V+en1/cIw==
X-Received: by 2002:a05:6870:1b0f:b0:b4:10eb:c070 with SMTP id hl15-20020a0568701b0f00b000b410ebc070mr121044oab.161.1645741914361;
        Thu, 24 Feb 2022 14:31:54 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id v30-20020a4a315e000000b002fd7385f2bbsm282017oog.38.2022.02.24.14.31.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Feb 2022 14:31:53 -0800 (PST)
Received: (nullmailer pid 3710446 invoked by uid 1000);
        Thu, 24 Feb 2022 22:31:52 -0000
Date:   Thu, 24 Feb 2022 16:31:52 -0600
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Jacek Anaszewski <jacek.anaszewski@gmail.com>,
        Pavel Machek <pavel@ucw.cz>, devicetree@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: leds: Document mmc trigger
Message-ID: <YhgHWMU/aV8MLBq+@robh.at.kernel.org>
References: <20220217174357.13427-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220217174357.13427-1-marex@denx.de>
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

On Thu, 17 Feb 2022 18:43:57 +0100, Marek Vasut wrote:
> The mmc subsystem supports triggering leds on card activity, document
> the trigger value here. The value is a pattern in this case.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Jacek Anaszewski <jacek.anaszewski@gmail.com>
> Cc: Pavel Machek <pavel@ucw.cz>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: devicetree@vger.kernel.org
> To: linux-leds@vger.kernel.org
> ---
> V2: Rebase on next-20220217
> ---
>  .../devicetree/bindings/leds/common.yaml      | 39 ++++++++++---------
>  1 file changed, 21 insertions(+), 18 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
