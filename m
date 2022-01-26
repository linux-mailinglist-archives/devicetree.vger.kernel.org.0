Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 83D1D49C2A5
	for <lists+devicetree@lfdr.de>; Wed, 26 Jan 2022 05:29:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231356AbiAZE3P (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Jan 2022 23:29:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60888 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231268AbiAZE3P (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Jan 2022 23:29:15 -0500
Received: from mail-oi1-x22d.google.com (mail-oi1-x22d.google.com [IPv6:2607:f8b0:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2791C061748
        for <devicetree@vger.kernel.org>; Tue, 25 Jan 2022 20:29:14 -0800 (PST)
Received: by mail-oi1-x22d.google.com with SMTP id s9so35276358oib.11
        for <devicetree@vger.kernel.org>; Tue, 25 Jan 2022 20:29:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=H26PlBUtrEJIo/No25QJ2iD5qXCpVh9zQxB7sE6kPx8=;
        b=Y9p/Pi4GNYN0mgH1vypm5npfafzisH9GgU9halKYbqEhUCmz8vPwUsUQmSwO5a2Ewz
         fiPZDEO3nazvlnIJw7dOu+JEwOveIadXyvBekv1dbsDFOIerhMhBCW0um4+wjBuWY7Bs
         NYCf3Y7JSknFM6tUZ43LPZabuTiRaBiBeJR8VjtxVeoezEj+sdpv0jIpUCe3nqo8lggU
         auQXpwx9ElXdgNpkQR3orvuX5JIyF+VHTE9V1chIqSUF0xfbjk1xOAo1syQR93RPaNUY
         tjSB8ea34GreMSPoyxzQSgaDebwV94hf8LIs9f3Ft5GIPZxXf1SGO8flMw5WfbQNSQ8M
         HPXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=H26PlBUtrEJIo/No25QJ2iD5qXCpVh9zQxB7sE6kPx8=;
        b=hpjv+OhzN2CdQZKpbDGfQyU4ZJC3g5OU0K9Lzmiq0FnDWQv+i/cn6TQ7TvCoQiRAXQ
         IiRMmZvNNx8qO/EqqGQr3QOVJ4Ktdx8Ld6tBlAJkhNMAYZUKJzUn0Iga0qzNOgd6hJPV
         940wN8h9eSeeHbJa0loxapPqPF7WG96x5Kczr/qWdA1HZXLS90ilJGZrBTVHFi+XIrxG
         AFN2fznCCGvMG8Ig4AlpS0b5meJdp6m0dfr9/VgjDNuQANMAAJLd5YpzHriFPL+/J1G6
         Xvx5PYuWspxnn+qkLxAoNHhT/WiHDk/Vsay+PxJBNiwt2TFUxeYBU5FKStINTQiGL1I0
         RUgA==
X-Gm-Message-State: AOAM532E7YIs21Dz+Gdx+7AAwv/+kl0CIRfGQ3qeng6M2ueIZ6HH7zq8
        POqgW2bS7Sx6o1RFs+6IaPuP5g==
X-Google-Smtp-Source: ABdhPJyVgj0yPYEpEHk7hsMhHdR0GLw9yZssPxERozv5pG76vqTSzOI/0Ky1SQmWRa61mmLmD9xrsg==
X-Received: by 2002:a05:6808:bc7:: with SMTP id o7mr2675803oik.315.1643171354161;
        Tue, 25 Jan 2022 20:29:14 -0800 (PST)
Received: from builder.lan ([2600:1700:a0:3dc8:3697:f6ff:fe85:aac9])
        by smtp.gmail.com with ESMTPSA id n66sm7296255oif.35.2022.01.25.20.29.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jan 2022 20:29:13 -0800 (PST)
Date:   Tue, 25 Jan 2022 22:29:11 -0600
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Souradeep Chowdhury <quic_schowdhu@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, pure.logic@nexus-software.ie,
        greg@kroah.com, robh@kernel.org, linux-kernel@vger.kernel.org,
        quic_tsoni@quicinc.com, quic_psodagud@quicinc.com,
        quic_satyap@quicinc.com, quic_pheragu@quicinc.com,
        quic_rjendra@quicinc.com, quic_sibis@quicinc.com,
        quic_saipraka@quicinc.com
Subject: Re: [PATCH V4 5/6] arm64: dts: qcom: sc7280: Set the default dr_mode
 for usb2
Message-ID: <YfDOF6rp8LJFIE4j@builder.lan>
References: <cover.1642768837.git.quic_schowdhu@quicinc.com>
 <232f37a6f76c3f24a122f32978b5c1e73dc7e7c4.1642768837.git.quic_schowdhu@quicinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <232f37a6f76c3f24a122f32978b5c1e73dc7e7c4.1642768837.git.quic_schowdhu@quicinc.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri 21 Jan 07:53 CST 2022, Souradeep Chowdhury wrote:

> Set the default dr_mode for usb2 node to "otg" to enable
> role-switch for EUD(Embedded USB Debugger) connector node.
> 

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Regards,
Bjorn

> Signed-off-by: Souradeep Chowdhury <quic_schowdhu@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sc7280-idp.dts | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7280-idp.dts b/arch/arm64/boot/dts/qcom/sc7280-idp.dts
> index 9b991ba..f40eaa5 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280-idp.dts
> +++ b/arch/arm64/boot/dts/qcom/sc7280-idp.dts
> @@ -61,6 +61,10 @@
>  	modem-init;
>  };
>  
> +&usb_2_dwc3 {
> +	dr_mode = "otg";
> +};
> +
>  &pmk8350_rtc {
>  	status = "okay";
>  };
> -- 
> 2.7.4
> 
