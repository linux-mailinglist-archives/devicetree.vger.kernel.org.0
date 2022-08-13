Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A6B20591C7F
	for <lists+devicetree@lfdr.de>; Sat, 13 Aug 2022 22:00:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236391AbiHMUAq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 13 Aug 2022 16:00:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40250 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235596AbiHMUAp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 13 Aug 2022 16:00:45 -0400
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2C45713CFF
        for <devicetree@vger.kernel.org>; Sat, 13 Aug 2022 13:00:43 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id b16so5053727edd.4
        for <devicetree@vger.kernel.org>; Sat, 13 Aug 2022 13:00:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=EM9tI5o7cu4wiEq6j04Cmkui79kRpVPDeO3r11cZxe8=;
        b=sqniazV4HfGYr6Y5lGr2w+nYv0ovRj9lWzyMN64iOs9Wa7m3iMZDUV3sS75x9OClGZ
         14HtY+kNYJIOLVkgcundqpwuv6VfKfvHqNn87AokRB/xnROLzdbOvrR1b7hDEgu2cVkb
         2KOlRSfbd7dqK+HKObEyYmpzum2lPGGwJSgbQwUy/jx9Wl53DX8Nt4ffjGq+QOaSruNL
         6sL0Nfk3bkkHpYEnr6g/Qxc/9Z+BFYzR05FQb1ZWoKmBU0fX5kr85haaGGob29g++1sb
         SaAGndii+xVTXNoy21M9zs44NQPsLPnsTAJ82HDoPRbyWDYoKIqzG27oOGmvIB0wdKnt
         Rniw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=EM9tI5o7cu4wiEq6j04Cmkui79kRpVPDeO3r11cZxe8=;
        b=HGu7wCcgI7Bwso5CqUKRQ2hZyzW1yFg4U3lGVTovWjRpwKR+YFxPCDEVK72R6YB1Jr
         OOQJV1TbE75rGC3jYPenqsxNQUy/Sy4f3u5bV5TeKc/8ahnEinwajFb9fBNxEbNS4gmF
         v3HZFm0jZE8HriQ80H7R6ZtplG8ydGKaDuKont9z6oH/LXKl57XysnqLwyFdxwOAqx8P
         hFBlYSqZJwIW7ZFPk02cHXsdlv5vHCKDwkd3tVaeDSqwkyZ8Ug5Ff/Hhk0pn/o3xhzUp
         mPShtIqg/xNga0hlE/0lGqk5PTkqDfbNqmGXdQsPdhhGwy4s8AZGOgEk3ysys/TtR4+Y
         cKOA==
X-Gm-Message-State: ACgBeo0aGudqgqcFibl6fwNEspUTTc1vUBuJDnSd4IWWgoZoJjL5zjVi
        96YjrA28qQ3ZVS9sDgSdQHt3amEyJt3gWKIm2ik2Cg==
X-Google-Smtp-Source: AA6agR5xbJj3LSaTKcgbzrjTmuTwsd1hRBucjpSNxpitKDsathpH/EhPgeF0Iy6dS2vaO93Zx86YvqcnHdurVa2nWWA=
X-Received: by 2002:a05:6402:4312:b0:43d:b9c0:65ee with SMTP id
 m18-20020a056402431200b0043db9c065eemr8490816edc.205.1660420841724; Sat, 13
 Aug 2022 13:00:41 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1660337264.git.jahau@rocketmail.com> <4bd3f96262e0132b7f9720521a801da3c18abd95.1660337264.git.jahau@rocketmail.com>
In-Reply-To: <4bd3f96262e0132b7f9720521a801da3c18abd95.1660337264.git.jahau@rocketmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sat, 13 Aug 2022 22:00:30 +0200
Message-ID: <CACRpkdbs-8GbDkrN3=QKvUrUd3Erm2JZtCqSC=W_5EsDMYr9dw@mail.gmail.com>
Subject: Re: [PATCH v6 13/14] iio: magnetometer: yas530: Add function pointers
 to "chip_info"
To:     Jakob Hauser <jahau@rocketmail.com>
Cc:     Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        Hans de Goede <hdegoede@redhat.com>,
        linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
        phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Aug 13, 2022 at 12:05 AM Jakob Hauser <jahau@rocketmail.com> wrote:

> Add function pointers to the "chip_info" structure to ease the handling of
> different YAS variants.
>
> In the function yas5xx_probe(), the function call for "measure_offsets" was
> added as a conditional "if (ci->measure_offsets)". This is a preparatory step
> for YAS537, as this variant doesn't need an offset measurement.
>
> Signed-off-by: Jakob Hauser <jahau@rocketmail.com>
> Reviewed-by: Andy Shevchenko <andy.shevchenko@gmail.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
