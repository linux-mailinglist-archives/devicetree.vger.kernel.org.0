Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E05F6622753
	for <lists+devicetree@lfdr.de>; Wed,  9 Nov 2022 10:42:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229588AbiKIJmX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Nov 2022 04:42:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46270 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229567AbiKIJmW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Nov 2022 04:42:22 -0500
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE99BCE8
        for <devicetree@vger.kernel.org>; Wed,  9 Nov 2022 01:42:21 -0800 (PST)
Received: by mail-ej1-x630.google.com with SMTP id k2so45200999ejr.2
        for <devicetree@vger.kernel.org>; Wed, 09 Nov 2022 01:42:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Kpat3oIww6mvasqFsGKc3erLtYdIA8Myxby80VshSDc=;
        b=Z3vzpzdwRJtcEtnsAnnBlXDZ+OmYMtlSkTAPFnI9B3ULkEOFx+5lllovKGKU1554oK
         ybjSvuYI4KxT/9wZJyieePHzvAMf7eypU6I8aT+TEDuDJ+oydTRD+PgksLaXBNKDoldo
         qw2FrMunB8EcnWXyTxLW1Or9TjxcHVYCtqHlkNJIqZH2lXYg7yGDQCcTA/UDgqpS8RfY
         waNLiemf9Su3+0xxZAfXgr/+8p2HhrP8iiUY/5HEFp02SOmLiS9lWJGScCdEIGrwsdQE
         E8w0oP9TUc9NpYc+NKMhJIzyO6f4gCar1SWWx5pjW5l0GaaknRHba7ScM2a5kw5wOStA
         swqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Kpat3oIww6mvasqFsGKc3erLtYdIA8Myxby80VshSDc=;
        b=5ji5DDBPcHpquotC1ec4GHYPdzFw59/eO3ifcecJLZPCZlAQVlkcz67NIaScSUYszm
         6czkLdmaqKlu3QvA4Kr+hH7yuFByRx/7aJiqIVaH40BJ4eIXNUv7ptFed2uq/CA4aO+9
         H3RlHy1eBxYqEo2SbF8fBYIDH1xn9Y3rY6vxNril5Hi7Cf6oL2cXBC/94THLQhAL3OEO
         K19OUNdkQxbSvRTVnAxuZqwQPLFECRQWgSi8Fr5LqC7Nx+hba4tEmSBnMTIgANuF0H+z
         rBTSaILHsCSk8+uBglu765TAiGSzJAnGLvUwDSmGW39UTZPrUkFW5c4ns6y1iFux0kfA
         fO3w==
X-Gm-Message-State: ACrzQf27S2ffqEUXy70qZIk5DsJxcAn3kErYuz0VEGSq12xryYMYArk0
        SgTdSZOBRNa19O1+bK7+kxdt6i99z99OHGr76BlClQ==
X-Google-Smtp-Source: AMsMyM4RPx0SajJLvZm8nBbEtLdENd0zhL7riz9dqXWKXlkN9kH7F7qlvwHO/GyvajSzDSceln1gt7uj+vjvlNtUWxY=
X-Received: by 2002:a17:906:4c4b:b0:7ad:a197:b58e with SMTP id
 d11-20020a1709064c4b00b007ada197b58emr57475332ejw.203.1667986940359; Wed, 09
 Nov 2022 01:42:20 -0800 (PST)
MIME-Version: 1.0
References: <20221108173120.618312-1-jagan@edgeble.ai> <20221108173120.618312-4-jagan@edgeble.ai>
In-Reply-To: <20221108173120.618312-4-jagan@edgeble.ai>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 9 Nov 2022 10:42:09 +0100
Message-ID: <CACRpkda7sWoy8jgaWq+xtbYwDXZx2P19h-BF8GVKpKN7ZxFUFg@mail.gmail.com>
Subject: Re: [PATCH v4 4/4] drm: panel: Add Jadard JD9365DA-H3 DSI panel
To:     Jagan Teki <jagan@edgeble.ai>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Nov 8, 2022 at 6:31 PM Jagan Teki <jagan@edgeble.ai> wrote:

> Jadard JD9365DA-H3 is WXGA MIPI DSI panel and it support TFT
> dot matrix LCD with 800RGBx1280 dots at maximum.
>
> Add support for it.
>
> Cc: dri-devel@lists.freedesktop.org
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> ---
> Changes for v4:
> - add delay explictly
> - update init sequence

Thanks I really like this version!

Patches applied and pushed to drm-misc-next.

Yours,
Linus Walleij
