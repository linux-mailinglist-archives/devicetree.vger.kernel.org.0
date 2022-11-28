Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7C81D63B36F
	for <lists+devicetree@lfdr.de>; Mon, 28 Nov 2022 21:39:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232662AbiK1UjW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Nov 2022 15:39:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48550 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233897AbiK1UjF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Nov 2022 15:39:05 -0500
Received: from mail-yw1-x1133.google.com (mail-yw1-x1133.google.com [IPv6:2607:f8b0:4864:20::1133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F3A0B2AE29
        for <devicetree@vger.kernel.org>; Mon, 28 Nov 2022 12:38:57 -0800 (PST)
Received: by mail-yw1-x1133.google.com with SMTP id 00721157ae682-381662c78a9so118227227b3.7
        for <devicetree@vger.kernel.org>; Mon, 28 Nov 2022 12:38:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=muN8RjWN+Kk1tkZlkfOhxDOhOOQmpR5jlCuN7XjP+2E=;
        b=q5JM7pHFmELZeHnpHidYiCODzHF+QAGAhFU217+CTT57oE4dVif6++o6K50hwFHvub
         GqUZVVnHlpYs1zjxVbAACaMd4QnJXeFhC5lWpxZq2GIXKhLl0zp1jrupPQQYsw7GcPRr
         Frl7yriSDyKqGj1m4M5F6otjH8Zfepn268EWl9ozmboLJ0SZSZjMgQwjwXpOSQgi6pXt
         Xs0uO92CvOriyA7EdwoDwtsOLDYLrFhJk7V3mwI/uCXV0X8e6u9rqhv49jBuUAtBG0B9
         p22y91enUq8tASBQdtQA4p4VaN+7Z2msm8a04CA/5MDXLVmoLxm1seI5gvBpAuoZrTQP
         xHzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=muN8RjWN+Kk1tkZlkfOhxDOhOOQmpR5jlCuN7XjP+2E=;
        b=yh5nZkv7c2nbBjwe9qJhA/uGptogcn2tFYZDmcFMuo8gq0cXToYlhL6IfVH1YYCa/j
         Zy9p81ZXK7HzzDi0X4w601j/kSiuX/hPuS873HWAMNB6bjvUaDje1bfWNAyXZXmzNRo4
         Oqer4kbapGvskZ6Wku4GgoN1U9liJriuHHgTZpsHyImvxB779nB7cY++IyOMo+Kmcaow
         z1hUvmOt3XxK4CEUivgEv/LKjZXnWZ+5CAxW9qgnirCda8aYADwZ02PBeLGfPp9wJKyb
         JYXBZYOE0C4OErdo72g/OA7haQY4Km8ee48RYnxF9lqH6DHtG+Hbd8rPLSjLNd1PKwqr
         emEg==
X-Gm-Message-State: ANoB5pncVG9Q1pCAMHyOXq1yulu2OdlMMyGlMGpVrIadCMkPxBtYhorE
        U68Rg4FnqwJJbYhJTjckmMaoEDNr8WAHDg28E/Rt1A==
X-Google-Smtp-Source: AA0mqf6gWm+H1zYyuY1SDwCQ3Sa/CADq5W0A5MpWNxSJDYAUdfP1Y2O6xr6J4M+q7rShfdBptLBQ1OEZfYKCsYNKDH4=
X-Received: by 2002:a81:7909:0:b0:36f:d2d9:cdc4 with SMTP id
 u9-20020a817909000000b0036fd2d9cdc4mr34522067ywc.380.1669667937231; Mon, 28
 Nov 2022 12:38:57 -0800 (PST)
MIME-Version: 1.0
References: <20221118092218.480147-1-mranostay@ti.com> <20221118092218.480147-5-mranostay@ti.com>
In-Reply-To: <20221118092218.480147-5-mranostay@ti.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 28 Nov 2022 21:38:46 +0100
Message-ID: <CACRpkdZ9Ld7OMFXJW8zrEjMG1rxp_emi5iVWxE4F8h94BXe4og@mail.gmail.com>
Subject: Re: [PATCH v4 4/4] gpio: gpio-tps6594x: add GPIO support for TPS6594x PMIC
To:     Matt Ranostay <mranostay@ti.com>
Cc:     vigneshr@ti.com, robh@kernel.org, krzysztof.kozlowski@linaro.org,
        a.zummo@towertech.it, lee@kernel.org, brgl@bgdev.pl,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-gpio@vger.kernel.org, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Nov 18, 2022 at 10:22 AM Matt Ranostay <mranostay@ti.com> wrote:

> Add support for TPS6594X PMICs GPIO interface that has 11 that can be
> configured as input or outputs.
>
> Signed-off-by: Matt Ranostay <mranostay@ti.com>

This looks really neat and clean with gpio-regmap.
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
