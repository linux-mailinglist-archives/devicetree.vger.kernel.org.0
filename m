Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 51BA9638CDB
	for <lists+devicetree@lfdr.de>; Fri, 25 Nov 2022 16:01:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230195AbiKYPBe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Nov 2022 10:01:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55994 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230152AbiKYPB1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Nov 2022 10:01:27 -0500
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com [IPv6:2607:f8b0:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 16C1E40908
        for <devicetree@vger.kernel.org>; Fri, 25 Nov 2022 07:01:27 -0800 (PST)
Received: by mail-pl1-x62b.google.com with SMTP id w23so4196169ply.12
        for <devicetree@vger.kernel.org>; Fri, 25 Nov 2022 07:01:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=YzoqxWzLbAC5xaHv8eIezGdeIdLYxY/4HqUGgZdz7Wg=;
        b=kH2Y3AbvfupiLGAvBUpirk8wOJGQvhlGXVI+TfDSUxOl8Je0lhyt7M93SsymrAoud9
         h8cFSWSTqxMUROM0H3V7xWIODzPRwg3ELTUP0F6XECXzf3DjNWcw6Ik9v8+GOrtNX5Cm
         ZSNYkpgs/h1h2rp9L87+Go1SFzDiP+9pTOu8TZ8npftunTgpx/0V8nSomCBgHla4VIHn
         Dy5CxI2d+NG5mQ/Icl4P0XRXXKoZz+cjjM1XIrET1kQQJ6xd9Kex9LMBpTuNj65gHk1i
         RLcevdCo7p/+djBxzaGpSDD92VetqSy81l6taHZeLlS3RFsM2yp/XWCsmeT4IVEMsDIM
         Cl8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YzoqxWzLbAC5xaHv8eIezGdeIdLYxY/4HqUGgZdz7Wg=;
        b=N+ZDC9/fmijyUI/hpnzxL/BceBlSH+UQSqOI+h0wfl82aCdCUnzyuT9N1RKfHmzgEL
         bvicM1e3PXgi+UMtOMgE0UrPhnQm3wgyWQKKycWv3lt/GSyv26HA094Q1YRj2O73Gskr
         eL+0TYf8Qnf+gzDkIKmBQE5b1n96n8gIW/CB0lRqTGwvb3KVJQXTpnrRHt5zFWk00oVh
         I8XuHb6Wet5tmQQBoajG8cBo6ZwnYjrkHqBJOCNM8LvCfqmq5kvukV+OMc1LP6afifIM
         9kUBgueMXH6GYsIaJHa2Aeq0mvJPWPJL/U8vuGreOEVgkJz4E2rNgGxtf7/WejXvr6g8
         Rlkg==
X-Gm-Message-State: ANoB5pnsAqmcRX2SijRfBWE25MRLqu8nEqRM2dfUbYMpbLq8it6ldA+T
        oTxyuH+3oaMwgrUiFojWXkHD+vi44E2TTZ96CGpeaA==
X-Google-Smtp-Source: AA0mqf6shePmYKZfIf2OuYXE1zqCj37yUbefhBb4iV1YXC+qj6V5THYvuSCQVCkOaevgbGxM+Iz85hWJZHl4Ut5UbPc=
X-Received: by 2002:a17:903:258b:b0:189:1b50:f9e with SMTP id
 jb11-20020a170903258b00b001891b500f9emr19878838plb.74.1669388486600; Fri, 25
 Nov 2022 07:01:26 -0800 (PST)
MIME-Version: 1.0
References: <20221125112201.240178-1-krzysztof.kozlowski@linaro.org>
 <20221125112201.240178-4-krzysztof.kozlowski@linaro.org> <CAPLW+4nSLP4ZpnzYrOfMu0uOQ0OYnWsnZ=sUppxts6O_3-yYZg@mail.gmail.com>
 <ff33d45c-f4ad-49f3-24b6-b15b4af5aa83@linaro.org>
In-Reply-To: <ff33d45c-f4ad-49f3-24b6-b15b4af5aa83@linaro.org>
From:   Sam Protsenko <semen.protsenko@linaro.org>
Date:   Fri, 25 Nov 2022 09:01:15 -0600
Message-ID: <CAPLW+4kHef4pMNMbc8kvKzM0v0qBMoX6zwH1QCQKcLLubfcWXg@mail.gmail.com>
Subject: Re: [PATCH 4/4] dt-bindings: soc: samsung: exynos-sysreg: add clocks
 for Exynos850
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org,
        Sriranjani P <sriranjani.p@samsung.com>,
        Chanho Park <chanho61.park@samsung.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 25 Nov 2022 at 08:49, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 25/11/2022 15:38, Sam Protsenko wrote:
> > On Fri, 25 Nov 2022 at 05:22, Krzysztof Kozlowski
> > <krzysztof.kozlowski@linaro.org> wrote:
> >>
> >> Exynos850 has dedicated clock for accessing SYSREGs.  Allow it, even
> >> though Linux currently does not enable them and relies on bootloader.
> >>
> >
> > Not sure if this description is correct. Of course, there is no driver
> > for "samsung,exynos850-sysreg" compatible at the moment, so the next
> > compatible from the list ("syscon") is used for Exynos850. And
> > "syscon" driver (drivers/mfd/syscon.c) actually does control the
> > clocks. I remember adding "clocks" property to Exynos850 dts to fix
> > actual problem. Also, the "clocks" property is not described in
> > Documentation/devicetree/bindings/mfd/syscon.yaml, didn't really check
> > if it's ok or it's just missing.
> >
> > Other than that comment:
> >
> > Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>
> >
> >> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>
> Ah, then commit msg is not good. I'll update it and maybe the clocks
> should be required for Exynos850?
>

Yeah, looks like all Exynos850 sysreg blocks have dedicated clock.
Please make it required. And thanks for working on that! :)

> Best regards,
> Krzysztof
>
