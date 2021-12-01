Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4258D46594C
	for <lists+devicetree@lfdr.de>; Wed,  1 Dec 2021 23:32:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353642AbhLAWfV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Dec 2021 17:35:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45348 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1353641AbhLAWfO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Dec 2021 17:35:14 -0500
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com [IPv6:2607:f8b0:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC60CC061748
        for <devicetree@vger.kernel.org>; Wed,  1 Dec 2021 14:31:52 -0800 (PST)
Received: by mail-pg1-x52b.google.com with SMTP id r138so25013348pgr.13
        for <devicetree@vger.kernel.org>; Wed, 01 Dec 2021 14:31:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=umzTzWZcfP0yiExHMah/W0arzACFOIq7DI/DXIKQLOc=;
        b=D9PL+HXvJS7bjkOniCqpNV9drNtiGClJAgGX4FT/dqmyJgslns0Do3DDQH2OE/Ffuz
         /DI/8ixpT2m9MEpqIzGvjFWWK+cIZjSKv/KI45gMc+YcDJkccqLzMceLMKjFBxgEo7oV
         W3Zuohl1F9secLmaHcTPyNAzFZ7gWOxvTzunE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=umzTzWZcfP0yiExHMah/W0arzACFOIq7DI/DXIKQLOc=;
        b=OH0RU/SK338HJ/MOTS67ajewJgH33/EoJq5OEztMCLvg0X6Qy0qNALzim6e0FnJMx7
         RSaOD/15T1Dk4RHDhlAzc0o4ku/m2PbE5prGEQXqiPLB5URsDmELycIIRZZ+5C7XmUdx
         TOZMe8BEOcsh7MrWsp2rWLzHKB4dTo64LatHBWw+B46acbyHxVZnAtC6TAE7Js9t0SvB
         q8l3isSCspj++lkHMifoU7ycZXbYzFQ1f2uyvnM+dFdPWj2T/X+NeW5rNfD0S89QHYJR
         iJ4Qf2Yeg9Zh4++XPzR2F1ctoZZpvKQ9ClmM29dKEvyas0qcR0gGMIdUJR8bBjMLsHs5
         tM7Q==
X-Gm-Message-State: AOAM531mhyPuSeCNIk85riXw94UtRSbNvS4xLt7EC/K1vQ/1jG64tgM9
        FUOaQCVDQCR6+aNtZ0GHVTl21g==
X-Google-Smtp-Source: ABdhPJxtxvfFfZW1bkf55O/MgtlKEV+J1nodvrXMKmcbIq9+C4VdZJe2ZuIaW0GnPRVP53bfzxRVsw==
X-Received: by 2002:a05:6a00:1482:b0:49f:d9af:27dc with SMTP id v2-20020a056a00148200b0049fd9af27dcmr9310139pfu.9.1638397912453;
        Wed, 01 Dec 2021 14:31:52 -0800 (PST)
Received: from localhost ([2620:15c:202:201:b371:4539:c97c:c751])
        by smtp.gmail.com with UTF8SMTPSA id d12sm558927pgf.19.2021.12.01.14.31.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Dec 2021 14:31:52 -0800 (PST)
Date:   Wed, 1 Dec 2021 14:31:51 -0800
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Peter Chen <peter.chen@kernel.org>, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org,
        Douglas Anderson <dianders@chromium.org>,
        Roger Quadros <rogerq@kernel.org>,
        Michal Simek <michal.simek@xilinx.com>,
        Ravi Chandra Sadineni <ravisadineni@chromium.org>,
        Bastien Nocera <hadess@hadess.net>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Alan Stern <stern@rowland.harvard.edu>,
        Mathias Nyman <mathias.nyman@intel.com>,
        Felipe Balbi <balbi@kernel.org>
Subject: Re: [PATCH v17 2/7] of/platform: Add stubs for
 of_platform_device_create/destroy()
Message-ID: <Yaf318q5CcqLMCK6@google.com>
References: <20211116200739.924401-1-mka@chromium.org>
 <20211116120642.v17.2.I08fd2e1c775af04f663730e9fb4d00e6bbb38541@changeid>
 <YZvW3UEkXy8dPmpz@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <YZvW3UEkXy8dPmpz@google.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Nov 22, 2021 at 09:43:57AM -0800, Matthias Kaehlcke wrote:
> On Tue, Nov 16, 2021 at 12:07:34PM -0800, Matthias Kaehlcke wrote:
> > Code for platform_device_create() and of_platform_device_destroy() is
> > only generated if CONFIG_OF_ADDRESS=y. Add stubs to avoid unresolved
> > symbols when CONFIG_OF_ADDRESS is not set.
> > 
> > Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> > Acked-by: Rob Herring <robh@kernel.org>
> 
> Is anything preventing this patch from landing? It has Rob's ack and is
> an improvement regardless of the fate of the rest of the series it is
> part of. The patch was carried around unchanged in the last 10 versions
> of the series, it would be nice if it could just get landed instead of
> keep carrying it around :)

ping

Rob/Frank: is there any reason why this patch can't be landed?

Thanks

Matthias
