Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D73853D147E
	for <lists+devicetree@lfdr.de>; Wed, 21 Jul 2021 18:48:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229816AbhGUQHz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 12:07:55 -0400
Received: from mail-il1-f170.google.com ([209.85.166.170]:44880 "EHLO
        mail-il1-f170.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229750AbhGUQHy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Jul 2021 12:07:54 -0400
Received: by mail-il1-f170.google.com with SMTP id r16so2819680ilt.11
        for <devicetree@vger.kernel.org>; Wed, 21 Jul 2021 09:48:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=O/W580fmMqSS7Pf5PsBdUHgJWgbLJajmptF2V2Q16OU=;
        b=P7QO44gMSAelmmT0ly2LjkTgKOSd8fjX8Y/i6O8ES1qaNnpkAunGwVGuMvAbM4zpjq
         E1bHzCDg7I5AMuz5VUpgGXaoWjai+TjF9tm9aX9WCqOEwxok0TBZpiYY2GHnHSJG2TJf
         UBT0v39F3XVxHmO8QaQad+6GtN5IPKgpOIiSf+Znk3MKJHe8EoFJCWCjGqBmZkU3YlRK
         WMTZT9PW7ngi+xX9Y3bt4Z9Is/Cq0BuJA5OyMwlZzFbX+L4B1gKivwNhDotCUkMz5zX8
         AmHm/ZuYVImVdjtgAJu9pBUupiQqTTCDcMX4TmyG2oq6Ek+KY0YJbIaNCaum0eJMuu8b
         VsMA==
X-Gm-Message-State: AOAM533Z6E0fwemeCa2d722WI2zgsPqOL7sXHksRBVq9tU2d9D0c05mS
        dUeklghViRrs5ZOAra9vBQ==
X-Google-Smtp-Source: ABdhPJxuhLypCQW8u2fima7UvMmkGwpdJvKAzFz5lMU/qkp/bmwKf90PkFZMkJbwicHsS1tkZHvsEA==
X-Received: by 2002:a92:a810:: with SMTP id o16mr10466561ilh.244.1626886109848;
        Wed, 21 Jul 2021 09:48:29 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id z18sm13120099ilp.68.2021.07.21.09.48.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jul 2021 09:48:29 -0700 (PDT)
Received: (nullmailer pid 2425976 invoked by uid 1000);
        Wed, 21 Jul 2021 16:48:26 -0000
Date:   Wed, 21 Jul 2021 10:48:26 -0600
From:   Rob Herring <robh@kernel.org>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree@vger.kernel.org, Frank Rowand <frowand.list@gmail.com>,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: Re: [PATCH 00/54] ARM: dts: Last round of DT schema fixes
Message-ID: <20210721164826.GA2405162@robh.at.kernel.org>
References: <20210721140424.725744-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210721140424.725744-1-maxime@cerno.tech>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jul 21, 2021 at 04:03:30PM +0200, Maxime Ripard wrote:
> Hi,
> 
> Here's another round of schema warnings fixes for the Allwinner platform.
> 
> There's a fair share of new schemas in there since the schema tools now warn
> when a compatible is not documented in a schema.
> 
> We don't have any warning anymore if we use the OPP binding Rob submitted, and
> since that means we have all our devices properly validated I don't expect more
> fixes now, aside from the usual bunch of regressions.

Great! You deserve a prize. 

I want to start enabling the schema checks by default. (Though then I'd 
have to worry about new warnings.) This should be pretty easy to do 
where we have subdirs per family, but for arm32 we'd need to move dts 
files to subdirs if we don't want a flag per dts file.

Rob
