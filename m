Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 28C4C4A8B2C
	for <lists+devicetree@lfdr.de>; Thu,  3 Feb 2022 19:05:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353219AbiBCSFt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Feb 2022 13:05:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52400 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1353183AbiBCSFt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Feb 2022 13:05:49 -0500
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com [IPv6:2607:f8b0:4864:20::1033])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B8EBC06173D
        for <devicetree@vger.kernel.org>; Thu,  3 Feb 2022 10:05:49 -0800 (PST)
Received: by mail-pj1-x1033.google.com with SMTP id q63so3173399pja.1
        for <devicetree@vger.kernel.org>; Thu, 03 Feb 2022 10:05:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=HlhPGWE5bdGNLYD2rLHTqQvYoa01TULW+puGjVO5vSQ=;
        b=VtLsiCCk158cnWh1hhk4hcAu7akeN1un0UoiIYtmE5BUwwcvATGuybGt4H+8Rx5GTd
         1z3bqgJ50552OdIa0vByKWASS/00Y3E5FSjIQC/+0ni8LCjdGYD1Viv+5Wlp+OGXaqcz
         tDShm8qyl098X8w2HGMlTAzsi2yYmIPJOOhYw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=HlhPGWE5bdGNLYD2rLHTqQvYoa01TULW+puGjVO5vSQ=;
        b=v0zwIKBt/dlD4aL/jWjXGT69DuplHapKLicVSVkOkveLYaHEggefQJ0FFbMixYpJ1u
         abHzTCQ9b+zaI9sAfyd9vLuKbOc+n+9v0aWmyckertbLTrAqC2m7SJ286gJ0VIXSvaQx
         2RBWIJnWile03/WXgdaj4USFthCLmV1U7Uc0uvFdc9RJrb95UP5MQ9/vwM9tGwGF3OEp
         hsPwEDTGlabHrk4w4WGDGoZq+w7Uzq272M41CM2xYseiVsP7zoM8u+JSMFEQH4kmwe5j
         uMAQA+4hfnVKIx/4asuKJN3OQ2uh8hv6AgW3SmPKp5K3lU7H2KXIbBjKjZZUPxIN4hqr
         RMmQ==
X-Gm-Message-State: AOAM533JEoAuJuttl9wuFWF4r4raDcaGZ7tEnwRE2kjjWgbKn9jaNtlk
        IEQoOExqjYnzv2cy+B4Cf0LkNg==
X-Google-Smtp-Source: ABdhPJz1UINvG9Evq//eD92215fo53RODE2NVBvGZPKEMKJbnw7X1TLafReBfjtN0hTRcqLS5mbWtw==
X-Received: by 2002:a17:902:ed82:: with SMTP id e2mr36674770plj.55.1643911548721;
        Thu, 03 Feb 2022 10:05:48 -0800 (PST)
Received: from localhost ([2620:15c:202:201:c0cb:3065:aa0:d6c9])
        by smtp.gmail.com with UTF8SMTPSA id 19sm10327466pjb.42.2022.02.03.10.05.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Feb 2022 10:05:48 -0800 (PST)
Date:   Thu, 3 Feb 2022 10:05:46 -0800
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
Subject: Re: [PATCH v3 12/14] arm64: dts: qcom: sc7280: Add herobrine-r1
Message-ID: <YfwZeq7VQpFO8yPH@google.com>
References: <20220202212348.1391534-1-dianders@chromium.org>
 <20220202132301.v3.12.I5604b7af908e8bbe709ac037a6a8a6ba8a2bfa94@changeid>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220202132301.v3.12.I5604b7af908e8bbe709ac037a6a8a6ba8a2bfa94@changeid>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Feb 02, 2022 at 01:23:46PM -0800, Douglas Anderson wrote:
> Add the new herobrine-r1. Note that this is pretty much a re-design
> compared to herobrine-r0 so we don't attempt any dtsi to share stuff
> between them.
> 
> This patch attempts to define things at 3 levels:
> 
> 1. The Qcard level. Herobrine includes a Qcard PCB and the Qcard PCB
>    is supposed to be the same (modulo stuffing options) across
>    multiple boards, so trying to define what's there hopefully makes
>    sense. NOTE that newer "CRD" boards from Qualcomm also use
>    Qcard. When support for CRD3 is added hopefully it can use the
>    Qcard include (and perhaps we should even evaluate it using
>    herobrine.dtsi?)
> 2. The herobrine "baseboard" level. Right now most stuff is here with
>    the exception of things that we _know_ will be different per
>    board. We know that not all boards will have the same set of eMMC,
>    nvme, and SD. We also know that the exact pin names are likely to
>    be different.
> 3. The actual "board" level, AKA herobrine-rev1.
> 
> NOTES:
> - This boots to command prompt. We're still waiting on the PWM driver.
> - This assumes LTE for now. Once it's clear how WiFi-only SKUs will
>   work we expect some small changes.
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
