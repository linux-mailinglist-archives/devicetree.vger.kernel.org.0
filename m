Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 39CEC581465
	for <lists+devicetree@lfdr.de>; Tue, 26 Jul 2022 15:45:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239022AbiGZNpL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jul 2022 09:45:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56542 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239088AbiGZNoz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jul 2022 09:44:55 -0400
Received: from mail-io1-xd32.google.com (mail-io1-xd32.google.com [IPv6:2607:f8b0:4864:20::d32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 93E4E29C93
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 06:44:53 -0700 (PDT)
Received: by mail-io1-xd32.google.com with SMTP id p81so11215371iod.2
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 06:44:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=3sg0+bj79T4lUnFNDlgphNi3BOPuqpEValbE02nToJo=;
        b=g/LGzUesna7SjtItQmKFQ9pgi/BlEOtA1B2YgV0QmvX3mAhFInLBX+8yBjuv0e5gpO
         C7f8/V0bIoKSSloxlBZbMvUYGCis1a1lwyey2fMhxpeGcjg5rVLBbOYBxzWObLKep8vu
         INE0iVq7Hfc4IdtRKvjQ4GPWO/1fuxmm8Bk7Mx4n+CGihmE0HddFrlBVDFl3/WMhDjs6
         dhOnw4RmBXTyTDpCB7FgtXn1c4fRUHlc7rQhStKgi11w2l2X4qQxsnW48pYdpvWYhZS5
         VNrxKOmZ9KLYO/g53KX7tQnK3oFdLrRKTTaPNkRg+DikwLZHl9+ZyxdYuVsVbQTzrss4
         qErw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3sg0+bj79T4lUnFNDlgphNi3BOPuqpEValbE02nToJo=;
        b=mtjUZOLoXwD95IVd783YgKKAmyUteBJ1UG3qIfx0JXfnqrdJn4tKeWrW+mTuY6E+QK
         B6DZElXjZ3mUcFZxEnasoUiccaenniz8I5xtMvyRLTdUBcR+BMan8GEVETEpZydlXtgR
         6IAhjfCXC+hvXPOvfY7qYjs00iGJowjovgYaAmTFZJBkAiU8KFo8evxP01vNA8/t7tB3
         mtzdZbz9UcCyNBWMnvvxLL60vS1BmiMIlyjGT8denf5z4Z9DxUaatBIH1SIbJdIZBZDN
         s3Bbb5iZoobg1cN51b3j1kLxnTKhO9aYiJc+TanJ7KFo6mfCT0Q4q8JLucPcOzkos80b
         f7jA==
X-Gm-Message-State: AJIora8ABBp6pbPeCnEkeOPeX2UjPT48Md8EqJYwe6qoYVgGR4Zs+mV8
        kvsJ6qIzUEy7iENC5fE6ESnTL2KqeCk91MYt5vVhtg==
X-Google-Smtp-Source: AGRyM1uq1rM8MT8d/wz/N5sPh0/sqPAh+n6MB8ouXkjmJvHbq65SJIqtmCAxxT/s12a1j6n71R7YjbXdKZBASS571T4=
X-Received: by 2002:a05:6638:31c1:b0:33f:2450:46a9 with SMTP id
 n1-20020a05663831c100b0033f245046a9mr6851405jav.45.1658843093031; Tue, 26 Jul
 2022 06:44:53 -0700 (PDT)
MIME-Version: 1.0
References: <20220723204335.750095-1-jagan@edgeble.ai> <20220723204335.750095-3-jagan@edgeble.ai>
 <e1d57de9-060b-bd58-2cea-85f41f75e7be@linaro.org>
In-Reply-To: <e1d57de9-060b-bd58-2cea-85f41f75e7be@linaro.org>
From:   Jagan Teki <jagan@edgeble.ai>
Date:   Tue, 26 Jul 2022 19:14:42 +0530
Message-ID: <CA+VMnFwNqm57StGj_JyTT2TM56uD-nFjxCekEH6aKYDMhEuxjw@mail.gmail.com>
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

On Sun, 24 Jul 2022 at 02:28, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 23/07/2022 22:43, Jagan Teki wrote:
> > Add power-domain header for RV1126 SoC from description in TRM.
> >
> > Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> > Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> > ---
> >  include/dt-bindings/power/rv1126-power.h | 34 ++++++++++++++++++++++++
> >  1 file changed, 34 insertions(+)
> >  create mode 100644 include/dt-bindings/power/rv1126-power.h
> >
> > diff --git a/include/dt-bindings/power/rv1126-power.h b/include/dt-bindings/power/rv1126-power.h
> > new file mode 100644
> > index 000000000000..f15930ff06f7
> > --- /dev/null
> > +++ b/include/dt-bindings/power/rv1126-power.h
> > @@ -0,0 +1,34 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
>
> Dual license and a blank line,  please.

Yes, all rockchip power includes (at least here) are GPL-2.0 what is
the issue with it?

Thanks,
Jagan.
