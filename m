Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EA4D7661774
	for <lists+devicetree@lfdr.de>; Sun,  8 Jan 2023 18:32:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233274AbjAHRca (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 8 Jan 2023 12:32:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57188 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231134AbjAHRc3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 8 Jan 2023 12:32:29 -0500
Received: from mail-yw1-x1135.google.com (mail-yw1-x1135.google.com [IPv6:2607:f8b0:4864:20::1135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 62A6FD2DB
        for <devicetree@vger.kernel.org>; Sun,  8 Jan 2023 09:32:28 -0800 (PST)
Received: by mail-yw1-x1135.google.com with SMTP id 00721157ae682-4c24993965eso79541657b3.12
        for <devicetree@vger.kernel.org>; Sun, 08 Jan 2023 09:32:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=TvkKknClsarpzrsfEH80urfgT4kkN9N8ybMD6NkCtCc=;
        b=kxTzlg6Vo3FrM2pPq+SB5Udy4doR6X7fBxp83+Ui1CXqCYmoSp06jEQC8tl+BVLVTI
         4KIE4C/yXdtwYG/zw15HelLMsMEW1P3I45ZWgc5Ui+HFpptaLU4jWZ1yLzZFtiIbXVjt
         hBubMzDnR04aUTvTgrChqJyOmtAfEWuJHoSdlTpECsB1WOriTeW/lnAkSAOXqxcvMSZQ
         qkOZXI+rO8+M1Hr3yaIO+kVsDdy3BLtQIgpfeMArSU7z3HgcoRzZPw0ig5GGMRNkTpfL
         /KxU50WbVS5O8MRoxlAOE3/Wfy9NhwZe4KWZzjR3Ifh1meT8dk+HAnxHOnqZlnGJXNrH
         bqJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TvkKknClsarpzrsfEH80urfgT4kkN9N8ybMD6NkCtCc=;
        b=GLZV0JVUc6Lweep1qc/F31EI9GAWmCndkWnCx0Nye26hC+4gxZa9w2BTC8fCyuAPCj
         Q2fN3TYc8DJwm/eIch3f1QOTjr98SOv8bz+qU+5h/yhKT1BGVV7VnMzH6+9UvkHBB58M
         fIRaidIvuF/+nzyr37umezRGz6NTLWPRFUc68iuBMxrUF0u08PT++kI0Xzmy2xyaEPT2
         M0XGr6L81g6Z8IpKS7dilQYDp5MiwtbkqaK4prspFXBqY/V/zoLlty6UmmlEuuH6p2ne
         nRk3pdL4z7GLdhOZnyiU82nYWzKfFhEgjRGNcVVF5+qXgohE53w4g8DoyI6+3fFmbDma
         KRuQ==
X-Gm-Message-State: AFqh2kqo9j1nrxImx1hO3F7mqnrbgamrnYwh5ffKWvAQIR3WgnBWMLHC
        oSfXh7MGb4RVsp/xKmiyowv/jugWm3t5IfEMgGuSPw==
X-Google-Smtp-Source: AMrXdXsRG2S7gwyYvnW8SYhJ5xNwoNVTDuZ1v2EuPmPCFFhFO0/xL9Lx2lfiRL7XQbuUC75D/YeFd7p/Eji77DVqPd4=
X-Received: by 2002:a81:c56:0:b0:490:89c3:21b0 with SMTP id
 83-20020a810c56000000b0049089c321b0mr5145799ywm.132.1673199147627; Sun, 08
 Jan 2023 09:32:27 -0800 (PST)
MIME-Version: 1.0
References: <20230108130440.670181-1-robimarko@gmail.com> <20230108130440.670181-2-robimarko@gmail.com>
In-Reply-To: <20230108130440.670181-2-robimarko@gmail.com>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Sun, 8 Jan 2023 19:32:16 +0200
Message-ID: <CAA8EJprb1nC6LCbPQ18tU=apxY+8YfvL2uhrVzwgqJ+GXsjEvQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: qcom: ipq8074: correct USB3 QMP PHY-s
 clock output names
To:     Robert Marko <robimarko@gmail.com>
Cc:     agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        mturquette@baylibre.com, sboyd@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 8 Jan 2023 at 15:04, Robert Marko <robimarko@gmail.com> wrote:
>
> It seems that clock-output-names for the USB3 QMP PHY-s where set without
> actually checking what is the GCC clock driver expecting, so clock core
> could never actually find the parents for usb0_pipe_clk_src and
> usb1_pipe_clk_src clocks in the GCC driver.
>
> So, correct the names to be what the driver expects so that parenting
> works.
>
> Before:
> gcc_usb0_pipe_clk_src                0        0        0   125000000          0     0  50000         Y
> gcc_usb1_pipe_clk_src                0        0        0   125000000          0     0  50000         Y
>
> After:
>  usb3phy_0_cc_pipe_clk                1        1        0   125000000          0     0  50000         Y
>     usb0_pipe_clk_src                 1        1        0   125000000          0     0  50000         Y
>        gcc_usb0_pipe_clk              1        1        0   125000000          0     0  50000         Y
>  usb3phy_1_cc_pipe_clk                1        1        0   125000000          0     0  50000         Y
>     usb1_pipe_clk_src                 1        1        0   125000000          0     0  50000         Y
>        gcc_usb1_pipe_clk              1        1        0   125000000          0     0  50000         Y
>
> Fixes: 5e09bc51d07b ("arm64: dts: ipq8074: enable USB support")
> Signed-off-by: Robert Marko <robimarko@gmail.com>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Nevertheless, could you please add .fw_name to these entries in gcc
driver (as you did for other clocks in 35dc8e101a8e ("clk: qcom:
ipq8074: populate fw_name for all parents")) and add all pipe clocks
to the gcc node? This way you can drop clock-output-names from the PHY
nodes.

> ---
>  arch/arm64/boot/dts/qcom/ipq8074.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

[skipped]

-- 
With best wishes
Dmitry
