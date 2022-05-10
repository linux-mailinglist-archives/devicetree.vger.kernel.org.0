Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 50E49522245
	for <lists+devicetree@lfdr.de>; Tue, 10 May 2022 19:21:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347936AbiEJRY4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 May 2022 13:24:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42366 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347937AbiEJRYv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 May 2022 13:24:51 -0400
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com [209.85.167.176])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0815DEA4
        for <devicetree@vger.kernel.org>; Tue, 10 May 2022 10:20:41 -0700 (PDT)
Received: by mail-oi1-f176.google.com with SMTP id i66so6710956oia.11
        for <devicetree@vger.kernel.org>; Tue, 10 May 2022 10:20:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=Hl+EeVfg1SG/ItNk+3j3E/1KiMEoNYf4v98cMSThK0w=;
        b=ADMGtqMn8MYm10tn61+8E1Bq7KsZRzndmxTDRco44G0rujxHzBphWInUjZQO2SWvOH
         J95u3pT8lbRxPTgEerutaybsMEbFAvoWNyqCkBZfiHhqaBuPyYSFJdtM4cKOJPaRPhX6
         o+cs5vqh0b3GMsdJ25NNfLXgnlbQ8RVbbwj+vd19CwfdJd0w44xKwUGLdaO4mhDD8dbm
         K4MhcCCybkd7jDx2GUZW2aPrH56inj+gVIpwbzWXRsDMTOyxV+vi7DIj+22Usl9RPVIN
         WNWOXt7dxr5dsxZ9GsmrCIUaII2iz2Gaj4iCihG9UUAbm4ngz2EoF+beYqMu3wdwj0Ow
         hS+Q==
X-Gm-Message-State: AOAM530ZQl7jXD5VD9eGOfuYULC8CaZrJOeDivnFvlPWXXUE54DoBJCH
        YZJrt43lNBmW/piEhubj8w==
X-Google-Smtp-Source: ABdhPJwOTBdtvBdyjzF02XoaWDp7j9xraOoLUddz7oDSgLQpivKx7ligBzBxctKoqc23aW5jjq4W7w==
X-Received: by 2002:aca:ab54:0:b0:326:af63:7a7f with SMTP id u81-20020acaab54000000b00326af637a7fmr570106oie.26.1652203240858;
        Tue, 10 May 2022 10:20:40 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id i10-20020a9d624a000000b0060603221267sm5934704otk.55.2022.05.10.10.20.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 May 2022 10:20:40 -0700 (PDT)
Received: (nullmailer pid 2230997 invoked by uid 1000);
        Tue, 10 May 2022 17:20:39 -0000
Date:   Tue, 10 May 2022 12:20:39 -0500
From:   Rob Herring <robh@kernel.org>
To:     Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Cc:     dri-devel@lists.freedesktop.org,
        Sascha Hauer <s.hauer@pengutronix.de>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        Peter Geis <pgwipeout@gmail.com>, krzk+dt@kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: display: rockchip: make reg-names
 mandatory for VOP2
Message-ID: <Ynqe5zcWZw8KJMl1@robh.at.kernel.org>
References: <20220510070914.2346011-1-s.hauer@pengutronix.de>
 <20220510070914.2346011-2-s.hauer@pengutronix.de>
 <3353209.QJadu78ljV@diego>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3353209.QJadu78ljV@diego>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, May 10, 2022 at 04:08:02PM +0200, Heiko Stübner wrote:
> Hi Sascha,
> 
> Am Dienstag, 10. Mai 2022, 09:09:12 CEST schrieb Sascha Hauer:
> > The VOP2 driver relies on reg-names properties, but these are not
> > documented. Add the missing documentation, make reg-names mandatory
> > and increase minItems to 2 as always both register spaces are needed.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> 
> I'm not sure how the DT-people work - if they only track the devicetree list
> or their x+dt@kernel.org accounts or some mixture, but the patch was
> missing the maintainer email addresses - I've added them here now :-) .

I only see what is in DT PW. Since I'm copied on almost everything that 
goes to the DT list, CC'ing me has almost no effect.

> The change looks good to me and as I merged the original binding
> into drm-misc only some days ago, we also don't have a backwards-
> compat issue yet, so hopefully DT-people will think similarly .

It will fail checks... I can't run them as this doesn't apply, so 
hopefully someone does. Or I can complain when next breaks.

Rob
