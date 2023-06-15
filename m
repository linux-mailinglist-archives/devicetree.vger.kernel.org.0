Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 47B0A73143B
	for <lists+devicetree@lfdr.de>; Thu, 15 Jun 2023 11:41:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230266AbjFOJlJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Jun 2023 05:41:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40542 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343808AbjFOJkS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Jun 2023 05:40:18 -0400
Received: from mail-yb1-xb33.google.com (mail-yb1-xb33.google.com [IPv6:2607:f8b0:4864:20::b33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A88132738
        for <devicetree@vger.kernel.org>; Thu, 15 Jun 2023 02:39:44 -0700 (PDT)
Received: by mail-yb1-xb33.google.com with SMTP id 3f1490d57ef6-bd744ffc263so1520822276.3
        for <devicetree@vger.kernel.org>; Thu, 15 Jun 2023 02:39:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686821983; x=1689413983;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=pONVwxSbcdmVOA8XkSolp+WWOJM51GesmR2PoAupnRk=;
        b=il2E8gCL+JWp48g/KlDGkGoqwb15G67wPu0om5aaLUMK/h+ozjsQ9h3QN8cUShKrbD
         BJ786HuEGzi7Tk+HKm8mIbD1D4wmncguwAQPIrflmBKtrxtD4gJZ7GUbnjc/WjYcMVsY
         sd7gmhDRzGbLtLQ+jpmdU+o7EwLgd32biy1131QZS+3TPeQGj70vROAcXzooq78hCx/6
         cHTUmtjRmv/CZufnYAGv38qBL3HfxO9/9rrj/i6UE0OCluwc5oEtVdCsxGNejvLRe+v4
         7UcmquirexrdLHXWSEjccdse7j8IRS/xwihZxRsK8RqT/V6h9xbo6Ux0Eesj60kr7Lhr
         zWrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686821983; x=1689413983;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pONVwxSbcdmVOA8XkSolp+WWOJM51GesmR2PoAupnRk=;
        b=EpPtzmtZjkSs6Y00fIMjAQoYORMYs7H4KAkWMri4KBSgX1quso27g//t20Vo1YpAX5
         dktpARfm39miT/ySmt0B0EvwVPzejvKijWVslXaOsNzUwM3XZGrHjp0jywRB7yNZuNVC
         /u0Qy0PS4fZn+E+xbjkdu76e3dwBaP+ReWViGAClwmHdchkoMvJlZTxWkrlk8S5T6wee
         zMDPFgoOG2s5HgxISj54Loc9/L8URzK1nSVm2bSOj9lN/6nD5bXAwC6uDs0xKvLZFq9/
         whQ66VhdpVKI0A1pUVo2NVoBJY1XdLHBrLDk78Y9ipraXBp3JNFsL5EC2zqTucyE3zuN
         l9KQ==
X-Gm-Message-State: AC+VfDw670BMz/dcdI1gfHIXRQ7vN1LyCk2a4qCSAC+3R+v7Mj11ndgz
        XJsG0vOaojrP6xbSpX/tF/1snQ3hlXMw+acQhVZSEQ==
X-Google-Smtp-Source: ACHHUZ7GfJiSjP1FVAtXdYQD+ndL0ZNsYioTMzV6OBYPKzc1wBKYfovtG4VAsqIcqcrzwiA4IuAR9fDELdVelybobR4=
X-Received: by 2002:a25:240d:0:b0:bd5:4e6d:9159 with SMTP id
 k13-20020a25240d000000b00bd54e6d9159mr4249969ybk.17.1686821983011; Thu, 15
 Jun 2023 02:39:43 -0700 (PDT)
MIME-Version: 1.0
References: <20230607124628.157465-1-ulf.hansson@linaro.org>
 <20230607124628.157465-10-ulf.hansson@linaro.org> <20230615084430.boamsz56kqqi3n6h@bogus>
In-Reply-To: <20230615084430.boamsz56kqqi3n6h@bogus>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Thu, 15 Jun 2023 11:39:06 +0200
Message-ID: <CAPDyKFoiL47wadabh1jcOr4q4uwJm1UyhHHMnmVcys=bBBVcXQ@mail.gmail.com>
Subject: Re: [PATCH 09/16] dt-bindings: firmware: arm,scmi: Extend bindings
 for protocol@13
To:     Sudeep Holla <sudeep.holla@arm.com>
Cc:     Cristian Marussi <cristian.marussi@arm.com>,
        Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Nikunj Kela <nkela@quicinc.com>,
        Prasad Sodagudi <psodagud@quicinc.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 15 Jun 2023 at 10:44, Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Wed, Jun 07, 2023 at 02:46:21PM +0200, Ulf Hansson wrote:
> > The protocol@13 node is describing the performance scaling option for the
> > ARM SCMI interface, as a clock provider. This is unnecessary limiting, as
> > performance scaling is in many cases not limited to switching a clock's
> > frequency.
> >
> > Therefore, let's extend the binding so the interface can be modelled as a
> > generic "performance domain" too. The common way to describe this, is to
> > use the "power-domain" bindings, so let's use that.
> >
> > Cc: Rob Herring <robh+dt@kernel.org>
> > Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> > Cc: Conor Dooley <conor+dt@kernel.org>
> > Cc: devicetree@vger.kernel.org
> > Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> > ---
> >  Documentation/devicetree/bindings/firmware/arm,scmi.yaml | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/firmware/arm,scmi.yaml b/Documentation/devicetree/bindings/firmware/arm,scmi.yaml
> > index 5824c43e9893..cff9d1e4cea1 100644
> > --- a/Documentation/devicetree/bindings/firmware/arm,scmi.yaml
> > +++ b/Documentation/devicetree/bindings/firmware/arm,scmi.yaml
> > @@ -145,8 +145,8 @@ properties:
> >        '#clock-cells':
> >          const: 1
> >
> > -    required:
> > -      - '#clock-cells'
>
> I am yet to look at the patches, just looked at this binding changes for now.
>
> Won't this break compatibility with existing DTBs. IMO, this is strict
> no no, you can't drop #clock-cells. I wanted to add performance-domains
> here as alternative but decided to not as I knew you were working on this.

Thanks for reviewing!

The point with the suggested change was to allow any kind of
combination of using #clock-cells and/or #power-domain-cells. Honestly
I didn't really know how to best express that in the binding, but
maybe someone can help me out here?

I think enforcing #clock-cells to be used is unnecessary. Making it
optional should not break existing DTBs, right?

Moreover, currently it seems to be only Juno that uses "protocol@13"
and the "#clock-cells" (at least by looking at the DTSes in-kernel).
So, I wonder if it's really such a big deal to update the DT bindings
for "protocol@13" at this point, but I may not have the complete
picture.

Kind regards
Uffe
