Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 30C1635D92E
	for <lists+devicetree@lfdr.de>; Tue, 13 Apr 2021 09:45:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238057AbhDMHpg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Apr 2021 03:45:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54806 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237080AbhDMHpg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Apr 2021 03:45:36 -0400
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com [IPv6:2607:f8b0:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB1C6C061756
        for <devicetree@vger.kernel.org>; Tue, 13 Apr 2021 00:45:16 -0700 (PDT)
Received: by mail-pf1-x42c.google.com with SMTP id l123so10879891pfl.8
        for <devicetree@vger.kernel.org>; Tue, 13 Apr 2021 00:45:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=QARXMbXYkHRFs98oMdNLg8h+WFH6ZlQGms74fZMVOkQ=;
        b=repmRSmvMl/bvfpmMoyAkDWLo9vhTDm8lUUzc4GCn366TLIpG4a2qO/UM9qD1r1DI+
         mx8LBF9x7XLsGuyWjbc8tjA3DY2SwbjiU2sxBFSZGQm9EixikJFNhpET/jQ0099S3ejK
         SFVHAR0ni/NIu2dC/xVWN0Y4lmEFWBDU3YgciCftYlXY3RRYFIIRQx+DaRqyyX6tg5W+
         JfMTolNSQRoScMZ94dRKkSK5HvdUYfNgpBo/tXAc832geGin+NMsq07vKfJeczfX+R+f
         3ZdvyV1ziRo/Un2YYSE8tAKFbcxuFmwZbKZ10OyTixEz7WPvNHfOi0SysrrASvSahcOn
         ksiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=QARXMbXYkHRFs98oMdNLg8h+WFH6ZlQGms74fZMVOkQ=;
        b=VpmWB44FmmfrZPEas2kzfzZbGXe8APzMImN68PUn7EQxq3szRBDxYqApJaDLv+KUuA
         VBrKIOj/sjhxW7v6lI58x3YPW6SkH3mZN8jA9sh+C6LsFHS5JCqiOLox9BIpxTVf4vPW
         dQyUChxvOwaxJ7t3y8YeJ8lUREDPmkkU1i+SZJueba777aX1tb5ILrWP3w30JJt7bYJ4
         Ht3d46wYbHA6gHaIromDsG025Sh9D1+KI1ImueC1eGGjMXVYmUPG6WeofZ+T2y0T4yuF
         Ea/vBDmbx2N5sKYcPbaFDacwyGC6EOjkh3zrR7CLg+xd/jsnfSolXKY5f+4mSitggrqt
         XuxA==
X-Gm-Message-State: AOAM5335qrERCgS/bjHqvUH2TL0quQbAywI87p9NXTNzM+3iKDL6ssIq
        5Z/yghJF0rt8RCMOyuxuLtN2RA==
X-Google-Smtp-Source: ABdhPJyjRQTjpRuCwjYQYXkq36SzIUgnE7pTkacJBg1IsA6ULGM5LIg1fUqjDRH8fRYq47xVc0U++w==
X-Received: by 2002:a63:1203:: with SMTP id h3mr31126771pgl.223.1618299916375;
        Tue, 13 Apr 2021 00:45:16 -0700 (PDT)
Received: from dragon (80.251.214.228.16clouds.com. [80.251.214.228])
        by smtp.gmail.com with ESMTPSA id 23sm13612618pgo.53.2021.04.13.00.45.13
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 13 Apr 2021 00:45:16 -0700 (PDT)
Date:   Tue, 13 Apr 2021 15:45:09 +0800
From:   Shawn Guo <shawn.guo@linaro.org>
To:     Arend van Spriel <arend.vanspriel@broadcom.com>
Cc:     Kalle Valo <kvalo@codeaurora.org>,
        Rob Herring <robh+dt@kernel.org>,
        =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        Arend van Spriel <aspriel@gmail.com>,
        Franky Lin <franky.lin@broadcom.com>,
        Hante Meuleman <hante.meuleman@broadcom.com>,
        Chi-hsien Lin <chi-hsien.lin@infineon.com>,
        Wright Feng <wright.feng@infineon.com>,
        Chung-hsien Hsu <chung-hsien.hsu@infineon.com>,
        linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        brcm80211-dev-list.pdl@broadcom.com,
        SHA-cyfmac-dev-list@infineon.com
Subject: Re: [PATCH 2/2] brcmfmac: support parse country code map from DT
Message-ID: <20210413074509.GD15093@dragon>
References: <20210408113022.18180-1-shawn.guo@linaro.org>
 <20210408113022.18180-3-shawn.guo@linaro.org>
 <b2e07b41-a83e-5b5d-be1d-7a3e8493abd6@broadcom.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b2e07b41-a83e-5b5d-be1d-7a3e8493abd6@broadcom.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Apr 12, 2021 at 10:09:38AM +0200, Arend van Spriel wrote:
> On 08-04-2021 13:30, Shawn Guo wrote:
> > With any regulatory domain requests coming from either user space or
> > 802.11 IE (Information Element), the country is coded in ISO3166
> > standard.  It needs to be translated to firmware country code and
> > revision with the mapping info in settings->country_codes table.
> > Support populate country_codes table by parsing the mapping from DT.
> 
> comment below, but you may add...
> 
> Reviewed-by: Arend van Spriel <arend.vanspriel@broadcom.com>

Thanks for reviewing, Arend.

> > Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
> > ---
> >   .../wireless/broadcom/brcm80211/brcmfmac/of.c | 53 +++++++++++++++++++
> >   1 file changed, 53 insertions(+)
> > 
> > diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/of.c b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/of.c
> > index a7554265f95f..ea5c7f434c2c 100644
> > --- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/of.c
> > +++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/of.c
> 
> [...]
> 
> > @@ -47,6 +96,10 @@ void brcmf_of_probe(struct device *dev, enum brcmf_bus_type bus_type,
> >   	    !of_device_is_compatible(np, "brcm,bcm4329-fmac"))
> >   		return;
> > +	ret = brcmf_of_get_country_codes(dev, settings);
> > +	if (ret)
> > +		dev_warn(dev, "failed to get OF country code map\n");
> 
> First of all I prefer to use brcmf_err and add ret value to the print
> message " (err=%d)\n".

Okay.

> Another thing is that this mapping is not only
> applicable for SDIO devices so you may consider doing this for other bus
> types as well which requires a bit more rework here.

Right. I will take care of it, if we can convince Kalle that having
this data in DT is not such a bad idea.

Shawn
