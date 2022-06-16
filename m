Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7BF2654D635
	for <lists+devicetree@lfdr.de>; Thu, 16 Jun 2022 02:41:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245351AbiFPAjm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Jun 2022 20:39:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45336 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244946AbiFPAjl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Jun 2022 20:39:41 -0400
Received: from mail-oi1-x22e.google.com (mail-oi1-x22e.google.com [IPv6:2607:f8b0:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 285CF56405
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 17:39:41 -0700 (PDT)
Received: by mail-oi1-x22e.google.com with SMTP id v143so87290oie.13
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 17:39:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=eff061+pS6rbXt8rSNzlzMwnyl96vs/JESRYuRC9zAc=;
        b=dn8H+JTUuJz+iF0dToielJli7907LM2Dg9jaVlylAQJazM5Rof0bZvY0gKuOCfmhLM
         8obWGQlY1iHK1zqZKhykiif72nMZcXM5otioRbvNoJZhZcOZAXdCHOVQ7DBGcq1yJ2vS
         9mu16X01qRe8giGb59Dp+2dXpb6VbboM0ak6s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=eff061+pS6rbXt8rSNzlzMwnyl96vs/JESRYuRC9zAc=;
        b=yhPJUQhCZ0D6yb/eqJqU/e6ANX+f86RgtE26fgWpM29dpNeLB1n+fxX5xpE7Eq5mob
         fe88hoqSW1k+HG4vey34Jg+ZR+8ojlcBEJpSajUuZqe1V1uMk27lDp4kbiFjlbRrPglJ
         HxHAlmLIgZOB3Y2t4jXgN55smSXechwJy9pRE7WnBlnKdF3sYEAOqZWPY3ayAjdYhY27
         b/h84wtW1MVtAJVVPsmzlPSLdJeWjkGtKSwLXakRCqiwWbopIatoh+VnNjT5SET3b4NE
         vBbfWyUATugdplsYg/689mZLqj5ca+I0ywKkT1kocFgFqDGpOXuJZj36yjnfAtvx5hXT
         axBw==
X-Gm-Message-State: AJIora8j8GrRxWa3KG5OMw+RItv37SP4Tia07HlOYAIOpA12RlyZ7MQJ
        pygUBocamvtS6YxNdq8Ddi65oFLW7CbMgXxO51g2lw==
X-Google-Smtp-Source: AGRyM1v7Uz0S6jwuzJCnGgullxONrD1USGVC55RFaiF+uuA/dewOLFVTR69OYuoBeIDgm3yYHnssSsMqpsinlOjSrTE=
X-Received: by 2002:a05:6808:1703:b0:32e:851e:7f81 with SMTP id
 bc3-20020a056808170300b0032e851e7f81mr1313122oib.63.1655339979844; Wed, 15
 Jun 2022 17:39:39 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 15 Jun 2022 17:39:39 -0700
MIME-Version: 1.0
In-Reply-To: <CAD=FV=WUnMCj2GmMy2xRG8WOba1O4jzkXeUrrUic71eEA0aZrw@mail.gmail.com>
References: <20220614195144.2794796-1-swboyd@chromium.org> <20220614195144.2794796-2-swboyd@chromium.org>
 <CAD=FV=WUnMCj2GmMy2xRG8WOba1O4jzkXeUrrUic71eEA0aZrw@mail.gmail.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Wed, 15 Jun 2022 17:39:39 -0700
Message-ID: <CAE-0n511u+EPsWYuWnw+mdAavyecJoaw_OLQoCE2YGeDgPO9xw@mail.gmail.com>
Subject: Re: [PATCH v6 1/2] dt-bindings: cros-ec: Reorganize property availability
To:     Doug Anderson <dianders@chromium.org>
Cc:     Benson Leung <bleung@chromium.org>,
        LKML <linux-kernel@vger.kernel.org>, patches@lists.linux.dev,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, chrome-platform@lists.linux.dev,
        Guenter Roeck <groeck@chromium.org>,
        Craig Hesling <hesling@chromium.org>,
        Tom Hughes <tomhughes@chromium.org>,
        Alexandru M Stan <amstan@chromium.org>,
        Tzung-Bi Shih <tzungbi@kernel.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Lee Jones <lee.jones@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Doug Anderson (2022-06-14 15:41:38)
>
> slight nit that from reading the subject of this patch I'd expect that
> it was a no-op. Just a reorganization / cleanup. In fact, it actually
> is more than a no-op. It enforces restrictions that should probably
> have always been enforced. I think it'd be better if the subject was
> something like "tighten property requirements" or something like that.

Sure. It sort of got out of control but I didn't update the commit
text to explain that we're enforcing reg and interrupts for i2c/spi
devices.

>
> slight nit that think it would be easier to understand this bottom
> section if you made the "SPI" and "RPMSG" sections more symmetric to
> each other. I think it would be easy to just change the SPI one to say
> "not SPI" instead of explicitly listing "i2c" and "rpmsg".

I had done that earlier but now it has an 'else' condition after commit
f412fe11c1a9 ("mfd: dt-bindings: google,cros-ec: Reference Samsung SPI
bindings"), so this kept the diff smaller.

>
> In any case, this overall looks pretty nice to me. My two requests are
> both pretty small nits, so either with or without fixing them:
>
> Reviewed-by: Douglas Anderson <dianders@chromium.org>

But if it gets a reviewed-by tag with more diff then I'll do it ;-)
