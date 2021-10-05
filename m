Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9B8EB421B7B
	for <lists+devicetree@lfdr.de>; Tue,  5 Oct 2021 03:11:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230299AbhJEBNj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Oct 2021 21:13:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58156 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229850AbhJEBNi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Oct 2021 21:13:38 -0400
Received: from mail-ot1-x332.google.com (mail-ot1-x332.google.com [IPv6:2607:f8b0:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 982E4C061755
        for <devicetree@vger.kernel.org>; Mon,  4 Oct 2021 18:11:48 -0700 (PDT)
Received: by mail-ot1-x332.google.com with SMTP id c26-20020a056830349a00b0054d96d25c1eso23897160otu.9
        for <devicetree@vger.kernel.org>; Mon, 04 Oct 2021 18:11:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=JF6vyOXESxtfPHWab3e07TTjv7Vg3ZVZyUb4GlwIoFs=;
        b=cXaB7P7U3MKxhY/Xzb3aCV3IQ1p/c/QFk7Fteow2gs0Zy+03BHtIgOGazJV5pmbDuL
         lDxZg/K+5T/PAT50O1qBp4EC4R46wrcpzlhiX6dC4siXKprLmNfWLB0uPBQyFd7Xv5/W
         Q/dD20j+haqagqa05pclC8RFHt7CeFFwwf5Ls=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=JF6vyOXESxtfPHWab3e07TTjv7Vg3ZVZyUb4GlwIoFs=;
        b=eyBWeWg1BMNzBw81pR+trQptIB3MXBkhyDPnMsyCVIQkSQ1bVdgdH7hLoB3tlEigXj
         baA/YhHNwNzxCihrPDf16WLeh/ss8yQJ1OzTJydjrBprsLMS0PUJKWrgOwQ2+n8yaHjH
         MalSjvV7TsG72u9HAbPefGW3eDnwRIRQNkVcviMAagbkLZpCskFvBCznN+tiwgDl5IZ2
         vuyBoMuCGo3J0llsy19WJg/fCjWB3roV4L0RAHRXlSvkXkzX9PMZE/wM0L6Y41Ju0Wi8
         7iPgm68LlSJITppnG0ezaFNVon54QH8I2CE1zmr/bXzx7fOMBrHb4mLUuMJxCBIMG7Fu
         Y+IA==
X-Gm-Message-State: AOAM5328yx+6a7xqhtISRahCdJg01tGtQc8T5NXE0nB2RQSN18UTaSSx
        hJncXqLWssnHZjbuZzN27+8X1zAi1CgxzhK/pSJlOQ==
X-Google-Smtp-Source: ABdhPJy6i+fPzH6N8khmOKxP7d2oPe0DSUpWQzfCTqacbniPOVIFqVrcjgwadOtNRRoIUW5BOUwS3sA0fBv8QXKRtQs=
X-Received: by 2002:a05:6830:358:: with SMTP id h24mr11416616ote.159.1633396308016;
 Mon, 04 Oct 2021 18:11:48 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 4 Oct 2021 21:11:47 -0400
MIME-Version: 1.0
In-Reply-To: <1633376488-545-3-git-send-email-pmaliset@codeaurora.org>
References: <1633376488-545-1-git-send-email-pmaliset@codeaurora.org> <1633376488-545-3-git-send-email-pmaliset@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Mon, 4 Oct 2021 21:11:47 -0400
Message-ID: <CAE-0n50CBhdq3fbtygfzb0m8+bz3244-mYwCtVPjs_CfNaK_NQ@mail.gmail.com>
Subject: Re: [PATCH v10 2/5] arm64: dts: qcom: sc7280: Add PCIe and PHY
 related nodes
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

Quoting Prasad Malisetty (2021-10-04 12:41:25)
> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> index 39635da..e4bbf48 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> @@ -2676,6 +2787,12 @@
>                         gpio-ranges = <&tlmm 0 0 175>;
>                         wakeup-parent = <&pdc>;
>
> +                       pcie1_default_state: pcie1-default-state {

Maybe call the node pcie1_clkreq_n: pcie1-clkreq-n as it's now only for
the clkreq function.

> +                               pins = "gpio79";
> +                               function = "pcie1_clkreqn";
> +                               bias-pull-up;
> +                       };
> +
