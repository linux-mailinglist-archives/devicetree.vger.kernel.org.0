Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 187A257C50B
	for <lists+devicetree@lfdr.de>; Thu, 21 Jul 2022 09:09:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232421AbiGUHJd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jul 2022 03:09:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56098 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232405AbiGUHJ3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jul 2022 03:09:29 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3639A7B796
        for <devicetree@vger.kernel.org>; Thu, 21 Jul 2022 00:09:24 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id u5so916007wrm.4
        for <devicetree@vger.kernel.org>; Thu, 21 Jul 2022 00:09:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=VXozGTkBuN1pc/ZCQCCgyPsWzMv13rxWxDP+7tq7TJw=;
        b=D4clmYGbwyS4ogHfjdMc0g0hg0J9Quux7dEE5ZiwsDNyFKCENhfLWl0lPlCnZZWCQJ
         ADYbbcZ2MSNLjFOnls9NFk+73wCzHxH5smZAn8ihwNtOfRTJu9p0uf+fKfJIxoDoqoR4
         BuNi+gA4dFpgVVQeyCkI8CnQhWjHYdWLjjK8xN9/NNiHL4EKaQgZ7oZxRWqRVfYmb7dn
         WdFkNHm92qb2xcXSG21B2sNdPmAixmmvn1Yw0m4SXab3b95hkN8uwO1grTDLXTeqwYcF
         fg825u2vNg0tXdjqsM2uh/mDNSNRUXHVm/VgmUVz76t6u9QsIzhxnzpu0W4D+wXRCNRb
         DUsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=VXozGTkBuN1pc/ZCQCCgyPsWzMv13rxWxDP+7tq7TJw=;
        b=tiuMS4oMxh/EJ7XAA43ZppE6BGGI9ygE13f0exGhECCP/HIzrMyifeT1Jz6ZOVUPwY
         GhlvXVmh1VXqI/INemsaMD6VuEJVo0xTTtozAk3ozcE9526JcLPPaO26gxeH6o8lzml3
         KNeUwlsyqkLJgbf5Z8X5vujf5Erg9LOrDwZfZLbq5b+I1yDW/Nmz5s7T+6wXTlpmnoZX
         H6LINax5rekFCGtAeSdZ/MgyA7+cc/LknxajUrBVe9mbhui3o/D78VdXux7SKobGONAj
         EVPs2czQvbEhNd4tZga8rWB6hxsBU3JyeQTF0EiXsO6BfYe8i+mvSe5N6wJqnmK9PgYq
         T5eA==
X-Gm-Message-State: AJIora+uWWPsnyRtE0FpfIU0jFtDMOf8ffb5iNmeHPgCiWV2nAHZwSOU
        Ds3Xbzqmz9bQaR7DTZxdzq3ydA==
X-Google-Smtp-Source: AGRyM1uimq2XmA1Z+1x9bodyzH3DDOeO/EH1oMDau48adGSTkIKD3g2y2p5VAb0Pt5outtsag+HW1w==
X-Received: by 2002:adf:ee0f:0:b0:21d:6e3b:d262 with SMTP id y15-20020adfee0f000000b0021d6e3bd262mr32237238wrn.687.1658387362894;
        Thu, 21 Jul 2022 00:09:22 -0700 (PDT)
Received: from blmsp ([2001:4090:a243:806e:25e7:daa:8208:ceb])
        by smtp.gmail.com with ESMTPSA id y3-20020a7bcd83000000b003a3253b706esm4713951wmj.34.2022.07.21.00.09.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Jul 2022 00:09:21 -0700 (PDT)
Date:   Thu, 21 Jul 2022 09:09:20 +0200
From:   Markus Schneider-Pargmann <msp@baylibre.com>
To:     Rob Herring <robh@kernel.org>
Cc:     Jerome Neanne <jneanne@baylibre.com>, lgirdwood@gmail.com,
        broonie@kernel.org, nm@ti.com, kristo@kernel.org,
        khilman@baylibre.com, narmstrong@baylibre.com, j-keerthy@ti.c,
        lee.jones@linaro.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v1 04/14] regulator: dt-bindings: tps65219: Add
 power-button property
Message-ID: <20220721070920.dymqnh25dtqysooe@blmsp>
References: <20220719091742.3221-1-jneanne@baylibre.com>
 <20220719091742.3221-5-jneanne@baylibre.com>
 <20220720233906.GB4187584-robh@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220720233906.GB4187584-robh@kernel.org>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

On Wed, Jul 20, 2022 at 05:39:06PM -0600, Rob Herring wrote:
> On Tue, Jul 19, 2022 at 11:17:32AM +0200, Jerome Neanne wrote:
> > From: Markus Schneider-Pargmann <msp@baylibre.com>
> > 
> > Add a power-button property to configure the EN/PB/VSENSE pin as a
> > powerbutton.
> 
> Belongs in the first binding patch.
> 
> > 
> > Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
> > Signed-off-by: Jerome Neanne <jneanne@baylibre.com>
> > ---
> >  Documentation/devicetree/bindings/regulator/ti,tps65219.yaml | 5 +++++
> >  1 file changed, 5 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/regulator/ti,tps65219.yaml b/Documentation/devicetree/bindings/regulator/ti,tps65219.yaml
> > index 6a60e62a313c..3f7f4c0280c3 100644
> > --- a/Documentation/devicetree/bindings/regulator/ti,tps65219.yaml
> > +++ b/Documentation/devicetree/bindings/regulator/ti,tps65219.yaml
> > @@ -36,6 +36,11 @@ properties:
> >        include/dt-bindings/interrupt-controller/irq.h
> >      const: 1
> >  
> > +  power-button:
> 
> ti,power-button
> 
> Though doesn't 'system-power-controller' imply this?

No, there is a difference between system-power-controller and
power-button. If you ask, my description is probably not clear enough.
Let me try a new one:

TPS65219 has a multipurpose pin called EN/PB/VSENSE that can be either
EN in which case it functions as an enable pin. It can be VSENSE which
compares the voltages and triggers an automatic on/off request. And it
can be PB in which case it can be configured to trigger an interrupt to
the SoC. ti,power-button reflects exactly the last one of those options
where the board has a button wired to the pin and triggers an interrupt
on pressing it.

I hope that answers your question. We will fix the description in v2.

Thanks,
Markus

> 
> > +    type: boolean
> > +    description: Optional property that sets the EN/PB/VSENSE pin to be a
> > +      power-button.
> > +
> >  patternProperties:
> >    "^buck[1-3]-supply$":
> >      description: Input supply phandle of one regulator.
> > -- 
> > 2.17.1
> > 
> > 
