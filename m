Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5EEAE63B54
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2019 20:45:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727033AbfGISpI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Jul 2019 14:45:08 -0400
Received: from mail-pl1-f194.google.com ([209.85.214.194]:40954 "EHLO
        mail-pl1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726592AbfGISpI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Jul 2019 14:45:08 -0400
Received: by mail-pl1-f194.google.com with SMTP id a93so10546438pla.7
        for <devicetree@vger.kernel.org>; Tue, 09 Jul 2019 11:45:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=ViLBNnOnzY7zldTRB+VtY2OupzQkhT1aSrljzST89Uo=;
        b=RO58/DwZYLjyg34m+aIEQs0yhpxTs8ZWoFmIESn74Q3FoqimbJUmlTAo3/TxGra/6e
         aYZ6FB7gOo7QAAojEARXCakYCq7tfkjPPhyUmVK8JkrylVmvqtlhTxzU/AQOs9YCemFv
         yu7ZYzIGIKe1NAl8leKd1+XW8EbyJSbEb8v4U0a9o8tlQtAgD6h3fx2iJr13xXrzA8zi
         +tMvVqnuZ16ANbfE3KFRsmNeh6aYM0W1B+Da8YFakraJkHTKCenCgBznH5n6yPI3XG1f
         oC6CWGKh6S1AZW3PnZobPctqDDMj9GjPzfHH34X6QfLyCh1a+v1KNQvQRVlLzsW2b4uT
         zsTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=ViLBNnOnzY7zldTRB+VtY2OupzQkhT1aSrljzST89Uo=;
        b=LjR2+Mf1wIB4xLFLLV7gieNnqM2i9DJV3K4Y5FQRDpYMo6mTbwKzMdIxp5YAwqRwfG
         1HhEe2MlyYGXLTvO8e65sk7nqcWu+mmo10y3b/JKFwBCnbw7ujR1xXCnc6Tfuv8R+BHY
         kx5YAa71SjmTwUUA63qSUoewEBBJ/j3o4/gVpqfBVqBz7mfon2fenuHkxazHqcVgl/SM
         T71o9jmin0vYFgTBj1S4ug0UcciQprK9ylraR+MEmM3pgVSoXz5Wa/3ajqSWot9kpRYj
         XVJG5dNZKXxx2SmGcIKay8aTTNIEW8J3cVajdzNviGQwb9Exb5WutwOxEzLLXq6z3l+6
         cEgQ==
X-Gm-Message-State: APjAAAU+tpQFH2gPiac/Ks9JqhSVwv+chQAZe14oZmu4bb61CqEBqEQ6
        0tHL45CtORYnfYfJqlQ5VKZO
X-Google-Smtp-Source: APXvYqwi6E6SS0axML4bALDnmRu699jGwCshm+1OBv8tY56XPO7ICU1qtIVokZscafb+VWy2EfX7OA==
X-Received: by 2002:a17:902:6b86:: with SMTP id p6mr34609306plk.14.1562697907535;
        Tue, 09 Jul 2019 11:45:07 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2405:204:7105:f96f:dc5f:6504:2cec:969e])
        by smtp.gmail.com with ESMTPSA id z19sm6368300pgv.35.2019.07.09.11.45.03
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 09 Jul 2019 11:45:06 -0700 (PDT)
Date:   Wed, 10 Jul 2019 00:14:59 +0530
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     Rob Herring <robh@kernel.org>
Cc:     devicetree@vger.kernel.org,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>
Subject: Re: [PATCH] dt-bindings: arm: Convert RDA Micro board/soc bindings
 to json-schema
Message-ID: <20190709184459.GA11886@Mani-XPS-13-9360>
References: <20190618212229.32302-4-robh@kernel.org>
 <20190709171508.GA10127@Mani-XPS-13-9360>
 <CAL_Jsq+S9FEVq_ikLF2vWS3VkrGueFa8nPnbHhAjThemP+eajA@mail.gmail.com>
 <CAL_Jsq+=rAafEFq+3pUc3A35aLzf9gtgGzj1aheHzoQ+MSiO1Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAL_Jsq+=rAafEFq+3pUc3A35aLzf9gtgGzj1aheHzoQ+MSiO1Q@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jul 09, 2019 at 12:41:19PM -0600, Rob Herring wrote:
> On Tue, Jul 9, 2019 at 12:29 PM Rob Herring <robh@kernel.org> wrote:
> >
> > On Tue, Jul 9, 2019 at 11:15 AM Manivannan Sadhasivam
> > <manivannan.sadhasivam@linaro.org> wrote:
> > >
> > > Hi Rob,
> > >
> > > On Tue, Jun 18, 2019 at 03:22:28PM -0600, Rob Herring wrote:
> > > > Convert RDA Micro SoC bindings to DT schema format using json-schema.
> > > >
> > > > Cc: "Andreas Färber" <afaerber@suse.de>
> > > > Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > > > Signed-off-by: Rob Herring <robh@kernel.org>
> > > > ---
> > > > Andreas, Update the license on this one too to dual licensed if you
> > > > want.
> > >
> > > I'm fine with GPL-2.0. Since there isn't any other RDA specific patches
> > > in my tree, you want to take this patch? Else I have to send the Pull
> > > Request to ARM SoC folks with this patch alone.
> >
> > Okay, I can take it. The preference is actually dual licensed which is
> > why I asked, but that can be done later.
> 
> And is that an ack from you?

Yes, here is the formal tag:

Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Also, Andreas asked to switch to Dual license for Actions platform since he
is the maintainer of it. But for RDA he is not, so I don't think there will
be a concern here (I'm fine with GPL-2.0).

Thanks,
Mani
> 
> Rob
