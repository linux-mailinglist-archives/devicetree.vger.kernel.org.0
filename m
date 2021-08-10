Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 770A93E83D3
	for <lists+devicetree@lfdr.de>; Tue, 10 Aug 2021 21:37:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231152AbhHJThr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Aug 2021 15:37:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51580 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230363AbhHJThr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Aug 2021 15:37:47 -0400
Received: from mail-oi1-x236.google.com (mail-oi1-x236.google.com [IPv6:2607:f8b0:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F330CC061798
        for <devicetree@vger.kernel.org>; Tue, 10 Aug 2021 12:37:24 -0700 (PDT)
Received: by mail-oi1-x236.google.com with SMTP id u10so735624oiw.4
        for <devicetree@vger.kernel.org>; Tue, 10 Aug 2021 12:37:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=9Fxu/Ysfn0gqVmhD1gd5P8cBO5tv38bfpeBMPA6T+64=;
        b=GCDls4YJQW1Lz3IMv4mdjtIDR4+DSbiXvOp2eVyyB2Na/tEGUPrG343jTR+dvrxax1
         mD7TMQGMbI7bx65Tkis5yPhJBr0clMpcsOGAuIfOuPaHgUAeW3IYs+3JUZnJum+vaOvU
         +pJD8t57bNeJidPHRJm/vyE5f5KRQ04xvuSng=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=9Fxu/Ysfn0gqVmhD1gd5P8cBO5tv38bfpeBMPA6T+64=;
        b=GNKPxwlchqLfeOsXcCTWepx8pImquWLrQbikiPxOL8KQpRaMhDyYnQhidrar/l1u1c
         sdl0PW3bxD8M3DqbTMjJKZvXn1O5igHso/JznzZnp2sFy/nFOPBLvsskVi47CTimHzXL
         N2B75PfXoqPMNhGyJHp4lezhoEUIPq277wX3ADAOts+4/QpZgCr4mbv13uuBCFNHXdHb
         USVl5qNjFJSxZE3XBSIrtzDCjPKM3OOybr1gQhg0b+Pf0C6/yT3ROqGO2indEThRN6d6
         JZxMGmv2sGvbknEJbbGPwfVud3Kfs2H6PaoxnUn68MVH7oAO8W3ScnDm1NUnL2lppDJm
         sAIA==
X-Gm-Message-State: AOAM530J/0FN2JGJx/IBkrY8pb7fZ8p1b1ToUZEmY0st4g2imG9NHNsz
        zUuLwPKenIl3GiDbM9PhZpcgg2R5/Msky1hBmZUSSw==
X-Google-Smtp-Source: ABdhPJxU0FT5mFZ1LfcK03VImsB6LDN/ygUzUlf0I6T/TxHXwb2bTppAzk8rLFzG/A7E13jLiMYR8RBrgzpG/w2wY6A=
X-Received: by 2002:a05:6808:984:: with SMTP id a4mr4982195oic.166.1628624244330;
 Tue, 10 Aug 2021 12:37:24 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 10 Aug 2021 12:37:23 -0700
MIME-Version: 1.0
In-Reply-To: <1628568516-24155-5-git-send-email-pmaliset@codeaurora.org>
References: <1628568516-24155-1-git-send-email-pmaliset@codeaurora.org> <1628568516-24155-5-git-send-email-pmaliset@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Tue, 10 Aug 2021 12:37:23 -0700
Message-ID: <CAE-0n50nYEAhpBADVWutm-SvUMpe+4Qte69iucJvXax=d_59=w@mail.gmail.com>
Subject: Re: [PATCH v5 4/4] PCI: qcom: Switch pcie_1_pipe_clk_src after PHY
 init in SC7280
To:     Prasad Malisetty <pmaliset@codeaurora.org>, agross@kernel.org,
        bhelgaas@google.com, bjorn.andersson@linaro.org,
        lorenzo.pieralisi@arm.com, robh+dt@kernel.org, svarbanov@mm-sol.com
Cc:     devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
        dianders@chromium.org, mka@chromium.org, vbadigan@codeaurora.org,
        sallenki@codeaurora.org, manivannan.sadhasivam@linaro.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Prasad Malisetty (2021-08-09 21:08:36)
> On the SC7280, By default the clock source for pcie_1_pipe is
> TCXO for gdsc enable. But after the PHY is initialized, the clock
> source must be switched to gcc_pcie_1_pipe_clk from TCXO.
>
> Signed-off-by: Prasad Malisetty <pmaliset@codeaurora.org>
> ---
>  drivers/pci/controller/dwc/pcie-qcom.c | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
>
> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
> index 8a7a300..39e3b21 100644
> --- a/drivers/pci/controller/dwc/pcie-qcom.c
> +++ b/drivers/pci/controller/dwc/pcie-qcom.c
> @@ -1167,6 +1169,16 @@ static int qcom_pcie_get_resources_2_7_0(struct qcom_pcie *pcie)
>         if (ret < 0)
>                 return ret;
>
> +       if (of_device_is_compatible(dev->of_node, "qcom,pcie-sc7280")) {
> +               res->gcc_pcie_1_pipe_clk_src = devm_clk_get(dev, "pipe_mux");
> +               if (IS_ERR(res->gcc_pcie_1_pipe_clk_src))
> +                       return PTR_ERR(res->gcc_pcie_1_pipe_clk_src);
> +
> +               res->phy_pipe_clk = devm_clk_get(dev, "phy_pipe");
> +               if (IS_ERR(res->phy_pipe_clk))
> +                       return PTR_ERR(res->phy_pipe_clk);
> +       }
> +
>         res->pipe_clk = devm_clk_get(dev, "pipe");
>         return PTR_ERR_OR_ZERO(res->pipe_clk);
>  }
> @@ -1255,6 +1267,12 @@ static void qcom_pcie_deinit_2_7_0(struct qcom_pcie *pcie)
>  static int qcom_pcie_post_init_2_7_0(struct qcom_pcie *pcie)
>  {
>         struct qcom_pcie_resources_2_7_0 *res = &pcie->res.v2_7_0;
> +       struct dw_pcie *pci = pcie->pci;
> +       struct device *dev = pci->dev;
> +       struct device_node *node = dev->of_node;
> +
> +       if (of_property_read_bool(node, "pipe-clk-source-switch"))

This can be straightline code. If gcc_pcie_1_pipe_clk_src is NULL,
calling clk_set_parent() on it is a nop, return 0, so drop the property
check and only assign the clk pointer if it needs to be done.

> +               clk_set_parent(res->gcc_pcie_1_pipe_clk_src, res->phy_pipe_clk);

Please check the return value and fail if it fails to set the parent.
I'd also prefer a comment indicating that we have to set the parent
because the GDSC must be enabled with the clk at XO speed. The DT should
probably also have an assigned clock parent of XO so when the driver
probes it is set to XO parent for gdsc enable and then this driver code
can change the parent to the phy pipe clk.

>
>         return clk_prepare_enable(res->pipe_clk);
>  }
