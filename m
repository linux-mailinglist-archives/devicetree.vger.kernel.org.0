Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DE74B7183A9
	for <lists+devicetree@lfdr.de>; Wed, 31 May 2023 15:51:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237313AbjEaNvr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 May 2023 09:51:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60796 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237595AbjEaNu6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 May 2023 09:50:58 -0400
Received: from mail-yb1-xb33.google.com (mail-yb1-xb33.google.com [IPv6:2607:f8b0:4864:20::b33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 959563A97
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 06:46:29 -0700 (PDT)
Received: by mail-yb1-xb33.google.com with SMTP id 3f1490d57ef6-ba818eb96dcso4559538276.0
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 06:46:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685540711; x=1688132711;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YtsOyRG6/Lv6DhGFqPJDrtAfW924Bfe8R0e57zJTM3k=;
        b=SwM08iDiHBRUTuu6QhX/sH8miNtvHZkkBQJHelaEYI2TRp7ZGfrZm+V8qVLnD+KCWU
         P2foxEZfhLJ+qeiQ4ouKHnOkXOp0CsH1ZE5OgiK1xdhV4M0gna5MzIYIGk/wJmytk3ri
         7YCkMUgydn6tOvXmjfhTaHGVmvqvA1yYkdxfVBez+b4Goe07g246ArA0XRG9yfYTHor8
         mMD6uJZ1qji4vO+YjnkRNfrCV3koUadE8Do5VR7i/gP6CL+CsDqmzr/S4kxTkAAH+F0h
         nNac88Ph0hLDzNTITpUcp4jJ25xLHhh30ly1ATfnAhi1UgPJInMBJQld9x4pf4piSiKr
         iv7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685540711; x=1688132711;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YtsOyRG6/Lv6DhGFqPJDrtAfW924Bfe8R0e57zJTM3k=;
        b=CohXYzl6Cmo5eSQMjYtznyjgsIHI9SKw97uYRtRNtTXbGFL06vcIR2KQjkcLeE8Dkw
         oSvkCCKn5/zFqAzOq3EpLZyZPUFW7k6oekrvBqe7QXyIP1hZQYJeVMwzW4VMP2n/WP7q
         agiD1mBprp+S0N4Eih16RsmZYhuSk9FDkUxeCN3b70JAGpIpaVXeasbN6KzFizlQq5hC
         arLbcgbTuybzlA93cOUh0aGuRrjiK7RK7jS2cR+K4VDhhYYr39nT4Y9qLi7o1k0TXPp4
         +IBfupCz4Dc4OYG/1mw9AD/BmPxdU3LLnL8zIUUA+CzedY6hTweNZ5bt81S07GNTHVbr
         r9WA==
X-Gm-Message-State: AC+VfDxqx5+aX3yQ2UxMlHUoyxsqnL+86H/tcNsZkgm2GB3EN03nBUL+
        EjUaZORlr66yXcXF9qi1VD4r71u7CSQel0SrciX5NQ==
X-Google-Smtp-Source: ACHHUZ5aLuwiXkk2dc5GhaxZvpg9K5emeTB278cWJrLZa+ak1FzInx1BphLgxpMQ2FgPBHvhSva3q6o5+caOGJZl0R8=
X-Received: by 2002:a0d:d1c7:0:b0:54f:9cd0:990 with SMTP id
 t190-20020a0dd1c7000000b0054f9cd00990mr5353935ywd.18.1685540711216; Wed, 31
 May 2023 06:45:11 -0700 (PDT)
MIME-Version: 1.0
References: <20230406093344.917259-1-alexander.stein@ew.tq-group.com>
 <a926837c-8773-1809-0bb3-34d449c5d7a5@linaro.org> <CAHp75VcJMwoG07-d86obSLuPNGRQuRo_oW2JJA50ps--3s0kJA@mail.gmail.com>
 <4810610.GXAFRqVoOG@steina-w>
In-Reply-To: <4810610.GXAFRqVoOG@steina-w>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 31 May 2023 15:44:59 +0200
Message-ID: <CACRpkda7CuiJ0=9+gw9G+mmBAOH+P2xmofb2dVANjqqrW78xfw@mail.gmail.com>
Subject: Re: [PATCH v1 0/3] gpio: Add gpio-delay support
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        Marek Vasut <marex@denx.de>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, May 31, 2023 at 8:53=E2=80=AFAM Alexander Stein
<alexander.stein@ew.tq-group.com> wrote:

> What do I need to do to get progress on this topic? Without this kind of =
delay
> handling the DSI-LVDS bridge on our hardware cannot be used in mainline.

The DT binding maintainers (Rob, Krzysztof) need to ACK the approach to
how this is modeled in the DT bindings.

For trivial-to-medium changes I am convenient to apply changes after 1-2
weeks of silence, but these are pretty fundamental issues so the binding
maintainers need to sign off on it.

I think they are a bit offline for the moment, but I would read through the
feedback from the binding maintainers and draft a binding patch that they
can accept.

Yours,
Linus Walleij
