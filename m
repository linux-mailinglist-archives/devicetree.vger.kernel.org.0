Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2E2784D91FB
	for <lists+devicetree@lfdr.de>; Tue, 15 Mar 2022 02:05:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344171AbiCOBGG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Mar 2022 21:06:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46394 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344151AbiCOBGG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Mar 2022 21:06:06 -0400
Received: from mail-yb1-xb2e.google.com (mail-yb1-xb2e.google.com [IPv6:2607:f8b0:4864:20::b2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1D2838796
        for <devicetree@vger.kernel.org>; Mon, 14 Mar 2022 18:04:54 -0700 (PDT)
Received: by mail-yb1-xb2e.google.com with SMTP id y142so47103ybe.11
        for <devicetree@vger.kernel.org>; Mon, 14 Mar 2022 18:04:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=yAm5OvhWANM70n2iXAUODUmXPNizY/Wk3oobwqvI5vY=;
        b=XvgktuOwcdRbBdtoKoel2yPRVXVFwM+IWd2UW9qUYwDjWfzWWN9R8DmmJC1KiUj+gE
         bjAHWY0QxnGZv2MK54CisIBwTlUqNZnZ0p0QeZfJOCDulcicLR2Wfo5H+XmoS0uappZN
         YKR1N61LTv4GblaJTPOe2mZLMi6jcVgSbMYtTvJPD92xhsHsg905kUInBP+vjFjot9BR
         6NuZGmWYCww0juYpEGJFx+W+vixcbOtqCt6jPVc/CMB5yIxVEDbMk6kSJo453fKGYlva
         7NJTs2J8o0BIB4rZBb+4VkLXi16fNORKOhDGK2HtwPHJFyDI3dI0FXxfFug7o01j2WcB
         THqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=yAm5OvhWANM70n2iXAUODUmXPNizY/Wk3oobwqvI5vY=;
        b=xeRAEOlvCTYVrQ5CoI6hNqgGPksTGJdv2vZfS7mKaymkApxFxDMDP3F8eV7dbPIUQx
         cB8YyPLRWL8Qkvk9urO/g7gwACc8ut5Gi0RsmMQeNMtLJyAkd1ITJCMRe67f40BzzJTi
         iiMCIbu8r8Te/fy1I44peOO9BfKGEIcUmRZYT4H2PHrKbAcafND9yPjtv1ZrKvol3Nhm
         pEEO0iuIKRKLZ3/Bu0D2LLIl3lXVEMvbYpdgWOHF2tKRDz/wjOIEnSBfc1OHx+OW2Dbe
         IJIivrCm1DcywTBK6A7/g4PANAq8xjSYtyHmw3q/oQ89B27vxTNmcd8wAx3pRHkKf120
         I7Ow==
X-Gm-Message-State: AOAM530G/LKjPRl3m13+ybnIzUp9PdMYqde+TL/ZNAYtuGtGN9DG36ci
        FQM1G05DS1sgD3mdRsNpuPPEETCNM33o+dEfriBcJQ==
X-Google-Smtp-Source: ABdhPJwCTLgZvR10g8cOkgwnXUV0ru758i4gMC9avP243uwHJ9kOV3Y2hDoDgVxvAL3bYPi/kFB2JF8ViT9JoQcu10A=
X-Received: by 2002:a5b:dc5:0:b0:624:f16d:7069 with SMTP id
 t5-20020a5b0dc5000000b00624f16d7069mr19980767ybr.295.1647306294150; Mon, 14
 Mar 2022 18:04:54 -0700 (PDT)
MIME-Version: 1.0
References: <20220308221132.1423218-1-bjorn.andersson@linaro.org> <20220308221132.1423218-2-bjorn.andersson@linaro.org>
In-Reply-To: <20220308221132.1423218-2-bjorn.andersson@linaro.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 15 Mar 2022 02:04:43 +0100
Message-ID: <CACRpkdbvW0MVdhgFiVCcz+NDJu+mJc=4AgHC3AYnjZy+OOm2qA@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] pinctrl: qcom: Introduce sc8280xp TLMM driver
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
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

On Tue, Mar 8, 2022 at 11:09 PM Bjorn Andersson
<bjorn.andersson@linaro.org> wrote:

> The SC8280XP comes, like all other Qualcomm platforms, with a TLMM
> block, so add a driver for it.
>
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Patch applied!

Yours,
Linus Walleij
