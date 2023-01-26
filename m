Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DECF167CC8E
	for <lists+devicetree@lfdr.de>; Thu, 26 Jan 2023 14:47:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229839AbjAZNrb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Jan 2023 08:47:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34830 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229512AbjAZNra (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Jan 2023 08:47:30 -0500
Received: from mail-yw1-x1135.google.com (mail-yw1-x1135.google.com [IPv6:2607:f8b0:4864:20::1135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F45A83EB
        for <devicetree@vger.kernel.org>; Thu, 26 Jan 2023 05:47:29 -0800 (PST)
Received: by mail-yw1-x1135.google.com with SMTP id 00721157ae682-4fd37a1551cso22844727b3.13
        for <devicetree@vger.kernel.org>; Thu, 26 Jan 2023 05:47:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=aaX7G6f2mcRR6P8FNP02PxE5OsxrexcPBPFfvEKEKAs=;
        b=CHFI1Z8taQTug7Pk8J6v67+NNDDUaqZu+KuW0124FDvfAkkoV1Q7Na8nGKz6mDwUtb
         7nWBCg2Eo243/6intxFzS+g+BiHEOLi0Y5chAzu06TfCJRj6Md7+LVhuu+cZcbu5GX5A
         kKBrdE0U0/g3bDVSTy6cltLs15C95L45A2m+74EG9DlflDa0zdDPdYYSoDuHaQPjfSCG
         d22Rbf6ksG7ucpQoVGEEH9nreV3e+WxbXFTZ5WstKksg2FEOxYlQoK+pIbiahKJMZM1W
         5yqmU8RB2q87t2lesencDlMt23hJFnwiZgfxM3bUHMgY/SydiG0WLVoWY2BWTTlHlXLY
         vmuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aaX7G6f2mcRR6P8FNP02PxE5OsxrexcPBPFfvEKEKAs=;
        b=XyfsKlKYqbsFXVN+C+n0+cjbDp0PJMAK5FGmEJf7gwF/0pcWNQu8HfCa5w/7Ze0TKe
         oLm6k5GykiV1WLTG3r3CMETC5PAmXRQieSJ66iUVky4SjX6A6p7we7vlMLd9ifhdiDSL
         Ip8GyX3Jvbiq2S3QIDNf7DqcWH21ZBAvAcW0yGQh8y5OO82iQ3p1Ipavq45vET8/XQsw
         tWrOkU/f06LNa6wg4eoEX02sk1oLdxW6zwaxhLbULyrvnGcExoJxLt/7fbmzWzU3B5sl
         hVbngZB4F3ys/budAUf4E6zP5Yt/uIHp7f6VrKzfIdSOJtl/rIO1ZQrhJVPii0Sy4Cxa
         eYig==
X-Gm-Message-State: AO0yUKWaR88sKbwekUBpdiN37/VRL+XOYl4m3+UK0Cq2uLxAyrw8aj+K
        SmlJcIUDP4jVHUvH/Ida0IpCGEYEJHzWLGy1sCX3kw==
X-Google-Smtp-Source: AK7set/2tg+jIXr3a4eARZbcDPJNeIExb1q3XkFjEhWcElv/xkALJatdRGrpFAl9l/Bv3zRXMlFGMwmhvN+PIeLAKzg=
X-Received: by 2002:a81:784f:0:b0:506:651b:cd0 with SMTP id
 t76-20020a81784f000000b00506651b0cd0mr925288ywc.273.1674740848566; Thu, 26
 Jan 2023 05:47:28 -0800 (PST)
MIME-Version: 1.0
References: <03627216-54b5-5d9b-f91d-adcd637819e3@gmail.com> <890be9a0-8e82-a8f4-bc15-d5d1597343c2@gmail.com>
In-Reply-To: <890be9a0-8e82-a8f4-bc15-d5d1597343c2@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 26 Jan 2023 14:47:17 +0100
Message-ID: <CACRpkdai9tcGNbk_oQ8TbHzk7rfiiSRJyxAukqZ1BH9LsiuguA@mail.gmail.com>
Subject: Re: [PATCH v2 3/8] gpio: gpio-rockchip: parse gpio-ranges for bank id
To:     Johan Jonker <jbx6244@gmail.com>
Cc:     brgl@bgdev.pl, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        kever.yang@rock-chips.com, sjg@chromium.org,
        philipp.tomsich@vrull.eu, john@metanate.com,
        quentin.schulz@theobroma-systems.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Jan 21, 2023 at 12:08 PM Johan Jonker <jbx6244@gmail.com> wrote:

> Parse the gpio-ranges property in Rockchip gpio nodes to be
> independent from aliases and probe order for our bank id.
>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

I guess there is no pretty way to do this.
Acked-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
