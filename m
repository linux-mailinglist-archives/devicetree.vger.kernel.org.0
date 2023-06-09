Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 51F57729140
	for <lists+devicetree@lfdr.de>; Fri,  9 Jun 2023 09:35:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230407AbjFIHfE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Jun 2023 03:35:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47262 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238934AbjFIHeh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Jun 2023 03:34:37 -0400
Received: from mail-yb1-xb2d.google.com (mail-yb1-xb2d.google.com [IPv6:2607:f8b0:4864:20::b2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 046F83AB1
        for <devicetree@vger.kernel.org>; Fri,  9 Jun 2023 00:34:09 -0700 (PDT)
Received: by mail-yb1-xb2d.google.com with SMTP id 3f1490d57ef6-bad102ce9eeso1485859276.0
        for <devicetree@vger.kernel.org>; Fri, 09 Jun 2023 00:34:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686296013; x=1688888013;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FXDVR/m7ghYi1sGCZSZPAynsOrIqpAxJnytq4LBC/ng=;
        b=pBPKnZtREmeexFVVkDaPCwzWpI3Y3aV5LLcRVTWvPKGJzLReiRcPTmVQ9UAI1VxSY9
         v1LeQ/DpxIggF3nHIg8P05mh9ZHoN5h5cIUnT6W155NZhIhfsw5WqOlR2GVMkoFFnnzJ
         ap/uAMR5v6xL3x2TGClYrx+m9dv/AzagdYJaOCAzm8NVs3ioNuqj/2Vmp1c4Nmj3SJh/
         8DHwLBroNZz21uhNpG/rthEr3d0YPHdymmeRGI4RncKVUHYES15r3wo3rnUq7cJNklk8
         xO1Wa2pMS0r7yCVNxmQwyI8WTwSOC0I/yr/2Hi7YOexIyjMhEBdWbhN7Q3mhknTCl0Vy
         giOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686296013; x=1688888013;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FXDVR/m7ghYi1sGCZSZPAynsOrIqpAxJnytq4LBC/ng=;
        b=FcsK61B8NiTPDbwTtd5FsHSAc/vbeLpmYxj/fQCbp6GoQySJQFhSA2uJFgdn5Lde5x
         ZvTr001/mSTbI/YOeiQXmNzXeG9gfkdMzswcvZMyg/46/cL3dieu/Z9+jBwgKf2Z6J4v
         BSz5xTReL1xBfCyLSMK0lEkK1idc4282fpM6Ts7CBNanzV7EXyiIddAK2m05c04YsZlC
         tKvcr/ZhWB45e7zByl/mzGcK6CY/U+6CuP2Za6jCWqLvCroK8LOULZqvm2qhcPxT7KLN
         c6C+5/7Jmj/di1UdSTqh749AzV8cA4cdYyG0xPurc6Rmo44+8ss2/hmLKOgbePEp8FNA
         vZKw==
X-Gm-Message-State: AC+VfDxlf5KBxn786yjm+VRjjVZWx5lrFsNoZEADYYqVZ47IyqpcFitM
        yvMlT1FAPFwjEjO9oZm05gk/7P5eV7vl1MKNxOF1/g==
X-Google-Smtp-Source: ACHHUZ6jgWPorkmy93uP+LrZbKWCGp3r8xYGc1KFEsMG89qwqkB4AC9ZiecD6YH9cv8wJh6C0cjDeMb+RG1VWM8Cf1I=
X-Received: by 2002:a25:f40c:0:b0:bab:9ead:ae2b with SMTP id
 q12-20020a25f40c000000b00bab9eadae2bmr378433ybd.51.1686296013183; Fri, 09 Jun
 2023 00:33:33 -0700 (PDT)
MIME-Version: 1.0
References: <20230605125248.279921-1-brgl@bgdev.pl>
In-Reply-To: <20230605125248.279921-1-brgl@bgdev.pl>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 9 Jun 2023 09:33:22 +0200
Message-ID: <CACRpkdYJYFNQfb15uD2_8kEUTiMcc5-9AfNnfa0kne4OD0zkVw@mail.gmail.com>
Subject: Re: [PATCH] gpiolib: demote the hogging log messages to debug
To:     Bartosz Golaszewski <brgl@bgdev.pl>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Kent Gibson <warthog618@gmail.com>,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jun 5, 2023 at 2:53=E2=80=AFPM Bartosz Golaszewski <brgl@bgdev.pl> =
wrote:

> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
>
> Drivers should be silent when they work correctly. There's no reason to
> emit info messages when GPIO lines are hogged. Demote the message to
> debug.
>
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> Suggested-by: Kent Gibson <warthog618@gmail.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
