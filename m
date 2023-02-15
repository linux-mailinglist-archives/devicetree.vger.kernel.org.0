Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 46FC6697CE2
	for <lists+devicetree@lfdr.de>; Wed, 15 Feb 2023 14:11:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234103AbjBONLp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Feb 2023 08:11:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57054 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230456AbjBONLo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Feb 2023 08:11:44 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B59623A87
        for <devicetree@vger.kernel.org>; Wed, 15 Feb 2023 05:11:43 -0800 (PST)
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 842493F71B
        for <devicetree@vger.kernel.org>; Wed, 15 Feb 2023 13:11:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1676466701;
        bh=1XdYb1DRbOmlAI6DRkBJIyrIK+/5tdCGTTdbxhb+wmw=;
        h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
         To:Cc:Content-Type;
        b=mBoW16fVkEwXTxRnSNlMI4i0CwJNHPgXgs9XoZ3Gz52zAbyHNX7xo7E9/g3ZSCshY
         JCVik0cxPmdu+1CpkzlBRYX1OVC/nToz3fwt7OVKVjnA8ZoEk1KDEpAy9ts+0R0kaR
         N4HlRKOR/1xp5oCHzmnb3Hor+3nHAGPQK4tP5RRFqNBk+1htCtgdxOod4IvvjYl6F+
         0AUeBBlYK6ICVh6V/VhYfXUk+YwAWUD7jhcknezEZI+p1VmzAi3xNpT1H/Sjp3ybtl
         UEQ6aBxNVrUBny8sni+5C8hQXi17rCyRXqI2quJLe539sTK8mdAUnFzQhmiT9iPo/x
         BqPTO+GEk3jDg==
Received: by mail-qt1-f200.google.com with SMTP id z12-20020ac8710c000000b003b829a0eda2so11176526qto.21
        for <devicetree@vger.kernel.org>; Wed, 15 Feb 2023 05:11:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1XdYb1DRbOmlAI6DRkBJIyrIK+/5tdCGTTdbxhb+wmw=;
        b=xpaneJ4iuVjpirwz/NBe9pw+m0K7S+Mr5Mgjpcmu2esSDRlTml5hcbXXfr4cDrNYMQ
         UTrQyrDZb6/rI4SCbkKyT4KPvF2CZ6esnngBrt8o7FZ/5lStTwWnN9r7hLfbADKV6gwU
         4iR/Eo2rZmNzOabHKwaTP85hQlDWYTuCTZji56wnUxP5qljWHKjlDlwfsAeYMHIup5Kj
         oVNEXww6SG127XACdMABCOQJOQ5HSnQ3pYK0V2Upf9B8J84Z9vAK/4FEGOImOuNdkE8+
         z/KjFm5+474HCpdDkB70hVDBNU3T20IJ30YXOUbHCCuitkP8gvut/29lZYTSzz7TxN7N
         doLg==
X-Gm-Message-State: AO0yUKW/4yGyzn+YJ7j9evWg5JpeBkyczlHkgMtDMf4liCU3iF0uhZvF
        mFZ6iuvb9gu84FbYpdBv5hNVEx/eEFEUcjUiSnxZ0dVL7RdOb1H0Almp0vMP/2wrMFV3mHNZxS3
        ksxZpRjjb+GHacy3w8HqxQqtUX67b0Ou7Y7nNH4KUKQt+C0gVgPHaamY=
X-Received: by 2002:a05:622a:164f:b0:3bc:e3a8:d1d6 with SMTP id y15-20020a05622a164f00b003bce3a8d1d6mr228742qtj.229.1676466699837;
        Wed, 15 Feb 2023 05:11:39 -0800 (PST)
X-Google-Smtp-Source: AK7set+4/1NxoBcvUdWQnW9B5yPBwHcyWHA8dOVvJArdaItgCToDNjAmHnj0L1BgI9mhCHcGqlTdul+lrgFnVADu40o=
X-Received: by 2002:a05:622a:164f:b0:3bc:e3a8:d1d6 with SMTP id
 y15-20020a05622a164f00b003bce3a8d1d6mr228728qtj.229.1676466699567; Wed, 15
 Feb 2023 05:11:39 -0800 (PST)
MIME-Version: 1.0
References: <20230211031821.976408-1-cristian.ciocaltea@collabora.com>
 <20230211031821.976408-2-cristian.ciocaltea@collabora.com> <Y+vxw28NWPfaW7ql@spud>
