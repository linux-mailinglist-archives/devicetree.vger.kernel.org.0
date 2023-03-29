Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 551F16CD4F9
	for <lists+devicetree@lfdr.de>; Wed, 29 Mar 2023 10:43:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231163AbjC2Ina (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Mar 2023 04:43:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58970 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231216AbjC2In2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Mar 2023 04:43:28 -0400
Received: from mail-yb1-xb32.google.com (mail-yb1-xb32.google.com [IPv6:2607:f8b0:4864:20::b32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 38A1340C4
        for <devicetree@vger.kernel.org>; Wed, 29 Mar 2023 01:43:23 -0700 (PDT)
Received: by mail-yb1-xb32.google.com with SMTP id k17so18339999ybm.11
        for <devicetree@vger.kernel.org>; Wed, 29 Mar 2023 01:43:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680079402;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9QFNGRe/qYkwzP+fiwIAdq/5V8K+RvjLHPqES/KYnQs=;
        b=UDmPhRlclATqTR3oU+JfMUKUNxBedWAoB8uH9wvtpOHcmS2thP3SeN9cTKn0VrfinC
         BS8aWMdByHK3ANvXGd2TbQlSY1RSbYs8C4qXS5siAu6yyRHCHAHFcIIq23MGbsCzKcoi
         mT3iQwRdCgYU8h9r9wbqAJB1xUG/cmFX1q6mNsztoypuLTBFRdUXszJXIETSUJ7o8jh+
         JbIBIU8BB+JH8Q/rSyf7YQLbzxN0dewYTF1QmUHP/Iq7dMk+z3hjTJg6X4V4swm21brD
         TSS58kMWeOue+lWNwqObAuSLfi/E1O5iQ8+/PZlpRaid+inys7UHTnBh+nbTOmTkssH/
         lgKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680079402;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9QFNGRe/qYkwzP+fiwIAdq/5V8K+RvjLHPqES/KYnQs=;
        b=yQvkigcluHz5wtkaKnQiizVJ6wKbuRg5Oz34l4Ggu+5veQr/Lpdy2eZ9+AWhKgvaYJ
         ROZgiqwLMM63s58BTlwlDl5qPgSRECSgv5m7NUBHUt50EdFYocXfBUVMLWMmvG+FbuHl
         m/BzBENYDy5gs3N7+Z981DpIWogGAMDSPjvRw0a76MQ1CZM5ZVViwvD5oiQPilKj+QWM
         OMQ6lnS60dO83gJyu/+FSH6buaCGn5t1Me5ZUKrYLfGmHTKDQ27LuRzeyJ+3c+0wi7I2
         Y2F/D64seH6NK8dNFVK9iWz4jGWd+luoxaSBQEZWzn3cdX8h6dFbqCvdgql1HczvMCzj
         qiwA==
X-Gm-Message-State: AAQBX9c4SVOpVzMC12uemvRItX8PEvWXvzTt8RlfFRFnqC1yzArbruzS
        H4kzHYzPDz6v0RwwJKKdw0nWSzZDm9FKPsAVSkli9Q==
X-Google-Smtp-Source: AKy350ZHBV4ak74c7b80acYJQ6Xgio8lk0wyiIDmxjNMY7qeC2l8+M1gaHWSfG/aRIjosaM0+ZWTR412sobwXSpNErM=
X-Received: by 2002:a05:6902:1145:b0:b09:6f3d:ea1f with SMTP id
 p5-20020a056902114500b00b096f3dea1fmr11980914ybu.4.1680079402143; Wed, 29 Mar
 2023 01:43:22 -0700 (PDT)
MIME-Version: 1.0
References: <20230323135205.1160879-1-mweigand@mweigand.net> <20230323135205.1160879-4-mweigand@mweigand.net>
In-Reply-To: <20230323135205.1160879-4-mweigand@mweigand.net>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 29 Mar 2023 10:43:10 +0200
Message-ID: <CACRpkdYZ1jtTPgQaVU+hPOgNoitQYc2ykbWMjGnJ0rk+s7r=zw@mail.gmail.com>
Subject: Re: [PATCH 3/6] devicetree: input: cypress,tt21000: fix interrupt
 type in dts example
To:     Maximilian Weigand <mweigand@mweigand.net>
Cc:     Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        linux-input@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Alistair Francis <alistair@alistair23.me>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Mar 23, 2023 at 2:52=E2=80=AFPM Maximilian Weigand
<mweigand@mweigand.net> wrote:

> Triggering the interrupt of the IRQ_TYPE_LEVEL_LOW type can lead to
> probing issues with the device for the current driver (encountered on
> the Pine64 PineNote). Basically the interrupt would be triggered before
> certain commands were sent to the device, leading to a race between the
> device responding fast enough and the irq handler fetching a data frame
> from it. Actually all devices currently using the driver already use a
> falling edge trigger.
>
> Signed-off-by: Maximilian Weigand <mweigand@mweigand.net>
> Reviewed-by: Alistair Francis <alistair@alistair23.me>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
