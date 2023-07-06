Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ED76674A5F5
	for <lists+devicetree@lfdr.de>; Thu,  6 Jul 2023 23:36:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229880AbjGFVgn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Jul 2023 17:36:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58418 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229510AbjGFVgm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Jul 2023 17:36:42 -0400
Received: from mail-yb1-xb32.google.com (mail-yb1-xb32.google.com [IPv6:2607:f8b0:4864:20::b32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C274AFF
        for <devicetree@vger.kernel.org>; Thu,  6 Jul 2023 14:36:41 -0700 (PDT)
Received: by mail-yb1-xb32.google.com with SMTP id 3f1490d57ef6-bad0c4f6f50so1775094276.1
        for <devicetree@vger.kernel.org>; Thu, 06 Jul 2023 14:36:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688679401; x=1691271401;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jLrf9uamJgAcgGFH3X9xyjmMxVZkQCh/M6hR1XMyYs0=;
        b=v4nscc1GtYlszqRWhBS6bmnKFKSo5B4v5jFgmLHY2k0l9YviYJ0psqxr+8g0rVDFbF
         A1dlatmFQPULv635awsWU/bRAubHS7wfbS54S6B1YrPYMFuYWuMqYWflJgSQnTpK7WNF
         1aL5+BvjoMrQBVic6dzQmd0EwKg52hbzj8aUEd6r6DLHMLe6r5oOG0lZ1U1pdo1tzz29
         +5cnNCV6WMH6XFmqxybClpqU2IjZMTl8fzea8x8/4ByRKotNeHFJcaDsTNaxYtKXTEWX
         HJt1zWS2V1p0Z9hvag6jFbkf702KNjIapJZsb+bFN0LqOtg/H3+SCJdNClGNdjyQVVq5
         F36g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688679401; x=1691271401;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jLrf9uamJgAcgGFH3X9xyjmMxVZkQCh/M6hR1XMyYs0=;
        b=Eu0jOhzZ77n6dGTfiOEYnAFisWGJ8rVKnK8XB7vtR7/beObg06FQD+Vl6NOLSgtxFT
         PmWPPZ24tVw/SXV4IG5dXgrxGzJJiEuFe4t406CHe7vSUBd0RFRqs8vfPmEWRitrIqH0
         /eGTtPJb9M1E0Y2c6mRNyeaTLeNjAZMVicQEaiGbs+xQrStt/lFV7kbXvxgkwSFGsfo9
         jmmkho/RZWMfnwoPOBlfR7+5yjwfOsrs7uI7DfSDNccYRFf+3yn5Mw/hqHMwq+qVVgLl
         yfqopnHq0Qp48c06iMvJRIIDlHgLoX5Fjuz5JsYwN3aaMlZRbifKc/DJ8i1eIgbhBPpA
         ywhw==
X-Gm-Message-State: ABy/qLbVJi3zvT6dS5+XHM6KnyOUlFgJ7HPbTGMaiUz8mISXwlYSdjZx
        6t7Ldy8XglxkE2BDrFDj+cBsyra7x3twWlAPtQMkOQ==
X-Google-Smtp-Source: APBJJlHhJ9EB8Agv1wMBBaPZElh/9BOq2CXk5z5t18jV7B8BqsbFeBG2O1qGBW4Y6fYRca7uWGyQchfBZBVOutoGUjI=
X-Received: by 2002:a25:1942:0:b0:bc8:42db:2c07 with SMTP id
 63-20020a251942000000b00bc842db2c07mr2305701ybz.25.1688679400965; Thu, 06 Jul
 2023 14:36:40 -0700 (PDT)
MIME-Version: 1.0
References: <1adda828-cf35-fb2c-6db5-f9ca91b5b62a@linaro.org>
 <20230525093151.2338370-1-yangcong5@huaqin.corp-partner.google.com>
 <20230525093151.2338370-5-yangcong5@huaqin.corp-partner.google.com>
 <CAD=FV=W_Vw=WTuap60PtzU8Jc58T1PsEhJfY96NmFFgmC1DB9w@mail.gmail.com>
 <CACRpkdZkNio99zS+ttEXncOtS1TcYbfunKSKddErRDV1gTY43w@mail.gmail.com> <CAD=FV=Xx_Bf=Fr1aCmmcjXAv1CyMYwEFba7C6k_HRE1VPtTtHQ@mail.gmail.com>
In-Reply-To: <CAD=FV=Xx_Bf=Fr1aCmmcjXAv1CyMYwEFba7C6k_HRE1VPtTtHQ@mail.gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 6 Jul 2023 23:36:29 +0200
Message-ID: <CACRpkdYif_h38TYDuSjY-0WkWNknFOe8n2Xe7zBydKxySrdZHA@mail.gmail.com>
Subject: Re: [v4 4/4] drm/panel: Support for Starry-ili9882t TDDI MIPI-DSI panel
To:     Doug Anderson <dianders@google.com>
Cc:     Cong Yang <yangcong5@huaqin.corp-partner.google.com>,
        neil.armstrong@linaro.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, sam@ravnborg.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        hsinyi@google.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jul 6, 2023 at 11:25=E2=80=AFPM Doug Anderson <dianders@google.com>=
 wrote:

> In my mind it's really a tradeoff and I'm happy to go with whatever
> consensus that others agree with. What I'm never super happy with,
> though, is changing the bikeshed color too often, so I'd be really
> curious to hear Sam's thoughts on the issue and whether he'd like to
> see this driver broken out into a dozen drivers.

This is not question about a dozen drivers, to be clear.

I just want to break out the drivers that have an identifiable
display controller that differs from the others, especially this one.

The rest of the drivers inside of this boe driver I can't really tell,
they seem related? We don't know?

So the Ilitek ILI9882t is an obvious break-out.

For the rest, I guess I would be happier if the Chromium people
could use their leverage with vendors to muscle out the details
about display controller vendors and provide #defines for all
magic commands, we all dislike these opaque firmware-looking
jam tables.

Cong already stated that he indeed has the datasheet for the
ILI9882t controller at hand, had I come in earlier I would have
asked for all of those sequences to be provided with proper
#defines instead of 0xff 0x98 0x82 0x01... but I'm late to the
show.

Yours,
Linus Walleij
