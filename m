Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 00BBF78D9DF
	for <lists+devicetree@lfdr.de>; Wed, 30 Aug 2023 20:35:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230134AbjH3SeX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Aug 2023 14:34:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39094 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245107AbjH3Oa2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Aug 2023 10:30:28 -0400
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com [IPv6:2607:f8b0:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6CF79193
        for <devicetree@vger.kernel.org>; Wed, 30 Aug 2023 07:30:25 -0700 (PDT)
Received: by mail-pg1-x52e.google.com with SMTP id 41be03b00d2f7-563f8e8a53dso2892029a12.3
        for <devicetree@vger.kernel.org>; Wed, 30 Aug 2023 07:30:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693405825; x=1694010625; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=LTBF5RZjge1RM0OTnXY7rRonWIcAk181t3jjXQW2nOI=;
        b=PMTbwLrVCbjhHVQAjyHW0N7G4PLvRA5jQ5dqY1OOd00CcjhicM9ZkGDlM8kJ/s+RLH
         541xb8Dq9uIBPGmlMnYiEevR26t/arGpjizSZNlfdItzBtT53YiOzdPUNGLi5PaiCuDt
         AgK8xhwKy1ww5GSVLZqRK8tpliif9yjrr6e6ruhvC0aERadEBALKOrOS2svE8UEeEnzF
         yRv7KmaDRUljwlChFnJGmiHDhsTejRMG8Ul6gTb4TICZgzYzPuo2ybPmjOStqXlUoN5a
         NndqiGRu+cZpJtxDFGq9gZQrgeYPGnEObZScmthaqPGfO/bWfu7svhYncnI7jx7pV4eE
         i9sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693405825; x=1694010625;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LTBF5RZjge1RM0OTnXY7rRonWIcAk181t3jjXQW2nOI=;
        b=D5hzOQ1+XtX9mIDOIskipqeEsvek+ACANgvR+J12H+j6HvlzHhOgiZuQT779N6LDf0
         mca6U1Q1QMGFl4KtpAe+hkJarteIAYvbHSh+nQlA1Ar6g/yf78Ikj1gGfNqxcPoSUvjj
         0dWqfmhDF9eEajxahDGqZ3EWKhxjU6Vo18oKk6NepUFjgitEXDrqIRoyQfs/6tcLnqNG
         mEo53oWZZYolZWd5BK3o9xH+PgzxAvq6XCrkVdahUtVzL/ctReKvlt4+6Ggr1BWkgFLO
         6EVfHSzRciZZzJ0srAsbbf4ZUDmN0TV2kbKnW+BpwC85AFQiqGigzABbR5I6M9vuzeqW
         jwcg==
X-Gm-Message-State: AOJu0Yzlql7v1XcCD2dFR3ul2T9rhnJTBqbtHjQS6iELKZj+XUjQd7BK
        /PGw7Zr48TQ57CAUTAIbD9wF2UoCHWp9j+su7s0=
X-Google-Smtp-Source: AGHT+IFwl4tlt03Cw/dP5WiUwCM0dpOdbmqnWRTX3UBBvi7P78wJTiQTlZj48ujsq28DHFgGL3hbwkWbbUCOVCMuPjc=
X-Received: by 2002:a17:90a:5216:b0:268:5558:de4c with SMTP id
 v22-20020a17090a521600b002685558de4cmr2256076pjh.38.1693405824745; Wed, 30
 Aug 2023 07:30:24 -0700 (PDT)
MIME-Version: 1.0
References: <20230830114335.106344-1-eagle.alexander923@gmail.com>
 <e2dc91a9-d027-dc69-14bf-3a1184045254@linaro.org> <f40497d1-3547-9434-459f-050f592937ca@linaro.org>
 <CAP1tNvTvd5mZ1eWiMeck14b5KGyyXBNrEE=of0OKesbNKE_jqQ@mail.gmail.com> <38cd46c1-d0e2-e27d-f872-87bfee9058bb@linaro.org>
In-Reply-To: <38cd46c1-d0e2-e27d-f872-87bfee9058bb@linaro.org>
From:   Alexander Shiyan <eagle.alexander923@gmail.com>
Date:   Wed, 30 Aug 2023 17:30:13 +0300
Message-ID: <CAP1tNvT5_iZdxHiqxdnyBFoCp3jQTMoJk+iUF9D2JJk54CNPLQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: stm32: Add MyirTech MYD-YA15XC-T development
 board support
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

As far as I understand, the CPU type is an option when ordering.
Here's what it says on the manufacturer's website:
CPU: STMicroelectronics STM32MP151AAC3 microprocessor
(STM32MP153AAC3 and STM32MP157AAC3 are compatible and can be customized).
It's not a problem for me to make one type of CPU in the bindings,
I just wanted the bindings file to be more flexible.
#include "stm32mp151.dtsi" in this case we can transfer to MYD,
as we don't really need MYC to be compiled separately.

> On 30/08/2023 15:42, Alexander Shiyan wrote:
> > The initial thought in the file name was that the modules could be
> > equipped with a CPU
> > other than STM32MP151, i.e. 153 or 157. The development board, as far
> > i understand,
> > equipped with a STM32MP151 only, so can we leave the current name for
> > the module (15x)
> > as is and change it only in the file name (and in compatible property)
> > for the development
> > board only?
>
> Depends. I do not see SoM here. You called it "MYIR MYC-YA15XC-T", so it
> looks like end product for me. Can the same product have different SoC
> module? How would your DTSI look like? You include there 151.dtsi, so it
> could not have...
>
> Yes, you also need to adjust compatibles to reflect real names, not
> wildcards.
