Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8932547008A
	for <lists+devicetree@lfdr.de>; Fri, 10 Dec 2021 13:21:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229483AbhLJMYf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Dec 2021 07:24:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54348 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240917AbhLJMYc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Dec 2021 07:24:32 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 59651C0617A1
        for <devicetree@vger.kernel.org>; Fri, 10 Dec 2021 04:20:57 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id a18so14626841wrn.6
        for <devicetree@vger.kernel.org>; Fri, 10 Dec 2021 04:20:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=dyQr2ti9ilz8ECo57KSkq4lKgtmyn1SiEY3nHitXJS0=;
        b=kKlHf5ufFGS3lqJB0CYLdtxRM/+Zd2tF1TIonrt1jLM+uzJlRXxND1cQdMa32DXTuO
         PzTGfW9C1I3/pc0hVC20gfSSv4NVqqyRBjtjWZ6xN2e4WRN/Jcyr/zEOSLQmVA7njKdP
         bbzHxOzNuuE90WMuTIpCk+QzC08zm6Kl8x6wVbkI0vIQH/EkiBWjVZ4KZUgQ6VaaLjLj
         x7AhE+bd9XDLpJLrmUUEUgJYVZ77YOSLERwlB+A+V0laaJPbnRnEbBMFURiwHl73QnyF
         WyC+HTA2khTn7xXjZZlpQTZdiiJHYsj6LNwEN3ipEtxvvleQIxbefQPQ4y3wJxxy1VAv
         rbmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=dyQr2ti9ilz8ECo57KSkq4lKgtmyn1SiEY3nHitXJS0=;
        b=snkFJH8MgwnSp10BD25W86U1FGe8kl9g2JSJKrKox0ggit1RvMl/zM8/QQ7XTg9Tn8
         qXsKtLvd008mK5EbYozRGoU/mldhkwEGZywfXSK2vocTRu9Kq0gNKqK+NDDd2j8c77rf
         Ql+1XtoW0YK9Y1Oc9qW1ykgkmg9Il6LeKokzTWCIEnoyY7O8g3eTax2x4Mb3UhYr+x1s
         +iPTDx1W8/9L745dAigcXcBqLyrluajNpNNZNdlk3onZrzlJMaD2spjWegu/Mmd0sV8P
         Qt8e55qDSrXb1h7uyME+rBdap9E6QNCf2KVCWGHAbp/6IFXhYQ0Fl4QMorX4rvJGUCU7
         Srhg==
X-Gm-Message-State: AOAM533RHF9ApDZMsKs76LIuwTtgh9lyyx2kng4BmctdF2fqpchdw1mV
        GFpaa33Dk+OFj6WA4hUdgaH5oBeN9Yzfjg==
X-Google-Smtp-Source: ABdhPJzECZyx1gn+Wvql4o7TK0rM8yLNSUmec05SdRZaiWptYAmqVraN+IU+1m90aCiisoO//e59oQ==
X-Received: by 2002:adf:cd02:: with SMTP id w2mr13812551wrm.269.1639138855743;
        Fri, 10 Dec 2021 04:20:55 -0800 (PST)
Received: from google.com ([2a00:79e0:d:209:57bd:f79b:724a:8b02])
        by smtp.gmail.com with ESMTPSA id b14sm3164792wrd.24.2021.12.10.04.20.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Dec 2021 04:20:54 -0800 (PST)
Date:   Fri, 10 Dec 2021 12:20:50 +0000
From:   David Brazdil <dbrazdil@google.com>
To:     Pavel Machek <pavel@ucw.cz>
Cc:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Jonathan Corbet <corbet@lwn.net>,
        Derek Kiernan <derek.kiernan@xilinx.com>,
        Dragan Cvetic <dragan.cvetic@xilinx.com>,
        Arnd Bergmann <arnd@arndb.de>,
        Hans de Goede <hdegoede@redhat.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-doc@vger.kernel.org, Andrew Scull <ascull@google.com>,
        Will Deacon <will@kernel.org>
Subject: Re: DRM? Re: [PATCH v2 2/2] misc: dice: Add driver to forward
 secrets to userspace
Message-ID: <YbNGIimUI7Cagvwe@google.com>
References: <20211209151123.3759999-1-dbrazdil@google.com>
 <20211209151123.3759999-3-dbrazdil@google.com>
 <20211209194807.GB28088@duo.ucw.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211209194807.GB28088@duo.ucw.cz>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Pavel,

On Thu, Dec 09, 2021 at 08:48:07PM +0100, Pavel Machek wrote:
> Hi!
> 
> > +config DICE
> > +	tristate "Open Profile for DICE driver"
> > +	depends on OF_RESERVED_MEM
> > +	help
> > +	  This driver allows to ownership of a reserved memory region
> > +	  containing DICE secrets and expose them to userspace via
> > +	  a character device.
> > +
> 
> Explaining what DICE is (and what Open Profile is) would be useful.
Sure, I'll expand the description.

> I see it is for some kind of DRM? Why is in non-evil and why do we
> want it in Linux?
Best to think of this as an extension to verified boot where each boot
stage signs the hashes of the software it loaded. The certificate is
what's passed in this reserved memory region. It is used in the context
of confidential computing for remote attestation, and it is very similar
to the EFI-based approach from IBM for SEV:
https://lore.kernel.org/all/20211007061838.1381129-1-dovmurik@linux.ibm.com/

There's a link to the project's documentation in the cover letter with
much more technical detail if you're interested.

-David


