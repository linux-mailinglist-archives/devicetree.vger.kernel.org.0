Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4545D610D44
	for <lists+devicetree@lfdr.de>; Fri, 28 Oct 2022 11:31:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230151AbiJ1Jbc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Oct 2022 05:31:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55204 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230017AbiJ1Jba (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Oct 2022 05:31:30 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3B521C712A
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 02:31:27 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id a13so7077336edj.0
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 02:31:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=4Lm1ZzdruD63kc8Lu9yZolcwPX0GFkqVJfsYWplvWyA=;
        b=q5fNg9qPUgV2wJYu0ykWoJy5Uc5FOAMuGTwC4i1QNTIdLtqhPKzCbSgIAJwuhMTHZT
         +LWjGkDghhAuT4z5gLdXNPZl/HZ1kEPOqJ4oug1XY+Zwv5WUVyDshuqF2ESg9+ySxQAl
         VukQ9VNmooo7mkKrwf/i1viHjjSdlNyKM0qL3Lyb4VzGfFNTuK2uhKnrce9E6EchBRoU
         1MCt09Z7oirFNsxp8n8jqsLOr0wYYK+e6+NG1u73ODBwgcCm4h0/SWJZo95EAfXs74Qj
         txg1CU4JO7G6E7tboS1foYvE6jn6uaeO7AdlkwEOq8HJJbHzmPbcMPThkcZIaMHnOIYM
         gzew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4Lm1ZzdruD63kc8Lu9yZolcwPX0GFkqVJfsYWplvWyA=;
        b=73HzBXNLBU98h3K07l/ONSd4e+M0R3cmdb4tOEOEdJiC+5DOzlZlVp++LV/DPs5x9E
         7dWdryxFG20fKvA1vjjXdpjA37YHNphvQaYGR+Ds7fJ6Ih1T/baNr8RVTUdnO1p+HqwP
         gu9KbJd7Ktfktwsjcadsh/3SPyigqlyrgChEjROar0zO/L5844tqJ/XD46rose9Wuw3v
         QVeE2AswqmO/q/+MXX0Uusbg4tyug7c965H5RgipN3MRH9jT7BZah9rxee5wfhcFdRvq
         /5quYzv3mqegmUS8JruOdRrw/5CwQ7YkGMsQpEI0T/S807fWRILz/DbP1PpERQskOpDu
         KKsg==
X-Gm-Message-State: ACrzQf19nuaWfcW6T0i6UaSLGLIoKzSCvbGJeCUjH+euCCvHsOy+GZMV
        T1sr71njmaQ8CRjJG4IuUCnwSxY2ldAiWmO0effhHA==
X-Google-Smtp-Source: AMsMyM5PS5EadMoEdDZ5URmNKAAi+8gaymEs0BLIFB7oUDJmLB1acmQDp9HEPUCVWJjk9WCnNs9km5nos2JqIdHlgwM=
X-Received: by 2002:a05:6402:4029:b0:45b:d50c:b9b0 with SMTP id
 d41-20020a056402402900b0045bd50cb9b0mr49617649eda.126.1666949486408; Fri, 28
 Oct 2022 02:31:26 -0700 (PDT)
MIME-Version: 1.0
References: <20221028064141.2171405-1-clabbe@baylibre.com> <20221028064141.2171405-2-clabbe@baylibre.com>
In-Reply-To: <20221028064141.2171405-2-clabbe@baylibre.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 28 Oct 2022 11:31:14 +0200
Message-ID: <CACRpkdaoTq6HTCtv8mjwW0piZM29Ofo=ZfKb7scEUxZgohg1XA@mail.gmail.com>
Subject: Re: [PATCH v4 2/2] leds: remove ide-disk trigger
To:     Corentin Labbe <clabbe@baylibre.com>
Cc:     pavel@ucw.cz, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-leds@vger.kernel.org,
        Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Oct 28, 2022 at 8:41 AM Corentin Labbe <clabbe@baylibre.com> wrote:

> No user of ide-disk remains, so remove this deprecated trigger.
> Only a few platforms used this and were fixed in 2016.
>
> Acked-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
