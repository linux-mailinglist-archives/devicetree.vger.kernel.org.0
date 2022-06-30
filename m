Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D358F5626D0
	for <lists+devicetree@lfdr.de>; Fri,  1 Jul 2022 01:19:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232440AbiF3XPv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Jun 2022 19:15:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37558 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232370AbiF3XPu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Jun 2022 19:15:50 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD83A1261E
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 16:15:45 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id ay16so911701ejb.6
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 16:15:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=SWJlfnOUvt/FFKbUgKl5hHMb12qmVk1doHERyZfesTg=;
        b=Wn+P6bik2DjG8VTAjP17LBoHzLWqHSFvUMIQbK+3Uny2jIXyxPR0eFPIGOGrzNwMtB
         PAkulFML0VeMMt7xAv/O9qGy3I49Rc4Omb5bXscaWalVPes1iOEFJP2+gkxUtmVmSOP2
         zg36Q/CMHN4JD0aaRUSYAEmDlrr2+k44vFPKo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=SWJlfnOUvt/FFKbUgKl5hHMb12qmVk1doHERyZfesTg=;
        b=YEJ0rqGJm8BlyV6UMC5SquGksysFyLvapS5LuL6nlKwWQ0x8AcORgY//kjLuWbwTAZ
         bVgam0R0eOvSJRRFXvzeY64ZZZCRFBOFh3BqpxYXJFMxW+mvW//f74gfJAl6Q7RfY8gl
         cWQoGBe3OMzvhFXHvbG3wQB11MmTzxvcx2eo7ZFq3tijP2dpmJivxMfDwIRYz1ZSVpUh
         MlgNM/qwJFmEhpoejcL7YPN/xH/B1dRpi0IVnkZdgJpDzQvz7U5nqHtdCIWNKSjzewMp
         4pOBszVaQ3a9l3QRAT1Voe35hCjaH+FJgj36jYQDYriPJWAByPlC4qA0okVzuPFx78t8
         3XYg==
X-Gm-Message-State: AJIora8k/LaId+9IRMeqSeI/fU2YEmx6B9khfCBsK3cXIdluHWxX2Dki
        xuHYWSTsPFm05c+cheIDjalrTx3QHw9Hg3btY3c=
X-Google-Smtp-Source: AGRyM1vUcKBIybvWh4RJ5zczsnENTzsz1TvC13qW5aqmaG7iShMVdBCqZ+eaO4rz02C+LIx7gR2zQA==
X-Received: by 2002:a17:907:629c:b0:6e1:6ad:5dd8 with SMTP id nd28-20020a170907629c00b006e106ad5dd8mr11656358ejc.641.1656630944505;
        Thu, 30 Jun 2022 16:15:44 -0700 (PDT)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com. [209.85.128.44])
        by smtp.gmail.com with ESMTPSA id r1-20020aa7cb81000000b004357b717a96sm13912884edt.85.2022.06.30.16.15.43
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Jun 2022 16:15:44 -0700 (PDT)
Received: by mail-wm1-f44.google.com with SMTP id m184so256595wme.1
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 16:15:43 -0700 (PDT)
X-Received: by 2002:a05:600c:5107:b0:3a0:4342:ed75 with SMTP id
 o7-20020a05600c510700b003a04342ed75mr12367143wms.93.1656630943574; Thu, 30
 Jun 2022 16:15:43 -0700 (PDT)
MIME-Version: 1.0
References: <20220630193530.2608178-1-mka@chromium.org> <20220630123445.v24.2.Ie2bbbd3f690826404b8f1059d24edcab33ed898f@changeid>
In-Reply-To: <20220630123445.v24.2.Ie2bbbd3f690826404b8f1059d24edcab33ed898f@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 30 Jun 2022 16:15:30 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Xj3ejpZ4y3D9gip=rr2jKx9bA1jJWtHVaKv9TYZdQ2BA@mail.gmail.com>
Message-ID: <CAD=FV=Xj3ejpZ4y3D9gip=rr2jKx9bA1jJWtHVaKv9TYZdQ2BA@mail.gmail.com>
Subject: Re: [PATCH v24 2/4] dt-bindings: usb: rts5411: Rename property
 'companion-hub' to 'peer-hub'
To:     Matthias Kaehlcke <mka@chromium.org>
Cc:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Alan Stern <stern@rowland.harvard.edu>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Mathias Nyman <mathias.nyman@intel.com>,
        Felipe Balbi <balbi@kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Michal Simek <michal.simek@xilinx.com>,
        Linux USB List <linux-usb@vger.kernel.org>,
        Ravi Chandra Sadineni <ravisadineni@chromium.org>,
        Roger Quadros <rogerq@kernel.org>,
        Bastien Nocera <hadess@hadess.net>,
        Peter Chen <peter.chen@kernel.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, Jun 30, 2022 at 12:35 PM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> In the context of USB the term 'companion-hub' is misleading, change the
> name of the property to 'peer-hub'.
>
> There are no upstream users of the 'companion-hub' property, neither in
> the device tree, nor on the driver side, so renaming it shouldn't cause
> any compatibility issues with existing device trees.
>
> Changes in v24:
> - patch added to the series
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
>
> (no changes since v1)
>
>  .../devicetree/bindings/usb/realtek,rts5411.yaml       | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)

Matches what Alan said...

Reviewed-by: Douglas Anderson <dianders@chromium.org>
