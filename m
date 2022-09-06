Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 40AB85AE90C
	for <lists+devicetree@lfdr.de>; Tue,  6 Sep 2022 15:06:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240191AbiIFNFb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Sep 2022 09:05:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36112 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240300AbiIFNFZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Sep 2022 09:05:25 -0400
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E9C63564E2
        for <devicetree@vger.kernel.org>; Tue,  6 Sep 2022 06:05:23 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id w2so15136985edc.0
        for <devicetree@vger.kernel.org>; Tue, 06 Sep 2022 06:05:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=ltZ8BwCHA90N0xCiPXsqAnq/msG5Ej+1muFCDaHgJe4=;
        b=b9b7dMVsDGRCa+Dg2UBLc5bOvgetSb0j8960xT/NsMM40+4MfpDHoagn4aPCP3yI8C
         kiUmp4b8bSzpIBX6SqCr0v3ybBepUFBpMVlhMe3RbFlEFdArF/k58Hb9eA8BvPkyrSQQ
         nyBB0XwLtdPvKvlC1mv4WUW615OKPoDYEtYrWC1tT+U71Kla37e4FH5MbrCp9fGOHSnb
         o3/LKqlVUCZdcB9sHkWkYL00CYu0puPQbneHkR8ZoPuzE0y/k5AXdjksB/jG25cosVPh
         l4OexWY+mIOq4QRvjtEQYl+tOe1JLYbMCQuUX9hyenNsZg/mEfXc9cXY+6fuY9Fb+Gb8
         R4Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=ltZ8BwCHA90N0xCiPXsqAnq/msG5Ej+1muFCDaHgJe4=;
        b=meznA7HYBoiYcVphnE4l72j3v5OY0e3XfmSnYM9q5kko2TEZdqU/jlhFB3RUsxo4wx
         gjwPamzeJYw3o2qv68X1V+J/hpytlbl2XQsp8qeDUwiZWEbuyx6sXkS+1/9GKWxjJ4oY
         /JAQRPpvVrgYBUIyBBhfK92UkmEGvasTsWgxoosRIKJ0ywI8DeEjkL4D7GjHloN1Ylzu
         qIdaMeI+GO9jXqWm6YiLAIDvzXZ77BKtJ4VyWQ3tFzeQwKc7N/cNKprnh917jsgICyZ3
         Kf61YyMZGKpETY+sSVp3KQlS/SqCl6tTw81GxEDSFboz+7R/quFPrhYo8bgA7RCLc8El
         q3KQ==
X-Gm-Message-State: ACgBeo0fRGT2Onv0vTOWHN0OXB/mQ5ngLuPY48TD+hPxXPh6I7QVah1H
        NGeDO5qkO80+M+opcLUBdl/8rEHkuFH/OPEQq6lHvQ==
X-Google-Smtp-Source: AA6agR5Y0OQbpE8LPvwngeTpVjo1MXu0GVzRm5PijsMKSHrtxR2t4yXmEa2b/2REUUx40TXBMu6O34BmLuOm2H17LGo=
X-Received: by 2002:a05:6402:51d1:b0:448:bed1:269c with SMTP id
 r17-20020a05640251d100b00448bed1269cmr30094274edd.205.1662469522275; Tue, 06
 Sep 2022 06:05:22 -0700 (PDT)
MIME-Version: 1.0
References: <20220906082820.4030401-1-martyn.welch@collabora.co.uk> <20220906082820.4030401-2-martyn.welch@collabora.co.uk>
In-Reply-To: <20220906082820.4030401-2-martyn.welch@collabora.co.uk>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 6 Sep 2022 15:05:09 +0200
Message-ID: <CACRpkdbw2vq0QHjihWeiFBpUXGKaL2nB9rD16gcmsgEw0nuSqg@mail.gmail.com>
Subject: Re: [PATCH v2 2/5] dt-bindings: gpio: pca95xx: add entry for pcal6534
 and PI4IOE5V6534Q
To:     Martyn Welch <martyn.welch@collabora.co.uk>
Cc:     Bartosz Golaszewski <brgl@bgdev.pl>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Martyn Welch <martyn.welch@collabora.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
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

On Tue, Sep 6, 2022 at 10:28 AM Martyn Welch
<martyn.welch@collabora.co.uk> wrote:

> From: Martyn Welch <martyn.welch@collabora.com>
>
> The NXP PCAL6534 is a 34-bit I2C I/O expander similar to the PCAL6524. The
> Diodes PI4IOE5V6534Q is a functionally identical chip provided by Diodes
> Inc.
>
> Signed-off-by: Martyn Welch <martyn.welch@collabora.com>
> ---
>
> Changes in v2:
>  - Enumerate pi4ioe5v6534q as requiring pcal6534 fallback

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
