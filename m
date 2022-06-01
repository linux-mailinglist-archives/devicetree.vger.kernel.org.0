Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0501153A928
	for <lists+devicetree@lfdr.de>; Wed,  1 Jun 2022 16:28:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351827AbiFAO1R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Jun 2022 10:27:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51412 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1355611AbiFAO0n (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Jun 2022 10:26:43 -0400
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 00DD422C
        for <devicetree@vger.kernel.org>; Wed,  1 Jun 2022 07:20:51 -0700 (PDT)
Received: by mail-lj1-x230.google.com with SMTP id g25so2142671ljm.2
        for <devicetree@vger.kernel.org>; Wed, 01 Jun 2022 07:20:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/qDPxqxtAnqx70yomMz4iKcG/suKMrIdMG5mPCftR2g=;
        b=gVFN2d29Ob2IsoQslrcbptF3svKScdiHyFPmNr10CFxhknhNn7gqwsCr9mypdHMeuG
         I7gk65CFQNFA2oKopvqa13ri4A88g45f4vVdOURoytvhrtLUr9CcFjTCUiQugHnnOXiX
         1jOT8/raJcsgiLpvcIgBcyfQdYnhYIoFsUlynR1Cm5PJGCFH8ubju+VXnv+qmsEJ41uz
         nRA+RsZVOyGUxogebV8INdIHtxPZrKXyGasyf9ReRz6j850wBTV6UhXNjlxn7RYN70N/
         ahpY3ajNR6s6gcsLlhKnHBHSwtFNLicEaHdRprD/mwMZ8dQV35aorV1pkxL10dFefyNR
         NCfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/qDPxqxtAnqx70yomMz4iKcG/suKMrIdMG5mPCftR2g=;
        b=q9p5sii/52JVtpthW/x9r2jqKWgqBJwh5WOuo2VgrjcDjkPLKMCtA7lKCYWcJVU3RZ
         jNixLgH2h9hc055n1p80+tPhWG+mMOq1oIG4LRc5zJOUKYkV05fv3VFECs+x4vvHh3Nq
         AS69YlVbRWGnUGA5csHWkyqkAf9xp4hWBwQ0HpWR0ivxZOak6S7voazFK2NTxJ7Lnp4i
         Zkg7Z8gH1DAel6oFU7tw8qRCHu86mSllMEcDahWoDEn7NAPgsY2TL1bbn2D8uqCvelPy
         CjfmCXMfkIO+0NxftVfJ+f2S+LvyaZ/TMTHPvhcKkB3N3W1DmXxhPu35syYkY2ifwBBn
         FpOg==
X-Gm-Message-State: AOAM5305LBapuTPheyukdJpN4rX969OkcLQqGcCvzefgxSu6mPwPk0Xy
        5hn58PDY/btuc9OAeDlaXSP+Rl6I6Irzj/6KPioiYA==
X-Google-Smtp-Source: ABdhPJyHLe+8u5VYlCGJLP8Qc+G0asgDycWaaA6EZ0mEacenGngsM1+d36udkKA5adI89ZmSgyxTW2xZap3Rb49TyUQ=
X-Received: by 2002:a2e:9e54:0:b0:250:d6c8:c2a6 with SMTP id
 g20-20020a2e9e54000000b00250d6c8c2a6mr40310597ljk.16.1654093250356; Wed, 01
 Jun 2022 07:20:50 -0700 (PDT)
MIME-Version: 1.0
References: <20220526014204.2873107-1-robh@kernel.org> <CAPDyKFoh5FyRDxr22XnkOd76MG4YjkvqL039=+qHGZKwfdFquw@mail.gmail.com>
 <20220601140429.GA3909718-robh@kernel.org>
In-Reply-To: <20220601140429.GA3909718-robh@kernel.org>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Wed, 1 Jun 2022 16:20:14 +0200
Message-ID: <CAPDyKFoDfBCFrdvDunCm4a2v_A=UzVMJvHyNN6XAdjjQ=gzkvg@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mmc: Fix unevaluatedProperties warnings in examples
To:     Rob Herring <robh@kernel.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Broadcom internal kernel review list 
        <bcm-kernel-feedback-list@broadcom.com>,
        Hu Ziji <huziji@marvell.com>, Al Cooper <alcooperx@gmail.com>,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
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

On Wed, 1 Jun 2022 at 16:04, Rob Herring <robh@kernel.org> wrote:
>
> On Wed, Jun 01, 2022 at 02:46:21PM +0200, Ulf Hansson wrote:
> > On Thu, 26 May 2022 at 03:42, Rob Herring <robh@kernel.org> wrote:
> > >
> > > The 'unevaluatedProperties' schema checks is not fully working and doesn't
> > > catch some cases where there's a $ref to another schema. A fix is pending,
> > > but results in new warnings in examples. Fix the warnings by removing
> > > spurious properties or adding a missing property to the schema.
> > >
> > > Signed-off-by: Rob Herring <robh@kernel.org>
> >
> > Queued for v5.20 on the devel branch, thanks!
>
> Can you take for 5.19 instead so I can enable this in dtschema sooner
> rather than later?

Sure! I have moved the patch to the fixes branch now.

Kind regards
Uffe
