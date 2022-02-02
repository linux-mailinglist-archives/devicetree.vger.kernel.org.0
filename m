Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2EC014A7B4D
	for <lists+devicetree@lfdr.de>; Wed,  2 Feb 2022 23:52:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347711AbiBBWv7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Feb 2022 17:51:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44922 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241839AbiBBWv7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Feb 2022 17:51:59 -0500
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com [IPv6:2607:f8b0:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA6EDC06173D
        for <devicetree@vger.kernel.org>; Wed,  2 Feb 2022 14:51:58 -0800 (PST)
Received: by mail-pg1-x52e.google.com with SMTP id h23so694848pgk.11
        for <devicetree@vger.kernel.org>; Wed, 02 Feb 2022 14:51:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=lPEgbuxslnTLTy0cKW6Sngl50vamSxtuVPfB7iySKa8=;
        b=dTX3bLDcEE54y6c/+Kkj6MTxo87Yu+ZsaHiJo7j2dp5a0WukhoMaez16sY2J9ItoI2
         8sZRPFs7ZP+OtpiyrsdMbRVYmv/Mcf9lFF0yM7CBdQUQuNgGYJmXtyiBxGJi6CPmYj5u
         yBanI0mVHsA1zAux5JwbqCUhZ3uctbdbQOTnI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=lPEgbuxslnTLTy0cKW6Sngl50vamSxtuVPfB7iySKa8=;
        b=x9614zWdUN9PFi8Zm0qIGN3eda81JIEnsAwsEOTypP/q329iiSJB5cyUfq3nInpdzQ
         HBldyTlw83BZ/p/2nhZTHiLyZ0idSeFrBnI2UvmAK+6Wa7G5FODYYTnUU1/T9cPwqt6q
         UEM4yRcP5nbnwHFs0f/QvZ22XNvqmgQ0+WPkZ8JPuI2k9RHHP8X86YiZ+s14luxekuYv
         7uQkkIp0Qt/IDFssuRpd2OO/6/ZgMPUMikD32d6BWZkcxbKzxOEomRwfJN8KwipPgrHU
         jmcrkcDUAivtduSNuFg8ShUvEBDrlsc0fPLFKtmptDWUJ1wt6p2FG16I1F+OCmuu93k8
         B/Qg==
X-Gm-Message-State: AOAM530hJuK7bw1iSHM6+LcT8o8LTwQ3SNLOabPEQ8apMjlyOqaT0rF1
        4BM1hfUheeueQ52ylVmYZB8elA==
X-Google-Smtp-Source: ABdhPJxejDh6p3N4BhaMrEV1Rd6fCUIEukCr6nZ/aaOTaDYGJBLHkze6Ky6n9rUQeMOBu97PiDSTzA==
X-Received: by 2002:a63:285:: with SMTP id 127mr25890891pgc.67.1643842318226;
        Wed, 02 Feb 2022 14:51:58 -0800 (PST)
Received: from localhost ([2620:15c:202:201:c0cb:3065:aa0:d6c9])
        by smtp.gmail.com with UTF8SMTPSA id l14sm38679188pgn.50.2022.02.02.14.51.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Feb 2022 14:51:57 -0800 (PST)
Date:   Wed, 2 Feb 2022 14:51:56 -0800
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Douglas Anderson <dianders@chromium.org>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        pmaliset@codeaurora.org, quic_rjendra@quicinc.com,
        Shaik Sajida Bhanu <sbhanu@codeaurora.org>,
        kgodara@codeaurora.org, konrad.dybcio@somainline.org,
        Sankeerth Billakanti <quic_sbillaka@quicinc.com>,
        sibis@codeaurora.org, swboyd@chromium.org,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 07/14] arm64: dts: qcom: sc7280: Add edp_out port and
 HPD lines
Message-ID: <YfsLDLmQrR1X5A9X@google.com>
References: <20220202212348.1391534-1-dianders@chromium.org>
 <20220202132301.v3.7.Ic84bb69c45be2fccf50e3bd17b845fe20eec624c@changeid>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220202132301.v3.7.Ic84bb69c45be2fccf50e3bd17b845fe20eec624c@changeid>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Feb 02, 2022 at 01:23:41PM -0800, Douglas Anderson wrote:
> Like dp_out, we should have defined edp_out in sc7280.dtsi so we don't
> need to do this in the board files.
> 
> Like dp_hot_plug_det, we should define edp_hot_plug_det in
> sc7280.dtsi.
> 
> We should set the default pinctrl for edp_hot_plug_det in
> sc7280.dtsi. NOTE: this is _unlike_ the dp_hot_plug_det. It is
> reasonable that in some boards the dedicated DP Hot Plug Detect will
> not be hooked up in favor of Type C mechanisms. This is unlike eDP
> where the Hot Plug Detect line (which functions as "panel ready" in
> eDP) is highly likely to be used by boards.
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
