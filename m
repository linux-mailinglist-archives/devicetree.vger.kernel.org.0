Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 96C6A582118
	for <lists+devicetree@lfdr.de>; Wed, 27 Jul 2022 09:31:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229616AbiG0Hb3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Jul 2022 03:31:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35386 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229580AbiG0Hb2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Jul 2022 03:31:28 -0400
Received: from mail-io1-xd2a.google.com (mail-io1-xd2a.google.com [IPv6:2607:f8b0:4864:20::d2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AECF3B843
        for <devicetree@vger.kernel.org>; Wed, 27 Jul 2022 00:31:25 -0700 (PDT)
Received: by mail-io1-xd2a.google.com with SMTP id e69so13014865iof.5
        for <devicetree@vger.kernel.org>; Wed, 27 Jul 2022 00:31:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=SH6RabT82dXf7GDeww9eKLpCzN/WMhrGP3YU/7xxSHA=;
        b=AnaXnp7k4WKoD/9vDFQUHSEXzRE9alHPKFNp9KJHKZj3aEMCUx6hTk2/cOK7jiMbOG
         BO7v0GAnxGVEkLGLBkCAR/HMaZlJ6/O2IqlE6rowtXur5OBMkJKcdCxqU0nO0ifl/av0
         Bu87pLGYHNyNQJdoMtgs82flXbw2VF59+VwBNee5xJl/yCppznEDd3KqIpk25C8zK7R6
         wKPD/G9XGrmikqwT+SF+WBu8lsYEUeFV8t8sFAzBIGNzo5U5qu0wL9YtHaMSV0PAqxBU
         j1PQnPPjJ6uzvrjRSg6JAvGQZkEkPRjCcbzB8AZ94WFiwUljrPZ1m5BsqhscLQi0UuaF
         2lIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=SH6RabT82dXf7GDeww9eKLpCzN/WMhrGP3YU/7xxSHA=;
        b=eIx8dZbazM7DZtYUV8p+hC/cZlOJ1t3F7sk3FI9JdCirRGwtENXyx1OYSSWfqHDKdr
         tQroRlPcSW4486RZDSTJRKmaYnyjrwkGAefdcux4liUd2ckLS/BI9lQTjxCGJvaxdeiX
         RxAV3L5b9phG7CUFee5K+cYBJ/lOWLc8qJ24bjQTY6tSRpSIoiugLDwl2EVVs8DYVwPg
         bar6mK94WYmAm6EzUiy0OkmrlnMfuF7bSmYoIpxIGpUHzAAha0N1yr9/KjA6GyLhl53E
         nQ2+tVawNRyA0pJ5uZ52RiNgRXX7vowrG5Roua4acZZxRJQV6MeOezP9FL5O+IwOIJ7A
         gLqA==
X-Gm-Message-State: AJIora+QM2QIaPgR2Yo+ne0IJrnYvbAbw1Onme9MHxgB5RPmFfJSHin1
        ObVXxXL0vCZrVZBuWvA13yolNsLaLtLTVw7dYryBhQ==
X-Google-Smtp-Source: AGRyM1vspyw6A+eVAxDft/5JSlEZLYOwSGDypP0y/PNM8skbY298JYW4x4TRrtrcczZH2A80T9I1ENjcN9jtZFKTDXQ=
X-Received: by 2002:a05:6602:2d4f:b0:67c:24ec:73af with SMTP id
 d15-20020a0566022d4f00b0067c24ec73afmr7182998iow.73.1658907085117; Wed, 27
 Jul 2022 00:31:25 -0700 (PDT)
MIME-Version: 1.0
References: <20220723204335.750095-1-jagan@edgeble.ai> <20220723204335.750095-3-jagan@edgeble.ai>
 <e1d57de9-060b-bd58-2cea-85f41f75e7be@linaro.org> <CA+VMnFwNqm57StGj_JyTT2TM56uD-nFjxCekEH6aKYDMhEuxjw@mail.gmail.com>
 <360f7d11-96f4-369e-1289-6c9dc3c49ca4@linaro.org> <CA+VMnFzAjif9Af0305B919Dwadgq7MUjiuKJQ3oXwZztTWNX5w@mail.gmail.com>
 <bc7f2302-92f2-de6c-6102-b2cb388c9906@linaro.org> <CA+VMnFynxRL7ynLh4ZwGWYj-97pHP4+me8CvCCbm36Sg=4K9AA@mail.gmail.com>
 <dbd15d26-a0c3-f608-9e06-952403a75b48@linaro.org>
In-Reply-To: <dbd15d26-a0c3-f608-9e06-952403a75b48@linaro.org>
From:   Jagan Teki <jagan@edgeble.ai>
Date:   Wed, 27 Jul 2022 13:01:14 +0530
Message-ID: <CA+VMnFyXNMcba8adY9zipZ1ZgOXPXVzeJmVP+sBN6g6L+m0ZKQ@mail.gmail.com>
Subject: Re: [PATCH 02/22] dt-bindings: power: Add power-domain header for RV1126
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Elaine Zhang <zhangqing@rock-chips.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 27 Jul 2022 at 12:46, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 27/07/2022 09:09, Jagan Teki wrote:
> > On Wed, 27 Jul 2022 at 12:31, Krzysztof Kozlowski
> > <krzysztof.kozlowski@linaro.org> wrote:
> >>
> >> On 27/07/2022 08:52, Jagan Teki wrote:
> >>> On Tue, 26 Jul 2022 at 19:22, Krzysztof Kozlowski
> >>> <krzysztof.kozlowski@linaro.org> wrote:
> >>>>
> >>>> On 26/07/2022 15:44, Jagan Teki wrote:
> >>>>> On Sun, 24 Jul 2022 at 02:28, Krzysztof Kozlowski
> >>>>> <krzysztof.kozlowski@linaro.org> wrote:
> >>>>>>
> >>>>>> On 23/07/2022 22:43, Jagan Teki wrote:
> >>>>>>> Add power-domain header for RV1126 SoC from description in TRM.
> >>>>>>>
> >>>>>>> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> >>>>>>> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> >>>>>>> ---
> >>>>>>>  include/dt-bindings/power/rv1126-power.h | 34 ++++++++++++++++++++++++
> >>>>>>>  1 file changed, 34 insertions(+)
> >>>>>>>  create mode 100644 include/dt-bindings/power/rv1126-power.h
> >>>>>>>
> >>>>>>> diff --git a/include/dt-bindings/power/rv1126-power.h b/include/dt-bindings/power/rv1126-power.h
> >>>>>>> new file mode 100644
> >>>>>>> index 000000000000..f15930ff06f7
> >>>>>>> --- /dev/null
> >>>>>>> +++ b/include/dt-bindings/power/rv1126-power.h
> >>>>>>> @@ -0,0 +1,34 @@
> >>>>>>> +/* SPDX-License-Identifier: GPL-2.0 */
> >>>>>>
> >>>>>> Dual license and a blank line,  please.
> >>>>>
> >>>>> Yes, all rockchip power includes (at least here) are GPL-2.0 what is
> >>>>> the issue with it?
> >>>>
> >>>> The headers are part of bindings and all bindings should be dual
> >>>> licensed, so they can be used in other projects.
> >>>>
> >>>> Of course if copyright holder does not agree to release it on BSD, then
> >>>> it would be fine as exception. Also would be fine from us not to accept
> >>>> such bindings. :)
> >>>
> >>> I don't hold anything here to use dual-licensing. The only thing I'm
> >>> wondering here is none of the rockchip power includes (which are
> >>> merged) are using dual-licensing they simply have GPL-2.0 which is
> >>> used in BSP.  Let me know what you suggest?
> >>
> >> Hm, I think you asked this above and I answered that dual license should
> >> be used. Maybe we misunderstand each other?
> >
> > Sorry, I'm asking again as I'm liable to change the license here or not.
> >
> >>
> >> Do you include in this header any work which cannot be licensed on BSD
> >> (e.g. is derivative of existing GPL-2 work)?
> >
> > Yes, it is from BSP
> > https://github.com/rockchip-linux/kernel/blob/develop-4.19/include/dt-bindings/power/rv1126-power.h
>
> Eh... if you don't have permission to relicense it and you copied the
> IDs (although one would say it is not really copyrightable work), then
> let it be GPL-2.0. In the future just write the IDs by yourself (not as
> derivative work) and dual-license the header.

Yes, I usually follow the dual-license if I wrote new ones in bindings.

Thanks for the details.

Jagan.
