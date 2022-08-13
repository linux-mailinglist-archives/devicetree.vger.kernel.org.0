Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4A6D5591C75
	for <lists+devicetree@lfdr.de>; Sat, 13 Aug 2022 21:58:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238439AbiHMT6x (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 13 Aug 2022 15:58:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38810 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236391AbiHMT6w (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 13 Aug 2022 15:58:52 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7D46B13CD0
        for <devicetree@vger.kernel.org>; Sat, 13 Aug 2022 12:58:51 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id j8so7264463ejx.9
        for <devicetree@vger.kernel.org>; Sat, 13 Aug 2022 12:58:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=XrQDftGXFitjUNFRGu6XrmPWtayrmeolUFYvl4ZLhX8=;
        b=f6NNe38/mu8L4AMIl5mKB6wFR3FloILWt5ehAIU46pwGmINSBG/+cygTh7SPtFvCfp
         8G7ShN2LDFnlRbtJL7EuWgr3oc5o+TcQNnF5yDWn5hz1Yo9cbPAN7WOJI82o2P6sktjT
         sxdFr/THihygFKsLsMGX3P6cxmF8vLM8+37Wh9evQtp8F/P8Xxf+fy7vYMhzPhqjkBxK
         0gcww8x47eZUEaFylkoGGSNgRoDWn1A7ZgGBO0wH3OcH0ykqqtJ4zuN9X8MefN3KZTaR
         nsiwE4w9cvSN8qS6BjQr1nlm5Niq68UlAuLC4OZG8sZldNZM35sk4Lnwui6QePbaHpMX
         f16w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=XrQDftGXFitjUNFRGu6XrmPWtayrmeolUFYvl4ZLhX8=;
        b=NTGqNa/hKjNM8vBEhVEXDpt11l3RuuspL45gzQEaJJgGTfpc69ePjoxI8AKjtp2mpe
         UiG0M1joNmkDd/GEjEuqJJsxE3m2gq2DZg2B3/Vce78tmQ/yYinlHBUySKmRZN3/7/Yc
         4FaIuj4HRW/ItYU7+pzUwFLVGcI6Nn+AcVXCJ1jCelcUsw/D4Lk0qv9b0gKC4iy9oHce
         uO77F+97GRj/1E6JpbRXfijBfwbgWV11ejbhBm+O1yZSh1uAl0Af4iY5B3GXHFgS1FQr
         UBQH4EBucj5xYPq5j45lRdAKLq69LTUVbyQ+MVWeRmf1XbH8rS9VRnDbrB1j7Z/uaB3x
         CE/Q==
X-Gm-Message-State: ACgBeo04xt4Nk1IaBLp6I0NVUUTbhpW9LfO9NXZqGe20g/a5Z1KnaQC1
        P7zA5oVXWejmCWFIzLPG+CCTpFc7mW4BxfYn8bkQjw==
X-Google-Smtp-Source: AA6agR4R7jyOAmdjkR6jEntGSuSattb6nI27wPdG/jrhMqpgkvVMkNU/fSXnW/Dq7xX0dHAwqyvvO7ibImcC8ukYAZQ=
X-Received: by 2002:a17:907:a055:b0:730:a432:99d3 with SMTP id
 gz21-20020a170907a05500b00730a43299d3mr5958066ejc.690.1660420730089; Sat, 13
 Aug 2022 12:58:50 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1660337264.git.jahau@rocketmail.com> <aeba3877933ba9d2c920b459a9037d9186c15a4f.1660337264.git.jahau@rocketmail.com>
In-Reply-To: <aeba3877933ba9d2c920b459a9037d9186c15a4f.1660337264.git.jahau@rocketmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sat, 13 Aug 2022 21:58:38 +0200
Message-ID: <CACRpkdb6PHoqwGHbNXCmjp_oCoqdPGYTtKwrmM+j4jVXkgYaow@mail.gmail.com>
Subject: Re: [PATCH v6 10/14] iio: magnetometer: yas530: Add volatile
 registers to "chip_info"
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
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Aug 12, 2022 at 11:59 PM Jakob Hauser <jahau@rocketmail.com> wrote:

> Add volatile registers to the "chip_info" structure to ease the handling of
> different YAS variants.
>
> Signed-off-by: Jakob Hauser <jahau@rocketmail.com>
> Reviewed-by: Andy Shevchenko <andy.shevchenko@gmail.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
