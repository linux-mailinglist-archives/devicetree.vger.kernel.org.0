Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3F3895714CE
	for <lists+devicetree@lfdr.de>; Tue, 12 Jul 2022 10:39:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231443AbiGLIjS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Jul 2022 04:39:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41238 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232380AbiGLIjS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Jul 2022 04:39:18 -0400
Received: from mail-yb1-xb2a.google.com (mail-yb1-xb2a.google.com [IPv6:2607:f8b0:4864:20::b2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2229E50726
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 01:39:17 -0700 (PDT)
Received: by mail-yb1-xb2a.google.com with SMTP id l11so12731763ybu.13
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 01:39:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=pwAwI6J0LVXbBRyICwheygsAIzKjS1y09V3wEsL9VGY=;
        b=qJJY4LpTyW+n1zxGWTlKj49Onkt10Bvsx5WQ5rxR/co8RKeFA2L4JwpU5fNvCmqC4z
         4mRSDO27d+D22MYXRKJ9IgnxDSKIEbOaFaANiFtdb4SooM34P/t3LZRS5IP419lPTzBq
         7jsxbk4OKgzUR7beO2sLCYNv8u3GM2PGAVnB1309CjNs9iGzlLRwu/E6sYSJjaeKqPs4
         HzMRnGZak4aGcDAG1gSkiwNQlPxLApY4qvI3nBI8UMCvE78dlNywcYaYSoCYXSltgQhd
         gLAZCO7ohzu5yQflctZaGzHd3NOSX9sfq5R6DtvzsF83CPtkzruO2fdikFzuP7+/W88j
         hpkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=pwAwI6J0LVXbBRyICwheygsAIzKjS1y09V3wEsL9VGY=;
        b=52LgdtRUGfaZSqo4Ds1ym8i5jzn6RuJVaFAhY+TTiQZCdN84/QtecuOQK7+ks+CVpI
         GRSq7pIXtXKaJsA3/lgVQyXwKhm4kbZn+Z/K65W7X9mFyR8TucXTghHjto6Nd5OaLWhx
         aD8SJetnqFDDw5nPub7wXxjtarXV76gT3+jUuMbcLl7TOHdT9YYXymveC5/UayIako/9
         NMkr8WVRn2ABL01Bo/K1UAkzwRicGe9qhj21+mbYseirU+fOGYfD9RPPMYTKqTlcPsFD
         Cq1NphQ/fyRMjw+aCGCWh7lc/6Ig+oHg4ZYD//cmautC50kOcUSx84FMNI7wHeN5x/4L
         2u9g==
X-Gm-Message-State: AJIora9czPib0zW/qtzw6wbLZOu9oUCPQ/FMd3Sc7/y2pqWRSYPCr3Gt
        +41gaUhvSroVIbMyTgAeQ1YILuLUOrTMYjkHvAxbyA==
X-Google-Smtp-Source: AGRyM1v1Oxa2Ei7Zc9A6vXkFvArZM8yXqdVl4lpmO0YzWay4WnBwmf6aRkFO4ZkQqiKVseOQXQDCn8ZveRR7m0/vNUQ=
X-Received: by 2002:a05:6902:150a:b0:66f:8a6:be47 with SMTP id
 q10-20020a056902150a00b0066f08a6be47mr13784846ybu.291.1657615156399; Tue, 12
 Jul 2022 01:39:16 -0700 (PDT)
MIME-Version: 1.0
References: <20220711203408.2949888-1-robimarko@gmail.com> <20220711203408.2949888-3-robimarko@gmail.com>
In-Reply-To: <20220711203408.2949888-3-robimarko@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 12 Jul 2022 10:39:05 +0200
Message-ID: <CACRpkdbLKXrVu9q3m1BRfRMT5q4gtrtuSNw0PmTsZBraeytVFw@mail.gmail.com>
Subject: Re: [PATCH v7 3/7] dt-bindings: pinctrl: qcom,pmic-gpio: add PMP8074
To:     Robert Marko <robimarko@gmail.com>
Cc:     agross@kernel.org, bjorn.andersson@linaro.org,
        konrad.dybcio@somainline.org, lee.jones@linaro.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        jic23@kernel.org, lars@metafoo.de, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-gpio@vger.kernel.org, linux-iio@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
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

On Mon, Jul 11, 2022 at 10:34 PM Robert Marko <robimarko@gmail.com> wrote:

> Document the compatible for PMP8074 which has 12 GPIO-s with holes at
> GPIO1 and GPIO12.
>
> Signed-off-by: Robert Marko <robimarko@gmail.com>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Patch applied to the pinctrl tree.

Yours,
Linus Walleij
