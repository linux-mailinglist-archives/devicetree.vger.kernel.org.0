Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D03C54B1A0D
	for <lists+devicetree@lfdr.de>; Fri, 11 Feb 2022 01:06:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344163AbiBKAGX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Feb 2022 19:06:23 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:35954 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344619AbiBKAGW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Feb 2022 19:06:22 -0500
Received: from mail-yb1-xb2a.google.com (mail-yb1-xb2a.google.com [IPv6:2607:f8b0:4864:20::b2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6487826FC
        for <devicetree@vger.kernel.org>; Thu, 10 Feb 2022 16:06:22 -0800 (PST)
Received: by mail-yb1-xb2a.google.com with SMTP id x136so18455672ybe.11
        for <devicetree@vger.kernel.org>; Thu, 10 Feb 2022 16:06:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=6V1dY7qH4XL0CAYuK2Vnpgq4jGgOMChN5apsqSbEVz4=;
        b=I4KkwcTzPrUS5XBCJI5mclWxp/zgGo5+AgOEvrnHlHoZoB9A1klt91o4yKWAgYkr92
         NScV0bFUW+pJxPlfWIgg+G6HQnWRbd1MMGot90IFSMfkJzq2qZZyJGk4Zl876Cu60n4F
         D/n/731FNUlaCnhgn6fjzIILLjhiyldwlz9Sl3/P9rcNYmABUjdR6mz2OIcoEryA4Hop
         3IxObDYSSEez3eHVT0QhkMY0vjTrGGPnlkoRIk/rJoQw7A8hkIr0oxoK5PmtkdgRZ+8S
         p/7ThnZyIEVN3rzhj6HoORXIWDc7k7Oc5RnCUHvqGrxujkXTP3leAkGk/GY+ABX4VFth
         OD1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6V1dY7qH4XL0CAYuK2Vnpgq4jGgOMChN5apsqSbEVz4=;
        b=Py8P1t+dvc4dK2yvkkAosQ4Z+XWXsCLHEao5I9z0vxLRqAFeuUYSOc9zV7VDw5N7Tw
         1odmBzBhGk5YwiQo3G5+hoMUbGhfHjY0xgx7E/wqdyPH8sFSSmvuBU4hAS1G2TpXabaH
         yGHYv4uc3RQvkm0OgA5To8lzuOi9SKJafoMxuEZUgmWdKFm5nYuxqWxuU/ppRyn48lzS
         XhAAn7zvgFiPdT2dl8c3IZelLWh8PJO1K+w30QGO2+FkMG39Sv0OWQqCxOvK9GIXizlr
         sb2NMU/bD8nF6pg2aasvIfdqgsB+eO37E/4dobDFietTbNsxu9YMwXkCQg5WgWnvg2hl
         xesQ==
X-Gm-Message-State: AOAM5323dqV0um6a/cK2R2Nt48DEY3bocZgiiukT6HmxXuJDs9Q+WTSM
        DSFpMsI/tArVlzAdeIgCPIBA9VjloB/1DjjFunU5eA==
X-Google-Smtp-Source: ABdhPJz+jjvVDAMnJAeqVCkF3QOXGnhLDGmaiuRR3lJzsVoxuZ87a7x5HWn4GRjaO1r1yECcDxpqMOwKzaMCxaaBxLU=
X-Received: by 2002:a0d:f903:: with SMTP id j3mr9686393ywf.118.1644537981686;
 Thu, 10 Feb 2022 16:06:21 -0800 (PST)
MIME-Version: 1.0
References: <20220112194118.178026-1-luca@z3ntu.xyz> <20220112194118.178026-9-luca@z3ntu.xyz>
In-Reply-To: <20220112194118.178026-9-luca@z3ntu.xyz>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 11 Feb 2022 01:06:10 +0100
Message-ID: <CACRpkdZCdEGdAPXfNsFxN+mH=J8-23Hdq+EXp=uuihwiqjbufw@mail.gmail.com>
Subject: Re: [PATCH 08/15] dt-bindings: pinctrl: qcom: msm8953: allow gpio-reserved-ranges
To:     Luca Weiss <luca@z3ntu.xyz>
Cc:     linux-arm-msm@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
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

On Wed, Jan 12, 2022 at 8:42 PM Luca Weiss <luca@z3ntu.xyz> wrote:

> Allow the gpio-reserved-ranges property to be used in dts.
>
> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
> Acked-by: Konrad Dybcio <konrad.dybcio@somainline.org>

This patch applied to the pinctrl tree.

Yours,
Linus Walleij
