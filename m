Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 162795A228D
	for <lists+devicetree@lfdr.de>; Fri, 26 Aug 2022 10:05:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245280AbiHZIFm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Aug 2022 04:05:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56298 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244944AbiHZIFl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Aug 2022 04:05:41 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 06AC3C00E0
        for <devicetree@vger.kernel.org>; Fri, 26 Aug 2022 01:05:39 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id og21so1712639ejc.2
        for <devicetree@vger.kernel.org>; Fri, 26 Aug 2022 01:05:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc;
        bh=us6a+2w38MVWRp+x+cBiJGnbvKgPbkAshBT44b7qxRo=;
        b=SuM/dfQorTdjvY+sn9+yhhK0yYIFo96ETN6NZBz3VXQa87jm2uhSY/+QAfrn1dDMiy
         gNMach8yNQg3PiqRLOaYWuOXpuyKOOFEXx3LaEAPfw0+A7bn6TUuCTsaqxavyxdziHPm
         QVdsTar93YJvIHlAALTt4aWO0PV+h0F9v2vnjwVfqOFYkbl62v9wAS4kxYoQLWG86L+f
         t0NPncepnJDq4oW5uOqLks514SifS/JS26L8vevZg6NM85WS5j1DEKNRrjCb8I3rtag+
         8ySmlyc/FLZc12algffeOLulK/yhR+B7ciw9aqOPM8JrDmkQrOPTY+zm2HQFNubbqrkW
         Um9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc;
        bh=us6a+2w38MVWRp+x+cBiJGnbvKgPbkAshBT44b7qxRo=;
        b=x1zxuY05EQ2hLIqSY+2AS03cE/2u+SJFbMsJqO7rhbvAXmVXf/JfMgJ2gwSdJc8ZTm
         og1Rf/1DNhBxrXWogrucPLiebIT/Gqgt50D67RADe+IyzSKTTKFQ63dpvis/FJAMwBLO
         o3+5t+rSI95LdL79oZdW5u+/yhfczgkibdC7yN2YQnc9zHxi0vgGilPX5lIw2hiJnwHP
         LQKVUI0zF2cjX1KP+OQ3LabLb6N7oqciYaBH7FvZMHu+6279rAEWECadHmYISI9uPS87
         O+1Krk8Ac30fFiizJBgWwkMpStzMMBOCWsJNVbSRqL0k368F3JYmjugx8lFK/1QC2lE4
         CJ0Q==
X-Gm-Message-State: ACgBeo1436ZJ58+tgbbAibyJ477DNt2JWJNFZ0PUMt3yB3fNRDcDC+TJ
        cOCv+lyyR+diQzHoVZizfc9kfYhfahmyAfwflQmTkA==
X-Google-Smtp-Source: AA6agR482POjrHU7UEj08J/xiUvRkTbGO3ZP9C1XXIt/DeZCorz43iLD519ONM1EksuUcQhKLggIFuOQqGAS3Zv6bLU=
X-Received: by 2002:a17:906:58c8:b0:6fe:91d5:18d2 with SMTP id
 e8-20020a17090658c800b006fe91d518d2mr4861877ejs.190.1661501137575; Fri, 26
 Aug 2022 01:05:37 -0700 (PDT)
MIME-Version: 1.0
References: <20220818172528.23062-1-pali@kernel.org> <20220818172528.23062-2-pali@kernel.org>
In-Reply-To: <20220818172528.23062-2-pali@kernel.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 26 Aug 2022 10:05:26 +0200
Message-ID: <CACRpkdYWQVW_akJS7hvtU2=c063LCMfjN22X-neTfuTZRbt+yw@mail.gmail.com>
Subject: Re: [PATCH 2/2] leds: syscon: Implement support for active-low property
To:     =?UTF-8?Q?Pali_Roh=C3=A1r?= <pali@kernel.org>
Cc:     Pavel Machek <pavel@ucw.cz>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        =?UTF-8?B?TWFyZWsgQmVow7pu?= <kabel@kernel.org>,
        linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Aug 18, 2022 at 7:25 PM Pali Roh=C3=A1r <pali@kernel.org> wrote:

> This new active-low property specify that LED has inverted logic
> (0 - enable LED, 1 - disable LED).
>
> Signed-off-by: Pali Roh=C3=A1r <pali@kernel.org>

Acked-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
