Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F1ABF528DFA
	for <lists+devicetree@lfdr.de>; Mon, 16 May 2022 21:32:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243334AbiEPTc1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 May 2022 15:32:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51538 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242301AbiEPTc0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 May 2022 15:32:26 -0400
Received: from mail-oa1-x32.google.com (mail-oa1-x32.google.com [IPv6:2001:4860:4864:20::32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2250765B
        for <devicetree@vger.kernel.org>; Mon, 16 May 2022 12:32:25 -0700 (PDT)
Received: by mail-oa1-x32.google.com with SMTP id 586e51a60fabf-e5e433d66dso21508666fac.5
        for <devicetree@vger.kernel.org>; Mon, 16 May 2022 12:32:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=J76YW6Wdlh5XkWvWlzC9gchLSjC+e1zZeLVaSHsN2OQ=;
        b=d9CQktVULUaK6nXZ/QzkDqI6+WbJO6m8jOyWYhqDLe6AiSL43teR7zxEi4j/IT7G28
         i0FvQpprMbKCLYaRtRu6xtCLzfxz4D+9LtFXrKoj5wr4IU1XrPGKgaW1ckZhsBjDGdDf
         NM0oeFrayV7Db9eD5+OCdlhAGV0efJ6ydoh70=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=J76YW6Wdlh5XkWvWlzC9gchLSjC+e1zZeLVaSHsN2OQ=;
        b=4hbd7F+GIZcL/fSUmMkw0KjUk0+j7mNRMV1wjcU8bCdhXx3PiT+uuwSsa43TiMfucj
         jwlrFgUewMGlxD6Poyvn4fnv3/HqeW35BQyvtnuZWCJzhJsNN8uG2q2mS6K+Jew0+lgM
         gd5L2oTfhPJuIUsfDGmdPL684efRHkKpZhSud+1OIfZinKtq5g+jM6hjDdX4JvFDSV1l
         Nbasf6SaMCFYCO4dBSwj20ikunvl6QDi+DUe4WcfuCIdt/KHJc5HZHPhrmb12Bgitd8G
         igkY03tt6JFa4cGvsVo7UDgMVBhyRyuheuIf0lZUtxyWrqwDkMP8XJ2XvTBQ9AN+kzcs
         SO4g==
X-Gm-Message-State: AOAM532/GnfrH3PD11zjK41tf8Cexk6lFQgdEpCPGvezXrzC8IdVWOoN
        15lZ0gBOYBztUUfsP43EBT3kObNctE52Y63YCpUz/Q==
X-Google-Smtp-Source: ABdhPJzJI92I4I96rEOhysGBJGD/K/e+0SB9aptCslRQ20O4rAnvh5bNk0UoYZG3ZWuAynzOHNF45aylQc9TEohySps=
X-Received: by 2002:a05:6870:240d:b0:f1:b878:e97c with SMTP id
 n13-20020a056870240d00b000f1b878e97cmr880663oap.193.1652729544662; Mon, 16
 May 2022 12:32:24 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 16 May 2022 12:32:24 -0700
MIME-Version: 1.0
In-Reply-To: <CAD=FV=XfmU1GhXZPvUMoh9dqs8iei6s+0gu6Mve-aQ33A+7m3g@mail.gmail.com>
References: <20220512013921.164637-1-swboyd@chromium.org> <20220512013921.164637-3-swboyd@chromium.org>
 <CAD=FV=XfmU1GhXZPvUMoh9dqs8iei6s+0gu6Mve-aQ33A+7m3g@mail.gmail.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Mon, 16 May 2022 12:32:24 -0700
Message-ID: <CAE-0n53nqrSmxZsnReE=yVzN0OkGw8BaNqFxX6mcRkJyxXyyJg@mail.gmail.com>
Subject: Re: [PATCH v5 2/3] dt-bindings: cros-ec: Reorganize property availability
To:     Doug Anderson <dianders@chromium.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        LKML <linux-kernel@vger.kernel.org>, patches@lists.linux.dev,
        devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        chrome-platform@lists.linux.dev,
        Guenter Roeck <groeck@chromium.org>,
        Craig Hesling <hesling@chromium.org>,
        Tom Hughes <tomhughes@chromium.org>,
        Alexandru M Stan <amstan@chromium.org>,
        Tzung-Bi Shih <tzungbi@kernel.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Benson Leung <bleung@chromium.org>,
        Lee Jones <lee.jones@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Doug Anderson (2022-05-12 16:44:44)
> On Wed, May 11, 2022 at 6:39 PM Stephen Boyd <swboyd@chromium.org> wrote:
> > +
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          not:
> > +            contains:
> > +              const: google,cros-ec-rpmsg
> > +    then:
> > +      properties:
> > +        mediatek,rpmsg-name: false
> > +
> > +      required:
> > +        - reg
> > +        - interrupts
>
> Is it worth having an "else" clause here? to explicitly make
> "mediatek,rpmsg-name" required for mediatek?

I don't know if mediatek,rpmsg-name is required for a generic
google,cros-ec-rpmsg. I would guess it isn't, because it's a vendor
prefixed property. Maybe it could look at the parent node property to
see that it is inside a mediatek remoteproc node but I'd rather leave
that to future work.

>
> In any case, this seems right from my (albeit) limited yaml knowledge
> and seems like an improvement.
>
> Reviewed-by: Douglas Anderson <dianders@chromium.org>

Thanks!
