Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BFAB1716017
	for <lists+devicetree@lfdr.de>; Tue, 30 May 2023 14:41:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231443AbjE3Mlc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 May 2023 08:41:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39232 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231658AbjE3Ml3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 May 2023 08:41:29 -0400
Received: from mail-yw1-x1134.google.com (mail-yw1-x1134.google.com [IPv6:2607:f8b0:4864:20::1134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E647E100
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 05:41:03 -0700 (PDT)
Received: by mail-yw1-x1134.google.com with SMTP id 00721157ae682-565d354b59fso40196137b3.0
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 05:41:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685450407; x=1688042407;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KOtUrb1jXt1YTc92Nx2K8yaF1tV0C2PLHIJDBXMJ1e8=;
        b=Xzaug7RhDfquxOwHHHTAUcmTCtkuzS5zRcWlYeEfobpHfoMjVlAS/CwdmhocJy+96e
         GWYVY+IToJWNf9RtM9CIM/4PkuKAlXjNuQvcsVuWPFSx3X7+/JzWNPUl91BQ2ra5ZCl9
         WONJg0uWUzsOzjrDyIK0shIC3ZgS5EfKxfg2hGcKlFIk5QoOXa0c6mbUMYZXh+tuhlZT
         /PitNi3wMZcN5EZ+MZKSUEOGbHJh1N3Gc9VcsdvFdffGhb2KSAG9ISFWbZVIgAazwWrD
         CTGPKjvp6w9IHZGE8jnBotfig/8ctvxCSmFJUU35tgunJYFbWHAKP83CjH6vJNj44Vm2
         b5MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685450407; x=1688042407;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KOtUrb1jXt1YTc92Nx2K8yaF1tV0C2PLHIJDBXMJ1e8=;
        b=Qtt7G59Yh4U9w2a/LjNQIgkKJHJDLFwmkeLakTUEbLrDLN8AKMupk/E4c4XZWdFPAb
         5aqrUauL8mfMnshx/25yjsn+dlthN9uUOpAPEJnv1K+8AobuYPYRDzd6lZj/WWETOkQy
         PkrMSrcx81kizO6WKl6IWeHzxmMhIZYVTjCxJfZ4pZ3i0PZxhegnVol1+nyHydJYpBg4
         zhWjg1RltjAFDpGWxZlWLc3C7NlUQlJMwquqx7PNqCm5aGfZelIcHrmEtvAMOT79pNX7
         NzHRLEM257WxYiltcfQgAbRuxoJ815z4CnCUpQt2WoV1riCy/oETIIPeH/ylpyaIoXPG
         jHvQ==
X-Gm-Message-State: AC+VfDxV47IiGn3yV8ppD9Z1sWZSr8/W+XEt0DM2yC1yG9j4Q7IISynE
        mMO5vZCYS0AihKCq5R7K/RTsJ7rGTUmnT85nMXeyhg==
X-Google-Smtp-Source: ACHHUZ5IRGVEGgUUERDvrDWcgtVuSj/SsOzSJ38VVusLz/5pCio/b35QywJsy1pwoBoZoBBFa8YeImTExOj4H4CgVzs=
X-Received: by 2002:a81:83d6:0:b0:566:a76a:fcc2 with SMTP id
 t205-20020a8183d6000000b00566a76afcc2mr2345411ywf.4.1685450407354; Tue, 30
 May 2023 05:40:07 -0700 (PDT)
MIME-Version: 1.0
References: <20230529162034.20481-1-alexandre.torgue@foss.st.com>
In-Reply-To: <20230529162034.20481-1-alexandre.torgue@foss.st.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 30 May 2023 14:39:56 +0200
Message-ID: <CACRpkdboHeg-=thHvZrQXcx_HnecwmuBJskJTPjxFOB9z9R0gw@mail.gmail.com>
Subject: Re: [PATCH 00/11] Add STM32MP25 support
To:     Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        Conor Dooley <conor+dt@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
        Olof Johansson <olof@lixom.net>, soc@kernel.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, May 29, 2023 at 6:20=E2=80=AFPM Alexandre Torgue
<alexandre.torgue@foss.st.com> wrote:

> Alexandre Torgue (10):
>   dt-bindings: pinctrl: stm32: support for stm32mp257 and additional
>     packages
>   pinctrl: stm32: add stm32mp257 pinctrl support

Can patch 1 & 2 be applied to the pinctrl tree separately?

Yours,
Linus Walleij
