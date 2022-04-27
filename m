Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 25AF4511A63
	for <lists+devicetree@lfdr.de>; Wed, 27 Apr 2022 16:56:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238641AbiD0O41 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Apr 2022 10:56:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44670 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238741AbiD0O41 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Apr 2022 10:56:27 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B56704474B
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 07:53:15 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 4379761E38
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 14:53:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 92F49C385A9
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 14:53:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1651071194;
        bh=K2BT9nvM0txvu/mpPgCIsEDNx+HgT5+eAlbnZzBcxjk=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=aIki7odr3jCLzrZB9yyGFNbHCaiCaIfgLtbKiWz+BNrP/2Dt3dyY2PuK27xmdzvki
         9rj/QfEb19kBVcUWgkMvd1jmWYBjqYloVIKl17b+5JKtPbBGuO8qwx+6dVxAqBF2R6
         kufvRFexcBedcnNX695u25luuxxyhsQXuFQFNDZds0ppo2mUlx6gzbR8uefYIqq8A7
         vgkoOxKg6BQuQ+puF1H7PcP9BQI8PeHlCM8hugP/LAnQwjTqm2TfeEssNtUxdpJAEb
         GBXT+e+DeZufhZMW6qhnqxPUT0TG+oGHYTAdIx6o0cUmUIu83VJMlZ1n23M6GKkUSg
         7KqpdzxzshgFQ==
Received: by mail-pl1-f182.google.com with SMTP id s14so1744118plk.8
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 07:53:14 -0700 (PDT)
X-Gm-Message-State: AOAM533vlt2j7p48Fiu8FMbMUiSqKvDkMk3sEdYIi63TNXFGrZaBzS/i
        1+pDf/9eq9LXSTtFF7rDmYxG7vES6L+r+q5xNw==
X-Google-Smtp-Source: ABdhPJzQLzrO/rWqEwm4LpJdIYTG15IizaPe3t4FpBG0tdHujdbJei6lR6Icmf4Ct4C8MwzCW00/ad0PKtChVuuDwS8=
X-Received: by 2002:a17:902:6a8a:b0:156:8ff6:daf0 with SMTP id
 n10-20020a1709026a8a00b001568ff6daf0mr29154966plk.117.1651071194038; Wed, 27
 Apr 2022 07:53:14 -0700 (PDT)
MIME-Version: 1.0
References: <42fbcb55-b6ef-906f-7584-62a6097a8639@linaro.org>
 <CAL_JsqJ3FiBci1+8oSOHA6GQ8Q3HHM3QcY+GFg=+KVZEQAnb6A@mail.gmail.com> <345716e9-5624-5ba0-09f0-46e9850c546c@linaro.org>
In-Reply-To: <345716e9-5624-5ba0-09f0-46e9850c546c@linaro.org>
From:   Rob Herring <robh@kernel.org>
Date:   Wed, 27 Apr 2022 09:53:02 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+d-RHNnTyy+mrs2L7Zycjwq07vENCH8+SHZBuZGCuq=A@mail.gmail.com>
Message-ID: <CAL_Jsq+d-RHNnTyy+mrs2L7Zycjwq07vENCH8+SHZBuZGCuq=A@mail.gmail.com>
Subject: Re: PCI schema accepts unevaluated properties
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-7.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Apr 27, 2022 at 1:29 AM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 27/04/2022 04:36, Rob Herring wrote:
> > On Sat, Apr 23, 2022 at 5:46 AM Krzysztof Kozlowski
> > <krzysztof.kozlowski@linaro.org> wrote:
> >>
> >> Hi Rob,
> >>
> >> Dmitry pointed out interesting issue when writing PCI schema. Consider
> >> the patch for Exynos PCI schema (which includes SNPS schema and
> >> unevaluatedProperties:false):
> >> https://pastebin.ubuntu.com/p/4SzxVP4N3j/
> >>
> >> This passes `make dt_binding_check
> >> DT_SCHEMA_FILES=Documentation/devicetree/bindings/pci/` without a
> >> problem. It should not. The property is nowhere described, so
> >> unevaluatedProperties should scream.
> >>
> >> Other bindings using unevaluated:false and some ref, also has this
> >> issue. The additionalProperties:false (when there is no ref for other
> >> schema) works correct.
> >
> > This is because I never committed the fix for all this which explains the issue:
> >
> >     dtschema: Strip 'additionalProperties: true' from schemas
> >
> >     An 'additionalProperties: true' makes all properties evaluated, so an
> >     'unevaluatedProperties: false' schema doesn't work when referencing a
> >     schema with 'additionalProperties: true'.
> >
> >     Really, 'additionalProperties: true' should be dropped, but it is used as
> >     a flag for common schemas which are usually incomplete and included by
> >     device specific schemas. Removing it would mean dropping the meta-schema
> >     requiring either 'additionalProperties' or 'unevaluatedProperties'.
> >
> >     Signed-off-by: Rob Herring <robh@kernel.org>
> >
> > Since snps,dw-pcie.yaml defines 'additionalProperties: true',
> > everything is evaluated...
>
> Thanks for explanation.
>
> >
> > This fix needed schema fixes to land before I committed this, but it
> > was the end of the year and I guess I forgot about it. Now, it looks
> > like we have more to fix. :(  25 to be exact:
> >
> > Documentation/devicetree/bindings/mfd/samsung,exynos5433-lpass.example.dtb:
> > audio-subsystem@11400000: dma-controller@11420000: Unevaluated
> > properties are not allowed ('#dma-channels', '#dma-requests',
> > 'power-domains' were unexpected)
>
> I'll fix the power-domains, but dma-channels/dma-requests should not
> fail. This should be accepted through:
> arm,pl330.yaml -> dma-controller.yaml -> dma-common.yaml

Except that the standard property names are 'dma-channels' and
'dma-requests' without the '#'.

Thanks for the fixes. Unfortunately, it looks like NAND needs the same
parent/child schema split that was done for SPI.

Rob
