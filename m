Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4E2B0588ABE
	for <lists+devicetree@lfdr.de>; Wed,  3 Aug 2022 12:46:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230272AbiHCKqU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Aug 2022 06:46:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51972 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229784AbiHCKqT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Aug 2022 06:46:19 -0400
Received: from mail-il1-x132.google.com (mail-il1-x132.google.com [IPv6:2607:f8b0:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC0E1DD2
        for <devicetree@vger.kernel.org>; Wed,  3 Aug 2022 03:46:18 -0700 (PDT)
Received: by mail-il1-x132.google.com with SMTP id b12so7589344ils.9
        for <devicetree@vger.kernel.org>; Wed, 03 Aug 2022 03:46:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=Sdl1HDAMO7QN2zfOTcK0TKELdtFAbVwfNiLV0pjEOVM=;
        b=gwTdoIzxxTdgP0N5qgtx/pdTIShdgMTfYdfnc9OpVMmRLjLPaMfRp34XXVZG7RnFHm
         OI4hAkJe/jFo08ryCnrZJaat/qnfgi0zO23zm5oFG48ruOgt0TX+g5HknSuPi41f7VjZ
         spuxXMg4yh5J+k4AqB2JPGi+7jNp2dTp+FNW+ase3QS5wvjFKeEAPLNlDCDh6QLRYL4J
         3sWYm7rCDgSOV/1igKUhCVHz4r+vRpcuPFkxyFWOr9mVGSggjMZOzAiyfcsXnNns+FRK
         xBhF3tNjAaNlwY/Bg7GBY0MGJ8d3tHYNid+kd23Y3/agwBJ3i3aD1zr9WJaNh4ldNcTY
         ccVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=Sdl1HDAMO7QN2zfOTcK0TKELdtFAbVwfNiLV0pjEOVM=;
        b=2CYwGVEeLH03tSI5Elr4ZkmLhfeQATswm+mKgAFD7x56kTazxeOwZPcqS6m00ToKtd
         y+qBh181rm20tiwAUBJQJQmDaQMnWC51LK6yuBQDa2Sl8pwXcPzkc8c+dMTSmiczW4s5
         MoQ3mXFh5XZlCAqT3VsQ7EqThGyoqcpAC+2PcI+U9UM0JIZ0/TIQa+KeOlNZCMCAskQ2
         ft3nl9InFZmiJcUmIanW2u8GE/KflM1AxgMZHrhauSjtwvx7qZoh8BkqmEBrhpOVSu0z
         XGuG45OVX2QswjS7TdZiiv8t/OUisznZUyrzZJCTxSWEEvHdofBXXcYJeaeLokNUe5Zb
         k7+g==
X-Gm-Message-State: ACgBeo2YlS022pKs0fP1KffNLykoKGE2ExtNp+knQQQFNyPSU2lINoJ7
        5KD8ZFjZgv9qAe38B0Mlpc02NBuwMGaA1peXWzkpUhP4GYeD0ztzeG8=
X-Google-Smtp-Source: AA6agR5Sb8mkyscBBiAfGTgCzp3wbpXMwA4TotySl5QQZm6QkPjhjhUsRaZodv3Um3jHY1wL16wO9py5LQJG9CTZXCM=
X-Received: by 2002:a05:6e02:198f:b0:2de:91f6:f70e with SMTP id
 g15-20020a056e02198f00b002de91f6f70emr6100277ilf.80.1659523578256; Wed, 03
 Aug 2022 03:46:18 -0700 (PDT)
MIME-Version: 1.0
References: <20220731174726.72631-1-jagan@edgeble.ai> <20220731174726.72631-3-jagan@edgeble.ai>
 <4f8b8b98-c0ef-4924-6ff1-ccfeae77fc21@linaro.org> <CA+VMnFwQFLNbtgX0RR5vLq29tvU3HBpcyrtrksOsxF5s=W7=UQ@mail.gmail.com>
 <288b4d6e-68f9-26ef-c80d-cbcdaf9d2eed@linaro.org>
In-Reply-To: <288b4d6e-68f9-26ef-c80d-cbcdaf9d2eed@linaro.org>
From:   Jagan Teki <jagan@edgeble.ai>
Date:   Wed, 3 Aug 2022 16:16:07 +0530
Message-ID: <CA+VMnFwO41qOCSSbghynompUYMWGExeSCMKJVP9Z5Ed6pBgYDA@mail.gmail.com>
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

On Wed, 3 Aug 2022 at 16:13, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 03/08/2022 12:24, Jagan Teki wrote:
> >> Vendor in filename is needed.
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
>
>
> So when are we going to switch to vendor,device pattern if you keep
> adding files with wrong naming?

Do you mean the above files are following the wrong naming pattern?

Jagan.
