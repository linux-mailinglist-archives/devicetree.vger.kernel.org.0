Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6822E40DE1B
	for <lists+devicetree@lfdr.de>; Thu, 16 Sep 2021 17:34:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239507AbhIPPes (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Sep 2021 11:34:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35202 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238510AbhIPPek (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Sep 2021 11:34:40 -0400
Received: from mail-io1-xd32.google.com (mail-io1-xd32.google.com [IPv6:2607:f8b0:4864:20::d32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8EDC1C061574
        for <devicetree@vger.kernel.org>; Thu, 16 Sep 2021 08:33:19 -0700 (PDT)
Received: by mail-io1-xd32.google.com with SMTP id f6so8503255iox.0
        for <devicetree@vger.kernel.org>; Thu, 16 Sep 2021 08:33:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ms3bl+nA5Ri+3UB+CCMQr3zf572ukgQ7gcT+ysEOLx4=;
        b=GCuBZd4DCB9aZj+pCfyCiLjwRu4LhUZquIp2PLs8FEt7Xt+aP6AYFjmRNrx2pLdLQO
         H7VqSWn/4MDPPI8YJ+CbpDmTTH+DRt4JLmX64snOhw2xy7fLxCGXDfmETRL3oUxZLHDj
         kreR9rErzUvoNNTD8le00ZhaWU4Ln4dzaTOr4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ms3bl+nA5Ri+3UB+CCMQr3zf572ukgQ7gcT+ysEOLx4=;
        b=B33k2Q4UYFjtIbmnZ4SM5FlpHd/aAENwQMSU1V0cu38JUwXHKkEjnrLw/i+ILzDlTd
         OrsPOsYCzuKi1M5TKzaishpwfHDZsJrWmUZlpoJN46j1UbfhC7mljz1IXlYRc3ZklQ3B
         U0Ni9WotMaGB1VwAOa7X07/8y7jeQjRPDb5a2g431n6warR3YUUTG25HyGp/+N9ziuoD
         j0J1LwsJV0X3xz2CGAh1CbzcN+/apZyg/XO3hpCaoms2bcm3Ye/tRd1dFIyS2xAuDUM7
         AmxMiY1TKa5Z8WCdejJvgye7PVwTKIbRVRD76H09/O9rLhAKCU6OixEWxvIs/zqwKOX0
         sB+Q==
X-Gm-Message-State: AOAM531QojvXwmse9QFBekR9EHsnjg+uAeUXNlWAgwxxA6OISzVVeMoG
        zC2KV6AtX4Acx2qowy22++QZ76YOfioA+w==
X-Google-Smtp-Source: ABdhPJyPAfFwcxhNx3wBoRSsaRQScNL+qrR3OcVHuR6Y03ctwT+eQqlQ7dg34x2KAkZxUEti9ESxSA==
X-Received: by 2002:a5d:9693:: with SMTP id m19mr4895928ion.181.1631806398311;
        Thu, 16 Sep 2021 08:33:18 -0700 (PDT)
Received: from mail-il1-f169.google.com (mail-il1-f169.google.com. [209.85.166.169])
        by smtp.gmail.com with ESMTPSA id k7sm1824812iok.22.2021.09.16.08.33.17
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Sep 2021 08:33:17 -0700 (PDT)
Received: by mail-il1-f169.google.com with SMTP id d11so3111114ilc.8
        for <devicetree@vger.kernel.org>; Thu, 16 Sep 2021 08:33:17 -0700 (PDT)
X-Received: by 2002:a05:6e02:1847:: with SMTP id b7mr4487370ilv.180.1631806396862;
 Thu, 16 Sep 2021 08:33:16 -0700 (PDT)
MIME-Version: 1.0
References: <20210903122212.v2.1.I9777d0036ecbb749a4fb9ebb892f94c6e3a51772@changeid>
In-Reply-To: <20210903122212.v2.1.I9777d0036ecbb749a4fb9ebb892f94c6e3a51772@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 16 Sep 2021 08:33:05 -0700
X-Gmail-Original-Message-ID: <CAD=FV=U=rT5dLz6S7_y6kuZ4R_ijDZtdn25-UkHw2QhNVUu-hw@mail.gmail.com>
Message-ID: <CAD=FV=U=rT5dLz6S7_y6kuZ4R_ijDZtdn25-UkHw2QhNVUu-hw@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: qcom: sc7180-trogdor: Delete ADC config
 for unused thermistors
To:     Matthias Kaehlcke <mka@chromium.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        Stephen Boyd <swboyd@chromium.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, Sep 3, 2021 at 12:22 PM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> The charger thermistor on Lazor, CoachZ rev1 and Pompom rev1+2 is
> either the wrong part or not stuffed at all, the same is true for
> the skin temperature thermistor on CoachZ rev1. The corresponding
> thermal zones are already disabled for these devices, in addition
> delete the ADC nodes of the thermistors.
>
> For Lazor and CoachZ rev1 also disable the PM6150 ADC and thermal
> monitor since none of the ADC channels is used.
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
>
> Changes in v2:
> - also disable the ADC for Lazor and CoachZ rev1
> - updated commit message
>
>  .../boot/dts/qcom/sc7180-trogdor-coachz-r1.dts     | 14 ++++++++++++++
>  arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor.dtsi | 12 ++++++++++++
>  .../boot/dts/qcom/sc7180-trogdor-pompom-r1.dts     |  8 ++++++++
>  .../boot/dts/qcom/sc7180-trogdor-pompom-r2.dts     |  8 ++++++++
>  4 files changed, 42 insertions(+)

I haven't done due diligence to review this patch since Stephen
already did, but it's been on the list of patches I was tracking that
I thought were ready to land. If there are no objections, it'd be a
keen time to land it. ;-)

-Doug
