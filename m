Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0C6D857C068
	for <lists+devicetree@lfdr.de>; Thu, 21 Jul 2022 01:03:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230125AbiGTXDL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jul 2022 19:03:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52832 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229441AbiGTXDL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jul 2022 19:03:11 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39FC1EE1C
        for <devicetree@vger.kernel.org>; Wed, 20 Jul 2022 16:03:10 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id EBD37B8222C
        for <devicetree@vger.kernel.org>; Wed, 20 Jul 2022 23:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 83EB3C341CA
        for <devicetree@vger.kernel.org>; Wed, 20 Jul 2022 23:03:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1658358187;
        bh=tTDNStkCs/EwafJ673iVpprpqYRqrt6aEbuPQ8G/PuM=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=eywyu4w60o9URxoAYdkaTwLAIZHgP4cDZr31t1As2AJk2EVw+NOKV0/zFQgj4W9Xu
         0lzc5jNk5Utb+PEPq5czXyi8TwCWrPZibgSQwkim0p9bbz79oXGVNiYdJeWyiE3Du0
         NnhOei6vY/gvUIpkdP7j0jZ6xrVY1rG2AwFIfcbfwQL7Rchq0yvoI8Ey0qi48hZDzy
         YNjwMyHWmtZP6Co6Sx6VRAVM7Ov2tF/2825bZ0SIfTmzIUeb3TLwbix5Vw15ADyYRP
         YIL48/7gYvXLCdT88GgUXxi9+BrShm58oTdZuveu3yL+7eh7WjE8Ocx1JCCQmaRN8P
         0Ri5siuFhHa4w==
Received: by mail-vs1-f41.google.com with SMTP id j65so11860vsc.3
        for <devicetree@vger.kernel.org>; Wed, 20 Jul 2022 16:03:07 -0700 (PDT)
X-Gm-Message-State: AJIora+OnShqcJ16lCZNtbsyVWhL5cPbfQa7S2G6/Oj9BefI90CYw+mf
        SzGqwwCwTHw7jF3x16g1QXm5u2EmemwKmM+AGQ==
X-Google-Smtp-Source: AGRyM1vrplxAXZoagtbHA+DGk+AV3UhHCOmfBnMUN76onwD57LsqSifq7QSxqUOOnbsUON/aN5A+V3rWsWviOt+wge0=
X-Received: by 2002:a67:ea87:0:b0:357:c626:6e54 with SMTP id
 f7-20020a67ea87000000b00357c6266e54mr7025631vso.6.1658358186422; Wed, 20 Jul
 2022 16:03:06 -0700 (PDT)
MIME-Version: 1.0
References: <20220712050857.267-1-13691752556@139.com> <20220713145130.GA3909157-robh@kernel.org>
 <e5e2f84c407a4480a5f6c7f56c8e05f4@ti.com> <782171baf71849cc8c23177555ee2f7d@ti.com>
In-Reply-To: <782171baf71849cc8c23177555ee2f7d@ti.com>
From:   Rob Herring <robh@kernel.org>
Date:   Wed, 20 Jul 2022 17:02:53 -0600
X-Gmail-Original-Message-ID: <CAL_JsqK6GPC0gUFePef4SuCR0KiuFi3L21DpMAp4=6EUeDub6A@mail.gmail.com>
Message-ID: <CAL_JsqK6GPC0gUFePef4SuCR0KiuFi3L21DpMAp4=6EUeDub6A@mail.gmail.com>
Subject: Re: [EXTERNAL] Re: [PATCH v5] update tas2780.yaml
To:     "Xu, Yang" <raphael-xu@ti.com>
Cc:     Raphael-Xu <13691752556@139.com>,
        "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
        "Ding, Shenghao" <shenghao-ding@ti.com>,
        "Navada Kanyana, Mukund" <navada@ti.com>,
        "Syrus, Andy" <asyrus@ti.com>,
        "broonie@kernel.org" <broonie@kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-7.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jul 19, 2022 at 11:44 PM Xu, Yang <raphael-xu@ti.com> wrote:
>
> Hi Rob,
>
> One more question of tas27xx.yaml.Would you like us to delete tas27xx.yam=
l and submit new tas2764.yaml in updated format,or we just revert to old ve=
rsion tas2764.yaml commit?
> Thanks.

I think tas2770.yaml and tas2780.yaml should both be removed with
ti,tas2770 compatible added to tas27xx.yaml.

>
> Regards
> Raphael
>
> -----Original Message-----
> From: Xu, Yang <>
> Sent: Wednesday, July 20, 2022 11:48 AM
> To: 'Rob Herring' <robh@kernel.org>; Raphael-Xu <13691752556@139.com>
> Cc: alsa-devel@alsa-project.org; Ding, Shenghao <shenghao-ding@ti.com>; N=
avada Kanyana, Mukund <navada@ti.com>; Syrus, Andy <asyrus@ti.com>; broonie=
@kernel.org; devicetree@vger.kernel.org
> Subject: RE: [EXTERNAL] Re: [PATCH v5] update tas2780.yaml
>
> Hi Rob,
>
> Please see my reply.
>
> -----Original Message-----
> From: Rob Herring <robh@kernel.org>
> Sent: Wednesday, July 13, 2022 10:52 PM
> To: Raphael-Xu <13691752556@139.com>
> Cc: alsa-devel@alsa-project.org; Xu, Yang <raphael-xu@ti.com>; Ding, Shen=
ghao <shenghao-ding@ti.com>; Navada Kanyana, Mukund <navada@ti.com>; Syrus,=
 Andy <asyrus@ti.com>; broonie@kernel.org; devicetree@vger.kernel.org
> Subject: [EXTERNAL] Re: [PATCH v5] update tas2780.yaml
>
> On Tue, Jul 12, 2022 at 01:08:57PM +0800, Raphael-Xu wrote:
> > 1.remove unused item in DT 2.revise the format
>
> Again, fix your subject. Run 'git log --oneline Documentation/devicetree/=
bindings/sound/' for inspiration of the format of the subject.
> [RX]:just submit new patch

Closer, but still the wrong subject. You are missing spaces.

> However, there's a bigger issue here. We already have a binding for this =
device. It's in tas27xx.yaml. And you added 2780 to it, so why did you add =
another schema? (All the same issues in that patch too. wrong subject, brok=
en schema. So you haven't learned.) [RX]:We will follow tas2780 patch forma=
t and submit separate patch if you think tas2780 patch is acceptable.
> And then there is also tas2770.yaml which appears to be about the same as=
 well.
> [RX]:We will follow tas2780 patch format and submit separate patch if you=
 think tas2780 patch is acceptable.

Is deleting tas2780.yaml and just adding ti,tas2780 compatible not
sufficient? Why fix tas2780.yaml and then delete it? Doing the same
for tas2770 can be separate.

Rob

> >
> > Signed-off-by: Raphael-Xu <13691752556@139.com>
> > ---
> >  .../devicetree/bindings/sound/tas2780.yaml    | 19 +++++++++++--------
> >  1 file changed, 11 insertions(+), 8 deletions(-)
