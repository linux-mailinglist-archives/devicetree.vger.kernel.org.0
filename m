Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5FDB05BCBAA
	for <lists+devicetree@lfdr.de>; Mon, 19 Sep 2022 14:20:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229540AbiISMTh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Sep 2022 08:19:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50502 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229779AbiISMTP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Sep 2022 08:19:15 -0400
Received: from mail-oi1-x236.google.com (mail-oi1-x236.google.com [IPv6:2607:f8b0:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 65D23E007
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 05:19:14 -0700 (PDT)
Received: by mail-oi1-x236.google.com with SMTP id n83so14378705oif.11
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 05:19:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=Ktqrpp4wRdRtbAKTWPUwGBfOj0pzsnbWJHOBzYORiQE=;
        b=P4bITa1pV80pIFXneY6XffHQCOkX3dQZw4ra6yfRZ6ptHYm+FZJMjUjpvx41nZFEN+
         J/X8fZ5U4zO6KYC1tpCJSylJQZ1Fb0LOLC4GPKdTyIp5Rw/9GkwYs1lXaWhVe1NspoCN
         407lWd4V7M0fimqJ8CY3l9dOchwpgT99MAU0+RwYEMny5yKbkCqOFOgev/cmucbe12gg
         RxU+QjUoKDiOX6PolyOnVD89NlnbxWvaA9C4wq8r4wPgPmFMknTigrNy2LBgjnpHozsS
         wDg5U/V/8bKnhPD8NiABwaypc2HqDb0gPk5xQS3/GCIK3BRK5DKBsT9CKb551VadZg4W
         w1/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=Ktqrpp4wRdRtbAKTWPUwGBfOj0pzsnbWJHOBzYORiQE=;
        b=6BdCNBYBDY1Oe4TjZmphMA56ZyO0ubiRi+58cVPNxnEpD422/w168LAlLvYWHwscmD
         eC3WZZa/GPsUUZK5A1r73a36az0MQxFJfYuIGj9AWU98HboqTchFNvLPab7GUJGv6cQy
         PMxWoGrVr3UXdeWxZjuBIHjKTMOd46Jiq69ulxUdFaVfLRINTw0kHoRy/cX+ANKiQIzB
         hThFVl3LrSR+LUenZwMJ2lF9XgGkUwVD0ppSLtNWF9u1BxDiZnX6TQdd45HM2x9lannB
         8ORNTZAjEf8BYpFrqtWeeOWinjpC/UTV+j7w7qrNsIlxjuoBjS5C1n1Lc9q//AbWLSbV
         Wvag==
X-Gm-Message-State: ACrzQf2IH2N3bPWg2Jh3YSMTE0h95cpOJSZ66vx9WIspZOBJ35Hjqp3E
        W3FMHwW+8TSpxy86/6Z4q3dXRG/BdrPNaXZL23o=
X-Google-Smtp-Source: AMsMyM7/+INJ1sND/Lf+ea+QkvtSScG80ckvl/NnU+9kfkJIy6SGWnj946bozGLUuwUuMzduWB3veE1ygmLCXLuAlLw=
X-Received: by 2002:a05:6808:23ca:b0:350:92c4:3422 with SMTP id
 bq10-20020a05680823ca00b0035092c43422mr3480191oib.144.1663589953813; Mon, 19
 Sep 2022 05:19:13 -0700 (PDT)
MIME-Version: 1.0
References: <20220915134241.481187-1-sergio.paracuellos@gmail.com> <f4f6decb-8f93-1fc8-31ab-9ebfc30a2d55@linaro.org>
In-Reply-To: <f4f6decb-8f93-1fc8-31ab-9ebfc30a2d55@linaro.org>
From:   Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date:   Mon, 19 Sep 2022 14:19:02 +0200
Message-ID: <CAMhs-H_FO0PKk4wSdRaKygoSyp0e6XhkpjqdX6n6FPwY5QXqJA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: watchdog: migrate mt7621 text bindings to YAML
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        =?UTF-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Sep 19, 2022 at 1:31 PM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 15/09/2022 15:42, Sergio Paracuellos wrote:
> > Soc Mt7621 Watchdog bindings used text format, so migrate them to YAML.
> >
> > Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
>
> Rebase your patch on recent Linux kernel.

Will do and send v2 with your reviewed-by, thanks!

>
> > ---
> >  .../watchdog/mediatek,mt7621-wdt.yaml         | 33 +++++++++++++++++++
> >  .../bindings/watchdog/mt7621-wdt.txt          | 12 -------
> >  2 files changed, 33 insertions(+), 12 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/watchdog/mediatek,mt7621-wdt.yaml
> >  delete mode 100644 Documentation/devicetree/bindings/watchdog/mt7621-wdt.txt
> >
>
>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>
>
> Best regards,
> Krzysztof

Best regards,
    Sergio Paracuellos
