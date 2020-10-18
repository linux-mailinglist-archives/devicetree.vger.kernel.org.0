Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E787929201C
	for <lists+devicetree@lfdr.de>; Sun, 18 Oct 2020 23:18:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727886AbgJRVST (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 18 Oct 2020 17:18:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50874 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727529AbgJRVSS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 18 Oct 2020 17:18:18 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6464EC0613CE
        for <devicetree@vger.kernel.org>; Sun, 18 Oct 2020 14:18:18 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id e23so8418139wme.2
        for <devicetree@vger.kernel.org>; Sun, 18 Oct 2020 14:18:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=5ncnld9d2zCcWMJbWkEAr0tDoZgRmgaPRrSNN+bvhXA=;
        b=aNHSoI3s5uOgj2BEkqRMKQ9hPq0vAHdRfVk8yPnVYUResog+G5yQGadzN9UTvHLc6+
         6alqquxRdkobMAC7XTRcIb0FWmP+ONydNmJf/PS0jjrT6M6WxcSNI0GtaJoXN/iEBGu3
         uEHvozZ7whc/0Av1gafaQjaB8aBIsA8vBNlqh1rLcO2dbyw0VyoLk0ldsoOsQHx2zrAV
         31mLIPTXj1QU5H8+Zl+jko054/FSBfGEpykvHh5FQsTQ/kAjhE98XNQl9k5rY9SvEUUe
         MH4LCD5R7sjq5VqOl9emcbf2Jihs4gALn1Tgb6VC7GHYxIkQW34q6trfIOMbcDT1ZYKB
         pZxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=5ncnld9d2zCcWMJbWkEAr0tDoZgRmgaPRrSNN+bvhXA=;
        b=YEHzqjcbHWNSUkdemPxtE3cGhgp4nctNyo3K2WcHFwE4Pe3DZCZezr2ISaboBhj6dk
         ffd1lTNL7IJed2aFjiphrRCbcDnGJoExLkq99a6JRLayMAq2eCqkclIYvkMliYvUY/rY
         v2idMmZAI8vDNZBDLQQM8oNikr6YTiKZBW0vmPouF7ioKBJh2bLp7FChzPxGKzg0Ga0I
         EVF7CFS/PWhd9l5eKvgUiTnO9vQFp7v5l8wTg+l+TWaZKE5X/7uNNiPHKJC4aL4Sbbba
         EshCkqB8VG7MGYwVl5SzECRxyf/jXHu/cR2Vyh0KxhPFxZ/ofUIGysk/IRW1IsUGZIlL
         cMvw==
X-Gm-Message-State: AOAM533kQGBiPN9BC8yAtqZ9pLP0v797gdVfEbpCZsDRMlt49xdEyiir
        QswsnupKBBorhQKMiljXIsWYMfHNl7jEXA==
X-Google-Smtp-Source: ABdhPJyUkggYvo1jNWFBxutkpyRjwmjS+6JopwPP+YNaFVS3B3WJVBIJOlN6xt7qci38MVkGw0NZzw==
X-Received: by 2002:a1c:4c13:: with SMTP id z19mr14288002wmf.121.1603055896856;
        Sun, 18 Oct 2020 14:18:16 -0700 (PDT)
Received: from arch-thunder.localdomain (a109-49-46-234.cpe.netcabo.pt. [109.49.46.234])
        by smtp.gmail.com with ESMTPSA id c1sm15036750wru.49.2020.10.18.14.18.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Oct 2020 14:18:16 -0700 (PDT)
Date:   Sun, 18 Oct 2020 22:18:13 +0100
From:   Rui Miguel Silva <rui.silva@linaro.org>
To:     Jonathan Cameron <jic23@kernel.org>
Cc:     Rob Herring <robh@kernel.org>,
        Fabio Estevam <fabio.estevam@nxp.com>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        linux-iio@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: fxas21002c: convert bindings to yaml
Message-ID: <20201018211813.4ysgg532tnx22f3m@arch-thunder.localdomain>
References: <20201014104926.688666-1-rmfrfs@gmail.com>
 <20201016185707.GA1743713@bogus>
 <20201018120046.42689d19@archlinux>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201018120046.42689d19@archlinux>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,
On Sun, Oct 18, 2020 at 12:00:46PM +0100, Jonathan Cameron wrote:
> On Fri, 16 Oct 2020 13:57:07 -0500
> Rob Herring <robh@kernel.org> wrote:
> 
> > On Wed, 14 Oct 2020 11:49:26 +0100, Rui Miguel Silva wrote:
> > > Convert fxas21002c gyroscope sensor bindings documentation to
> > > yaml schema, remove the textual bindings document and update MAINTAINERS entry.
> > > 
> > > Signed-off-by: Rui Miguel Silva <rmfrfs@gmail.com>
> > > ---
> > > v1 -> v2:
> > >    Jonathan Cameron:
> > >        https://lore.kernel.org/linux-iio/20201013153431.000052c9@huawei.com/
> > >        - remove Unit from tittle
> > >        - reword interrupts description
> > >        - drop interrupt-name description
> > >        - add spi example and bindings
> > >        - remove vddxx from required list
> > > 
> > >  .../bindings/iio/gyroscope/nxp,fxas21002c.txt | 31 ------
> > >  .../iio/gyroscope/nxp,fxas21002c.yaml         | 95 +++++++++++++++++++
> > >  MAINTAINERS                                   |  2 +-
> > >  3 files changed, 96 insertions(+), 32 deletions(-)
> > >  delete mode 100644 Documentation/devicetree/bindings/iio/gyroscope/nxp,fxas21002c.txt
> > >  create mode 100644 Documentation/devicetree/bindings/iio/gyroscope/nxp,fxas21002c.yaml
> > >   
> > 
> > Reviewed-by: Rob Herring <robh@kernel.org>
> 
> Nice patch.
> 
> Applied to the togreg branch of iio.git and pushed out as testing for the
> autobuilders to maybe poke at.
> 
> I'm still not 100% sure if unevaluatedProperties or additionalProperties makes
> sense here, but as Rob's happy, I'm happy :)
> 
> Thanks,

Thanks for the review and taking this.

------
Cheers,
     Rui
