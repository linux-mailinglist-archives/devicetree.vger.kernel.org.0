Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2342F6C221D
	for <lists+devicetree@lfdr.de>; Mon, 20 Mar 2023 21:00:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230451AbjCTUAw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Mar 2023 16:00:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36586 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229548AbjCTUAs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Mar 2023 16:00:48 -0400
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com [209.85.167.171])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8362222D1
        for <devicetree@vger.kernel.org>; Mon, 20 Mar 2023 13:00:36 -0700 (PDT)
Received: by mail-oi1-f171.google.com with SMTP id w2so2996359oiv.5
        for <devicetree@vger.kernel.org>; Mon, 20 Mar 2023 13:00:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679342436;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UYim/7SiZ5WuVLP+u8nOT1tGdgIB1/IAEaCSCaB6rs4=;
        b=5L16W1uhzpjQNn0+iNwytLLX/Mb8wwdinxU9ogo4Lp6wCju6lkL+ELimolGLSafB2K
         +U8xoppfNqEHK/12tDhzjXJFtwZw6t6+zScvs/mC9VhlcjLHuz8D3k4eahfK3AN/FbzA
         rzXwmVUHatM5vBdtcpWf/q/bzzgNmxobrku9QerC4rIWkqU+B83g7nSFZ0zbfAALK5zi
         sQjXFdOfjd65KhruyV5EHYQIalNOH2FikdYVF26vJl8/eLFNYt5TzUY5eu1U+1c3bWV6
         NtjTc//B5PhaavkR7ylG5nz0QrlfzrE4SF2DhfE+SUtaA0PaL+nWBzz7hBltKKGL+ESb
         PupQ==
X-Gm-Message-State: AO0yUKV5EWIIU9uZYFwKH0j/pdPXHlrKi50yrVCDmPqmL/Dwsr1hXpTD
        cC7f2t4vcixj7hTgQ2lkbg==
X-Google-Smtp-Source: AK7set8yunUWfIOnklD8AlbJ6ssdQC0kMQ1RbGLh4nAAqchpgsyKIpuFB8UN0FQzuptq0XBAFvqrwg==
X-Received: by 2002:a05:6808:7c5:b0:35e:1a0f:7dea with SMTP id f5-20020a05680807c500b0035e1a0f7deamr565452oij.12.1679342435699;
        Mon, 20 Mar 2023 13:00:35 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id t129-20020a4a5487000000b0049fd5c02d25sm4151032ooa.12.2023.03.20.13.00.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Mar 2023 13:00:35 -0700 (PDT)
Received: (nullmailer pid 2323411 invoked by uid 1000);
        Mon, 20 Mar 2023 20:00:34 -0000
Date:   Mon, 20 Mar 2023 15:00:34 -0500
From:   Rob Herring <robh@kernel.org>
To:     Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= 
        <u.kleine-koenig@pengutronix.de>
Cc:     devicetree@vger.kernel.org, kernel@pengutronix.de,
        Frank Rowand <frowand.list@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH 0/3] of: unittest: Convert to platform remove callback
 returning void
Message-ID: <167934236383.2322173.8793079261392492796.robh@kernel.org>
References: <20230319100620.295849-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230319100620.295849-1-u.kleine-koenig@pengutronix.de>
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Sun, 19 Mar 2023 11:06:17 +0100, Uwe Kleine-König wrote:
> Hello,
> 
> this series converts the of unittests to use the
> .remove_new() callback. Compared to the traditional .remove() callback
> .remove_new() returns no value. This is a good thing because the driver core
> doesn't (and cannot) cope for errors during remove. The only effect of a
> non-zero return value in .remove() is that the driver core emits a warning. The
> device is removed anyhow and an early return from .remove() usually yields a
> resource leak.
> 
> By changing the remove callback to return void driver authors cannot
> reasonably assume any more that there is some kind of cleanup later.
> 
> The first patch is an orthogonal cleanup. The second patch fixes the one
> driver that doesn't already always return zero in .remove(). The last
> patch does the actual conversion.
> 
> Best regards
> Uwe
> 
> Uwe Kleine-König (3):
>   of: unittest: Drop call to platform_set_drvdata(..., NULL)
>   of: unittest: Drop if blocks with always false condition
>   of: unittest: Convert to platform remove callback returning void
> 
>  drivers/of/unittest.c | 21 ++++++---------------
>  1 file changed, 6 insertions(+), 15 deletions(-)
> 
> 
> base-commit: fe15c26ee26efa11741a7b632e9f23b01aca4cc6
> --
> 2.39.2
> 
> 

Applied, thanks!

