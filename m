Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CCAFF6626DD
	for <lists+devicetree@lfdr.de>; Mon,  9 Jan 2023 14:22:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237231AbjAINVb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Jan 2023 08:21:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36692 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237191AbjAINU4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Jan 2023 08:20:56 -0500
Received: from mail-yb1-xb30.google.com (mail-yb1-xb30.google.com [IPv6:2607:f8b0:4864:20::b30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63E8B18C
        for <devicetree@vger.kernel.org>; Mon,  9 Jan 2023 05:20:55 -0800 (PST)
Received: by mail-yb1-xb30.google.com with SMTP id e76so8444455ybh.11
        for <devicetree@vger.kernel.org>; Mon, 09 Jan 2023 05:20:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=xG3W+vK7RwrCdtjwLK3vNCE7vbO36bpYtpEuaP14DXM=;
        b=iwiA9nCEk8VDF99Ls5nNHHwL8wlLIbTaNikhbEYzRNypMLB74PdazEBldEB4XwwQXG
         P9jJVdpNY5pd1GSFMvoEewOBrYjFbHTr3v5tt66h6FkvZ4ZmZKUUtFG595RPLVZQYmtM
         BoN+NBopdl/nYOLPs8ijjvJutnl/uaCBWybeKVvHDz7wo/w46kn/u2X0xcNab2CutK/x
         0sC3VcX7SiCaTaUfAkpmbzLQGpkldQqp+ySZWxaaD3kyjZyFbLWwNYFgfrHjEbJvgE+D
         4LkPeIE6vNRnXGal38ZBz6JRjafXEj+j7bEswAJ2ylWdUqqj9B24cl7JizlDydMgTqBz
         1zsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xG3W+vK7RwrCdtjwLK3vNCE7vbO36bpYtpEuaP14DXM=;
        b=jOQTCJZ3ZMYG1narupiY03PHLvwQfUp8hxky6/Xgmx7op/gj8tCkbGDF0uFpkqHXr6
         FeHsE4KqaXUaMCxZkpe1qEpkWEpSmEotTIxdHTaj6uDBaWzfnQGXJndrHyEInxs8aFhi
         hd5rZgZddxQi1lBwX8jAmYDQ4JCc4dY9avX94Icj35Lzw4LGlmYyqPyjlE2H70c5+Wne
         0gHn0krF8SKixIpNGs33AGiVFRaQFsIH81WKR+eYq8KM5BIGggPdDYWYQj1iS2kPhBVS
         +lBwOPAGH3yzECSi0GYVyXKkwF2GFWSWGLzTM5NwKEJKcyhgP+ckYH1u7DEqZlJgQwzw
         6Xew==
X-Gm-Message-State: AFqh2koeckftkXmHa2CQMQ5CpqwCXDLTze97fpSsaes//iZ3KMrmYkbx
        tvqvjyRf/lqCfBdR+EwfcVGsPmOQZ38gpN5hQreoHw==
X-Google-Smtp-Source: AMrXdXvw/vMNQ2j4TQfyElQboPVxW6IRXKAPjB8bvTx1Sg00Npe71IQFuGLmER0nV13jikyspHUeMLsR75qaPgdfCsg=
X-Received: by 2002:a25:6982:0:b0:700:e0f1:6335 with SMTP id
 e124-20020a256982000000b00700e0f16335mr5702066ybc.520.1673270454521; Mon, 09
 Jan 2023 05:20:54 -0800 (PST)
MIME-Version: 1.0
References: <20221230203637.2539900-1-abel.vesa@linaro.org> <20221230203637.2539900-2-abel.vesa@linaro.org>
In-Reply-To: <20221230203637.2539900-2-abel.vesa@linaro.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 9 Jan 2023 14:20:43 +0100
Message-ID: <CACRpkdbMwV01+K8kPRhNAnjXYekN1ScEZL4LSMcseGkaYKkZCQ@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] dt-bindings: pinctrl: qcom: Add SM8550 pinctrl
To:     Abel Vesa <abel.vesa@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Dec 30, 2022 at 9:36 PM Abel Vesa <abel.vesa@linaro.org> wrote:

> Add device tree binding Documentation details for Qualcomm SM8550
> TLMM device
>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Patch applied!

Yours,
Linus Walleij
