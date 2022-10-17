Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A1B1260092C
	for <lists+devicetree@lfdr.de>; Mon, 17 Oct 2022 10:51:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230274AbiJQIvu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Oct 2022 04:51:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59044 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230346AbiJQIv3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Oct 2022 04:51:29 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1949D4D141
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 01:50:57 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id d26so23268955ejc.8
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 01:50:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=4WEVYazpln+Lxr0NdQpmOEi4ONTPjmDRCzetzWeTg38=;
        b=zyBu8DQrZTbPzWGlRwWZj9SwbQoqfayeoYDSmf/U7hVPbVYolsJjvoTvmboF94/wDh
         wAtbfpWPHMZYLa1FdLOiETMP5S6Bd2k4jPoE0DE0VMV96GN6xeH8boDbrQqPOBjHXS81
         h2zQVYJd/Rq5DQt5HsmSw7nCjtSfKncIjb+u1VRz7euACsZjjBygQJWwfnD6JLHkDiaL
         LONDTC0ZG+e9XWLo+MO5VAm+7pqMpI8jSNZCsVgRuwQnArkyjL96wIm2HnH3y6/GBnTS
         oj+d2YCDA5nPHO9Zbthe4EBWugeKyrsmGFBwVf0hTwANAibgQj5MghQHrKrY96C5ZjUg
         QF4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4WEVYazpln+Lxr0NdQpmOEi4ONTPjmDRCzetzWeTg38=;
        b=bBfXgla8VVRVxXKlhKFTWBGuq8Ti6sdzqkHR/EIdIsE122iXRrqTsPbJG1mrQx+lp3
         m3o7ehvUlOGmHi1Qjm6uxI+WvpiJFavQsbEe++otPL4aeSfjl5oktHIRu1Yk/u4X0ujT
         HvbSUjx6ufP36WY/q4rik9/hHAmwQGzyUd482CZGY5l8qTufKB2oeHvwwli1xVj3LlEB
         YgQ2RPeJMlfX3ikCT7xNxrml8+3aUaHNA4KZePsQYDBOmww9nGCFM55c7EvCKTchl29B
         TcXkbH4XOhzZKIcNb6i/3WHndiIYmovR5AhuyxIIguUjs31cszWwaJUL308hnlRZwAML
         31cw==
X-Gm-Message-State: ACrzQf0jcZuKBECGRKUgqirFbUE0yQU+VWjb03FuZAMGUZ6rK+1nqe1p
        RpIbwN3+nVeu/ZbgkFIVz44HN9FajZHO4NEU02kAqQ==
X-Google-Smtp-Source: AMsMyM55YYUNsJN5BiHD5wHpcXqrztop1+jX5Dm23A4mskfjAnyYZ2QreG0m49JAtDm+uWow7233VHOFqgblVhqC+rk=
X-Received: by 2002:a17:907:1624:b0:78d:d61c:2b4a with SMTP id
 hb36-20020a170907162400b0078dd61c2b4amr7651986ejc.208.1665996655433; Mon, 17
 Oct 2022 01:50:55 -0700 (PDT)
MIME-Version: 1.0
References: <20221007114647.2723457-1-s.hauer@pengutronix.de> <20221007114647.2723457-2-s.hauer@pengutronix.de>
In-Reply-To: <20221007114647.2723457-2-s.hauer@pengutronix.de>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 17 Oct 2022 10:50:44 +0200
Message-ID: <CACRpkdapjEt8g7zMw8smvJVpvf3TFNNH8hJge1cSp==qYcU2ZA@mail.gmail.com>
Subject: Re: [PATCH v5 1/2] gpio: Add gpio latch driver
To:     Sascha Hauer <s.hauer@pengutronix.de>
Cc:     linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Bartosz Golaszewski <brgl@bgdev.pl>,
        kernel@pengutronix.de, Serge Semin <fancer.lancer@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Oct 7, 2022 at 1:47 PM Sascha Hauer <s.hauer@pengutronix.de> wrote:

> This driver implements a GPIO multiplexer based on latches connected to
> other GPIOs. A set of data GPIOs is connected to the data input of
> multiple latches. The clock input of each latch is driven by another
> set of GPIOs. With two 8-bit latches 10 GPIOs can be multiplexed into
> 16 GPIOs. GPOs might be a better term as in fact the multiplexed pins
> are output only.
>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

This looks fine to me!
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
