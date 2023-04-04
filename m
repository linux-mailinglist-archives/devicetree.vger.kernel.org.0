Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BDACA6D6E0E
	for <lists+devicetree@lfdr.de>; Tue,  4 Apr 2023 22:30:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236023AbjDDUag (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Apr 2023 16:30:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43302 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235605AbjDDUaf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Apr 2023 16:30:35 -0400
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C97F4496
        for <devicetree@vger.kernel.org>; Tue,  4 Apr 2023 13:30:30 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id by14so16050202ljb.12
        for <devicetree@vger.kernel.org>; Tue, 04 Apr 2023 13:30:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1680640228;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wVfh9bVs718xmqYWbLxq84sLtCYl5S5iKglZAo0/Wr0=;
        b=fZiTOHXBjMLThtw06HI6lA/s5hvgSLgfQ2dpfs6bH/PDs/5DuV7PkB5C6XGYtaQPpP
         F8cvxD9MbrewE+Ck/chHNZVXIOf/q5XfY4E+qXj2yB73fTabts/2kaWg1DM4mTceJ912
         lsHOWbfbvISfNpCMcPs47hnV15yHUx17dGdhQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680640229;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wVfh9bVs718xmqYWbLxq84sLtCYl5S5iKglZAo0/Wr0=;
        b=wRdXIfcPwLv07rpGnMfzoZtBHt894AbIIuLBpBc/7rxOnAjD2FGkqmUOlWCnvuqi80
         tZMwXDq1mQ/hNuRs3ndL9GZjHinU+pDOnblGitZ9TsXRHLgLdCNFCYezFxDrDAQ+tSNE
         v2b423mU3CuJHX7grwT7wOMplxgoJrm32ycfCyfNKtJemtVkhub8sfN3AQaauJ1JpkeE
         2IExlrxKFAZfrADVcrVfUHUcRLwXPZEXDydSaCX/O3eT1XjTf3Q8dPf1baTpUCwu9iQX
         rQvydtJUvOjVZrtPLor7Q4SdJnzx29sepzWL9lanPm/2TCmIyueACT9/R+HNUBtMfUNN
         XNTQ==
X-Gm-Message-State: AAQBX9fr1MpdMpqhmBiaUxv2bM41+0n2H7EmAvxnm8WwiqtRkJIaGnCW
        zbkrcHtiJLZdH8WB666gpIMVd5z4anV3Gho5skVmMQ==
X-Google-Smtp-Source: AKy350Z0w/yxRxDQgZ1PmCKCBQivotWHrI7VNWOh+GWyofFlc0djhC1XzDmQJWbDPpZ6NNZhR3xSzvnnMqjY7j1QEcI=
X-Received: by 2002:a2e:8ec9:0:b0:2a3:fc8:711b with SMTP id
 e9-20020a2e8ec9000000b002a30fc8711bmr1481105ljl.10.1680640228682; Tue, 04 Apr
 2023 13:30:28 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 4 Apr 2023 13:30:28 -0700
MIME-Version: 1.0
In-Reply-To: <1680631400-28865-1-git-send-email-quic_vnivarth@quicinc.com>
References: <1680631400-28865-1-git-send-email-quic_vnivarth@quicinc.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Tue, 4 Apr 2023 13:30:28 -0700
Message-ID: <CAE-0n52U7yG=5DzYiHCH=JR4LvdczvhpuaU3RXqX6K9VwfvEgw@mail.gmail.com>
Subject: Re: [PATCH 0/2] spi: Add DMA mode support to spi-qcom-qspi
To:     Vijaya Krishna Nivarthi <quic_vnivarth@quicinc.com>,
        agross@kernel.org, andersson@kernel.org, broonie@kernel.org,
        devicetree@vger.kernel.org, konrad.dybcio@linaro.org,
        krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
        robh+dt@kernel.org, vkoul@kernel.org
Cc:     quic_msavaliy@quicinc.com, dianders@chromium.org, mka@chromium.org,
        quic_vtanuku@quicinc.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIMWL_WL_HIGH,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Vijaya Krishna Nivarthi (2023-04-04 11:03:18)
> There are large number of QSPI irqs that fire during boot/init and later
> on every suspend/resume.
> This could be made faster by doing DMA instead of PIO.
> Below is comparison for number of interrupts raised in 2 acenarios...
> Boot up and stabilise
> Suspend/Resume
>
> Sequence   PIO    DMA
> =======================
> Boot-up    69088  19284
> S/R        5066   3430
>

The interrupts are less, yes, but does it save time or power?
