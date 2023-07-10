Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2BA1A74D009
	for <lists+devicetree@lfdr.de>; Mon, 10 Jul 2023 10:35:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232995AbjGJIf1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Jul 2023 04:35:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48538 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233004AbjGJIfG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Jul 2023 04:35:06 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB7352695
        for <devicetree@vger.kernel.org>; Mon, 10 Jul 2023 01:34:10 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-2b6a084a34cso61947041fa.1
        for <devicetree@vger.kernel.org>; Mon, 10 Jul 2023 01:34:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1688978042; x=1691570042;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=e8qLO55Vr7jsbm09jztyw8xMmMihk27bt8iUnejOXKA=;
        b=Hvf3tsUJDgBDosylitVXgKWoTMFFxBZhO6B7AsY/+bfGJe/ri96PlWXoTZiRpo1oEe
         ilw+UiKiXAcQ1MSUpCs+GrFtJ1U/x0tTjB3/t7Bw173Uo874h1U96Lcs0sG8F/qe52og
         YhjJzXEZsu/NU2Od3zGihTccc/bAcukTtB4LXsUqhRdxc7RLAyExN88BswUT+vSgvrd1
         I5BuKydv5tA2lbQSsrPFMNGTSvfBAo574L6zLm4/zPW2NgdNX0nUmIHenpkohI9SXacy
         g7mWSvVQh8+mX9nV5Y4mADOXk++zSjaWs+xG2slVSVjhMc4KPEwO2+6On5vysbrinrA8
         qQzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688978042; x=1691570042;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e8qLO55Vr7jsbm09jztyw8xMmMihk27bt8iUnejOXKA=;
        b=Ch/peXu7JnTdcgGV6yhzBLDOvaOA+MACn899IWg4qZDY+Kyu0R6MFS4u56WYhJXhyS
         t/RRMcQAxj/q2HEAhGBUfgh1Sl/FLYJ4ZcGf463wdzx7MFMMkC5o//YxRr7OeOdiYA7v
         lIeA8Al7fen6IBYc4rOMAsXY8DpTfSYO0gh3qXq9Q3DjAu70l+16xuTdFM1lzF+kiEJM
         rVBhTmxEBbTPeOcT43nis47jOX/qq7N0C8ZVZMwCnBQuA2KFvSYhmFpvKOy6EpblCJUw
         H976wu8a2XRXHzMjdUn6mF/jS9lupUVYOeCSbgIUIGZzYvI8Ym8OsHwSoP3/zphO4CX9
         XgFw==
X-Gm-Message-State: ABy/qLZSNRFKUTzKpY4sH6PsMetqr1GB6s6HexkgKjiiZ6XDKeA6F+ze
        mBUFSa9T5i4K6vFzrmVhWO03EA==
X-Google-Smtp-Source: APBJJlEwDXXbGl7RIZcFGrb5mR1IXJNqOS4jXW4DPrQNSeFwwlXhncUnFC4Cqg6Tp4eo0TCEFbFQnw==
X-Received: by 2002:a2e:7d15:0:b0:2b6:d7a0:c27d with SMTP id y21-20020a2e7d15000000b002b6d7a0c27dmr8530764ljc.37.1688978041895;
        Mon, 10 Jul 2023 01:34:01 -0700 (PDT)
Received: from blmsp ([2001:4091:a247:82fa:b762:4f68:e1ed:5041])
        by smtp.gmail.com with ESMTPSA id e14-20020a05600c218e00b003fa96fe2bd9sm9649160wme.22.2023.07.10.01.34.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Jul 2023 01:34:01 -0700 (PDT)
Date:   Mon, 10 Jul 2023 10:34:00 +0200
From:   Markus Schneider-Pargmann <msp@baylibre.com>
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Chun-Jie Chen <chun-jie.chen@mediatek.com>,
        Tinghan Shen <tinghan.shen@mediatek.com>,
        Fabien Parent <parent.f@gmail.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Fabien Parent <fparent@baylibre.com>
Subject: Re: [PATCH v6 8/8] soc: mediatek: pm-domains: Add support for MT8365
Message-ID: <20230710083400.c24jnxxykxjsl47q@blmsp>
References: <20230627131040.3418538-1-msp@baylibre.com>
 <20230627131040.3418538-9-msp@baylibre.com>
 <85ce05db-5392-79e0-1183-b40db641f3ae@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <85ce05db-5392-79e0-1183-b40db641f3ae@collabora.com>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Angelo,

On Tue, Jul 04, 2023 at 12:31:23PM +0200, AngeloGioacchino Del Regno wrote:
> Il 27/06/23 15:10, Markus Schneider-Pargmann ha scritto:
> > From: Fabien Parent <fparent@baylibre.com>
> > 
> > Add the needed board data to support MT8365 SoC.
> > 
> > Signed-off-by: Fabien Parent <fparent@baylibre.com>
> > Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
> 
> 
> 
> ..snip..
> 
> 
> > diff --git a/include/linux/soc/mediatek/infracfg.h b/include/linux/soc/mediatek/infracfg.h
> > index 07f67b3d8e97..f853397697b5 100644
> > --- a/include/linux/soc/mediatek/infracfg.h
> > +++ b/include/linux/soc/mediatek/infracfg.h
> > @@ -2,6 +2,47 @@
> >   #ifndef __SOC_MEDIATEK_INFRACFG_H
> >   #define __SOC_MEDIATEK_INFRACFG_H
> > +#define MT8365_INFRA_TOPAXI_PROTECTEN_STA1				0x228
> > +#define MT8365_INFRA_TOPAXI_PROTECTEN_SET				0x2a0
> > +#define MT8365_INFRA_TOPAXI_PROTECTEN_CLR				0x2a4
> > +# define MT8365_INFRA_TOPAXI_PROTECTEN_MM_M0				BIT(1)
> 
> Personally, I like this kind of indentation, but more like
> 
> #define REGADDRESS
>  #define REGMASK
> 
> instead of
> 
> #define REGADDRESS
> # define REGMASK
> 
> ...but this doesn't count, because this header doesn't follow *either* formats,
> not my preferred, nor yours: this means that, for consistency, you have to follow
> what's in there already, so you have to change that to
> 
> #define REGADDRESS
> #define REGMASK
> 
> ...so please change that to retain consistency across the infracfg.h header,
> after which:
> 
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Thank you for your review. I fixed both issues you pointed out for the
next version.

Best,
Markus
