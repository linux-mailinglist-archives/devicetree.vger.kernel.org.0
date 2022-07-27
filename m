Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B35255820BB
	for <lists+devicetree@lfdr.de>; Wed, 27 Jul 2022 09:09:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229972AbiG0HJy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Jul 2022 03:09:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47364 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229922AbiG0HJs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Jul 2022 03:09:48 -0400
Received: from mail-il1-x135.google.com (mail-il1-x135.google.com [IPv6:2607:f8b0:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 817F73CBF1
        for <devicetree@vger.kernel.org>; Wed, 27 Jul 2022 00:09:46 -0700 (PDT)
Received: by mail-il1-x135.google.com with SMTP id y13so8369403ilv.5
        for <devicetree@vger.kernel.org>; Wed, 27 Jul 2022 00:09:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ym5PL6IKBpEk4cAV7KXiTLIEtkfx7CIk1VK2BN9v/Do=;
        b=EokX00qthJp/Vc5qrDq5CSaFSVLOQtxKetI3btAH4cOdEAonl07ckawUcO3jKfPiEZ
         WWs0ra5GVpPhv79lMhHcHD4hTBVOnnYigIbbL1LwcaxJX6VvvfuMBf/eaxl+T/X/6807
         gvWngX+/YtZOdGpz1Pglw+wQn8bVprrVT8f/m1La6PNJuGboT/LbCK0u+CyXMfvxiHY9
         Q8Sg0oshPxrj1oZOO1o4/fXeMmrUFhl/lNQp85BQswOK5/g5HRofnI9MwM30AnjKv8TW
         +6qmgo0t+2rb4Vn12zhoHXVOK3GHQjRtOMReAYLnv/HrAj9q7FUM/jcsqbO4ZUxNHyOo
         gSqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ym5PL6IKBpEk4cAV7KXiTLIEtkfx7CIk1VK2BN9v/Do=;
        b=tDVEceenAJDhrkgtfESyJB6H9WKI/rX9jQiNMd1o5Qr9f1mDT+ET7qqs8EJAsX7F9y
         J9Jhy2XOpiyqp08vqDx5PN4hO+Zy1pAzhPE+BsbUwxQkZ+mqt3OGvjDvIA1V6HfbGx02
         2RiVOi7VX1XBjNJRVvEnUNxRf/0O2/2nQ3XDZHlxvpzFha3ld4u4wwwRcM6GzCqq9fUU
         5wAvTilBOl+bxSttHY6dnIW/L0bS+96y1FtePPj12iiQ3dEoCo80XjvGP5jzUwgKKIxz
         mNMpc9MxHOpK7iYt2cOxafXaJ7S6dB3iCm2QgqyF8QEWy5kbTYz2t00FhmZniqbep/RC
         tLzA==
X-Gm-Message-State: AJIora9exYX594HlDpDm525ZnTeCdFFCDZqHfLzAXe8kdENiKLeqncnL
        O3DM1eywBlkiQHhAxa3BQyQ54W422G3IY1Cnzv5OPQ==
X-Google-Smtp-Source: AGRyM1u2Ixt5LYNut3xjACGU6+A4H5ueNqZ8jLaTGn9yigNXFcNvkAWo3ueMhhTg4T4z8/EFQrNlW1R9F8olN21Y7dk=
X-Received: by 2002:a05:6e02:19cc:b0:2dd:ad68:7443 with SMTP id
 r12-20020a056e0219cc00b002ddad687443mr2025463ill.141.1658905785835; Wed, 27
 Jul 2022 00:09:45 -0700 (PDT)
MIME-Version: 1.0
References: <20220723204335.750095-1-jagan@edgeble.ai> <20220723204335.750095-3-jagan@edgeble.ai>
 <e1d57de9-060b-bd58-2cea-85f41f75e7be@linaro.org> <CA+VMnFwNqm57StGj_JyTT2TM56uD-nFjxCekEH6aKYDMhEuxjw@mail.gmail.com>
 <360f7d11-96f4-369e-1289-6c9dc3c49ca4@linaro.org> <CA+VMnFzAjif9Af0305B919Dwadgq7MUjiuKJQ3oXwZztTWNX5w@mail.gmail.com>
 <bc7f2302-92f2-de6c-6102-b2cb388c9906@linaro.org>
In-Reply-To: <bc7f2302-92f2-de6c-6102-b2cb388c9906@linaro.org>
From:   Jagan Teki <jagan@edgeble.ai>
Date:   Wed, 27 Jul 2022 12:39:35 +0530
Message-ID: <CA+VMnFynxRL7ynLh4ZwGWYj-97pHP4+me8CvCCbm36Sg=4K9AA@mail.gmail.com>
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

On Wed, 27 Jul 2022 at 12:31, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 27/07/2022 08:52, Jagan Teki wrote:
> > On Tue, 26 Jul 2022 at 19:22, Krzysztof Kozlowski
> > <krzysztof.kozlowski@linaro.org> wrote:
> >>
> >> On 26/07/2022 15:44, Jagan Teki wrote:
> >>> On Sun, 24 Jul 2022 at 02:28, Krzysztof Kozlowski
> >>> <krzysztof.kozlowski@linaro.org> wrote:
> >>>>
> >>>> On 23/07/2022 22:43, Jagan Teki wrote:
> >>>>> Add power-domain header for RV1126 SoC from description in TRM.
> >>>>>
> >>>>> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> >>>>> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> >>>>> ---
> >>>>>  include/dt-bindings/power/rv1126-power.h | 34 ++++++++++++++++++++++++
> >>>>>  1 file changed, 34 insertions(+)
> >>>>>  create mode 100644 include/dt-bindings/power/rv1126-power.h
> >>>>>
> >>>>> diff --git a/include/dt-bindings/power/rv1126-power.h b/include/dt-bindings/power/rv1126-power.h
> >>>>> new file mode 100644
> >>>>> index 000000000000..f15930ff06f7
> >>>>> --- /dev/null
> >>>>> +++ b/include/dt-bindings/power/rv1126-power.h
> >>>>> @@ -0,0 +1,34 @@
> >>>>> +/* SPDX-License-Identifier: GPL-2.0 */
> >>>>
> >>>> Dual license and a blank line,  please.
> >>>
> >>> Yes, all rockchip power includes (at least here) are GPL-2.0 what is
> >>> the issue with it?
> >>
> >> The headers are part of bindings and all bindings should be dual
> >> licensed, so they can be used in other projects.
> >>
> >> Of course if copyright holder does not agree to release it on BSD, then
> >> it would be fine as exception. Also would be fine from us not to accept
> >> such bindings. :)
> >
> > I don't hold anything here to use dual-licensing. The only thing I'm
> > wondering here is none of the rockchip power includes (which are
> > merged) are using dual-licensing they simply have GPL-2.0 which is
> > used in BSP.  Let me know what you suggest?
>
> Hm, I think you asked this above and I answered that dual license should
> be used. Maybe we misunderstand each other?

Sorry, I'm asking again as I'm liable to change the license here or not.

>
> Do you include in this header any work which cannot be licensed on BSD
> (e.g. is derivative of existing GPL-2 work)?

Yes, it is from BSP
https://github.com/rockchip-linux/kernel/blob/develop-4.19/include/dt-bindings/power/rv1126-power.h

Thanks,
Jagan.
