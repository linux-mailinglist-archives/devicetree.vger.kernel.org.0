Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E084F588B3A
	for <lists+devicetree@lfdr.de>; Wed,  3 Aug 2022 13:30:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236094AbiHCLaS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Aug 2022 07:30:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49926 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236312AbiHCLaQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Aug 2022 07:30:16 -0400
Received: from mail-il1-x130.google.com (mail-il1-x130.google.com [IPv6:2607:f8b0:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 62BE263FE
        for <devicetree@vger.kernel.org>; Wed,  3 Aug 2022 04:30:15 -0700 (PDT)
Received: by mail-il1-x130.google.com with SMTP id g14so3685893ile.11
        for <devicetree@vger.kernel.org>; Wed, 03 Aug 2022 04:30:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=bUE+pu10l7SJsezjEw0r7Eg89CEjsK94p23V+ZNAZWw=;
        b=Qb7mrEuTuWrAfV+zEzvYHPnO7lbas/P5vRxIEUo3tvpCMlbyh75WEVULA6rtySgTmN
         C4hKKoGDTiFbvEy0pUa4M5zrGzsquaNXFcfO8tPp10C59u/IMkps5uNwjWbIAbyei/FQ
         fBBTITztB/suYXl1tpx6ex4FwECBjJ0CRF2njMEffqnkfq8PLwuPAdMfFGdz/SfN9VhP
         hoiKaRpUomkCnwexXApFiUlFh22YYRVFC0/dhXB6uQWOVXwjhYZvv7/z1wN2yN7U85Mj
         ho27xUk2jm1U1HOsY6vNy1yESYPwONRNlcATM/tMfDS3je0xyLfbPuuHFCW4Wg+pAg1q
         u1xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=bUE+pu10l7SJsezjEw0r7Eg89CEjsK94p23V+ZNAZWw=;
        b=oSVzvWrN84x6J//FTA/C42njrlfswLdFG2OjemjlSYGMtcc09XAL4B54MTk6PnE9MA
         dnZdsazg4zINLBPD8yvaLu3n0uLrPo7TbUDQ0eawR7WztTgQmo81f4/Wy1D8UszJrkCk
         qM2tlJq75YrDVpxRQYjQOAbDFGREzAHx8abFCCGrhSfDyJ3qQyjzXIyjLxptBP/fUYsn
         oWLdJN1rUrv2KcHU7iHV8NyyuKHspq19IbInUkzVtAqBDv8vmSCYYwJmBkvNgQ0MkQk+
         cC8SK6Jkw++wn8ruSMQJ1oLJZ0+wABMBcp6gS7NCEbMQ9G2TMfSQEWX/4uuDf22KSRCP
         kgpA==
X-Gm-Message-State: AJIora9V7My0zO9auD55o/fHxQVwuqVyID9jgJHlZjmpiwdPk8242/Uj
        MNhzr09nYK2dbnx4ZEOk3jsR+NjuP9QTL2NO0/GNMw==
X-Google-Smtp-Source: AGRyM1tii73p9HR3cz+TKCtHyyJ6E1sK+WupHgWkdeT5xdHyhpPMY4cw9ZsjhZN34srsF0d5Q623bneJEim91PUZJsY=
X-Received: by 2002:a05:6e02:19cc:b0:2dd:ad68:7443 with SMTP id
 r12-20020a056e0219cc00b002ddad687443mr10357723ill.141.1659526214730; Wed, 03
 Aug 2022 04:30:14 -0700 (PDT)
MIME-Version: 1.0
References: <20220731174726.72631-1-jagan@edgeble.ai> <20220731174726.72631-3-jagan@edgeble.ai>
 <4f8b8b98-c0ef-4924-6ff1-ccfeae77fc21@linaro.org> <CA+VMnFwQFLNbtgX0RR5vLq29tvU3HBpcyrtrksOsxF5s=W7=UQ@mail.gmail.com>
 <288b4d6e-68f9-26ef-c80d-cbcdaf9d2eed@linaro.org> <CA+VMnFwO41qOCSSbghynompUYMWGExeSCMKJVP9Z5Ed6pBgYDA@mail.gmail.com>
 <88a18350-33fb-81e9-7984-7490da83a4a3@linaro.org>
In-Reply-To: <88a18350-33fb-81e9-7984-7490da83a4a3@linaro.org>
From:   Jagan Teki <jagan@edgeble.ai>
Date:   Wed, 3 Aug 2022 17:00:03 +0530
Message-ID: <CA+VMnFyjwt3ojtm+42U_LzXmdgV=x=ZE7m3SWZ2_FDLR4RM2QQ@mail.gmail.com>
Subject: Re: [PATCH v2 02/20] dt-bindings: power: Add power-domain header for RV1126
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

On Wed, 3 Aug 2022 at 16:57, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 03/08/2022 12:46, Jagan Teki wrote:
> > On Wed, 3 Aug 2022 at 16:13, Krzysztof Kozlowski
> > <krzysztof.kozlowski@linaro.org> wrote:
> >>
> >> On 03/08/2022 12:24, Jagan Teki wrote:
> >>>> Vendor in filename is needed.
> >>>
> >>> Yes this follows how similar rockchip vendor notation
> >>>
> >>> $ ls include/dt-bindings/power/rk3* -l
> >>>  include/dt-bindings/power/rk3036-power.h
> >>>  include/dt-bindings/power/rk3066-power.h
> >>>  include/dt-bindings/power/rk3128-power.h
> >>>  include/dt-bindings/power/rk3188-power.h
> >>>  include/dt-bindings/power/rk3228-power.h
> >>>  include/dt-bindings/power/rk3288-power.h
> >>>  include/dt-bindings/power/rk3328-power.h
> >>>  include/dt-bindings/power/rk3366-power.h
> >>>  include/dt-bindings/power/rk3368-power.h
> >>>  include/dt-bindings/power/rk3399-power.h
> >>>  include/dt-bindings/power/rk3568-power.h
> >>
> >>
> >> So when are we going to switch to vendor,device pattern if you keep
> >> adding files with wrong naming?
> >
> > Do you mean the above files are following the wrong naming pattern?
>
> Yes, or at least discouraged naming. The recommended naming which I hope
> all new files will follow are vendor,device.h.

rockchip-rv1126-power.h

Will this be Okay?

Thanks,
Jagan.
