Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 485F86AC1E0
	for <lists+devicetree@lfdr.de>; Mon,  6 Mar 2023 14:52:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229571AbjCFNwU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Mar 2023 08:52:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44998 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229561AbjCFNwT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Mar 2023 08:52:19 -0500
Received: from mail-yb1-xb29.google.com (mail-yb1-xb29.google.com [IPv6:2607:f8b0:4864:20::b29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A532A5FD4
        for <devicetree@vger.kernel.org>; Mon,  6 Mar 2023 05:52:17 -0800 (PST)
Received: by mail-yb1-xb29.google.com with SMTP id c80so1162968ybf.5
        for <devicetree@vger.kernel.org>; Mon, 06 Mar 2023 05:52:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678110737;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=BPh6DRJ9CcazPLZjLGRmwkvYgFkVSdBurUSE2ObxVJ4=;
        b=qUgJtmNLgHGE4Bp38Mh2sm9vgRq0M8Fva0CT7yqcP+/NVMxBa9kdV7dNoOFdsNgLLJ
         4/ETkDNKpO6RHGFEj5tPPJVpv4CXd60RgXSW3jmQj6XT6dyZdHHoexc/DhRZ+JM32WBF
         ab+yE3lrDMwq3b8G2fsQXDSMFtOrv/tcgrEsxI4Rcu+YFqxI5F7ngH5+43cvBoE3AlIW
         3T7xEDG+clPW0xlirojmcqJ3JM3WYJIVTf9iU9RAcw6UQJXk4R/zeSPKOFvYA+PdMF2c
         asZ8gOz7L46HA4IfVdtp0midDQL6kiV2ykwA/RDJPQqYweg0CsvIXfW+I9/oNIzWsbxb
         LuMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678110737;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BPh6DRJ9CcazPLZjLGRmwkvYgFkVSdBurUSE2ObxVJ4=;
        b=pMY23guWuzOZ4bjJbegCI7384jikAwJHbkSEh5V+UQPKud+zST5AJG1mkv4Boo9mnj
         J4qAtMT/6k4jg8huVesw80ij8tzVdNnmMQ0dkwaWr0kKe5tXPk16f3wE3xIe3OAdRhpa
         iJq+LRvPaeLAa8d4oD8UHKaqeLV3KUR1btukRlYROIKbfVl2MOlXpcfESC/zgkphHeUG
         EJtA6XXGpSC7ZaqVTp4QHTzFRHGM8juZnbqoQZKK2YnfPDSd9ouayB1o96Q1Xy+74v+h
         x5Sv1bNxtlktev0zYCw/m5OXYo8QEqxsdkXS4D+MMDp3XBi7xHBJSSy3C+iRHXcOgkFv
         xqjQ==
X-Gm-Message-State: AO0yUKXpK2NAkkxXRPZTSqvicWVgACbR1Dwv22a7IfedvB0hq0cVPAq2
        OkxeVpELJMma8iZ3NEmOXMAMb/AH3UfuK5CTFvv8lw==
X-Google-Smtp-Source: AK7set96XVuLEwBCuezT4MzqONLfE0LMULjfJzchaO7bM4o8d+8Bu9LL/jc3Nw8LQAc2/AdguTvz8jvtK130zakvUqI=
X-Received: by 2002:a05:6902:c3:b0:9f1:6c48:f95f with SMTP id
 i3-20020a05690200c300b009f16c48f95fmr5065214ybs.5.1678110736893; Mon, 06 Mar
 2023 05:52:16 -0800 (PST)
MIME-Version: 1.0
References: <20230222115020.55867-1-avromanov@sberdevices.ru>
 <20230222115020.55867-2-avromanov@sberdevices.ru> <CACRpkdbWubk3A3qYuYqDc4OBGP6T7TaKwFeW17CwAzPvttk=WQ@mail.gmail.com>
 <2d9e01df-0047-98bc-f1e7-fa860d92c254@linaro.org>
In-Reply-To: <2d9e01df-0047-98bc-f1e7-fa860d92c254@linaro.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 6 Mar 2023 14:52:05 +0100
Message-ID: <CACRpkdbDXnzKcrYnjHA3z5tiD9_FHgk5O8PO1esXNNDBVvtT+Q@mail.gmail.com>
Subject: Re: [PATCH v1 1/3] meson: pinctrl: use CONFIG_PINCTRL_A1 with CONFIG_ARM
To:     neil.armstrong@linaro.org
Cc:     Alexey Romanov <avromanov@sberdevices.ru>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, khilman@baylibre.com,
        jbrunet@baylibre.com, martin.blumenstingl@googlemail.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        kernel@sberdevices.ru
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Mar 6, 2023 at 2:49 PM <neil.armstrong@linaro.org> wrote:
> On 06/03/2023 14:45, Linus Walleij wrote:
> > On Wed, Feb 22, 2023 at 12:50 PM Alexey Romanov
> > <avromanov@sberdevices.ru> wrote:
> >
> >> Tested A1 pinctrl support for ARM and it works.
> >>
> >> Signed-off-by: Alexey Romanov <avromanov@sberdevices.ru>
> >
> > This patch applied to the pinctrl tree for v6.4.
>
> Erf, this serie is something we would avoid, so no need to apply it for v6.4

OK I take that as "Neil says NACK" and backed out the patch.

Yours,
Linus Walleij
