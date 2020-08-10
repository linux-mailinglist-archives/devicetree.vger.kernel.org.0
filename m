Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5725824028B
	for <lists+devicetree@lfdr.de>; Mon, 10 Aug 2020 09:31:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726428AbgHJHbd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Aug 2020 03:31:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47920 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725846AbgHJHbc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Aug 2020 03:31:32 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47D7EC061756
        for <devicetree@vger.kernel.org>; Mon, 10 Aug 2020 00:31:32 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id a15so7129354wrh.10
        for <devicetree@vger.kernel.org>; Mon, 10 Aug 2020 00:31:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=4x9G4BKQPEodKbNbhS34JTOCfB7se7v0YDW0moilQvg=;
        b=KmjOr7lGhApH6KmO1rV2ur9Cq8V7cNEvM8FRBK312jsW9+HLFlI/uzKP10UPa5smUh
         MoOjclfPeo/4V+LP8l7LPZ68sn9H/heVE996XMzsiBINWGZfhnIE+3CJJd4WeacdBgBa
         kg4kjO9LHV4tvpX3bK4xbgbWcsXdIN4b3k/ISucIebTERr0TEg1H8+JuovkT6/2gBHWn
         HcWBMkGEy5oDrrBGqN9Haq1IlLCWfIWvZsDoy/7r1majuwzYvVqFwkiLFLJ3SeHEjEl+
         ENQHPT2cAjuLfipnQNOXfEHR9/QMK+2cPXur508C9BBp0SQIbaek9bsgdDPq4vL/m0il
         YJzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=4x9G4BKQPEodKbNbhS34JTOCfB7se7v0YDW0moilQvg=;
        b=VIz21cpQA0CRNTNn5/Uti2rYi579zGHkv4crGI9A9yGlqI3uVPCjT5Cn+k9AHfqrvp
         wmOyG3wS469vhdW62XqQbN7na6WD+01OzYobBaG2w1YrWN/enPJH4HSHkVehcvS3kj96
         ogU9XfCdpW6Yh+0QQdAV1AzRJMPY8Yz7/buIY/D4Xx14/5qkc/NdmnD6eC4ZELTvWAQ5
         N5ARLhBmEaKXXRyNoxLZcwBsrzG3XWuQDH/uyx4XiRvZdxojUA0Z+3dXhzmgGJ9CLKbL
         zLlhXdxTDtiawmVh5MHyOYyUHdaabWTelJl0m+DR7/jCZ/5LE8BXpmMt4PLdG2vis7lX
         h05Q==
X-Gm-Message-State: AOAM533ls+XXGDq+WAVL0uKfZecqyggV2rewTQnDmpgq9vHvOPTb1+IT
        VdSuPMhMpu4UYS2Ep6uSiO/RmaLwkME=
X-Google-Smtp-Source: ABdhPJxExxrYLyu6qXhRPgZztXKPrU/zgJr51FhpKEO58wSzN65gPrJEPbrrE6QHLTBHtOvwIbO0TA==
X-Received: by 2002:adf:a351:: with SMTP id d17mr23056398wrb.111.1597044691012;
        Mon, 10 Aug 2020 00:31:31 -0700 (PDT)
Received: from dell ([2.27.167.73])
        by smtp.gmail.com with ESMTPSA id z15sm20056653wrn.89.2020.08.10.00.31.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Aug 2020 00:31:30 -0700 (PDT)
Date:   Mon, 10 Aug 2020 08:31:28 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Hsin-hsiung Wang <hsin-hsiung.wang@mediatek.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Frank Wunderlich <frank-w@public-files.de>,
        Josef Friedl <josef.friedl@speed.at>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        srv_heupstream <srv_heupstream@mediatek.com>
Subject: Re: [PATCH 1/8] mfd: mt6358: refine interrupt code
Message-ID: <20200810073128.GC4411@dell>
References: <1595509133-5358-1-git-send-email-hsin-hsiung.wang@mediatek.com>
 <1595509133-5358-2-git-send-email-hsin-hsiung.wang@mediatek.com>
 <20200727154840.GY1850026@dell>
 <1596443379.31084.3.camel@mtksdaap41>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1596443379.31084.3.camel@mtksdaap41>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 03 Aug 2020, Hsin-hsiung Wang wrote:

> Hi,
> 
> On Mon, 2020-07-27 at 16:48 +0100, Lee Jones wrote:
> > On Thu, 23 Jul 2020, Hsin-Hsiung Wang wrote:
> > 
> > > This patch refines the interrupt related code to support new chips.
> > 
> > Refines in what way?
> > 
> > What makes this better?
> > 
> 
> Thanks for the comment. I will add more information into comment message
> based on my below explanation.

Thanks.

> > > Signed-off-by: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
> > > ---
> > >  drivers/mfd/mt6358-irq.c        | 65 ++++++++++++++++++++++++-----------------
> > >  include/linux/mfd/mt6358/core.h |  8 ++---
> > >  2 files changed, 41 insertions(+), 32 deletions(-)
> > > 
> > > diff --git a/drivers/mfd/mt6358-irq.c b/drivers/mfd/mt6358-irq.c
> > > index db734f2..4b094e5 100644
> > > --- a/drivers/mfd/mt6358-irq.c
> > > +++ b/drivers/mfd/mt6358-irq.c
> > > @@ -13,7 +13,9 @@
> > >  #include <linux/platform_device.h>
> > >  #include <linux/regmap.h>
> > >  
> > > -static struct irq_top_t mt6358_ints[] = {
> > > +#define MTK_PMIC_REG_WIDTH 16
> > > +
> > > +static const struct irq_top_t mt6358_ints[] = {
> > >  	MT6358_TOP_GEN(BUCK),
> > >  	MT6358_TOP_GEN(LDO),
> > >  	MT6358_TOP_GEN(PSC),
> > > @@ -24,6 +26,13 @@ static struct irq_top_t mt6358_ints[] = {
> > >  	MT6358_TOP_GEN(MISC),
> > >  };
> > >  
> > > +static struct pmic_irq_data mt6358_irqd = {
> > > +	.num_top = ARRAY_SIZE(mt6358_ints),
> > > +	.num_pmic_irqs = MT6358_IRQ_NR,
> > > +	.top_int_status_reg = MT6358_TOP_INT_STATUS0,
> > > +	.pmic_ints = mt6358_ints,
> > > +};
> > 
> > Dynamically assigned driver data is usually preferred.
> > 
> > Why have you gone static?
> > 
> 
> Do you consider the memory allocation?
> Below modification is to assign necessary data dynamically and the code
> will become longer with more chips if we assign every member of the
> structure.

[...]

Never mind.  On second glance, this should be fine.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
