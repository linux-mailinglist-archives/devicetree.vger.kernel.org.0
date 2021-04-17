Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0F0BB362E61
	for <lists+devicetree@lfdr.de>; Sat, 17 Apr 2021 09:50:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231277AbhDQHvC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 17 Apr 2021 03:51:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45732 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230367AbhDQHvA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 17 Apr 2021 03:51:00 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BE8DFC061574
        for <devicetree@vger.kernel.org>; Sat, 17 Apr 2021 00:50:31 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id x4so34906242edd.2
        for <devicetree@vger.kernel.org>; Sat, 17 Apr 2021 00:50:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=GI51j86oI1oFQF2yHz/2c5vGyhf2rCxxHJsC4k//LdM=;
        b=X8n7KzZvR01HPU7UTpt/s2aAQkvWWJe9HgmlqrFtm9ClxSLRg8S1dYtu6+HtJh8qV3
         JL+aaTw+RWbDv9O5KX58xycGcxXPTwEKh2N/IXtzWYzOj2yd6F92m7EfQSteoIug/Mfs
         r3VKLOMDIKM/SOsYW0Fo6tXBJw8pVjXSmqKyd8lyVcv3/khycwQAN8PPYvIlxOEZByi9
         icG5qOGhb4wje3H6xyvaiDLjG8/HtPVO9+7X5GBFj6zhX7FoNI/6iidBTUF6O4p7mFIS
         x4zlz4PvtPuTKOGWNZVg/0g6imx2LJeH79achg3b/b8jDpHAB1GbTfEqQryOPd61Mej3
         /oCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=GI51j86oI1oFQF2yHz/2c5vGyhf2rCxxHJsC4k//LdM=;
        b=LgOnAsn1qWY0/s4RQ6iEbClt08xo23L1MzYaK0u32AL6Zf8df+ss2YNzGZd+2c7eUw
         pbr9r6yC2iZNcFYR+PwLne/nh0eoPHMCvctYTz9ziw3EVNxqF7OMi4TzKL1lQstoyW7h
         99g+VbIDsid4YMwjqhP81O8wkpjylvrTkICfPJVMTLcchmcWk/ZQaLgycKHeeg1sVi7j
         2ca3x4O8dg48vMUZtl8nH1ELyl+xjRyg66DXyQqpGcEbqbkjkQjttuMs6I1UmcggYgJb
         E0OLtaFhdyMNr8MotFkpHqZN3H7+tXGWKAdc/EFREhoYdMBee7Ey10NLvWiim+qQ7BSo
         WQVw==
X-Gm-Message-State: AOAM530qsgT8j76sYf3TRKRZVfHaX78Dd5QiFbFegs9Y6kHc50uG94/Q
        i3m6e8jJUu9xjrEgTT4pto9lrn71cZQEI+pIp0pL/Q==
X-Google-Smtp-Source: ABdhPJxTXrnekIuzvcy3xpg84xN081whDsLo9csgzO3X65JGVb0SQwuQFBP5XM3cNGJ4XjZcDEQBgWTTYq2KlvADzoo=
X-Received: by 2002:aa7:df8f:: with SMTP id b15mr2738836edy.68.1618645830518;
 Sat, 17 Apr 2021 00:50:30 -0700 (PDT)
MIME-Version: 1.0
References: <20210415104728.8471-1-shawn.guo@linaro.org> <20210415104728.8471-3-shawn.guo@linaro.org>
 <342df138-63dc-f56c-3eb8-ea943800be9d@broadcom.com>
In-Reply-To: <342df138-63dc-f56c-3eb8-ea943800be9d@broadcom.com>
From:   Shawn Guo <shawn.guo@linaro.org>
Date:   Sat, 17 Apr 2021 15:50:19 +0800
Message-ID: <CAAQ0ZWSGoiDTUgJ-81wPM1Ls7sseF1kqzSUue3SVky19kPpOMQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] brcmfmac: support parse country code map from DT
To:     Arend Van Spriel <arend.vanspriel@broadcom.com>
Cc:     Kalle Valo <kvalo@codeaurora.org>,
        Rob Herring <robh+dt@kernel.org>,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        Arend van Spriel <aspriel@gmail.com>,
        Franky Lin <franky.lin@broadcom.com>,
        Hante Meuleman <hante.meuleman@broadcom.com>,
        Chi-hsien Lin <chi-hsien.lin@infineon.com>,
        Wright Feng <wright.feng@infineon.com>,
        Chung-hsien Hsu <chung-hsien.hsu@infineon.com>,
        linux-wireless@vger.kernel.org,
        Linux Netdev List <netdev@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        brcm80211-dev-list.pdl@broadcom.com,
        SHA-cyfmac-dev-list@infineon.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Apr 16, 2021 at 2:00 PM Arend Van Spriel
<arend.vanspriel@broadcom.com> wrote:
>
> On 4/15/2021 12:47 PM, Shawn Guo wrote:
> > With any regulatory domain requests coming from either user space or
> > 802.11 IE (Information Element), the country is coded in ISO3166
> > standard.  It needs to be translated to firmware country code and
> > revision with the mapping info in settings->country_codes table.
> > Support populate country_codes table by parsing the mapping from DT.
> >
> > The BRCMF_BUSTYPE_SDIO bus_type check gets separated from general DT
> > validation, so that country code can be handled as general part rather
> > than SDIO bus specific one.
>
> Had another look....
>
> > Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
> > Reviewed-by: Arend van Spriel <arend.vanspriel@broadcom.com>
> > ---
> >   .../wireless/broadcom/brcm80211/brcmfmac/of.c | 57 ++++++++++++++++++-
> >   1 file changed, 55 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/of.c b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/of.c
> > index a7554265f95f..dd99ac3410e3 100644
> > --- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/of.c
> > +++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/of.c
> > @@ -12,12 +12,59 @@
> >   #include "common.h"
> >   #include "of.h"
> >
> > +static int brcmf_of_get_country_codes(struct device *dev,
> > +                                   struct brcmf_mp_device *settings)
> > +{
> > +     struct device_node *np = dev->of_node;
> > +     struct brcmfmac_pd_cc_entry *cce;
> > +     struct brcmfmac_pd_cc *cc;
> > +     int count;
> > +     int i;
> > +
> > +     count = of_property_count_strings(np, "brcm,ccode-map");
> > +     if (count < 0) {
> > +             /* The property is optional, so return success if it doesn't
> > +              * exist. Otherwise propagate the error code.
> > +              */
> > +             return (count == -EINVAL) ? 0 : count;
> > +     }
> > +
> > +     cc = devm_kzalloc(dev, sizeof(*cc) + count * sizeof(*cce), GFP_KERNEL);
> > +     if (!cc)
> > +             return -ENOMEM;
> > +
> > +     cc->table_size = count;
> > +
> > +     for (i = 0; i < count; i++) {
> > +             const char *map;
> > +
> > +             cce = &cc->table[i];
> > +
> > +             if (of_property_read_string_index(np, "brcm,ccode-map",
> > +                                               i, &map))
> > +                     continue;
> > +
> > +             /* String format e.g. US-Q2-86 */
> > +             if (sscanf(map, "%2c-%2c-%d", cce->iso3166, cce->cc,
> > +                        &cce->rev) != 3)
> > +                     brcmf_err("failed to read country map %s\n", map);
> > +             else
> > +                     brcmf_dbg(INFO, "%s-%s-%d", cce->iso3166, cce->cc,
> > +                               cce->rev);
>
> ... and here you are missing terminating '\n' in format string.

Oops!  Will fix it with v3.

Shawn
