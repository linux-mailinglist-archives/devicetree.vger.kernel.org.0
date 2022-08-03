Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4638258947C
	for <lists+devicetree@lfdr.de>; Thu,  4 Aug 2022 00:41:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237699AbiHCWlx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Aug 2022 18:41:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32810 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237950AbiHCWlw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Aug 2022 18:41:52 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 150F31759E
        for <devicetree@vger.kernel.org>; Wed,  3 Aug 2022 15:41:52 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id BC1BFB82280
        for <devicetree@vger.kernel.org>; Wed,  3 Aug 2022 22:41:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 75D94C43140
        for <devicetree@vger.kernel.org>; Wed,  3 Aug 2022 22:41:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1659566509;
        bh=ntYFjSzSR88TSVWbSyeixkWIhxUbsdZr2Qan6hXpvzQ=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=b3D5XQQ2ATAbBfoT1BFT8kT/o3yZNKhlmR8sPZ1eLxbO2Xh1G9kxNSOUA0WZSceIx
         jygimGKIN2yhbf/OF/VrqozpAQPuyZlzAUT4oMXpOWimURFlYgHJ8xdXzhUhrWoLyP
         NobcgIBFsq7WoZUC4x4bSAdq6rvjLAawRfeI9RDCIWn+M3lOU03vEMsl0wp2bgDQNc
         8rA/J+ZxPw50nEY/Rv7Mlvuj2BCFXJuvudCxQTF1lI7NtGuMb1/Q1tcpk/szdmDZJq
         wM0uIuX4lcHeSXLxY3zVp/Oj3TRovw9Eofnk5FfLQ9knhbJVBgYNLPT/ce2V8OHGKs
         NEyIbcADo1S4Q==
Received: by mail-ua1-f45.google.com with SMTP id z5so3608382uav.0
        for <devicetree@vger.kernel.org>; Wed, 03 Aug 2022 15:41:49 -0700 (PDT)
X-Gm-Message-State: ACgBeo3KAwTDIgLmKJluloOEXpOip8LRdJMvAZeRCzmMDz3ZTcYdKfpX
        Lu8qIKnzVjKZK6JNJZpc5eo7ypEgc7IT+Mo+hg==
X-Google-Smtp-Source: AA6agR4nbXpPa5zBjslr9fGKzSeyuJweJKlrAwtkqUrLe2hL/wqObYzlWQ6F4v86U+5SCJS3wSZTCCzM/zpkRZFuAWU=
X-Received: by 2002:ab0:6798:0:b0:382:d9f4:8d0 with SMTP id
 v24-20020ab06798000000b00382d9f408d0mr11043836uar.63.1659566508212; Wed, 03
 Aug 2022 15:41:48 -0700 (PDT)
MIME-Version: 1.0
References: <20220801131901.183090-1-marex@denx.de> <20220801163238.GA1130127-robh@kernel.org>
 <4d917546-23a2-a33a-1f59-ec78305aa854@denx.de>
In-Reply-To: <4d917546-23a2-a33a-1f59-ec78305aa854@denx.de>
From:   Rob Herring <robh@kernel.org>
Date:   Wed, 3 Aug 2022 16:41:35 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLHKnL80spDSAqMq0cOkVNztv0MjVsR-Rs83qd_q7_MQg@mail.gmail.com>
Message-ID: <CAL_JsqLHKnL80spDSAqMq0cOkVNztv0MjVsR-Rs83qd_q7_MQg@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: display: bridge: icn6211: Add support
 for RGB/BGR swap
To:     Marek Vasut <marex@denx.de>
Cc:     dri-devel <dri-devel@lists.freedesktop.org>,
        Robert Foss <robert.foss@linaro.org>,
        Jagan Teki <jagan@amarulasolutions.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-7.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Aug 2, 2022 at 5:33 AM Marek Vasut <marex@denx.de> wrote:
>
> On 8/1/22 18:32, Rob Herring wrote:
> > On Mon, Aug 01, 2022 at 03:19:00PM +0200, Marek Vasut wrote:
> >> The ICN6211 is capable of swapping the output DPI RGB/BGR color channels,
> >> document a DT property to select this swap in DT. This can be useful on
> >> hardware where such swap happens.
> >
> > We should ensure this series[1] works for you instead.
>
> [...]
>
> > Rob
> >
> > [1] https://lore.kernel.org/r/20220628181838.2031-3-max.oss.09@gmail.com
>
> I'm still not convinced that we should encode this pixel format value
> directly into the DT instead of trying to describe the DPI bus color
> channel width/order/shift in the DT instead. I think I mentioned that
> before in one of the previous versions of that series.

I worry that it gets pretty verbose, but worth having the discussion.
In any case, let's have that discussion and not add yet another one
off property.

Rob
