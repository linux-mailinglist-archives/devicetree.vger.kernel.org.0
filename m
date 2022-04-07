Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 714FD4F89FD
	for <lists+devicetree@lfdr.de>; Fri,  8 Apr 2022 00:15:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230474AbiDGUx3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Apr 2022 16:53:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42178 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230407AbiDGUxS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Apr 2022 16:53:18 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE7BA3F309
        for <devicetree@vger.kernel.org>; Thu,  7 Apr 2022 13:48:17 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id c7so9710634wrd.0
        for <devicetree@vger.kernel.org>; Thu, 07 Apr 2022 13:48:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=qGHTBjiRtcoK9jZMs6uWmY+rq4X7h4rZUWallI+80rk=;
        b=ifLyrYtbKBJqpkzTY9qg722l/SIY+VrF14Uxn3pnIpElJGUIv5AXoPuWrtdw6E8UQO
         CWOo2cASB1LfSwFNARjJIYE/ZP/Tr2/b77q93Mqx+gLd9X6ddLDdE+9VXIl6GrO+egpH
         ZI/lRyEWI72uyYV21ynMw29jpOpY3Xd3iI5Tw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=qGHTBjiRtcoK9jZMs6uWmY+rq4X7h4rZUWallI+80rk=;
        b=2BY5G25o+0ioWmBakan3J8WA67PpkHjXhOLvl7zU/husQ0sldFK3TxjRCC2h46ll40
         EHpvlvUFN82NkbUiP8evjQriaGsJI+0e9BB//+JtWdYtEAqj7g93vs4KD3NjOXtbPnnm
         FjidNmxv78PxnrsBi1bjDeXUPssDfE1CvmS7tQoN6SDp9T9YUf+DemgzeJmlHKzmSbji
         qZV/1sg74AG90L7FcdaHS6yaEV/H269eJzFs8GoF1aZT50wpko/55+YAUk86SkRMk3gF
         IeouHDSvGWpvSODD4bzzoRWjt8Yqe6LOlSdq8Wrhtk3hY0nZiwFb4io60EPxwyoN9rqn
         c0sg==
X-Gm-Message-State: AOAM533lG8kb3bOqwzo6dfJhCayMOXsd1H+Uq4VSGuEpkFphTpLDonHh
        eTiukFi3cTXOYNLuHQ4gyLtd9QMGWlBhuA==
X-Google-Smtp-Source: ABdhPJx+12wcWZOcbrmvKuK8j5I5I1mjLJ9VSCFlv+v6bztKlefCbIiyzsVdaTWgA7j8hqSlure3UQ==
X-Received: by 2002:a05:600c:190e:b0:38c:b19d:59ff with SMTP id j14-20020a05600c190e00b0038cb19d59ffmr13592765wmq.1.1649360207781;
        Thu, 07 Apr 2022 12:36:47 -0700 (PDT)
Received: from google.com ([37.228.205.1])
        by smtp.gmail.com with ESMTPSA id j17-20020a05600c1c1100b0038e389ab62esm14469296wms.9.2022.04.07.12.36.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Apr 2022 12:36:47 -0700 (PDT)
Date:   Thu, 7 Apr 2022 19:36:45 +0000
From:   Fabio Baltieri <fabiobaltieri@chromium.org>
To:     Rob Herring <robh@kernel.org>
Cc:     Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= 
        <u.kleine-koenig@pengutronix.de>, Lee Jones <lee.jones@linaro.org>,
        chrome-platform@lists.linux.dev, linux-pwm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/4] dt-bindings: update google,cros-ec-pwm
 documentation
Message-ID: <Yk89TRQRpL1DIioa@google.com>
References: <20220331125818.3776912-1-fabiobaltieri@chromium.org>
 <20220331125818.3776912-4-fabiobaltieri@chromium.org>
 <Yk20uTE/Vdm2c6jI@robh.at.kernel.org>
 <Yk73f9yyxy5LBC+V@google.com>
 <Yk8WBXBH53rtZsBF@robh.at.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Yk8WBXBH53rtZsBF@robh.at.kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Apr 07, 2022 at 11:49:09AM -0500, Rob Herring wrote:
> On Thu, Apr 07, 2022 at 02:38:55PM +0000, Fabio Baltieri wrote:
> > Hi Rob,
> > 
> > On Wed, Apr 06, 2022 at 10:41:45AM -0500, Rob Herring wrote:
> > > On Thu, Mar 31, 2022 at 12:58:17PM +0000, Fabio Baltieri wrote:
> > > > Update google,cros-ec-pwm node documentation to mention the
> > > > google,use_pwm_type property.
> > > > 
> > > > Signed-off-by: Fabio Baltieri <fabiobaltieri@chromium.org>
> > > > ---
> > > >  .../devicetree/bindings/pwm/google,cros-ec-pwm.yaml         | 6 ++++++
> > > >  1 file changed, 6 insertions(+)
> > > > 
> > > > diff --git a/Documentation/devicetree/bindings/pwm/google,cros-ec-pwm.yaml b/Documentation/devicetree/bindings/pwm/google,cros-ec-pwm.yaml
> > > > index 4cfbffd8414a..9c895c990ed8 100644
> > > > --- a/Documentation/devicetree/bindings/pwm/google,cros-ec-pwm.yaml
> > > > +++ b/Documentation/devicetree/bindings/pwm/google,cros-ec-pwm.yaml
> > > > @@ -19,6 +19,12 @@ description: |
> > > >  properties:
> > > >    compatible:
> > > >      const: google,cros-ec-pwm
> > > > +
> > > > +  google,use-pwm-type:
> > > > +    description:
> > > > +      Use PWM types (CROS_EC_PWM_DT_<...>) instead of generic channels.
> > > > +    type: boolean
> > > 
> > > Either do a new compatible string if the cell interpretation is mutually 
> > > exclusive (channel number vs. type) or split the number space for the 
> > > 1st cell between type and channel number. IOW, set a bit (31?) to 
> > > signify the number is a type, not a channel.
> > 
> > Split the number space was my first (tentative) implementation as well,
> > but it turns out that the PWM subsystem really wants channels to be
> > zero-based[1], so I don't think flags or bitmasks are really an option.
> 
> Fix the PWM subsystem then...

It's a good design decision, allows for probe time validation and a good
debugfs interface, I'm happy to have this feature comply with it.

> 
> > New compatible sounds good though, I'll rework a v3 with that change.
> > 
> > Thanks!
> > Fabio
> > 
> > [1] https://elixir.bootlin.com/linux/v5.17/source/drivers/pwm/core.c#L423
> > 
> > -- 
> > Fabio Baltieri

-- 
Fabio Baltieri
