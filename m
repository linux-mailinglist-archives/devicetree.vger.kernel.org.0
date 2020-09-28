Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 58C4627B2F5
	for <lists+devicetree@lfdr.de>; Mon, 28 Sep 2020 19:20:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726393AbgI1RUN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Sep 2020 13:20:13 -0400
Received: from mail-oi1-f193.google.com ([209.85.167.193]:36103 "EHLO
        mail-oi1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726325AbgI1RUN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Sep 2020 13:20:13 -0400
Received: by mail-oi1-f193.google.com with SMTP id v20so2181575oiv.3
        for <devicetree@vger.kernel.org>; Mon, 28 Sep 2020 10:20:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=Bgu9eAda5uCAd7zAJ0nkA1GKRQCBD52+x73vgY7dYds=;
        b=Twn0Hs33MHtrB9aBtPaimx20k4+q6p7d9TgMbm7kD8x4tQVw4BaCyWNBbHHnVzlihy
         8VEXnTpyR8LKL0lmYIimhuVEwxamiREenKlWNMhSrE6JsN8UqUnWKrCaxEXspjpjIv8E
         6UUXFRins5fkEYLJxVaO9SEUhqwMctfC5MptKkBw3lPLqF2ftTKIaHuKzmOleJOK7BqV
         5Vque2oo8CMfDa5/jQzO2rKLEINVaNZdSJWmegxYRmNqzPg/bT1TsqIzLWpcX6GQFAZA
         yr8lxdjpRw1a6Mo6L9lmUgc6jpRtnQ5hmT/4L26BtXQHWSSmivmc/k0l5sx+LeXjfmff
         LBgQ==
X-Gm-Message-State: AOAM532X6n/iuhPYgpA/HJgNtmF0GzDv7SlfvFOZVn2fcO8NjV0cQ6ZY
        mK4sesaBzMadRjACypcFDA==
X-Google-Smtp-Source: ABdhPJyYKkID+64TOwW0GhVQn1GY2FepKidAEtT/FdJ1h0IuHwhSWS3bDtGi/1eXiV8sKiN4Kzxs+w==
X-Received: by 2002:aca:bec5:: with SMTP id o188mr1537065oif.21.1601313612380;
        Mon, 28 Sep 2020 10:20:12 -0700 (PDT)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id z5sm365012otp.16.2020.09.28.10.20.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Sep 2020 10:20:11 -0700 (PDT)
Received: (nullmailer pid 2924776 invoked by uid 1000);
        Mon, 28 Sep 2020 17:20:11 -0000
Date:   Mon, 28 Sep 2020 12:20:11 -0500
From:   Rob Herring <robh@kernel.org>
To:     Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= 
        <u.kleine-koenig@pengutronix.de>
Cc:     Frank Rowand <frowand.list@gmail.com>,
        Masahiro Yamada <yamada.masahiro@socionext.com>,
        kernel@pengutronix.de, devicetree@vger.kernel.org
Subject: Re: [PATCH] scripts/dtc: only append to HOST_EXTRACFLAGS instead of
 overwriting
Message-ID: <20200928172011.GA2922882@bogus>
References: <20200917094024.17215-1-u.kleine-koenig@pengutronix.de>
 <20200919143922.22793-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20200919143922.22793-1-u.kleine-koenig@pengutronix.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Sep 19, 2020 at 04:39:22PM +0200, Uwe Kleine-König wrote:
> When building with
> 
> 	$ HOST_EXTRACFLAGS=-g make
> 
> the expectation is that host tools are built with debug informations.
> This however doesn't happen if the Makefile assigns a new value to the
> HOST_EXTRACFLAGS instead of appending to it. So use += instead of := for
> the first assignment.
> 
> Fixes: e3fd9b5384f3 ("scripts/dtc: consolidate include path options in Makefile")
> Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
> ---
> Hello,
> 
> this is a resend as I failed to add the devicetree mailing list to Cc
> for the first mail :-\ Thanks to Rob for reminding me. Those who got
> this mail twice and want to reply please make sure you reply to the
> right (i.e. this) mail.
> 
> The patch is the same as my earlier patch "scripts/dtc: Don't overwrite
> HOST_EXTRACFLAGS passed on command line" but here the commit log is not
> wrong.
> 
> Thanks and sorry,
> Uwe
> 
>  scripts/dtc/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks.

Rob
