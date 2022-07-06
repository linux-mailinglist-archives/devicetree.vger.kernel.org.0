Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CC3595689B8
	for <lists+devicetree@lfdr.de>; Wed,  6 Jul 2022 15:41:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232592AbiGFNlZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Jul 2022 09:41:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40634 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232642AbiGFNlX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Jul 2022 09:41:23 -0400
Received: from mail-qk1-x733.google.com (mail-qk1-x733.google.com [IPv6:2607:f8b0:4864:20::733])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B14BF24BEC
        for <devicetree@vger.kernel.org>; Wed,  6 Jul 2022 06:41:21 -0700 (PDT)
Received: by mail-qk1-x733.google.com with SMTP id n10so10999860qkn.10
        for <devicetree@vger.kernel.org>; Wed, 06 Jul 2022 06:41:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=tHSKlvMGkv1jpA5A5SMLM9ENueVd+m4sc9yzrKgH5As=;
        b=tdJHZF+S3YNuq+J1C/YZfx7geIiJ8GM0cgdNBSb+HD3tkKT7XqFthGWedqgKvYJGKY
         2rrZqfDgts0l9pX3U9RLrndFnHEaovza8DmkvVgi8JnOfL9MQJmMQ4tjc5Qv4Vl4DIcW
         fcoj+4BtYzi2hHkqFu0W7Ufxw6txWu/jq/NZsyZfU3/fcZkU7w+9aiWkZ4QWZYLowddE
         vL8OhTWsWvbZSan+E7ldv/wxbG/bD5OV1NUru5KvSNDjmISrDBRoJ6ZKdFZMB2I3cOYH
         MDhObyIXZVpFQGm7wvjBfhC6ob7B6DZY4nloFIaXhM1Hecfu/dDWEZtvP/ps9RnrhdtP
         NX1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=tHSKlvMGkv1jpA5A5SMLM9ENueVd+m4sc9yzrKgH5As=;
        b=ds1IwrUfAm9HJHqeivcK7aUNlpOraFi2agqWjnsbo3Z1xuO2BO//WKA+R2TSs7LYo1
         IKn9GbOQKEas5IjfrktK9aB+JD7ogKMMREhxwYmAYh9e0A+9pHNFLYhxNCWgiBBJJECn
         kELAIa2JpxEBuV/CCyY8Ra5O3nS3kmrA7D2A4rZp7ukF30z/VpK+ptTouTgE3LjSfSOG
         c+s2iH9eK25/1JXA+W8k1XwVVKWTeFrFQjXNk2Jgzpo7K4nMG62/+eJo9O+W8yWZzevk
         fwa5861UcGuHV0ED/RN64R/hRLv6968FguMYBeuLIaucSdmse/J/2UlCCaWJq5vRRXt/
         DUQA==
X-Gm-Message-State: AJIora/Bk69KQa575twlwcDWMXojaN3cz3NKfZvXAmL7Tcl27a4J0Mlb
        PaFiRumDtqbX+HZAsIZC2c/2APLO7aWrw1ExoUsStg==
X-Google-Smtp-Source: AGRyM1tOjUM5+iQr5E5SnPFxhjWcK2SxQVuNTQqxyehUosjE+wLpxhrXdcOkgplr5ZDw0Hdz468XCEMKDlXBr5ugv/w=
X-Received: by 2002:a05:620a:4305:b0:6a9:3829:c03 with SMTP id
 u5-20020a05620a430500b006a938290c03mr25162746qko.363.1657114880728; Wed, 06
 Jul 2022 06:41:20 -0700 (PDT)
MIME-Version: 1.0
References: <20220705133917.8405-1-ansuelsmth@gmail.com> <20220705133917.8405-10-ansuelsmth@gmail.com>
 <a56f2941-b386-19f3-a6ad-b5a0738c8458@somainline.org>
In-Reply-To: <a56f2941-b386-19f3-a6ad-b5a0738c8458@somainline.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Wed, 6 Jul 2022 16:41:09 +0300
Message-ID: <CAA8EJpohZMg5MVJiqxZ7axcr1Cf3AhJEE7c5nBOdTvmZQCrT1g@mail.gmail.com>
Subject: Re: [PATCH 09/13] ARM: dts: qcom: add smem node for ipq8064
To:     Konrad Dybcio <konrad.dybcio@somainline.org>
Cc:     Christian Marangi <ansuelsmth@gmail.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Jonathan McDowell <noodles@earth.li>
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

On Wed, 6 Jul 2022 at 16:11, Konrad Dybcio <konrad.dybcio@somainline.org> wrote:
>
>
>
> On 5.07.2022 15:39, Christian Marangi wrote:
> > Add missing smem node for ipq8064.
> >
> > Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
> > Tested-by: Jonathan McDowell <noodles@earth.li>
> > ---
> I can't find a downstream kernel for these router SoCs, but
> I wonder if the 8x64 family DTs couldn't be somewhat
> unified? It looks like they share quite some code..

Let's modernize them first, using the other one as an example. We can
merge them afterwards. And don't forget the foster child, msm8960.

>

-- 
With best wishes
Dmitry
