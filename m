Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 32E0978872B
	for <lists+devicetree@lfdr.de>; Fri, 25 Aug 2023 14:27:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242844AbjHYM0f (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Aug 2023 08:26:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37554 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244880AbjHYM0a (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Aug 2023 08:26:30 -0400
Received: from mail-yw1-x1131.google.com (mail-yw1-x1131.google.com [IPv6:2607:f8b0:4864:20::1131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 69A9526B6
        for <devicetree@vger.kernel.org>; Fri, 25 Aug 2023 05:26:00 -0700 (PDT)
Received: by mail-yw1-x1131.google.com with SMTP id 00721157ae682-58fb8963617so9963537b3.3
        for <devicetree@vger.kernel.org>; Fri, 25 Aug 2023 05:26:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692966318; x=1693571118;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=imTtF6oMDfUUdZZOXaDJRn5vC8nuYTa4GJ6U0uaioBA=;
        b=LjrX5q74j68I1VUl5oO9TUBIMmOBTPj1Vwy6sA95yTKrKny16GyqMuCQdgRCJS2sSf
         UyO1ObVQ3ldNV4uvynAiIi0Xw6LVJPGWO0XCW7F2EndaB9TnUNtxXTpceKVazPHulz0T
         lcmoPSbi+9SMB9UkWv7CQC4MHQm0sjDdLAHz69csq8RrwX5fDFGCMmzGRsm5j5mkno5W
         8EeFqLMHe3jsA1B7VuoUPgPOLFGtGeUv72Oa5cvHCDU/ONZ7bD3/4sK5SDY/SHs45AdE
         wbsQey/XRGdkEQyTeblklJJOxHVSpXRSVfKLd7Q0/MEL+96lUlvSNdKxStk5EzKxnlLP
         UT7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692966318; x=1693571118;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=imTtF6oMDfUUdZZOXaDJRn5vC8nuYTa4GJ6U0uaioBA=;
        b=jpPkO6fkR4c1DPIn47rQRAFF24TlR8GXHuLv3o7Is+G6W/gidibv96Lz+Trw0uMw4G
         4uEcPsFaIyAtaVAW3TtAKQ7m9tiRya++SJ0La/7nuPDUTp078tYzP0OsIOeeyACDGNJM
         sZW0w7FxXupfJF8hHtY7odyp3aI0XYk2irE12xk8xLinkj9Egcg2hMVIb5sil58tYs0z
         X0PwUVtGw2uggDceF4BYOUUk4yV9njGYi3WEs4OgswZCPY/f9L1lbxsdYesX8s7Ld96F
         TCFuYHhZ4XOuLwHVeM13STkSX3gveO48ndHLj71Yd/qh3mzS4nq8pFdQtkU9EjSulyeK
         XFYQ==
X-Gm-Message-State: AOJu0YyD1VcghYZG5d7myF0aiErVwoXWVGOhRCUObUzyUgs8fH4HuUsC
        5Wqy1mJLVBUhOG5qOy1imjmlxHk8F3RnoiGY4t3KCbCwZlMUiOSheYkdSQ==
X-Google-Smtp-Source: AGHT+IGzX+k1WodF6SQPMN6CDVYnV4vxVt6RIf05NBatVhakz7fxdBWuUoY22uoRqj2+6v0uLXCfzghx5tVitq3nYq0=
X-Received: by 2002:a81:df0d:0:b0:586:9ce4:14e8 with SMTP id
 c13-20020a81df0d000000b005869ce414e8mr15051293ywn.52.1692966318735; Fri, 25
 Aug 2023 05:25:18 -0700 (PDT)
MIME-Version: 1.0
References: <20230818153446.1076027-1-shenwei.wang@nxp.com>
 <CAPDyKFqsn6kVjPFUdVyRxNDiOaHO9hq=9c+6eAK4N-v-LVWUPw@mail.gmail.com> <PAXPR04MB91858254554272C90822FED1891DA@PAXPR04MB9185.eurprd04.prod.outlook.com>
In-Reply-To: <PAXPR04MB91858254554272C90822FED1891DA@PAXPR04MB9185.eurprd04.prod.outlook.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Fri, 25 Aug 2023 14:24:43 +0200
Message-ID: <CAPDyKFoV2Z=-WUiF3SgXqhF+K+r5QqsLgz8_hau0WKfZxTzYpg@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: power: Add regulator-pd yaml file
To:     Shenwei Wang <shenwei.wang@nxp.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        "imx@lists.linux.dev" <imx@lists.linux.dev>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 24 Aug 2023 at 18:35, Shenwei Wang <shenwei.wang@nxp.com> wrote:
>
>
>
> > -----Original Message-----
> > From: Ulf Hansson <ulf.hansson@linaro.org>
> > Sent: Thursday, August 24, 2023 4:27 AM
> > To: Shenwei Wang <shenwei.wang@nxp.com>
> > Cc: Rob Herring <robh+dt@kernel.org>; Krzysztof Kozlowski
> > <krzysztof.kozlowski+dt@linaro.org>; Conor Dooley <conor+dt@kernel.org>;
> > Liam Girdwood <lgirdwood@gmail.com>; Mark Brown <broonie@kernel.org>;
> > imx@lists.linux.dev; devicetree@vger.kernel.org; linux-kernel@vger.kernel.org;
> > dl-linux-imx <linux-imx@nxp.com>
> > Subject: [EXT] Re: [PATCH 1/2] dt-bindings: power: Add regulator-pd yaml file
> >
> > Caution: This is an external email. Please take care when clicking links or
> > opening attachments. When in doubt, report the message using the 'Report this
> > email' button
> >
> >
> > On Fri, 18 Aug 2023 at 17:35, Shenwei Wang <shenwei.wang@nxp.com> wrote:
> > >
> > > Documenting the regulator power domain properties and usage examples.
> >
> > As Rob and Krzysztof already pointed out, I agree that this binding looks a bit
> > questionable.
> >
> > Rather than adding a new DT binding, why can't we just use the existing way of
> > describing a platform specific power-domain provider?
>
> Can you please provide more details on how you thought we should implement this
> feature using the existing way? Very appreciate if you could provide a simple example.
>
> > This still looks platform specific to me.
>
> What does platform specific exactly mean here?  I want to make sure I understand
> what you were referring to.

There are plenty of examples of how a platform specific genpd provider
looks in DT. You may have a look a imx platforms for example.

git grep "#power-domain-cells" arch/arm/boot/dts/nxp/imx

The genpd provider then needs to be a consumer of the resources it
needs. In this case a couple of regulators it seems like.

[...]

Kind regards
Uffe
