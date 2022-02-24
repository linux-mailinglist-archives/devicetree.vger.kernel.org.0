Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5CB4F4C38D2
	for <lists+devicetree@lfdr.de>; Thu, 24 Feb 2022 23:32:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235522AbiBXWdF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Feb 2022 17:33:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42084 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231328AbiBXWdF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Feb 2022 17:33:05 -0500
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com [209.85.167.175])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D64DEC5ED;
        Thu, 24 Feb 2022 14:32:34 -0800 (PST)
Received: by mail-oi1-f175.google.com with SMTP id x193so5513975oix.0;
        Thu, 24 Feb 2022 14:32:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Hk0gTpN9ZSztD1SOXeCnhBxnAC8oBosV1gewSrmoo3M=;
        b=aqs2bvE2C9ZJfF8nGhk3HzJSbMYnElQV68MkUeKlSRGNblRdAkepLllNpVXFsFCvPp
         K11vA3IqHA4oajUskT3vt2qW0J7sBzGGAwE8zKCD29A5d+OaT0mQsfneb3LLvsxkWUvq
         baubqxj4mRKEX4dBhRdIYQb1Kv4WrYK9pzF8MCkeFPQpZa5pM2xLAsJEnzBW3t+FQ7Dl
         iRXLs2sHMEjAGVymg5UpPeoFGkiK3Xoosj6Xc52VOI7pY283mX8Ze7NYWLoRsDfxk8Dh
         rRp7mLvMK/hFcPu5nlOO0o+Js3hPmIJmia2QamelX8ByPHL2iYkFsuoaZ5InmB0iDGwv
         FqEQ==
X-Gm-Message-State: AOAM530oFZEqEtE57MYCzcPEHYcBdqiq3aLJMguDtbpjVexKGECHUvEw
        0kWJbXnRkpoBLqmH3FellOh+ZZK5+g==
X-Google-Smtp-Source: ABdhPJxdM2NMfXOJZFsJJMzY8GdnMvEdyhoCiyhlbORQzgFzmaDYJl31K2ylMBQtrcANaHdjsRno+A==
X-Received: by 2002:a05:6870:494e:b0:d1:4708:9247 with SMTP id fl14-20020a056870494e00b000d147089247mr134913oab.160.1645741953947;
        Thu, 24 Feb 2022 14:32:33 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id e12-20020a056870c0cc00b000d6bf3c0613sm452217oad.43.2022.02.24.14.32.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Feb 2022 14:32:33 -0800 (PST)
Received: (nullmailer pid 3711460 invoked by uid 1000);
        Thu, 24 Feb 2022 22:32:32 -0000
Date:   Thu, 24 Feb 2022 16:32:32 -0600
From:   Rob Herring <robh@kernel.org>
To:     Robin Murphy <robin.murphy@arm.com>
Cc:     devicetree-spec@vger.kernel.org, maxime@cerno.tech,
        robh+dt@kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: reserved-memory: Add restricted-dma-pool
 constraints
Message-ID: <YhgHgP1x31hVBolM@robh.at.kernel.org>
References: <a4f3d4e2feef008d1236ebc3f5f0c46360f20c60.1645119806.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a4f3d4e2feef008d1236ebc3f5f0c46360f20c60.1645119806.git.robin.murphy@arm.com>
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

On Thu, 17 Feb 2022 17:47:14 +0000, Robin Murphy wrote:
> The "restricted-dma-pool" definition prohibits combination with either
> of the "no-map" and "reusable" properties, but this is only stated in
> the description text. Add those constraints to the schema so we can
> properly validate them.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
> 
> v2: Simplify with "properties:...:false" vs. "not:required:..."
> 
>  .../bindings/reserved-memory/shared-dma-pool.yaml      | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 

Applied, thanks!
