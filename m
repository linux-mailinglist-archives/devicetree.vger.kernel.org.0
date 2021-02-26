Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BB12A325B83
	for <lists+devicetree@lfdr.de>; Fri, 26 Feb 2021 03:14:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230101AbhBZCON (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Feb 2021 21:14:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35454 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230083AbhBZCOL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Feb 2021 21:14:11 -0500
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com [IPv6:2607:f8b0:4864:20::1032])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 492C9C061788
        for <devicetree@vger.kernel.org>; Thu, 25 Feb 2021 18:13:31 -0800 (PST)
Received: by mail-pj1-x1032.google.com with SMTP id o6so5177237pjf.5
        for <devicetree@vger.kernel.org>; Thu, 25 Feb 2021 18:13:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=eCQDyjSjrPOnC5kBdIWB+6uWOY9PLaOhvG7UuaHLMBs=;
        b=hzQEPy6po5uMlNt0Zt2fNrmKhe+2t6IXQjWLf9e9fSsIRAxq8g77yMUNBKK5YQVDqH
         Gi419EyzG4KPVI0SMS5MzP4bw48wj3nB9IWmuOSspMiQiS36aaxomlYQ6WVOSxTcCCmi
         nyMp5RNbCQDDnG7ygq/7HxOd0y8fssESR9iks=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=eCQDyjSjrPOnC5kBdIWB+6uWOY9PLaOhvG7UuaHLMBs=;
        b=UJJmLnwnzzS1l1XPIW5dPrcoydBA6vglJoaxum+hH70JjNf7OJDjXGdNyyBwFhFZTs
         cyUP3OZ8np09HjUCW0dzwDs6WQa/tA8P+3h9c3Hf/h6jaQbAyXhsz9JAGalG7Z/C8gr/
         0yq319kbAzyoOj66agOtlYs8rtcnWSL+rmvZfCqZBlZbwrxnFPEYTaspOovTW+Jsdgix
         U0/hcRm85JbSo+qsEZoGe1u4Quayj+kao2/4XsxeAEhBHEPmC6lKbGZ3OCR0YwiFpgxR
         iBcWcxr19Idnx3sCBqfG3+YVSFT13NxEZeWVzrQiWW3uTqCOqoE9hsfPvGZC/fi2Ffvr
         kDvA==
X-Gm-Message-State: AOAM530UaABq0aQEEYUObCvrJ+vcFaCsgkDXaNTP/t99BzIe58FYo5pF
        di/vG0rPWXF8+uQIv906rD9/vA==
X-Google-Smtp-Source: ABdhPJxbCC7G//bSUsPbyD6uOE13QyYXQG2FJO0dCZ69QsD+hhc3QGnvoJBGzIwOGDsY4l9xpjlXdw==
X-Received: by 2002:a17:90a:7405:: with SMTP id a5mr936844pjg.13.1614305610829;
        Thu, 25 Feb 2021 18:13:30 -0800 (PST)
Received: from localhost ([2620:15c:202:1:1d8:8d0c:f75e:edd8])
        by smtp.gmail.com with UTF8SMTPSA id w24sm7119977pgl.19.2021.02.25.18.13.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Feb 2021 18:13:30 -0800 (PST)
Date:   Thu, 25 Feb 2021 18:13:28 -0800
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Douglas Anderson <dianders@chromium.org>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Alexandru M Stan <amstan@chromium.org>,
        Rob Clark <robdclark@chromium.org>,
        Philip Chen <philipchen@google.com>,
        Tzung-Bi Shih <tzungbi@chromium.org>,
        Judy Hsiao <judyhsiao@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 12/13] arm64: dts: qcom: Add sc7180-lazor-pompom skus
Message-ID: <YDhZSAd0XLgdHEEm@google.com>
References: <20210225221310.1939599-1-dianders@chromium.org>
 <20210225141022.12.If93a01b30d20dccacbad4be8ddc519dc20a51a1e@changeid>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20210225141022.12.If93a01b30d20dccacbad4be8ddc519dc20a51a1e@changeid>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Feb 25, 2021 at 02:13:09PM -0800, Douglas Anderson wrote:
> This is a trogdor variant.  This is mostly a grab from the downstream
> tree with notable exceptions:
> - I skip -rev0.  This was a super early build and there's no advantage
>   of long term support.
> - In -rev1 I translate the handling of the USB hub like is done for
>   similar boards.  See the difference between the downstream and
>   upstream 'sc7180-trogdor-lazor-r0.dts' for an example.  This will
>   need to be resolved when proper support for the USB hub is figured
>   out upstream.
> - I remove sound node since sound hasn't landed upstream yet.
> - In incorporate the pending <https://crrev.com/c/2719075> for the
>   keyboard.
> 
> Cc: Philip Chen <philipchen@google.com>
> Cc: Matthias Kaehlcke <mka@chromium.org>
> Cc: Stephen Boyd <swboyd@chromium.org>
> Cc: Tzung-Bi Shih <tzungbi@chromium.org>
> Cc: Judy Hsiao <judyhsiao@chromium.org>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

<snip>

> diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-pompom.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor-pompom.dtsi
> new file mode 100644
> index 000000000000..8f1596b8e90a
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-pompom.dtsi
> @@ -0,0 +1,288 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Google Pompom board device tree source
> + *
> + * Copyright 2020 Google LLC.
> + */
> +
> +#include "sc7180.dtsi"
> +
> +ap_ec_spi: &spi6 {};
> +ap_h1_spi: &spi0 {};
> +
> +#include "sc7180-trogdor.dtsi"
> +
> +/ {
> +	thermal-zones {
> +		5v-choke-thermal {
> +			polling-delay-passive = <0>;
> +			polling-delay = <250>;
> +
> +			thermal-sensors = <&pm6150_adc_tm 0>;

This is fine with how things are currently configured for trogdor, however be
aware that in the ADC thermal monitor config your patch is racing with 'arm64:
dts: qcom: sc7180: trogdor: Use ADC TM channel 0 instead of 1 for charger
temperature' (https://lore.kernel.org/patchwork/patch/1384514/). That patch
changes the charger thermistor for all trogdor boards to ADC TM channel 0,
so the 5v-choke thermistor would have to move to another channel (most
likely 1).

<snip>

> +&pm6150_adc_tm {
> +	status = "okay";
> +
> +	5v-choke-thermistor@0 {
> +		reg = <0>;

s/0/1/ in the two lines above if 'arm64: dts: qcom: sc7180: trogdor: Use ADC
TM channel 0 instead of 1 for charger temperature' lands before this patch.

The other deltas with downstream are mentioned in the commit message, as long
as we keep the change of the ADC TM channel in mind this looks good to me.

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
