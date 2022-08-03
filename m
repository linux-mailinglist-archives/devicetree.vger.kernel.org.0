Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 249D858946E
	for <lists+devicetree@lfdr.de>; Thu,  4 Aug 2022 00:33:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232796AbiHCWds (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Aug 2022 18:33:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55898 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229579AbiHCWds (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Aug 2022 18:33:48 -0400
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com [209.85.166.54])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2316B1109
        for <devicetree@vger.kernel.org>; Wed,  3 Aug 2022 15:33:47 -0700 (PDT)
Received: by mail-io1-f54.google.com with SMTP id i84so1393617ioa.6
        for <devicetree@vger.kernel.org>; Wed, 03 Aug 2022 15:33:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=9gI9TOdJWQOPfIpMfYTyghgtjr1K2FynC9VVJudPdrA=;
        b=yQo4t93wP90QN40csqUuwrOEWtuGUSZXMEv5F0Mk+0VaGsAUKb58gHRJYlHSwZ7Z9V
         bOFPVi4LQD+tLb6DPsPo9QQY+A/5JEaz9mz2LcyOmfwlUd2V29OjFkh+9gN7rae7yVgX
         C1oujod/dmgt0aCsAx00Z0E2yT6I90lGT97zRu5gtOIZvjA0M1mx7vuh/5vTe8lbULrs
         MuBHVuPekfJrOTsHr6bFtm9o2YEmyFXytrQllD2lSnAI+n9GaFwV/8DhFkCmZVG7FNAw
         VNCwns3HzPPS2n/z5+qIFDmVGmqGNrbsVJ+Wy2lvq0OUJIvTnvmZyugVNwNdnuVuiS4C
         xrCg==
X-Gm-Message-State: ACgBeo3VlUg0lqIlH3XFgTFIAiFI/jJJa3ikHAbBfSPyW+pGRXEDasKk
        JW1G9sSznwmZL5l+b2Ychw==
X-Google-Smtp-Source: AA6agR4FTOsGPel7KQefqEIOVHQuKg2sQLlZIWChh3AONYgk92v0ZeAm7CWzdJNpZEXyDkHkK+uSjQ==
X-Received: by 2002:a05:6638:3821:b0:342:968b:62d with SMTP id i33-20020a056638382100b00342968b062dmr1350017jav.302.1659566026386;
        Wed, 03 Aug 2022 15:33:46 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id n17-20020a056602341100b00674f9fb1531sm8800376ioz.30.2022.08.03.15.33.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Aug 2022 15:33:45 -0700 (PDT)
Received: (nullmailer pid 2741031 invoked by uid 1000);
        Wed, 03 Aug 2022 22:33:43 -0000
Date:   Wed, 3 Aug 2022 16:33:43 -0600
From:   Rob Herring <robh@kernel.org>
To:     Jagan Teki <jagan@edgeble.ai>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Elaine Zhang <zhangqing@rock-chips.com>
Subject: Re: [PATCH v2 02/20] dt-bindings: power: Add power-domain header for
 RV1126
Message-ID: <20220803223343.GA2737695-robh@kernel.org>
References: <20220731174726.72631-1-jagan@edgeble.ai>
 <20220731174726.72631-3-jagan@edgeble.ai>
 <4f8b8b98-c0ef-4924-6ff1-ccfeae77fc21@linaro.org>
 <CA+VMnFwQFLNbtgX0RR5vLq29tvU3HBpcyrtrksOsxF5s=W7=UQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CA+VMnFwQFLNbtgX0RR5vLq29tvU3HBpcyrtrksOsxF5s=W7=UQ@mail.gmail.com>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Aug 03, 2022 at 03:54:56PM +0530, Jagan Teki wrote:
> On Tue, 2 Aug 2022 at 16:08, Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
> >
> > On 31/07/2022 19:47, Jagan Teki wrote:
> > > Add power-domain header for RV1126 SoC from description in TRM.
> > >
> > > Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> > > Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> > > ---
> > > Changes for v2:
> > > - add blank line
> > >
> > >  include/dt-bindings/power/rv1126-power.h | 35 ++++++++++++++++++++++++
> > >  1 file changed, 35 insertions(+)
> > >  create mode 100644 include/dt-bindings/power/rv1126-power.h
> > >
> > > diff --git a/include/dt-bindings/power/rv1126-power.h b/include/dt-bindings/power/rv1126-power.h
> >
> > Vendor in filename is needed.
> 
> Yes this follows how similar rockchip vendor notation
> 
> $ ls include/dt-bindings/power/rk3* -l
>  include/dt-bindings/power/rk3036-power.h
>  include/dt-bindings/power/rk3066-power.h
>  include/dt-bindings/power/rk3128-power.h
>  include/dt-bindings/power/rk3188-power.h
>  include/dt-bindings/power/rk3228-power.h
>  include/dt-bindings/power/rk3288-power.h
>  include/dt-bindings/power/rk3328-power.h
>  include/dt-bindings/power/rk3366-power.h
>  include/dt-bindings/power/rk3368-power.h
>  include/dt-bindings/power/rk3399-power.h
>  include/dt-bindings/power/rk3568-power.h
> 
> >
> > > new file mode 100644
> > > index 000000000000..38a68e000d38
> > > --- /dev/null
> > > +++ b/include/dt-bindings/power/rv1126-power.h
> > > @@ -0,0 +1,35 @@
> > > +/* SPDX-License-Identifier: GPL-2.0 */
> >
> > Dual license, please, unless some copyrights are no allowing this.
> 
> Yes, as we discussed in v1 - I'm not liable to change so I keep this as it is.

I assume that would be Rockchip. Can someone from Rockchip please give 
an okay here to dual license?

Rob