In-Reply-To: <Y+vxw28NWPfaW7ql@spud>
From:   Emil Renner Berthing <emil.renner.berthing@canonical.com>
Date:   Wed, 15 Feb 2023 14:11:22 +0100
Message-ID: <CAJM55Z_x3omY9DQtxPUgLX0NKEm3PCXDkFFDVAzG7opFLsZX+A@mail.gmail.com>
Subject: Re: [PATCH 01/12] dt-bindings: riscv: sifive-ccache: Add compatible
 for StarFive JH7100 SoC
To:     Conor Dooley <conor@kernel.org>
Cc:     Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
        Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Emil Renner Berthing <kernel@esmil.dk>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Giuseppe Cavallaro <peppe.cavallaro@st.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Jose Abreu <joabreu@synopsys.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Richard Cochran <richardcochran@gmail.com>,
        Sagar Kadam <sagar.kadam@sifive.com>,
        Yanhong Wang <yanhong.wang@starfivetech.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        netdev@vger.kernel.org, linux-riscv@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 14 Feb 2023 at 21:42, Conor Dooley <conor@kernel.org> wrote:
>
> Hey all,
>
> On Sat, Feb 11, 2023 at 05:18:10AM +0200, Cristian Ciocaltea wrote:
> > Document the compatible for the SiFive Composable Cache Controller found
> > on the StarFive JH7100 SoC.
> >
> > This also requires extending the 'reg' property to handle distinct
> > ranges, as specified via 'reg-names'.
> >
> > Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> > ---
> >  .../bindings/riscv/sifive,ccache0.yaml        | 28 ++++++++++++++++++-
> >  1 file changed, 27 insertions(+), 1 deletion(-)
> >
> > diff --git a/Documentation/devicetree/bindings/riscv/sifive,ccache0.yaml b/Documentation/devicetree/bindings/riscv/sifive,ccache0.yaml
> > index 31d20efaa6d3..2b864b2f12c9 100644
> > --- a/Documentation/devicetree/bindings/riscv/sifive,ccache0.yaml
> > +++ b/Documentation/devicetree/bindings/riscv/sifive,ccache0.yaml
> > @@ -25,6 +25,7 @@ select:
> >            - sifive,ccache0
> >            - sifive,fu540-c000-ccache
> >            - sifive,fu740-c000-ccache
> > +          - starfive,jh7100-ccache
> >
> >    required:
> >      - compatible
> > @@ -37,6 +38,7 @@ properties:
> >                - sifive,ccache0
> >                - sifive,fu540-c000-ccache
> >                - sifive,fu740-c000-ccache
> > +              - starfive,jh7100-ccache
> >            - const: cache
> >        - items:
> >            - const: starfive,jh7110-ccache
> > @@ -70,7 +72,13 @@ properties:
> >        - description: DirFail interrupt
> >
> >    reg:
> > -    maxItems: 1
> > +    minItems: 1
> > +    maxItems: 2
> > +
> > +  reg-names:
> > +    items:
> > +      - const: control
> > +      - const: sideband
>
> So why is this called "sideband"?
> In the docs for the JH7100 it is called LIM & it's called LIM in our
> docs for the PolarFire SoC (at the same address btw) and we run the HSS
> out of it! LIM being "loosely integrated memory", which by the limit
> hits on Google may be a SiFive-ism?
>
> I'm not really sure if adding it as a "reg" section is the right thing
> to do as it's not "just" a register bank.
> Perhaps Rob/Krzysztof have a take on that one?

Yes, this seems to be a leftover I didn't manage to clean up yet. The
"sideband" range is called L2 LIM in the datasheet and seems to be a
way to use the cache directly. The Sifive docs read "When cache ways
are disabled, they are addressable in the L2 Loosely-Integrated Memory
(L2 LIM) address space [..]". This feature is not used by Linux on the
JH7100, so can just be removed here.

/Emil

> >
> >    next-level-cache: true
> >
> > @@ -89,6 +97,7 @@ allOf:
> >            contains:
> >              enum:
> >                - sifive,fu740-c000-ccache
> > +              - starfive,jh7100-ccache
> >                - starfive,jh7110-ccache
> >                - microchip,mpfs-ccache
> >
> > @@ -106,12 +115,29 @@ allOf:
> >              Must contain entries for DirError, DataError and DataFail signals.
> >            maxItems: 3
> >
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            const: starfive,jh7100-ccache
> > +
> > +    then:
> > +      properties:
> > +        reg:
> > +          maxItems: 2
> > +
> > +    else:
> > +      properties:
> > +        reg:
> > +          maxItems: 1
> > +
> >    - if:
> >        properties:
> >          compatible:
> >            contains:
> >              enum:
> >                - sifive,fu740-c000-ccache
> > +              - starfive,jh7100-ccache
> >                - starfive,jh7110-ccache
> >
> >      then:
> > --
> > 2.39.1
> >
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv
