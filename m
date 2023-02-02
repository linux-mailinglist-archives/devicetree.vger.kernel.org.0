Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 02575687DE1
	for <lists+devicetree@lfdr.de>; Thu,  2 Feb 2023 13:52:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232000AbjBBMwE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Feb 2023 07:52:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51946 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229690AbjBBMwE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Feb 2023 07:52:04 -0500
Received: from mail-yb1-xb29.google.com (mail-yb1-xb29.google.com [IPv6:2607:f8b0:4864:20::b29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7386EA7
        for <devicetree@vger.kernel.org>; Thu,  2 Feb 2023 04:52:03 -0800 (PST)
Received: by mail-yb1-xb29.google.com with SMTP id x139so1973540ybe.13
        for <devicetree@vger.kernel.org>; Thu, 02 Feb 2023 04:52:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=iTEsYvNbhZUvr3t5FDyaBPDIayK5soN0V1YA6KoE95Q=;
        b=PPfSS12X5711vg3bhuNrJmUVkzvhGet/0lNfQTXDPw/wtNntkEWqMG9cO2+AQaapQi
         MZJcaRC71fY2ZMHLvVtk19QBWC1mCJPijp0uWxSPYRqKKnRf1wK8sVEE8LuBsjsuG+5t
         x1Qfdfr93US48KlEdOPNzlN6NNSHJoWxD+ccOAxBTB+PoK6YHr6Fn8j8ialUwaevYP2c
         aixY6bNdQwbQ+vFjTT8ZPOtdFdyJvVNLLrIZFSz/pqtkbGzYjg1HuIz6De2bTmz4GpwA
         Qam0sl8kV1yAtcdu12tzoopbHGDis2sPmqKBDume7Nod8LxoXbavP03tvajPG2IFZ/lT
         sPbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iTEsYvNbhZUvr3t5FDyaBPDIayK5soN0V1YA6KoE95Q=;
        b=MENKdVxAxSnnpehq8ZR6ipaos8+uU7qYqiePPTvO91v4b/J0OmHUl7bg9cdowaLxzB
         Qk7Cr/YZt7bU96cblI03BNxMme5HZzQDO4v0sAWcUDze/uCC6R7gNx35/Fvv1F7YDmNF
         ifsoPC5B0GHVghV85uox7Kb8FXef3womNH2hL4aGHO5l0RLjKYzKoDlARIpEQSxJBcRY
         9y1w7ucoK/3xz+ZA/YrAwIZ6kyfhmqFfSWGt3sz0FCgW1yLNLBlgUcVCT+GuPVO/pIGf
         2bBOcbo+LEJyul8dCr0vOvlS+EoEsHnebpl0OvXcEQQ4HwLP8qryXtpySBVGaWH0hkvl
         1Wfg==
X-Gm-Message-State: AO0yUKWsNmc54e/6Vl49qNJNxMpJPJwLPp6aZGJBkJbDBYJNmAG4KisW
        blugnrfPZ4ApUyA3LG2Pe0onZ6syarbUDVWkraL+YQ==
X-Google-Smtp-Source: AK7set/IzybDVeByN7olzBbtRq2zPCd8ReB2ZColcl64XBQe7/HYO17UuFBtuhM1xYbR1EXmfXF7asG9PYGE8qn+MFw=
X-Received: by 2002:a25:fe0a:0:b0:7ca:9b40:72a7 with SMTP id
 k10-20020a25fe0a000000b007ca9b4072a7mr435003ybe.130.1675342322566; Thu, 02
 Feb 2023 04:52:02 -0800 (PST)
MIME-Version: 1.0
References: <20221207131731.1291517-1-william.qiu@starfivetech.com>
 <20221207131731.1291517-3-william.qiu@starfivetech.com> <CACRpkdYP7MokLdRtxX9w7p80c=wHDHsoTYWrU53CnpsZ7o6aGg@mail.gmail.com>
 <4529a646-1faf-c858-cfbe-1560ebeb1fba@starfivetech.com>
In-Reply-To: <4529a646-1faf-c858-cfbe-1560ebeb1fba@starfivetech.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 2 Feb 2023 13:51:51 +0100
Message-ID: <CACRpkdYAP_WYwfiFxXybqqa8OJw98cxUwJgW0RUCgLLGaV+LJQ@mail.gmail.com>
Subject: Re: [PATCH v1 2/3] mmc: starfive: Add sdio/emmc driver support
To:     William Qiu <william.qiu@starfivetech.com>
Cc:     linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        linux-mmc@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jaehoon Chung <jh80.chung@samsung.com>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Feb 2, 2023 at 12:10 PM William Qiu
<william.qiu@starfivetech.com> wrote:
> On 2022/12/9 5:09, Linus Walleij wrote:

> >> +       priv->syscon_offset = args.args[0];
> >> +       priv->syscon_shift  = args.args[1];
> >> +       priv->syscon_mask   = args.args[2];
> >
> > Why should these three things be in the device tree instead of being derived
> > from the compatible-string or just plain hard-coded as #defines?
> > I don't get it.
> >
> Hi Linus,
>
> I'm sorry to bother you, but as for the definition of syscon, after discussing with
> my colleagues, we think it is easier to distinguish SDIO0 and SDIO1 by defining it in
> the device tree, and the code compatibility is better.

OK sounds good looking forward to seeing the result :)

Yours,
Linus Walleij
