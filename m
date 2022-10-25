Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AC94A60C69F
	for <lists+devicetree@lfdr.de>; Tue, 25 Oct 2022 10:37:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231631AbiJYIh0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Oct 2022 04:37:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51320 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231769AbiJYIhX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Oct 2022 04:37:23 -0400
Received: from mail-vk1-xa2e.google.com (mail-vk1-xa2e.google.com [IPv6:2607:f8b0:4864:20::a2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1B3B52DF5
        for <devicetree@vger.kernel.org>; Tue, 25 Oct 2022 01:37:17 -0700 (PDT)
Received: by mail-vk1-xa2e.google.com with SMTP id v81so5812028vkv.5
        for <devicetree@vger.kernel.org>; Tue, 25 Oct 2022 01:37:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=dUpnTK4vOay//j0hF0v2+StS2VuixdnHBvERBglnnTM=;
        b=YWNv99ZEhc6MJzOf+TaJsjhdRKqsbHcZFHtf1cWrLlGDXAbAMiFYmYvJ8i35U2XAP9
         Bw1rA3y4y//Q5wc8okT3glJYlvwBVvEpHZ8fiXy4pVEDEJPS0VBxd4bSNn8dusElF5mX
         O7JqFmtBcJa6ajlzSBwxprqptqHTz4G6PzBTPkiINTAcLtQpvdKStTVP5rpFS33aLsbj
         n3Jp6zdBCsLcU57Hx9Dz2vm/NjnWyHsi71cWHODS93oCToZPFPSdJpmx1GJr6I5M1LTq
         so8B/P0zftolvYyXqvDvwnNJGZjeuC/KGyvddQSX2YHzZ3Dx1lM8/ULMOILPCWYn/Td3
         9toA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dUpnTK4vOay//j0hF0v2+StS2VuixdnHBvERBglnnTM=;
        b=6HDELAvfG9RgyxjZGFWvf6PDO/KFsqmLDztlXyElEbm/EXDjJChxnQWRFlIXqoVIBA
         jbluq/7Olx/PMLts5vmNw4IF0QOdrfMZjt/ygAIC/mPerRVlA7h1x188mwym/EDKyciR
         T28QYRlt1I/7UMzSer732kQqnAGY1qJqtM2eECoHg9005RAHvaXT/RRp8QwDGsK254J4
         V1l8kcUzALOXJNH5+mKHGN+PL9lsajWJpNIim/pyNPzmshVN0Q/xgTv232Eg9i/T2wq+
         VlgEUKqZq1CuXiBEfNKhYcluxV3kY5UOU4ZL+ukLp2DxstLM1Ol/58R3uorfB8SdKPd+
         gObA==
X-Gm-Message-State: ACrzQf29DtQ4kDiYHLxlZVawWST9Ou4Ktomdq46TdVuzxwjvicG+eGrm
        KIvBw1pHHAbEvYMDxDDQeZRbVfo8ABP+MuvEL0aw2Q==
X-Google-Smtp-Source: AMsMyM5ck5BwaD1iYNI5/m2lBogs7Bubbpj+x6WZOlVOesTCldtmuCNUOgjxc/qcUdS5URybII5tRdqlsmXLqL3K1po=
X-Received: by 2002:a1f:d583:0:b0:3aa:9112:570f with SMTP id
 m125-20020a1fd583000000b003aa9112570fmr20047835vkg.3.1666687036807; Tue, 25
 Oct 2022 01:37:16 -0700 (PDT)
MIME-Version: 1.0
References: <20220930102259.21918-1-shubhrajyoti.datta@amd.com>
In-Reply-To: <20220930102259.21918-1-shubhrajyoti.datta@amd.com>
From:   Bartosz Golaszewski <brgl@bgdev.pl>
Date:   Tue, 25 Oct 2022 10:37:05 +0200
Message-ID: <CAMRc=Mfio87WzRASexNY7UbN2sdT4JzCjHY_OfTb_=d17DOYyQ@mail.gmail.com>
Subject: Re: [PATCH v5 0/3] gpio: pca9570: add slg7xl45106 support
To:     Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>
Cc:     linux-gpio@vger.kernel.org, git@amd.com,
        devicetree@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, linus.walleij@linaro.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Sep 30, 2022 at 12:23 PM Shubhrajyoti Datta
<shubhrajyoti.datta@amd.com> wrote:
>
>
> Add Dialog semiconductors SLG7XL45106 GPO expander
>
>
> v4 and v5:
> Resend as the patches were mangled.
>
> Changes in v3:
> Add ack
> split the new patch
> Suggested by Andy Shevchenko
> split the new patch
> Suggested by Andy Shevchenko
>
> Changes in v2:
> add alphabetically
>
> Shubhrajyoti Datta (3):
>   dt-bindings: gpio: pca9570: Add compatible for slg7xl45106
>   gpio: pca9570: add a platform data structure
>   gpio: pca9570: add slg7xl45106 support
>
>  .../bindings/gpio/gpio-pca9570.yaml           |  1 +
>  drivers/gpio/gpio-pca9570.c                   | 49 ++++++++++++++++---
>  2 files changed, 44 insertions(+), 6 deletions(-)
>
> --
> 2.17.1
>

Series applied, thanks!

Bartosz
