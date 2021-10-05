Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 25B13421B85
	for <lists+devicetree@lfdr.de>; Tue,  5 Oct 2021 03:13:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230156AbhJEBPS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Oct 2021 21:15:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58556 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229606AbhJEBPS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Oct 2021 21:15:18 -0400
Received: from mail-oo1-xc2f.google.com (mail-oo1-xc2f.google.com [IPv6:2607:f8b0:4864:20::c2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B83EFC06174E
        for <devicetree@vger.kernel.org>; Mon,  4 Oct 2021 18:13:28 -0700 (PDT)
Received: by mail-oo1-xc2f.google.com with SMTP id a17-20020a4a6851000000b002b59bfbf669so5938270oof.9
        for <devicetree@vger.kernel.org>; Mon, 04 Oct 2021 18:13:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=/QiyAF8stN6WXJkebMYhEKCk+J6tjZCzO5t5KsxkaW8=;
        b=Pwmy9PVWT3pIfz5Si5cRGpSEO6knwSKfjSbmckUtWqpjCvAj4Ewq+zy34wQipF5NOP
         BzEsmNRu/QOV7C0QgcTfv6H/wBxKyfTo/o3vhNXrXI6nZ777vdXbSqjwvkx0raD5xYVS
         ZbieAVrbTEAhJ40hDVqGATk6csUZ14pz0VIQI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=/QiyAF8stN6WXJkebMYhEKCk+J6tjZCzO5t5KsxkaW8=;
        b=uPSY0GPzVrHrmVk1PDataO66q8coDClXd8/tVMUCdl3B3lFff4X/Arc4E93oZlEd42
         IFd7WnjkW//W7pGIDVX+iK4K7nBnOrln3mi50vmt5anVOlX5tPzmQCZAxJE7amnOtSJ5
         iVfbElEJ8boQ8EAG7UCbeJy8hNMIUTN7pmeTP7BRbcbIPYVrUOzg78IQ5p5BCHrMYFXk
         1WtmCK8vGO8teuxRvWS14TRBD7/S65mERsi5++TXkYc25Y2bbqoR19cuP53sinGFYmq4
         iNIPIGByqVcwblEqMHfATlM3/mM1HDXD0doFS+m6X4FhVx6I9ZddAJKYhF2rD2V+aVL4
         Pkcg==
X-Gm-Message-State: AOAM532JFJIjwWTvEc2IM5nC1XHjapYkrcI62nVVk/YZxE3PdlrEXYJs
        ADdm0igEeR01XJRH0K/jOgGo5LqRMAIVk8aAZuL5iA==
X-Google-Smtp-Source: ABdhPJzGa90ACbuF6mgv6oFURLXi+3lJ8M+6w5Brhzs0n9UVBZGhvuUbVVBefiJt5y9Yi2qiXsK00OBN15wA9+TjFYc=
X-Received: by 2002:a4a:8508:: with SMTP id k8mr5453028ooh.25.1633396407883;
 Mon, 04 Oct 2021 18:13:27 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 4 Oct 2021 21:13:27 -0400
MIME-Version: 1.0
In-Reply-To: <1633376488-545-5-git-send-email-pmaliset@codeaurora.org>
References: <1633376488-545-1-git-send-email-pmaliset@codeaurora.org> <1633376488-545-5-git-send-email-pmaliset@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Mon, 4 Oct 2021 21:13:27 -0400
Message-ID: <CAE-0n51S8VV5b5SEuh041dUvgd2_nqQ3JTXAjMzJfcok0xhi8w@mail.gmail.com>
Subject: Re: [PATCH v10 4/5] PCI: qcom: Add a flag in match data along with ops
To:     Prasad Malisetty <pmaliset@codeaurora.org>, agross@kernel.org,
        bhelgaas@google.com, bjorn.andersson@linaro.org,
        lorenzo.pieralisi@arm.com, robh+dt@kernel.org, svarbanov@mm-sol.com
Cc:     devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
        dianders@chromium.org, mka@chromium.org, vbadigan@codeaurora.org,
        sallenki@codeaurora.org, manivannan.sadhasivam@linaro.org,
        linux-pci@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Prasad Malisetty (2021-10-04 12:41:27)
> @@ -1488,7 +1528,13 @@ static int qcom_pcie_probe(struct platform_device *pdev)
>
>         pcie->pci = pci;
>
> -       pcie->ops = of_device_get_match_data(dev);
> +       pcie_cfg = of_device_get_match_data(dev);
> +       pcie->ops = pcie_cfg->ops;
> +       if (!pcie->ops) {

Sorry I meant check for pcie_cfg being NULL too.
of_device_get_match_data() can return NULL if the match doesn't work for
some reason.

> +               dev_err(dev, "Invalid platform data\n");
> +               return -EINVAL;
> +       }
> +       pcie->pipe_clk_need_muxing = pcie_cfg->pipe_clk_need_muxing;
>
>         pcie->reset = devm_gpiod_get_optional(dev, "perst", GPIOD_OUT_HIGH);
>         if (IS_ERR(pcie->reset)) {
