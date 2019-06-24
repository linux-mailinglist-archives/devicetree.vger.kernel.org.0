Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 53CB250957
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2019 12:59:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728986AbfFXK7b (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Jun 2019 06:59:31 -0400
Received: from mail-vk1-f194.google.com ([209.85.221.194]:36002 "EHLO
        mail-vk1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726788AbfFXK7b (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Jun 2019 06:59:31 -0400
Received: by mail-vk1-f194.google.com with SMTP id b69so2653071vkb.3
        for <devicetree@vger.kernel.org>; Mon, 24 Jun 2019 03:59:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=XCwcD7XLjs4QJVO2Vvl3xOs3JgJGbqS6a9JuvllBGjA=;
        b=M+sAyGUAO1nbrpYJFpcoZGhnbDisLD0MRfM5qeuHHFfWR8pcGyndCJ/+yVidJwJEQo
         /Lkvcu7v60ZLUEFSOd1nQWoO2P+g4UIad+iPZyj/oVKnTC9WVKOhrXagW9DK4CHnQV2C
         d4z9VBN2JAH5krvx7ll64enj3Rk5ntTbhj3F5ag5T8xu5Tpc2PiFEKeyvtk+YVyf+yUY
         ZEQ70u3l/bndP7JXf7w1LrdtNiVaI1K2AwH5sfXj4Qxu+rhG+51ycS+5T8RHLs3z6yXG
         5ZoWNZ4xuyZOOT6EewHuuYgaE3MZ/Kd6aAajr2wSpNuDCmG7FXuWPBBc3HwY0qybHkPz
         IqhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=XCwcD7XLjs4QJVO2Vvl3xOs3JgJGbqS6a9JuvllBGjA=;
        b=PggNwUH5x6GzpV5oIC2R7bMgdvw5lcHqW5pLTU7T4iavjjaB+AnLKvyt45BR5/up8E
         n/PEin81NBjs7XGO+rKIXR/+RyRQ0n+x7LxNNMREG4gYz/Odep+EhGn5AAqK3AIZJjJ0
         mL6mBCU/yfrSFg1S0yVet034nmr4pHojyiqMxp+H1/UODVYO/uqLNXUsk6FdGn+HTCTh
         qFVz5Uga9AkX5tlMSW/5LczYeTgCPLj+D+sehRLKKnJ0pgRnnw48EiLRs6fP+4MFM9N/
         E+1FAl3sHvNYCZyvUF+gT4l8OJyGEUPFEVSO4I/qhu2ipF844eJZfFFbrIl8d7qN9IiI
         GNHg==
X-Gm-Message-State: APjAAAVumDd2vTWv/JU7zvskcyOKTU7oJrrLnUjexEgRfV278ZwZsbCl
        dDBnJ/GzC9VW/fvYcGTU1XesW13MDWA2KzhAcCttsg==
X-Google-Smtp-Source: APXvYqwzHREeoVrhXN3ra3YAtFVodCkeZ/L/8NKc/AjjPywx+f+rdelcxz5eHGeNcLNZvq3ejDZ+Qfe5kTtOS+X3uAU=
X-Received: by 2002:a1f:50c1:: with SMTP id e184mr13989651vkb.86.1561373970631;
 Mon, 24 Jun 2019 03:59:30 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1553086065.git.amit.kucheria@linaro.org> <9108372823aba9288b98b1c8a003c21b578d1e13.1553086065.git.amit.kucheria@linaro.org>
In-Reply-To: <9108372823aba9288b98b1c8a003c21b578d1e13.1553086065.git.amit.kucheria@linaro.org>
From:   Amit Kucheria <amit.kucheria@linaro.org>
Date:   Mon, 24 Jun 2019 16:29:19 +0530
Message-ID: <CAHLCerMr30LWt3QcoYVF9gyHjkmO5acTDV-39N6ZO22feYi9=Q@mail.gmail.com>
Subject: Re: [PATCHv3 21/23] arm64: dts: qcom: qcs404: Add tsens controller
To:     LKML <linux-kernel@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Eduardo Valentin <edubezval@gmail.com>,
        Andy Gross <andy.gross@linaro.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        David Brown <david.brown@linaro.org>,
        Zhang Rui <rui.zhang@intel.com>
Cc:     "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Mar 20, 2019 at 6:50 PM Amit Kucheria <amit.kucheria@linaro.org> wrote:
>
> qcs404 has a single TSENS IP block with 10 sensors. The calibration data
> is stored in an eeprom (qfprom) that is accessed through the nvmem
> framework. We add the qfprom node to allow the tsens sensors to be
> calibrated correctly.
>
> Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>

Hi Bjorn,

Could you please pick this patch and patch 22 in this series if you
have no other review comments? I can resend these separately if
required.

The driver (drivers/thermal/qcom/tsens-v1.c) was merged and only these
DT changes are pending.

Regards,
Amit


> ---
>  arch/arm64/boot/dts/qcom/qcs404.dtsi | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/qcs404.dtsi b/arch/arm64/boot/dts/qcom/qcs404.dtsi
> index e8fd26633d57..7881792980b8 100644
> --- a/arch/arm64/boot/dts/qcom/qcs404.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs404.dtsi
> @@ -259,6 +259,16 @@
>                         reg = <0x00060000 0x6000>;
>                 };
>
> +               qfprom: qfprom@a4000 {
> +                       compatible = "qcom,qfprom";
> +                       reg = <0x000a4000 0x1000>;
> +                       #address-cells = <1>;
> +                       #size-cells = <1>;
> +                       tsens_caldata: caldata@d0 {
> +                               reg = <0x1f8 0x14>;
> +                       };
> +               };
> +
>                 rng: rng@e3000 {
>                         compatible = "qcom,prng-ee";
>                         reg = <0x000e3000 0x1000>;
> @@ -266,6 +276,16 @@
>                         clock-names = "core";
>                 };
>
> +               tsens: thermal-sensor@4a9000 {
> +                       compatible = "qcom,qcs404-tsens", "qcom,tsens-v1";
> +                       reg = <0x004a9000 0x1000>, /* TM */
> +                             <0x004a8000 0x1000>; /* SROT */
> +                       nvmem-cells = <&tsens_caldata>;
> +                       nvmem-cell-names = "calib";
> +                       #qcom,sensors = <10>;
> +                       #thermal-sensor-cells = <1>;
> +               };
> +
>                 tlmm: pinctrl@1000000 {
>                         compatible = "qcom,qcs404-pinctrl";
>                         reg = <0x01000000 0x200000>,
> --
> 2.17.1
>
