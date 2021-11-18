Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3CF3A45516A
	for <lists+devicetree@lfdr.de>; Thu, 18 Nov 2021 01:03:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241762AbhKRAG0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Nov 2021 19:06:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46872 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240415AbhKRAGZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Nov 2021 19:06:25 -0500
Received: from mail-io1-xd2e.google.com (mail-io1-xd2e.google.com [IPv6:2607:f8b0:4864:20::d2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B9B8C061764
        for <devicetree@vger.kernel.org>; Wed, 17 Nov 2021 16:03:25 -0800 (PST)
Received: by mail-io1-xd2e.google.com with SMTP id v23so5620593iom.12
        for <devicetree@vger.kernel.org>; Wed, 17 Nov 2021 16:03:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=T4C6L5TBbU4kgfmUFag70eO6fcEy2Yq/sVXvugLd598=;
        b=Tfvu4+IvmP30SYOhevoNp0pfuZqXmoANyJyTw+T9nQpXvP0OceU3JmPy2TwjEmmgnY
         YCnAsdsgIPlAbV/vLjYrLISDvJ7eHxeb+CmsOwts/OSleMg/kyr+VCdRUslQnSkseD+H
         5IHZY8PPytSBOX9mR3VwcxCvDaoDS+VPqd8n4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=T4C6L5TBbU4kgfmUFag70eO6fcEy2Yq/sVXvugLd598=;
        b=WIx+h4RHZZdl1uH9oB4wwDK4x1mzEn5TDdoJsIz03T5RNLU88zgGgA1bE7bNSziSYm
         qtAkNNelREbmJ9ZU9PQF9wst73w6TIFQr4l1Dd+/3MPYTMHdk1euE/3OeMyngpBohe6Q
         xBcKMM7sRS2OwxJ0RuzkPZrLNGPkT+FbmMWMYaR09WA3n3RHkh89MD9AYZCf4NhoeXLJ
         2xpj1rg0clEduuoRM0pcZhvW0qxJze89l5050o0VBvPDKKDJNXipN5Wu9eIFFrpp20os
         QOwOCYsa1XC4ouAhaABEvxqRgqTlAPKP7Wz4vaGy7R3dZEHUyCj6QnjZIiptDZRHPBEa
         WHcg==
X-Gm-Message-State: AOAM533YbpL5K+a+JqRmhCghCfmzoxrdcNUqfsz0owsFjUotP/Bzylj3
        1TZn1dZBvNJGxQLBkg+1nMuduA/7o0G0ug==
X-Google-Smtp-Source: ABdhPJzV1SSXVtATxREaO124QotJ4+TrB/OaTRQFnDzTxYHbz7FR/ESnBBGYR5igIZ3Br4NR2DZNpQ==
X-Received: by 2002:a02:9609:: with SMTP id c9mr17172510jai.118.1637193804554;
        Wed, 17 Nov 2021 16:03:24 -0800 (PST)
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com. [209.85.166.47])
        by smtp.gmail.com with ESMTPSA id l9sm1065204ilh.21.2021.11.17.16.03.23
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Nov 2021 16:03:23 -0800 (PST)
Received: by mail-io1-f47.google.com with SMTP id z18so5635014iof.5
        for <devicetree@vger.kernel.org>; Wed, 17 Nov 2021 16:03:23 -0800 (PST)
X-Received: by 2002:a05:6638:2590:: with SMTP id s16mr17017643jat.93.1637193802654;
 Wed, 17 Nov 2021 16:03:22 -0800 (PST)
MIME-Version: 1.0
References: <20211116200739.924401-1-mka@chromium.org> <20211116120642.v17.4.Ie0d2c1214b767bb5551dd4cad38398bd40e4466f@changeid>
In-Reply-To: <20211116120642.v17.4.Ie0d2c1214b767bb5551dd4cad38398bd40e4466f@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 17 Nov 2021 16:03:10 -0800
X-Gmail-Original-Message-ID: <CAD=FV=WK3uHJTehMxWiA56L5Ly8UqjmCKnJtXBut2aOYEV6C4g@mail.gmail.com>
Message-ID: <CAD=FV=WK3uHJTehMxWiA56L5Ly8UqjmCKnJtXBut2aOYEV6C4g@mail.gmail.com>
Subject: Re: [PATCH v17 4/7] arm64: dts: qcom: sc7180-trogdor: Add nodes for
 onboard USB hub
To:     Matthias Kaehlcke <mka@chromium.org>
Cc:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Alan Stern <stern@rowland.harvard.edu>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Mathias Nyman <mathias.nyman@intel.com>,
        Felipe Balbi <balbi@kernel.org>, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Peter Chen <peter.chen@kernel.org>, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, Roger Quadros <rogerq@kernel.org>,
        Michal Simek <michal.simek@xilinx.com>,
        Ravi Chandra Sadineni <ravisadineni@chromium.org>,
        Bastien Nocera <hadess@hadess.net>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, Nov 16, 2021 at 12:07 PM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> Add nodes for the onboard USB hub on trogdor devices. Remove the
> 'always-on' property from the hub regulator, since the regulator
> is now managed by the onboard_usb_hub driver.
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
>
> Changes in v17:
> - none
>
> Changes in v16:
> - none
>
> Changes in v15:
> - none
>
> Changes in v14:
> - none
>
> Changes in v13:
> - none
>
> Changes in v12:
> - none
>
> Changes in v11:
> - rebased on qcom/arm64-for-5.14 (with the rest of the series)
>
> Changes in v10:
> - keep 'regulator-boot-on' property
> - updated commit message
>
> Changes in v9:
> - none
>
> Changes in v8:
> - none
>
> Changes in v7:
> - rebased on qcom/arm64-for-5.13 (with the rest of the series)
>
> Changes in v6:
> - added 'companion-hub' entry to both USB devices
> - added 'vdd-supply' also to hub@2
>
> Changes in v5:
> - patch added to the series
>
>  .../boot/dts/qcom/sc7180-trogdor-lazor-r0.dts | 19 ++++++++-----------
>  .../boot/dts/qcom/sc7180-trogdor-lazor-r1.dts | 12 +++++-------
>  .../arm64/boot/dts/qcom/sc7180-trogdor-r1.dts | 19 ++++++++-----------
>  arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi  | 19 ++++++++++++++++++-
>  4 files changed, 39 insertions(+), 30 deletions(-)

sc7180-trogdor-pompom-r1.dts is missing? It seems to need similar
fixups to the early lazor/trogdor borads.

Other than that this looks good to me.

-Doug
