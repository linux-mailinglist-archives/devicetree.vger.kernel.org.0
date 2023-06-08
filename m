Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 23C9F728950
	for <lists+devicetree@lfdr.de>; Thu,  8 Jun 2023 22:21:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230162AbjFHUVa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Jun 2023 16:21:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38054 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229989AbjFHUVa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Jun 2023 16:21:30 -0400
Received: from mail-io1-f44.google.com (mail-io1-f44.google.com [209.85.166.44])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5E9541FDB
        for <devicetree@vger.kernel.org>; Thu,  8 Jun 2023 13:21:29 -0700 (PDT)
Received: by mail-io1-f44.google.com with SMTP id ca18e2360f4ac-777b4716673so40163539f.1
        for <devicetree@vger.kernel.org>; Thu, 08 Jun 2023 13:21:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686255688; x=1688847688;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wP2kmYSEdp/Nc2aG+FtDllQPXqvYSiJsD7fXf/MZCJ8=;
        b=SEZ9BzJn304Xyzpy9ezfXZsfe7/NkniC4ueG6dV5ecuSMlM+n2I0oGCk9YOyIP/irl
         DSGs56HhmRP+ZYhTIpNEbWbiztLGe2RT3J4U51sIDUncq0SM5h+ZqUYifDJ66rOEXktX
         jMs9p8pg2ZWZFQR3E+Dgf6hDj16vEwxWeR+Im54nxBK750w9K6DujxMfJM4AZgc4s600
         3g3QR6mfeozmHgJo7dwipfAyTgKCAKb1q2f27Jv8wTcfQmAT574zatQJ+35mSVDAhdy7
         V4LUZU4rTcUwd0iTjZzzhP1mbwHwB0qC6pKmUqVvmf9MM9iimFaeeweqtSQ2xsDe85Qf
         5WYA==
X-Gm-Message-State: AC+VfDysQvfjCBzZFC6phEseW3tHGKlfSYjD/2g9C08wOQOTVyhsAP8K
        CQ4vOgTz5uRd6/6T11KC0Q==
X-Google-Smtp-Source: ACHHUZ4Ff+VHNrKsLRaPZQogxRLvU2SS7z2q2qRSAcFla5tCbhFvRlVfPmXjoWwcbEWldSF3iz3bPA==
X-Received: by 2002:a05:6602:2d01:b0:777:a4d2:8871 with SMTP id c1-20020a0566022d0100b00777a4d28871mr2507934iow.5.1686255688635;
        Thu, 08 Jun 2023 13:21:28 -0700 (PDT)
Received: from robh_at_kernel.org ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id l30-20020a02cd9e000000b0041d8acd35b0sm485300jap.3.2023.06.08.13.21.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jun 2023 13:21:27 -0700 (PDT)
Received: (nullmailer pid 3396083 invoked by uid 1000);
        Thu, 08 Jun 2023 20:21:26 -0000
Date:   Thu, 8 Jun 2023 14:21:26 -0600
From:   Rob Herring <robh@kernel.org>
To:     Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= 
        <u.kleine-koenig@pengutronix.de>
Cc:     kernel@pengutronix.de, Rob Herring <robh+dt@kernel.org>,
        devicetree@vger.kernel.org, Frank Rowand <frowand.list@gmail.com>
Subject: Re: [PATCH] of: unittest: Switch i2c driver back to use .probe()
Message-ID: <168625568498.3396012.10476633690656758653.robh@kernel.org>
References: <20230525204812.733642-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230525204812.733642-1-u.kleine-koenig@pengutronix.de>
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


On Thu, 25 May 2023 22:48:12 +0200, Uwe Kleine-König wrote:
> After commit b8a1a4cd5a98 ("i2c: Provide a temporary .probe_new()
> call-back type"), all drivers being converted to .probe_new() and then
> 03c835f498b5 ("i2c: Switch .probe() to not take an id parameter") convert
> back to (the new) .probe() to be able to eventually drop .probe_new() from
> struct i2c_driver.
> 
> Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
> ---
>  drivers/of/unittest.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

Applied, thanks!

