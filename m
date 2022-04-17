Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 55827504A15
	for <lists+devicetree@lfdr.de>; Mon, 18 Apr 2022 01:33:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235376AbiDQXfl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 17 Apr 2022 19:35:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51642 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235374AbiDQXfk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 17 Apr 2022 19:35:40 -0400
Received: from mail-yw1-x112e.google.com (mail-yw1-x112e.google.com [IPv6:2607:f8b0:4864:20::112e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A15D12AA3
        for <devicetree@vger.kernel.org>; Sun, 17 Apr 2022 16:33:03 -0700 (PDT)
Received: by mail-yw1-x112e.google.com with SMTP id 00721157ae682-2edbd522c21so126028577b3.13
        for <devicetree@vger.kernel.org>; Sun, 17 Apr 2022 16:33:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=qq311Ej4nKaNHmuSEh9g0stR0rP4XIT/BhL1cGtlS7w=;
        b=r9jqXinwzkdIC5VyPdggPBtZPjeAHyq1eSsjmecFUKYa55IuKybWRojKRp4ChNnyEf
         2hdV8pvp2zVL/G+i3bFwoGEXUF7LdMQzcbu/dcaa7Bu0KLi6mT5/vTvTJLCITdUjQecQ
         t1n4Jw78Jn5mFYMNl/2IRdB9WNuIF3xaaXjsuyQufBiqMKOPdJ5ZVkvjWUUys4tlsPxP
         Jf/59SscRxietyIJSswa3HWwkAZYXMtmGCs3SDLK4GME080mTndVG/5dG7nnLybV2/sz
         ieZReQIZUKpVfOhUogy5KDIoy6gmiHeKlVcR91obmX99jkzwWsPdUVG05pzwq/27JtIH
         nFoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=qq311Ej4nKaNHmuSEh9g0stR0rP4XIT/BhL1cGtlS7w=;
        b=z0tfwQhxXtENCUMtUaH2xY7zR9eILfmdDHdetumL/81p7TFznD7YtZqYOf2l2xpLY+
         QvgQ0xtKR7DT2/Wn2qo1197PrQ5SDHh53At/RzxsDXNHXC2oRgSsrKxkP97UVcFIecMk
         KotNm3NIxme8u3rQlp/0oWetcBXfV5zEqqBQtIc62KHD4gz8FNmWojWJmhFnif7a4WUp
         k/2dYr3a3Jwzb0Df7Upc48YA44FRkKKFzLg6WKwjdDYSbtNWaQAbabxW9DKLmMVB3Zfg
         zJJblZat5HyWYVAII8mxTova92j0SAMEqOiRj+QExoVvswLBt8m3+VNvz/LZIdfw554w
         c4Dw==
X-Gm-Message-State: AOAM532xwjO57O3Po4oCOoaZxxRHt7mcXHoqqn6QEL851pI7RZpsM3ZU
        fo+BL9K0cLZWH7w0aZsHlauct6DVjkxEvF/Up5XNMQ==
X-Google-Smtp-Source: ABdhPJy971JsV2M6G/kykCqVBXCve1UTM/9vpeUp4hd3G329HLHl0O/fftTQQ2T3LleMXPNCddp/kEi6imjIGc1o0Ig=
X-Received: by 2002:a0d:e813:0:b0:2ec:1e83:e5f0 with SMTP id
 r19-20020a0de813000000b002ec1e83e5f0mr8377849ywe.151.1650238382771; Sun, 17
 Apr 2022 16:33:02 -0700 (PDT)
MIME-Version: 1.0
References: <1647447426-23425-1-git-send-email-quic_srivasam@quicinc.com>
In-Reply-To: <1647447426-23425-1-git-send-email-quic_srivasam@quicinc.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 18 Apr 2022 01:32:51 +0200
Message-ID: <CACRpkdZKQRnxFjOD9z7iNvRQeM6kGBBopjW7VzFSuj91GYeJOw@mail.gmail.com>
Subject: Re: [PATCH v12 0/7] Add pin control support for lpass sc7280
To:     Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     agross@kernel.org, lgirdwood@gmail.com, broonie@kernel.org,
        robh+dt@kernel.org, quic_plai@quicinc.com, bgoswami@codeaurora.org,
        perex@perex.cz, tiwai@suse.com, srinivas.kandagatla@linaro.org,
        rohitkr@codeaurora.org, linux-arm-msm@vger.kernel.org,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, swboyd@chromium.org,
        judyhsiao@chromium.org, linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Mar 16, 2022 at 5:17 PM Srinivasa Rao Mandadapu
<quic_srivasam@quicinc.com> wrote:

> This patch series is to split lpass variant common pin control
> functions and SoC specific functions and to add lpass sc7280 pincontrol support.
> It also Adds dt-bindings for lpass sc7280 lpass lpi pincontrol.
>
> Changes Since V11:

Bjorn what do you say about v12?

Yours,
Linus Walleij
