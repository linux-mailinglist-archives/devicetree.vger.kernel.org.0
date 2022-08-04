Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A47A558A078
	for <lists+devicetree@lfdr.de>; Thu,  4 Aug 2022 20:26:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239962AbiHDS0c (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 Aug 2022 14:26:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57848 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229660AbiHDS03 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 Aug 2022 14:26:29 -0400
Received: from mail-io1-xd31.google.com (mail-io1-xd31.google.com [IPv6:2607:f8b0:4864:20::d31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E6B3A1D0C4
        for <devicetree@vger.kernel.org>; Thu,  4 Aug 2022 11:26:27 -0700 (PDT)
Received: by mail-io1-xd31.google.com with SMTP id z145so312185iof.9
        for <devicetree@vger.kernel.org>; Thu, 04 Aug 2022 11:26:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=s9D0tQ74Aa05V8FxxaIPM4SruGrj8130+5XIa4Wmvs8=;
        b=EmKih+SAWAnsaIbzoUmlsTtIZzpu31YmTHPBdqHpLl1SUSO2BXE1j0E+/xwXaUcPZ3
         E1637Utk4DDpqUQ2q3HwVHmlmphpr0gVb/wihqnjLbuLjIFPKGRMX/ZRLQD5jcM5iOKq
         YSJqZ9jukqFRNvs8x6KLoIkCR2KYIqBpleMXCisyoVC8w+3Sb/GBp2nfPhIXo1517npH
         jR7Brns0PCGWijOVIvcFgPh2kgWqHlQFfmm8QJgp3J83HCSabNWo2QyqmvZ1qPEAWeU9
         TCw0Ymc2o7cQmcJGX5/e4LoFmL3IkaO4YEG5IQNT7s1dXfxrQ+PmDdAwXSRzHwy9ZxWJ
         hLHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=s9D0tQ74Aa05V8FxxaIPM4SruGrj8130+5XIa4Wmvs8=;
        b=LH8YyP6FuXseCiU9iXAOh5cnzsZit87S7057dNC2vZgY5n9WKFEtIWb++3erNB/hRM
         MRNzOS9FhbZLZin8U89HfV+KZmn7HBVa8F9NcotXra8mrdGvMJJHjw3i+5R2fCrl/P3A
         Fd8uiMAkCWW8Ypslan9i4MKTlamxmP1UL+Tc5U8bpXQ7oaCDFl2N82vgTIrewG3Et2CH
         yMsGGlQGU3HAHYps5FJs/arj+5KR2eS/ZsJEaL97GcS0ChuG/DWQvLyde/StU6txx94q
         F3Lz4c0XGrEUXMlzz0HDdkQxVhqbs2i32W85ROOR1i4dYzlVhdqvxYQ9BrF7GSAdM5iD
         /1WQ==
X-Gm-Message-State: ACgBeo2lj53DHQPfTFjO/faVYHoNsEUSYtFNfZLXDh8/kmOejp4UJVPC
        lF0v9IfJeKCYzNV+s8ps/D4RKOJ7iQHcd3iw6jFgLw==
X-Google-Smtp-Source: AA6agR5WO/o7DOwqWNudivwJicstDS4jkVZeA9cf9xkke/45dOQQnhVRLBFQXaab8TmYHMkOxJ/V8NJ36MpX/b5Iyk8=
X-Received: by 2002:a02:ac03:0:b0:342:89b5:99af with SMTP id
 a3-20020a02ac03000000b0034289b599afmr1390657jao.305.1659637586759; Thu, 04
 Aug 2022 11:26:26 -0700 (PDT)
MIME-Version: 1.0
References: <20220731174726.72631-1-jagan@edgeble.ai> <20220731174726.72631-3-jagan@edgeble.ai>
 <4f8b8b98-c0ef-4924-6ff1-ccfeae77fc21@linaro.org> <CA+VMnFwQFLNbtgX0RR5vLq29tvU3HBpcyrtrksOsxF5s=W7=UQ@mail.gmail.com>
 <20220803223343.GA2737695-robh@kernel.org>
In-Reply-To: <20220803223343.GA2737695-robh@kernel.org>
From:   Jagan Teki <jagan@edgeble.ai>
Date:   Thu, 4 Aug 2022 23:56:15 +0530
Message-ID: <CA+VMnFz9H1RPR+wTjnhgD+DK=-5=yhn1WjGfbjZ5P6q+4gGoQw@mail.gmail.com>
Subject: Re: [PATCH v2 02/20] dt-bindings: power: Add power-domain header for RV1126
To:     Rob Herring <robh@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
        Kever Yang <kever.yang@rock-chips.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
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

On Thu, 4 Aug 2022 at 04:03, Rob Herring <robh@kernel.org> wrote:
>
> On Wed, Aug 03, 2022 at 03:54:56PM +0530, Jagan Teki wrote:
> > On Tue, 2 Aug 2022 at 16:08, Krzysztof Kozlowski
> > <krzysztof.kozlowski@linaro.org> wrote:
> > >
> > > On 31/07/2022 19:47, Jagan Teki wrote:
> > > > Add power-domain header for RV1126 SoC from description in TRM.
> > > >
> > > > Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> > > > Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> > > > ---
> > > > Changes for v2:
> > > > - add blank line
> > > >
> > > >  include/dt-bindings/power/rv1126-power.h | 35 ++++++++++++++++++++++++
> > > >  1 file changed, 35 insertions(+)
> > > >  create mode 100644 include/dt-bindings/power/rv1126-power.h
> > > >
> > > > diff --git a/include/dt-bindings/power/rv1126-power.h b/include/dt-bindings/power/rv1126-power.h
> > >
> > > Vendor in filename is needed.
> >
> > Yes this follows how similar rockchip vendor notation
> >
> > $ ls include/dt-bindings/power/rk3* -l
> >  include/dt-bindings/power/rk3036-power.h
> >  include/dt-bindings/power/rk3066-power.h
> >  include/dt-bindings/power/rk3128-power.h
> >  include/dt-bindings/power/rk3188-power.h
> >  include/dt-bindings/power/rk3228-power.h
> >  include/dt-bindings/power/rk3288-power.h
> >  include/dt-bindings/power/rk3328-power.h
> >  include/dt-bindings/power/rk3366-power.h
> >  include/dt-bindings/power/rk3368-power.h
> >  include/dt-bindings/power/rk3399-power.h
> >  include/dt-bindings/power/rk3568-power.h
> >
> > >
> > > > new file mode 100644
> > > > index 000000000000..38a68e000d38
> > > > --- /dev/null
> > > > +++ b/include/dt-bindings/power/rv1126-power.h
> > > > @@ -0,0 +1,35 @@
> > > > +/* SPDX-License-Identifier: GPL-2.0 */
> > >
> > > Dual license, please, unless some copyrights are no allowing this.
> >
> > Yes, as we discussed in v1 - I'm not liable to change so I keep this as it is.
>
> I assume that would be Rockchip. Can someone from Rockchip please give
> an okay here to dual license?

Kever or Heiko - any comments on this?

Thanks,
Jagan.
