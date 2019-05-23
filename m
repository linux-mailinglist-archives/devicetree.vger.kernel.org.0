Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id EBD28280BC
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2019 17:13:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730913AbfEWPNs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 May 2019 11:13:48 -0400
Received: from mail-vs1-f68.google.com ([209.85.217.68]:37549 "EHLO
        mail-vs1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730783AbfEWPNs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 May 2019 11:13:48 -0400
Received: by mail-vs1-f68.google.com with SMTP id o5so315033vsq.4
        for <devicetree@vger.kernel.org>; Thu, 23 May 2019 08:13:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=jJwXkGHAjsBuNVlpPqPHB/gqYdCj2Tmp+gapq3iY+ic=;
        b=N+mfa0zy+pExM2ZUNCDOd7EfDziYW2R2p9cEyDaLDTL8Z9/JY1U+JerG+cgLatDl1p
         o6kLElYFF/CJBn8MgO+e6Rk8EX9jnp0H83jEIX4QCp+O2YsWMMPtI8eIMQSHI7fVhK26
         YOUG49rWHjTZtvdyAwR9l6oZVOpxGvUQtXxvM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=jJwXkGHAjsBuNVlpPqPHB/gqYdCj2Tmp+gapq3iY+ic=;
        b=XZuT8GPiouDWnRa7KxnJUk1QctocU6z7ZIzJLS1qhTuHkO+VYfzVjhPMg9jv462/5l
         yWVGTuyqGO8WlVgIdjbI3Q+39jPq6be4Vb/80IhA/VihnuzXqFlgqupkb7GM3gPoefSU
         CKBHKQuI+WtRpGhyERQbPeEHYRMeQE5z1oCxIhGyD5dMVHRk/UdpScFGzMQQzZSw6Dgk
         VQUuy3kuPVKIcOWLP+dRA5Q9FjzF91kqCR1Ly56sd5fOQTeiVpSQtAlwDIJuuUO1/7EN
         hwx9Gyj/ovN8VGP1l/OBpPe9jI8ySc4aHfR21og0a+F76lWfDsWpeKI7yJo5fRUg7y1R
         zvtg==
X-Gm-Message-State: APjAAAXmYnirC23ekRFooqCyMkKAY0PRNZoH5Ge/v+na1oH2bpliktMd
        GolajuNaMEn2C9RA4kk4nZx3C+Llba8=
X-Google-Smtp-Source: APXvYqwl0kBkvTK6IyOEE3x4dGylW3uWqTsueooVAe8d71atIxlYwt/pa+AqemRq0qrT3JLmMdx/MQ==
X-Received: by 2002:a67:dc94:: with SMTP id g20mr39785775vsk.234.1558624427175;
        Thu, 23 May 2019 08:13:47 -0700 (PDT)
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com. [209.85.217.53])
        by smtp.gmail.com with ESMTPSA id d79sm6272775vkd.23.2019.05.23.08.13.11
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 May 2019 08:13:28 -0700 (PDT)
Received: by mail-vs1-f53.google.com with SMTP id k187so3782357vsk.12
        for <devicetree@vger.kernel.org>; Thu, 23 May 2019 08:13:11 -0700 (PDT)
X-Received: by 2002:a67:ebd6:: with SMTP id y22mr31596912vso.87.1558624390840;
 Thu, 23 May 2019 08:13:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190501043734.26706-1-bjorn.andersson@linaro.org> <20190501043734.26706-4-bjorn.andersson@linaro.org>
In-Reply-To: <20190501043734.26706-4-bjorn.andersson@linaro.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 23 May 2019 08:12:56 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XTF5y9dhfq_QsFdbWLszj6EFzTH4NozDPu_7YVzQur3g@mail.gmail.com>
Message-ID: <CAD=FV=XTF5y9dhfq_QsFdbWLszj6EFzTH4NozDPu_7YVzQur3g@mail.gmail.com>
Subject: Re: [PATCH v7 3/4] arm64: dts: qcom: Add AOSS QMP node
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        David Brown <david.brown@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Stephen Boyd <swboyd@chromium.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        devicetree@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, Apr 30, 2019 at 9:37 PM Bjorn Andersson
<bjorn.andersson@linaro.org> wrote:
>
> The AOSS QMP provides a number of power domains, used for QDSS and
> PIL, add the node for this.
>
> Tested-by: Sibi Sankar <sibis@codeaurora.org>
> Reviewed-by: Sibi Sankar <sibis@codeaurora.org>
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> ---
>
> Changes since v6:
> - Added #clock-cells
>
>  arch/arm64/boot/dts/qcom/sdm845.dtsi | 10 ++++++++++
>  1 file changed, 10 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> index fcb93300ca62..666bc88d3e81 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> @@ -14,6 +14,7 @@
>  #include <dt-bindings/interconnect/qcom,sdm845.h>
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
>  #include <dt-bindings/phy/phy-qcom-qusb2.h>
> +#include <dt-bindings/power/qcom-aoss-qmp.h>
>  #include <dt-bindings/power/qcom-rpmpd.h>
>  #include <dt-bindings/reset/qcom,sdm845-aoss.h>
>  #include <dt-bindings/reset/qcom,sdm845-pdc.h>
> @@ -2142,6 +2143,15 @@

Please avoid editing patches by hand.  I needed to manually change the
"15" above to "16" to apply.

-Doug
