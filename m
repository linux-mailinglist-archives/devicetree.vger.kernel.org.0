Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E64353D89B7
	for <lists+devicetree@lfdr.de>; Wed, 28 Jul 2021 10:24:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235360AbhG1IYT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Jul 2021 04:24:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39132 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235068AbhG1IYT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Jul 2021 04:24:19 -0400
Received: from mail-il1-x134.google.com (mail-il1-x134.google.com [IPv6:2607:f8b0:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B529C061760
        for <devicetree@vger.kernel.org>; Wed, 28 Jul 2021 01:24:18 -0700 (PDT)
Received: by mail-il1-x134.google.com with SMTP id y4so1946773ilp.0
        for <devicetree@vger.kernel.org>; Wed, 28 Jul 2021 01:24:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=engleder-embedded-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=omd/1SeMY2p1KwQ68qQgqLrMpU5rLhs6hW4OZ6EqVao=;
        b=DhbRAwsCbfDhDyg3qozsu6aQqCi78QGxEVQAOtVPEIe+91lKB+K0r1dNKG36DX3Odm
         sUzW7wRRHTMzTAbPZ/kyGS+uV9b1ZuQwptdsfgmTDh4GpetO+ZSMC3OoCSeu/LdRf5mN
         R0WenLG3jJFjDFlur4fHNzx5QmOk285ArZkDSopNGlo5gsn1G7kOIDeiYVvljCUZDZpk
         +yWZ5PS3FZOJNzyM52xblX7lwGKWNZDdvLjstMLuQnkH8+MHRS/wR2U/9eF//IvLEtTf
         rtgP83bzrM/9FTtkzTfDHq5r2kUbGgtPKnbl77ggkE+7xYDayS+I4kgoJX+GNX5cXcKf
         oM+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=omd/1SeMY2p1KwQ68qQgqLrMpU5rLhs6hW4OZ6EqVao=;
        b=UQKUPCz3Cr2JXmnbFMrWSXCHroueqFSR53XuTVnDPW5bcHNdeRPLvKvw4Kjav0Cb1C
         leyG6Lxmz4+8DfiLdWAeFrWpgm8fteTJGfbHqunKw9h1Lh77H93qjcnUMyqti9dXtBRM
         CNnpK4Lp8kKmp6k/lSRax6K2C0oJbLT1OIbz3qNX+LM0dZJ6CP1sxQWI1KDC6FirqaXN
         oFeKPNoXddnZzhOMEe03d61QL3NoGaVSETzvdVIIT7k25r3OeMl0FP/T2HxmCjTy0JhU
         07GnKNUDrOXJWfu5SawMeSXj3Hn8zve+iHFVJM6OCmy4yjOIsLYSRhWo4BMH1p25RKrV
         A7Ng==
X-Gm-Message-State: AOAM530II4uWAVkYGwBeb2Xrz5mrwRdaKxqfE2OFuetWeilWSaoy0kUq
        W8ZpIddyqVk9G0GOo07xVScZMoCJ/XsgP7iVQnmdyQ==
X-Google-Smtp-Source: ABdhPJylcOgm9kOTb+2MslpnGeIT4+c72Va9hxQ2TRtKnwQcTIJZaaWVTT3rxafvYmck+V2+pGvfMsWxJkr0eHaZPnE=
X-Received: by 2002:a92:cec5:: with SMTP id z5mr18570399ilq.226.1627460657663;
 Wed, 28 Jul 2021 01:24:17 -0700 (PDT)
MIME-Version: 1.0
References: <20210726194603.14671-1-gerhard@engleder-embedded.com>
 <20210726194603.14671-5-gerhard@engleder-embedded.com> <YP8pM+qD/AfuSCcU@lunn.ch>
 <CANr-f5y7eVbAf_NK3puJa3AcnkLXMbhzfwwmZ+r2KuWMbDhhsA@mail.gmail.com> <YQCLg3iLubJW+3yB@lunn.ch>
In-Reply-To: <YQCLg3iLubJW+3yB@lunn.ch>
From:   Gerhard Engleder <gerhard@engleder-embedded.com>
Date:   Wed, 28 Jul 2021 10:24:06 +0200
Message-ID: <CANr-f5wYUK4R_XsujwvhSbz-t3==UefQ9VM9kgoaP+Y-Qs_Aww@mail.gmail.com>
Subject: Re: [PATCH net-next 4/5] tsnep: Add TSN endpoint Ethernet MAC driver
To:     Andrew Lunn <andrew@lunn.ch>
Cc:     David Miller <davem@davemloft.net>,
        Jakub Kicinski <kuba@kernel.org>,
        netdev <netdev@vger.kernel.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jul 28, 2021 at 12:41 AM Andrew Lunn <andrew@lunn.ch> wrote:
>
> > I also expect some discussion about this feature. Mapping device specific
> > TX/RX queues to user space is not done in mainline Linux so far.
>
> That is probably not quite true. I expect GPUs do it, or at least
> something very similar.
>
> > I will follow your suggestion and drop tsnep_stream.c for the moment.
> > Any early comments about this feature are welcome, because the direct
> > use of additional TX/RX queues for real-time communication is the main
> > feature of this device.
>
> I know enough to know i don't know enough about cache management from
> user space to be able to make any sensible recommendations.
>
> You probably want to start a discussion with the XDP people and get
> them to agree XDP does not work for your use case. Also, the people
> who implemented zero-copy, MSG_ZEROCOPY and make sure that is also
> unsuitable. Then see if you can reuse some GPU code which has been
> well reviewed and tested. You will get less pushback that way,
> compared to your own code which will need a good review by somebody
> who understands all the issues.

I will try to follow your suggestions. Thanks!

Gerhard
