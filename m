Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2FD9067AF82
	for <lists+devicetree@lfdr.de>; Wed, 25 Jan 2023 11:20:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235310AbjAYKUT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 Jan 2023 05:20:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57730 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229573AbjAYKUS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 25 Jan 2023 05:20:18 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4884B3801F
        for <devicetree@vger.kernel.org>; Wed, 25 Jan 2023 02:20:17 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id t18so3704681wro.1
        for <devicetree@vger.kernel.org>; Wed, 25 Jan 2023 02:20:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thingy.jp; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=CocmKqOl46F4l4g+acF+P3temDKBy6NTuyF++EyDG7k=;
        b=ABIvAwL7oLVLsS6IP5eQd9RiAnQ6dMfhQC3OdxtoyE1HhMCNS+pquX/ljQMoq7bILZ
         kleQMQy7uaIfcEtPgSTTKF0JXzpjvCaH/wH2AT46DHq47GLtvNqi7/Nd/YgMTF6l3sPJ
         Itns+/uXLjA4DGfR4MfkFF+V+WnaldJZXhYwg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CocmKqOl46F4l4g+acF+P3temDKBy6NTuyF++EyDG7k=;
        b=Rd8mLrIuD09R8aT3cnSJTMA/jEIGrQTmyAwpO4qziIX6F7W/EvlNyRFEtvsuMAKnTZ
         4AL1MQKX6zsIJMmxqe3B0JJa7GmBKDePfP/zxZf754+Kbf8RiczHhRSL8wU/+OfFB6fv
         GVbVxcCNBy5TKjNb99fpUy1157JD6+f4alXsY71xbO6W2Iae0FDGTCy1PT1cakabnkrK
         PDuQsFqHcVBehia2CbvIzehcigUICQRWW2LOw/6i3uYYSdGMpcR7CMt0sUS5Z1EymxeT
         U71yH3Ce1f1zP/vcJ4QDpZm4gHaBHh284A3IvSPJUMVSIlWPNYGJdbOEPdaIQGvE259u
         Q4sw==
X-Gm-Message-State: AO0yUKUPDXXlqGULCxvGOCEKe7hxyQdgLzrAPkO5ziRRzZKh60ABq4y5
        WGuqV1GbW/AU+Z0kOeK5DXUZ0abYSYeYRLWeWS9cJg==
X-Google-Smtp-Source: AK7set9xuQLQxGd4V9X5pRRQliJNhvniM28fljwVjOIj/yKJcakQvNE8RP3bXULZL56B4NBvE99Ob/ydLJNe5SM1hig=
X-Received: by 2002:adf:fe50:0:b0:2bf:ae3f:5371 with SMTP id
 m16-20020adffe50000000b002bfae3f5371mr156634wrs.704.1674642015770; Wed, 25
 Jan 2023 02:20:15 -0800 (PST)
MIME-Version: 1.0
References: <20230123151523.369225-1-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230123151523.369225-1-krzysztof.kozlowski@linaro.org>
From:   Daniel Palmer <daniel@thingy.jp>
Date:   Wed, 25 Jan 2023 19:20:04 +0900
Message-ID: <CAFr9PXn+XMzz8uZzNwDNdCpYeN4Nf6rc6nXWvuf_TCRe2B_PXw@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: mstar: align UART node name with bindings
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Romain Perier <romain.perier@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, 24 Jan 2023 at 00:15, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> Bindings expect UART/serial node names to be "serial".

snip

> -                       pm_uart: uart@221000 {
> +                       pm_uart: serial@221000 {
>                                 compatible = "ns16550a";
>                                 reg = <0x221000 0x100>;
>                                 reg-shift = <3>;
> --
> 2.34.1
>

I have this change in my changes to use the proper uart driver that I
need to fix up and resend but it doesn't hurt to fix it now.

Reviewed-by: Daniel Palmer <daniel@thingy.jp>

But we don't have anything queued up in our tree to send a PR for so
maybe this should be merged via soc.
