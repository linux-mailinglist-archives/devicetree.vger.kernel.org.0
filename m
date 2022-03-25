Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A154E4E7DE9
	for <lists+devicetree@lfdr.de>; Sat, 26 Mar 2022 01:23:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229877AbiCZABb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Mar 2022 20:01:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60578 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229853AbiCZABb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Mar 2022 20:01:31 -0400
Received: from mail-oa1-x31.google.com (mail-oa1-x31.google.com [IPv6:2001:4860:4864:20::31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 367A55C66E
        for <devicetree@vger.kernel.org>; Fri, 25 Mar 2022 16:59:56 -0700 (PDT)
Received: by mail-oa1-x31.google.com with SMTP id 586e51a60fabf-d6ca46da48so9562802fac.12
        for <devicetree@vger.kernel.org>; Fri, 25 Mar 2022 16:59:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=ntPj7XTgIDSXQpvjym4YD4bqgMTawlJA9DZM7Wmz9bA=;
        b=iuDSQQpRT+Stj7+ssoaEOVA0qUnB2gjhGsVM+7cq9Xs6eqzXEfEtVKpJ77ks8/4Bxv
         ltwGXD7sGnVe5lY0T+ZvOhWmUiVcvqnduYgDaXtvy9sO6tN9QPHSNmn4h7yYqkv/VUdZ
         6goVTgZZILVQuBbzgh3zgQmKuvBRFnqLQTi6g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=ntPj7XTgIDSXQpvjym4YD4bqgMTawlJA9DZM7Wmz9bA=;
        b=msYQs1QjD35u0Yc+nbMKDU+k7psCbBM63frSFDXeXBC82w1DnvHoEER6lXTo515cXw
         2UolRBXdAZCNtjd1KcdnDRpuMF0dntevGFy+Ch62IRloJusg5I+34/P4WyAhmtjjiR4K
         rHqFoU29ZGzxPR1v3V0B/C/C4otkON4OpoZBtzCiRyJXAbWRr4Ed22FhZDuH+QG+G7bk
         r8rut4mbNDqIw7MhlR8Lj/HamhmCgCs5YWqTjHqqohbEQh8xuYtnMyAoMb1wgdgHekc/
         3v2zxkYHdP47sjBJ4A5XZ2pYNJB+m+G+jOIpei1tQ6T1ETebREuHNfg63CPs2VfeCW2W
         hOvg==
X-Gm-Message-State: AOAM533E5doPthiYIGh9CjZ3oKNagmE1LHetCUjIoen9yO9FkArkhiMr
        jZmosGPD0lUSlVbFFAyQq7LVJlyr7yAg67SDY6TyJO7fSNQ=
X-Google-Smtp-Source: ABdhPJxL7cQi4HgcWfC39v8JYHlFM6J1bdIJIFIBa5f5A5+pCwhxP4lfWSd9/d1JRXk3xNDjbiTnaNd0d6n2+iQrNWs=
X-Received: by 2002:a05:6870:46ac:b0:de:5d48:9d27 with SMTP id
 a44-20020a05687046ac00b000de5d489d27mr6188949oap.63.1648252794785; Fri, 25
 Mar 2022 16:59:54 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 25 Mar 2022 18:59:54 -0500
MIME-Version: 1.0
In-Reply-To: <20220325220827.3719273-5-gwendal@chromium.org>
References: <20220325220827.3719273-1-gwendal@chromium.org> <20220325220827.3719273-5-gwendal@chromium.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Fri, 25 Mar 2022 18:59:54 -0500
Message-ID: <CAE-0n53b25b_-XDCR-xVGuYBCK_DUyO95bwuBXisgZ3ccd+0Hg@mail.gmail.com>
Subject: Re: [PATCH v3 4/8] iio: sx9324: Add precharge internal resistance setting
To:     Gwendal Grignou <gwendal@chromium.org>, jic23@kernel.org,
        robh+dt@kernel.org
Cc:     linux-iio@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Gwendal Grignou (2022-03-25 15:08:23)
> Add ability to set the precharge internal resistance from the device
> tree.
>
> Signed-off-by: Gwendal Grignou <gwendal@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
