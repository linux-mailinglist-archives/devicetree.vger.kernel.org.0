Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A9AC64A7B35
	for <lists+devicetree@lfdr.de>; Wed,  2 Feb 2022 23:42:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343896AbiBBWmW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Feb 2022 17:42:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42752 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232825AbiBBWmU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Feb 2022 17:42:20 -0500
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E6B9C061714
        for <devicetree@vger.kernel.org>; Wed,  2 Feb 2022 14:42:20 -0800 (PST)
Received: by mail-pj1-x1035.google.com with SMTP id h12so673793pjq.3
        for <devicetree@vger.kernel.org>; Wed, 02 Feb 2022 14:42:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=sZFuR2vWOuiv7Zs+hDWJ+PkQ5hWBuLQprDWKtuu6j1w=;
        b=TdhW3CHrwvcy7GYuBo8j779z2PW0TcMfM2V+vWaa9jaWOIhRClXmGian3FkoWPCV5o
         ScljSpPu1PzLXsbgqOBE6JQrbO8oo2qV3iI3ZuNLXWksV5u1XR06NzypnNAUSoOMdiYS
         /X2TEFOTHjcAgMY94U8nogoY8rTwTw1NVZhyg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=sZFuR2vWOuiv7Zs+hDWJ+PkQ5hWBuLQprDWKtuu6j1w=;
        b=Y7P2g8i2esJrL0F8SQiyFxzql7XH9uzWMt0oes7NQUdA22L0rhERGPguo7HRwlKkVU
         dpjVePIaLv9c4IAe1bBQxYBZaF+oFljdLcBfIMDRcAi4H4pPSm6I7ZnqNhXHXNyOFZvj
         GZYmlay+cL9PVc31MGyFeBr7Tp0kmutzFuiEdDEikIsvX/4PR8FlIsAF0qkerq0B+EtU
         vkmcnk4AuCYy+0jIpD5ZWqNvEw/Zg1nN5fuWg7f1fFHG0v56y1msOCdNN+8hj1+aI508
         40NKhnQz6l30d6fX6D3B5dCQiT+9v58zBAmUmJCWHwC1vbuN9w69eV1D4wQfiapJcuAW
         EdYg==
X-Gm-Message-State: AOAM533YzYBGB5YZmJNqql75O5m3eMvlcQQL991Bobo2x28qSrrtkbV+
        3VzALbK5Bi1SIQMJH/WJplZc/A==
X-Google-Smtp-Source: ABdhPJzckxs2l6JjLjk8Arc0ZPnEaekNFZUpWFliBg8YSV0xEtSQ+tzt24d16M+Cu05w0lhuL9dn9g==
X-Received: by 2002:a17:902:8f92:: with SMTP id z18mr33425417plo.42.1643841739568;
        Wed, 02 Feb 2022 14:42:19 -0800 (PST)
Received: from localhost ([2620:15c:202:201:c0cb:3065:aa0:d6c9])
        by smtp.gmail.com with UTF8SMTPSA id p17sm17498229pfh.59.2022.02.02.14.42.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Feb 2022 14:42:19 -0800 (PST)
Date:   Wed, 2 Feb 2022 14:42:16 -0800
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
Subject: Re: [PATCH v3 04/14] arm64: dts: qcom: sc7280: Clean up sdc1 / sdc2
 pinctrl
Message-ID: <YfsIyGEks7O9DGXb@google.com>
References: <20220202212348.1391534-1-dianders@chromium.org>
 <20220202132301.v3.4.I79baad7f52351aafb470f8b21a9fa79d7031ad6a@changeid>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220202132301.v3.4.I79baad7f52351aafb470f8b21a9fa79d7031ad6a@changeid>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Feb 02, 2022 at 01:23:38PM -0800, Douglas Anderson wrote:
> This patch makes a few improvements to the way that sdc1 / sdc2
> pinctrl is specified on sc7280:
> 
> 1. There's no reason to "group" the sdc pins into one overarching node
> and there's a downside: we have to replicate the hierarchy in the
> board device tree files. Let's clean this up.
> 
> 2. There's really not a lot of reason not to list the "pinctrl" for
> sdc1 (eMMC) in the SoC dtsi file. These aren't GPIO pins and
> everyone's going to specify the same pins.
> 
> 3. Even though it's likely that boards will need to override pinctrl
> for sdc2 (SD card) to add the card detect GPIO, we can be symmetric
> and add it to the SoC dsti file.
> 
> 4. Let's get rid of the word "on" from the normal config and add a
> "sleep" suffix to the sleep config. This looks cleaner to me.
> 
> This is intended to be a no-op change but it could plausibly change
> behavior depending on how the pinctrl code parses things. One thing to
> note is that "SD card detect" is explicitly listed now as keeping its
> pull enabled in sleep since we still want to detect card insertions
> even if the controller is suspended (because no card is inserted). The
> pinctrl framework likely did this anyway, but it's nice to see it
> explicit.

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
