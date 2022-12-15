Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A322964D7F9
	for <lists+devicetree@lfdr.de>; Thu, 15 Dec 2022 09:47:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229517AbiLOIre (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Dec 2022 03:47:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40742 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229537AbiLOIrc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Dec 2022 03:47:32 -0500
Received: from mail-yb1-xb2c.google.com (mail-yb1-xb2c.google.com [IPv6:2607:f8b0:4864:20::b2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 43DA22C679
        for <devicetree@vger.kernel.org>; Thu, 15 Dec 2022 00:47:31 -0800 (PST)
Received: by mail-yb1-xb2c.google.com with SMTP id v126so939337ybv.2
        for <devicetree@vger.kernel.org>; Thu, 15 Dec 2022 00:47:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=WnqnAujO5vkgFIZAn2NFYepD7a3hgxx4gJdKQM7EdWw=;
        b=uj7Wp84Cqgei0v0WvmsVG0yd/ZHMmp/HBco/HcM9rsM3j4iZqpJ6N4jW03fZ2HhlGl
         xEftHNVESN5oX7xF3m8/ASoHkqBuGyNgfF64WtHzD+1shdBRG6zaQj0RvSb9HUTfrT6v
         Z9e5JNTf267bWOMw6wj0MDthCFqBKTDN21m9pGaTq3b0/eGBk4jCzMH3oMEN4M4OgNmo
         9uv7jERNiu9zRhlllpLJ8aDTKQJn6zpB3PdUM39qLfml6RXfSOS0fg28v5V0aDB8tnQA
         v3ACks6lb9/98c+H10sUoXjuQNJ9V0tVLdahZZNIzMxnm+q0NIa2ru8vqbmOUaxFZAO9
         Athw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WnqnAujO5vkgFIZAn2NFYepD7a3hgxx4gJdKQM7EdWw=;
        b=abND7eQ7h4NT7jAmedzIFe4+lRabic5mBDeo29qEkqJPKa+ngGQg17Qg/QNrYwJgec
         cByAOwC9SeNIuv85giob6oMLKdpVIqcNO+2XacO6QcwwP0U9cDid5BJNitGGBFO/Qdis
         uIHzZulKBZ/ihrJXe09eC776A6MSkTFJbR7V59Y1dvFPeLtpLqMnc0QmpzqnjjuidXmp
         +vl0DeB+7EFni8FYn3KLC8KjhkjBqHDdwGC04Zqr+9kUzhy9pLensZT8wzE1EyLTJ395
         hdZCXeErtroNz4935/IGKcFuraWcc3FKM0lBKWFhMNox1KCZCLMt5oTR0r2It6fOjzzB
         0VVA==
X-Gm-Message-State: ANoB5pmpweiMmzuwAQNkDaOEVDPP8DvO9YmPslD4Z1iBQMduFeMIi46y
        k5SHVhXDikiwHN7cAdkR/ttcbE4kL5tQj8W4PLyMcw==
X-Google-Smtp-Source: AA0mqf5bsqySdrdRzZC3LcwYOXrrbKcZw5U684DMiTWRojvR6IWV7k6hdArOgzLWW/xTiTYH6m14Nbyjkf1sEQeqVlQ=
X-Received: by 2002:a25:7648:0:b0:6fe:54d5:2524 with SMTP id
 r69-20020a257648000000b006fe54d52524mr24021352ybc.522.1671094050499; Thu, 15
 Dec 2022 00:47:30 -0800 (PST)
MIME-Version: 1.0
References: <20221214180611.109651-1-macroalpha82@gmail.com> <20221214180611.109651-3-macroalpha82@gmail.com>
In-Reply-To: <20221214180611.109651-3-macroalpha82@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 15 Dec 2022 09:47:19 +0100
Message-ID: <CACRpkdY7UArNJ5ZH8f5rx+9aoV_ii=0aE9PCj-6XHCL7Om0+=Q@mail.gmail.com>
Subject: Re: [PATCH V5 2/4] dt-bindings: display: panel: Add Magnachip D53E6EA8966
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        tzimmermann@suse.de, mripard@kernel.org,
        maarten.lankhorst@linux.intel.com, heiko@sntech.de,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org,
        thierry.reding@gmail.com, Chris Morgan <macromorgan@hotmail.com>,
        Maya Matuszczyk <maccraft123mc@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Dec 14, 2022 at 7:06 PM Chris Morgan <macroalpha82@gmail.com> wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
>
> Add documentation for Magnachip D53E6EA8966 based panels such as the
> Samsung AMS495QA01 panel.
>
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
(...)
>  .../display/panel/magnachip,d53e6ea8966.yaml  | 62 +++++++++++++++++++

It's fine to keep this as samsung,ams495qa01.

Just mention that it uses the magnachip controller in the
description.

That Linux implements this with a generic driver that handles
all (in theory possible) magnachip-based products is a linuxism
and does not need to be in the bindings.

Yours,
Linus Walleij
