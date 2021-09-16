Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C7E9540DDF5
	for <lists+devicetree@lfdr.de>; Thu, 16 Sep 2021 17:28:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238928AbhIPP3Z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Sep 2021 11:29:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33882 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238888AbhIPP3X (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Sep 2021 11:29:23 -0400
Received: from mail-io1-xd35.google.com (mail-io1-xd35.google.com [IPv6:2607:f8b0:4864:20::d35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A684C061574
        for <devicetree@vger.kernel.org>; Thu, 16 Sep 2021 08:28:03 -0700 (PDT)
Received: by mail-io1-xd35.google.com with SMTP id j18so8324300ioj.8
        for <devicetree@vger.kernel.org>; Thu, 16 Sep 2021 08:28:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=9PGyga+u2JMpsASTRDGCIEIQqGlu+knYZsympOND9rQ=;
        b=InU3QiCwubwJ7wJwH2fV9uC/toVkZlNbVLSyRxruFnAVHOXGg8qvphDFYNBNPGxhhe
         4mmIwTZtIsJwMy6F0zfAo1dq23wBKs4+xMPWb339vAePTt0htSMmm0NVpzhLB1T7WH6k
         ohYTSufm2x5u42lzIV0PUetLBqPuk6V88BKEA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=9PGyga+u2JMpsASTRDGCIEIQqGlu+knYZsympOND9rQ=;
        b=OzfCdUCYMy7LoFUdH/sqo4vjWqZhqgkIlntrSgMVOLl7Kh1yVKNtM+5h8JzWpC6K4/
         neizKcx9DqB9UtSaXZRHOS3hSmsnv5tnELzu2XEVV2QY9WyO3iQMcANsVDruQxvaGHqd
         IRPHdUlmPitZmroTSjH0jxb4d3LYbeMKDoRSm5+7j0ozxu4WdQRsYsMEGR7yfkFiNMmi
         HiDEeUoiHnLaZtUGlmMsTF6wI8wJ43hsmRiMByXcqW8L7H8dCZR5HTV/HYauB5UZRm08
         pZbKOM8kx1ztkLGcrk9UY+R8lffd4JTV0thS4+SZHiWuZDQCh72tB5UA+MC7ge0V1jNf
         g8jA==
X-Gm-Message-State: AOAM532eKs+3pWxdnOCDNnT/ZgW8Jw06tesW40HDj1BS9GaohnhIOxmb
        9YE/oUUFMmThPNa1Ba4qpmmZO9soN1IYcQ==
X-Google-Smtp-Source: ABdhPJw80/ZnCg+Tb7XIt1BhOaXK0bI/pYYnmdVIzoNhnkJSkWNcJTu+AzM77IEzRqbazNhnPPlL5g==
X-Received: by 2002:a5e:c018:: with SMTP id u24mr748158iol.129.1631806082215;
        Thu, 16 Sep 2021 08:28:02 -0700 (PDT)
Received: from mail-il1-f180.google.com (mail-il1-f180.google.com. [209.85.166.180])
        by smtp.gmail.com with ESMTPSA id v13sm1825625iop.29.2021.09.16.08.28.01
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Sep 2021 08:28:01 -0700 (PDT)
Received: by mail-il1-f180.google.com with SMTP id h9so6998713ile.6
        for <devicetree@vger.kernel.org>; Thu, 16 Sep 2021 08:28:01 -0700 (PDT)
X-Received: by 2002:a92:da0c:: with SMTP id z12mr4329512ilm.120.1631806081058;
 Thu, 16 Sep 2021 08:28:01 -0700 (PDT)
MIME-Version: 1.0
References: <20210830080621.1.Ia15d97bc4a81f2916290e23a8fde9cbc66186159@changeid>
In-Reply-To: <20210830080621.1.Ia15d97bc4a81f2916290e23a8fde9cbc66186159@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 16 Sep 2021 08:27:49 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XSFHgUEo2BrEY+o7Vavd3jHcwSZ7hKgwYOTPSHhHaZAw@mail.gmail.com>
Message-ID: <CAD=FV=XSFHgUEo2BrEY+o7Vavd3jHcwSZ7hKgwYOTPSHhHaZAw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: sc7280: Move the SD CD GPIO pin out of
 the dtsi file
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Shaik Sajida Bhanu <sbhanu@codeaurora.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, Aug 30, 2021 at 8:07 AM Douglas Anderson <dianders@chromium.org> wrote:
>
> There's nothing magical about GPIO91 and boards could use different
> GPIOs for card detect. Move the pin out of the dtsi file and to the
> only existing board file.
>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
>
>  arch/arm64/boot/dts/qcom/sc7280-idp.dtsi | 1 +
>  arch/arm64/boot/dts/qcom/sc7280.dtsi     | 4 ----
>  2 files changed, 1 insertion(+), 4 deletions(-)

If there are no concerns with this patch, I think it's ready to land
now. Thanks!

-Doug
