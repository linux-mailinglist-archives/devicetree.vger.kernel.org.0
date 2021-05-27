Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C4DA5392DBA
	for <lists+devicetree@lfdr.de>; Thu, 27 May 2021 14:13:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234406AbhE0MOa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 May 2021 08:14:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45370 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235551AbhE0MOW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 May 2021 08:14:22 -0400
Received: from mail-qt1-x832.google.com (mail-qt1-x832.google.com [IPv6:2607:f8b0:4864:20::832])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8758EC061760
        for <devicetree@vger.kernel.org>; Thu, 27 May 2021 05:12:47 -0700 (PDT)
Received: by mail-qt1-x832.google.com with SMTP id a15so39259qta.0
        for <devicetree@vger.kernel.org>; Thu, 27 May 2021 05:12:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=rXaKjhOnu53lWYcqywr2OhFdBXImoPn3VxfJPwHUIo4=;
        b=WnjChO3R9RWvI4Niq6fm4QmoJcnJmEe6obiSOwDq/jKXiWYMlDLJO5iReFrVjrhkns
         39KorwThkwlzEQps0nxKh0X7EgVdXKTo4taIPfb9OktfgxtUro8i6Meimlr9GWUCIIj6
         ZEOspusZLBhtGxyZudPGcPL+bLJDZwYCdg0T1zGdXiKxIJTNIDgEilG7ddSZN8Uh1bWx
         n/DTBhinNMD/wx3bGPvOvTQUHLDQ07ubEweAm03WpfEZwlZs8jdFelj5+9rI77Yb02lO
         r1qHghN+ZI0FVMZm/oEYB6iAcEyYg0wxqHvAManlPZCrobdsE4CBcjpfX90wn+dDBYmp
         /SOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=rXaKjhOnu53lWYcqywr2OhFdBXImoPn3VxfJPwHUIo4=;
        b=R02OgR0USJFGZCY65DauQzfKii6YmFId+ge8gEjqV6KvAoXd4XeLtiHiUPFAowp4tt
         7yVXpEJTbYFP6H7b8QJcyfFiajGT34AfSvhY7+WXj4JUhkvZst6+MA6VxVYat5rJdsPq
         mRc2YjBMXM18JuSucJ6eFHOBf/Axt7owvZTBJs6itqn29feIU2pjAJud9zKqtype6QFd
         eZLDvqol3x8TbTE7wz9BuFHZ9mmdt3zfXCjOWsYp/fWjYfMVPMQbNMEWQeD8EUExPjvv
         //ZLQHskEy+9JKRLUAsZLpnOUSwohIAEdD0FvqK4hhfAxsawyOoNPEdoDsBIaldD3VWo
         fl7g==
X-Gm-Message-State: AOAM531ajdv76iFUt8KiDkDxqH+9gH30aF0tsJJ6vmDLL7e/QdbNEi/c
        Ur5ZybCxaveE/YMofMoiFeBiUrbqvDYxj/31TDn+hA==
X-Google-Smtp-Source: ABdhPJwtY1i0dxSYBhGhXYfNaO0ZPm4QeiM7Mnx0w+XqMo7RzTf3ZJCtdN4PWJSxNs/cWfdSR+jJKQkoY7svblRCen4=
X-Received: by 2002:ac8:7cb3:: with SMTP id z19mr2803642qtv.22.1622117566370;
 Thu, 27 May 2021 05:12:46 -0700 (PDT)
MIME-Version: 1.0
References: <20210527101345.569725-1-kyletso@google.com> <YK9ylVgwXJB4oNfk@kroah.com>
In-Reply-To: <YK9ylVgwXJB4oNfk@kroah.com>
From:   Kyle Tso <kyletso@google.com>
Date:   Thu, 27 May 2021 20:12:30 +0800
Message-ID: <CAGZ6i=1zVegu_eUJrGwWYsfyVG6v3N4pDY4vwHNShykxf7K3aQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: connector: Replace BIT macro with generic
 bit ops
To:     Greg KH <gregkh@linuxfoundation.org>
Cc:     Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Rob Herring <robh+dt@kernel.org>,
        Badhri Jagan Sridharan <badhri@google.com>,
        LKML <linux-kernel@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 27, 2021 at 6:21 PM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Thu, May 27, 2021 at 06:13:45PM +0800, Kyle Tso wrote:
> > BIT macro is not supported in dt-bindings. Replace it with generic bit
> > operations.
>
> Why isn't the BIT macro supported there?  How are we going to "remember"
> that I should not take patches that use this #define in that location?

I rephrased the commit message in v2

thanks,
Kyle

>
> thanks,
>
> greg k-h
