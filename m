Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B34515A6E61
	for <lists+devicetree@lfdr.de>; Tue, 30 Aug 2022 22:21:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231185AbiH3UVl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Aug 2022 16:21:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52424 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229914AbiH3UVk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Aug 2022 16:21:40 -0400
Received: from mail-oa1-f43.google.com (mail-oa1-f43.google.com [209.85.160.43])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D5047285F
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 13:21:39 -0700 (PDT)
Received: by mail-oa1-f43.google.com with SMTP id 586e51a60fabf-11edd61a9edso13472982fac.5
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 13:21:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=2tyLQ7GgQ7cU0EriSVKtmoSifiTo/6SrJqVFTq/hnxw=;
        b=T88dThwrM0HvEYfpHSrjbeuJABeRu0rzGxyO3pNDTXPLStarYh4Z71x+7ebZAIKcbL
         +cWP3Xfn7cWr1x0QB+T1UpBPn60W0i0qsdu4kIwgqW/lFeJU5woY583xshR/TdLSefI9
         4uIsh3Ey9XrhOmbbTZsXRZgSHtmpqJOCUlJqDjDu1C2b2hwKli2fB1ZFfnNiqMIPA9T1
         P5iwY/NxMU9pgsodrNyKjuegolrqWy6Imin0p4IouGMfIL9XySrifJ7EFGtmJpzb2c+L
         /AmPtjTbfe5o1UT5P8o51rGcgrJFg9VsldC23/qKVKYBEJr9A83w3gq2+6lS6K2D3a4u
         4DJA==
X-Gm-Message-State: ACgBeo01ZtzDhn1KAMXrcw59QQXRKeIKdjtyfWcXS/7gi2Lr5XR9kb4p
        /E0u9ZAG80nAX4lCf1vGbQ==
X-Google-Smtp-Source: AA6agR6HuMDDMBl8fxMMpCdo+i8bkLLrwppph0RJ8mnZ4NZ/88KXQaC55sfyOQUDPpoYEd6YDe4AFg==
X-Received: by 2002:a05:6870:45a1:b0:10b:8ee3:b3bd with SMTP id y33-20020a05687045a100b0010b8ee3b3bdmr10542409oao.9.1661890898375;
        Tue, 30 Aug 2022 13:21:38 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id t5-20020a4ab585000000b00448aff53822sm7100164ooo.40.2022.08.30.13.21.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Aug 2022 13:21:37 -0700 (PDT)
Received: (nullmailer pid 1996275 invoked by uid 1000);
        Tue, 30 Aug 2022 20:21:36 -0000
Date:   Tue, 30 Aug 2022 15:21:36 -0500
From:   Rob Herring <robh@kernel.org>
To:     Daniel Mack <daniel@zonque.org>
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        ryan.lee.analog@gmail.com, broonie@kernel.org, robh+dt@kernel.org
Subject: Re: [PATCH v3 1/2] ASoC: dt-bindings: max98396: Document data
 monitor properties
Message-ID: <20220830202136.GA1996212-robh@kernel.org>
References: <20220826085927.2336224-1-daniel@zonque.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220826085927.2336224-1-daniel@zonque.org>
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

On Fri, 26 Aug 2022 10:59:26 +0200, Daniel Mack wrote:
> This device features a data monitor that puts the device in software reset
> upon a configurable set of events.
> 
> Signed-off-by: Daniel Mack <daniel@zonque.org>
> ---
> v1 -> v2: fix a typo and remove a stray blank line
> v2 -> v3: Rename device tree properties, drop $ref for standard unit suffix properties
> 
>  .../bindings/sound/adi,max98396.yaml          | 34 +++++++++++++++++++
>  1 file changed, 34 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
