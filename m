Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 59DFC78F2D1
	for <lists+devicetree@lfdr.de>; Thu, 31 Aug 2023 20:42:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229744AbjHaSmB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 31 Aug 2023 14:42:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57688 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240599AbjHaSmA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 31 Aug 2023 14:42:00 -0400
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com [IPv6:2607:f8b0:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D152DE66
        for <devicetree@vger.kernel.org>; Thu, 31 Aug 2023 11:41:57 -0700 (PDT)
Received: by mail-pl1-x633.google.com with SMTP id d9443c01a7336-1bdbf10333bso9408465ad.1
        for <devicetree@vger.kernel.org>; Thu, 31 Aug 2023 11:41:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1693507317; x=1694112117; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=I5ChSmKazSx23s1Wn9L0e1jbuOoLwOeqFS1zmJOj+pc=;
        b=Sbn820Y2t1VrGYJLx03xoo1soWUGFh6FdsfmIcpyD2o5PW929BlgNUt7YwaQ55uAox
         Hlr02ZeVuEaFv0fK2XCdqrrObL+08Nykr3XXicRQLrQxeBJkjMrsTMCLOS/7590NNmF2
         Yy6bh1kuWZXAuvF3KQ2RJSnTsuOGacEA5AdH6dl+m7InJBuCk0CtuVyDGynA6mC+sMzP
         sFJI5U7WnxBwcJlBb0tA/x5s8aTmOGEqW/JDd2kuZCC5QguR+DI+Bms8SVOFepqa6sCs
         EAOyRPKSvCpkPL7uFs72fCRbNaRaatD24/bB8WjtHgzIYIhn+mnffhRjhtFA26DYuHJn
         qdTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693507317; x=1694112117;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=I5ChSmKazSx23s1Wn9L0e1jbuOoLwOeqFS1zmJOj+pc=;
        b=WPiHu2FTOO8VufMd/KXjXrn3TJvUaGXOBWQbIifIya/aQniSyV6hlfd96R81NLv2SI
         a+rE5b6lEs1z0bei1xgypthVmMs1qDVIQxdVGgxCai/TCLYuvNr4Nm3bXEsMfC3GXU75
         zlWbtHk1ohVfq0Leg5hWv5SWjC7C0Iic4gccR48is1ZT++HRY0oNfoD09I8zPGW8tYnk
         hDlv6CthB/dFdhxkNHgXf2/vmt/nm1kzqtLhLPxGJWLYHSKSDo0W37RBRMb01EyXc3Ic
         GmetmDa2hD+6ZjLYcgy5WhS79ga+5p+cEtQAK5CrdiXuFYrg121CZCW2mUZxX+M5szjy
         w6uQ==
X-Gm-Message-State: AOJu0Yzgn2puJLW4hLXLHsyivO7DLKSl7t1RofI87OPbr45oEKhDPfGv
        CKToUsaeeUpO0DHXl1rBloKWaHzu02V/rR/2ENkedg==
X-Google-Smtp-Source: AGHT+IH7P0udp27gF7WoaIK8quI86T1Rkg5UneAJLa76Rjycml/SAA0iGsGta93UOBQfMggY0Jy1LaDWA1sMMZuKs8s=
X-Received: by 2002:a17:90a:bb96:b0:26d:291b:cfc7 with SMTP id
 v22-20020a17090abb9600b0026d291bcfc7mr169830pjr.45.1693507317351; Thu, 31 Aug
 2023 11:41:57 -0700 (PDT)
MIME-Version: 1.0
References: <20230830103620.3611761-1-Naresh.Solanki@9elements.com>
 <20230830-waving-stinky-d510fefbbf82@spud> <CABqG17hvSYbsnYYGOQxVsiXsqLXFnovXvkhgc=pYR9osgF0-1g@mail.gmail.com>
 <20230831-defrost-rebalance-5efda5e5ff5c@spud>
In-Reply-To: <20230831-defrost-rebalance-5efda5e5ff5c@spud>
From:   Naresh Solanki <naresh.solanki@9elements.com>
Date:   Fri, 1 Sep 2023 00:11:49 +0530
Message-ID: <CABqG17hxe+mn_qiXQ8ikPcU32KrU__FqkVaq_Aam=w_yF7qTkg@mail.gmail.com>
Subject: Re: [PATCH v4 1/3] dt-bindings: hwmon: Add Infineon TDA38640
To:     Conor Dooley <conor@kernel.org>
Cc:     Guenter Roeck <linux@roeck-us.net>,
        Jean Delvare <jdelvare@suse.com>,
        krzysztof.kozlowski+dt@linaro.org,
        Rob Herring <robh+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-hwmon@vger.kernel.org,
        Patrick Rudolph <patrick.rudolph@9elements.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi

On Thu, 31 Aug 2023 at 21:24, Conor Dooley <conor@kernel.org> wrote:
>
> On Thu, Aug 31, 2023 at 12:49:32AM +0530, Naresh Solanki wrote:
> > Hi
> >
> > On Wed, 30 Aug 2023 at 21:02, Conor Dooley <conor@kernel.org> wrote:
> > > On Wed, Aug 30, 2023 at 12:36:16PM +0200, Naresh Solanki wrote:
>
> > > > +      Indicates that the chip ENABLE pin is at fixed level or left
> > > > +      unconnected(has internal pull-down).
> > >
> > > Maybe you've already been over this, but if the pin is called "enable"
> > > why not use the same wording in the property?
> > EN & ENABLE is used interchangeably in the datasheet.
>
> Maybe we can go 1 for 2 in terms of consistency then, rather than 0 for
> 2.
Ack.
Will go for EN as that's what is mentioned as pin name in datasheet.
>
> > Just to keep property name short I use EN.
>
> Consistency & readability trump brevity. Please pick one term, or point
> out that this is called two things in the datasheet.
Sure will pick one. i.e., EN. EN is pin name & description as mentioned in
datasheet is 'Enable pin to turn on and off the IC'

Regards,
Naresh

>
