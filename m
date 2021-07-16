Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 689333CBC9C
	for <lists+devicetree@lfdr.de>; Fri, 16 Jul 2021 21:31:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232949AbhGPTei (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Jul 2021 15:34:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54664 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232896AbhGPTei (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Jul 2021 15:34:38 -0400
Received: from mail-ot1-x32e.google.com (mail-ot1-x32e.google.com [IPv6:2607:f8b0:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EAAB7C06175F
        for <devicetree@vger.kernel.org>; Fri, 16 Jul 2021 12:31:42 -0700 (PDT)
Received: by mail-ot1-x32e.google.com with SMTP id 59-20020a9d0ac10000b0290462f0ab0800so10978391otq.11
        for <devicetree@vger.kernel.org>; Fri, 16 Jul 2021 12:31:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=/XzjQ3hrT1h6mwJfiVdsgdMHQh30ZOTfHqhe4pDPAFc=;
        b=Z6K1RaVI1ceFMzC3AvNoZAO+R2p/p6Ol+5P6/qyYUGWKuVBe20+XeDO5Qnhae3Ll3E
         jvep7E0deaHxTY37gGGEPNQTZwlJBY3AL3rzot/zzhpGXe90sOKfybg4z34EO8fTzxKx
         2GPnei4KDxACl8dt1yCV8ev2UNDGvZ2pZ73Fg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=/XzjQ3hrT1h6mwJfiVdsgdMHQh30ZOTfHqhe4pDPAFc=;
        b=KZc1MlRDko6L7tC3vKtTVEy7c2MyrhV7z+0K+yse6kTYEIqD/WdTyxyEdMd5rwSn5j
         ENob51k8M+TMJzDwTfrqmYDjU+sVgrGYBYo9TpGClww0I3xQXjEWe8CyXdKFX5jR/DUL
         /XSw7ePyEbj4jNu6KhU1bi6HdsiguwJIqz8S2J005ahGPxxaJ4TqlxxlZqTIxoSahqAt
         0rz3642fXFZjZN943hK8aBsc10AzQt3y4RRCk6gdiqPrtavNDxCkNv1g9++LC/KDOm3m
         Y5HAcIQRMoOOyL2lxLupBK6UZjjESAAU/5p1S2ojsyL4Bff7WQxyy4M+n1PYkVDu0Pt/
         M0Rw==
X-Gm-Message-State: AOAM533cJysx4bgJYmDlHb10T0tfmL0oeck1B8CuEMJ0lf2STnwfIBXe
        KGDnv7PpoWvdyt8nZDKiMmw3Fm5UU9n+gySnK+WCXg==
X-Google-Smtp-Source: ABdhPJzQwM5RPFiII+LtE0CwZjRVpF8zxHa5i+kGr1DzmTt77SNBsgiIRAwe0LeNJBUpuSEMP64BgD4Ps/ZjjhoJ2M0=
X-Received: by 2002:a9d:650e:: with SMTP id i14mr9386454otl.233.1626463902381;
 Fri, 16 Jul 2021 12:31:42 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 16 Jul 2021 21:31:42 +0200
MIME-Version: 1.0
In-Reply-To: <1626443927-32028-3-git-send-email-pmaliset@codeaurora.org>
References: <1626443927-32028-1-git-send-email-pmaliset@codeaurora.org> <1626443927-32028-3-git-send-email-pmaliset@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Fri, 16 Jul 2021 21:31:41 +0200
Message-ID: <CAE-0n506Phfr=HBYgg+KDHaDAN7+GqmJSeviv7mpY=x973yd5A@mail.gmail.com>
Subject: Re: [PATCH v4 2/4] arm64: dts: qcom: sc7280: Add PCIe and PHY related nodes
To:     Prasad Malisetty <pmaliset@codeaurora.org>, agross@kernel.org,
        bhelgaas@google.com, bjorn.andersson@linaro.org,
        lorenzo.pieralisi@arm.com, robh+dt@kernel.org, svarbanov@mm-sol.com
Cc:     devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
        dianders@chromium.org, mka@chromium.org, vbadigan@codeaurora.org,
        sallenki@codeaurora.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Prasad Malisetty (2021-07-16 06:58:45)
> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> index a8c274a..06baf88 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> @@ -15,6 +15,7 @@
>  #include <dt-bindings/reset/qcom,sdm845-pdc.h>
>  #include <dt-bindings/soc/qcom,rpmh-rsc.h>
>  #include <dt-bindings/thermal/thermal.h>
> +#include <dt-bindings/gpio/gpio.h>
>
>  / {
>         interrupt-parent = <&intc>;
> @@ -546,6 +547,118 @@
>                         #power-domain-cells = <1>;

Is this the gpucc node? At address 3d90000? Please sort the nodes based
on their address, so this would be 1c08000 which comes before gpucc and
some others in this file.

>                 };
>
> +               pcie1: pci@1c08000 {
> +                       compatible = "qcom,pcie-sc7280", "qcom,pcie-sm8250", "snps,dw-pcie";
> +                       reg = <0 0x01c08000 0 0x3000>,
> +                             <0 0x40000000 0 0xf1d>,
> +                             <0 0x40000f20 0 0xa8>,
> +                             <0 0x40001000 0 0x1000>,
> +                             <0 0x40100000 0 0x100000>;
> +
