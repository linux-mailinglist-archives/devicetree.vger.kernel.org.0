Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 211C0333D90
	for <lists+devicetree@lfdr.de>; Wed, 10 Mar 2021 14:24:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229503AbhCJNXb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Mar 2021 08:23:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45806 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231272AbhCJNXZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Mar 2021 08:23:25 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E937CC061760
        for <devicetree@vger.kernel.org>; Wed, 10 Mar 2021 05:23:24 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id a18so23280123wrc.13
        for <devicetree@vger.kernel.org>; Wed, 10 Mar 2021 05:23:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=C1riStuZvroX7osFRH+wGsNryHjN58V31vmWLCfsSAU=;
        b=ihncK1kArv11gkDmKGjQ7tOH9WiwbFTLafa/ho8rWdjWwNr2gMO2YitOf0Y6Y/Ym0F
         3uavxY4jDPtThRGzw61P9dhD5ZnAO+Q2j5+lVmx8iCPG+QALVDyZxsDPLTuQvlCUXTBe
         xFhh5K99JvvI+o+cmQTjzdbJqsvsx3DpTNd+PWunDtQhg154uJlA4mbCxbhKP8p4HGEY
         mrkBcU/IQByuCpUEz1SSzugm/oxZIQVXqJUhseRnslQ3XR6s86Fv/TIjTfUHBnp+lPP3
         miuad+8qMbfZ6xHwIScU8i1f+6Rbnj0a2QiNYJdXDCITiPIUy+CzcplvQdj2RNckhBMn
         0oxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=C1riStuZvroX7osFRH+wGsNryHjN58V31vmWLCfsSAU=;
        b=W6M1YlsflDVCpdsk+0tkxQ/2PiNFXK2muDODsXe9dVZrRwB9jgWaKytzkBD8kfpbVa
         BWt9FBi4WHLzoPa0LfzkpNQWl/ujsie++d9ElQiWCYINWPc4VDM5WZKPlVAKaL6IP/tP
         bu8dyoNsF12JwT7PLCwVR7g0ecBkJ+2oAFtnT1enErWFDIUxsfNsANn4Px683dboEVAP
         qfACp7h+OibKsHtwk7pC5AuCbFiQ30x+c1pZ8XFlLHnqD29E0divNMm9Ino5HTKtWE16
         u0BGxKthEV5yaPEA8VDGWYWutKep3w2xx5xd+naZkRvspcE1Xhh54hYtOYQEtu9uEJAR
         6kdg==
X-Gm-Message-State: AOAM531hUs71cxPSYvE+Ar03K+T0m7uxz/9qmsJ7ZCYRgZRFHXmaViWD
        pBtUk4Zd7Egf+jWifOdybcwv8QIkbrNeww==
X-Google-Smtp-Source: ABdhPJy6qzJB2s0RsnCOW2r7Rpd6qlvznVMwhYl+GLA33b8pPzObM/4xP3Qn9wna7bcQXEXf0rDdHQ==
X-Received: by 2002:a5d:6cab:: with SMTP id a11mr3504901wra.419.1615382603472;
        Wed, 10 Mar 2021 05:23:23 -0800 (PST)
Received: from ?IPv6:2a01:e34:ed2f:f020:8018:efa9:4421:9140? ([2a01:e34:ed2f:f020:8018:efa9:4421:9140])
        by smtp.googlemail.com with ESMTPSA id j6sm8767348wmq.16.2021.03.10.05.23.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Mar 2021 05:23:23 -0800 (PST)
Subject: Re: [PATCH v2] dt-bindings: timer: renesas,tmu: Document missing Gen3
 SoCs
To:     =?UTF-8?Q?Niklas_S=c3=b6derlund?= 
        <niklas.soderlund+renesas@ragnatech.se>, devicetree@vger.kernel.org
Cc:     linux-renesas-soc@vger.kernel.org, Rob Herring <robh@kernel.org>,
        Geert Uytterhoeven <geert+renesas@glider.be>
References: <20210211143102.350719-1-niklas.soderlund+renesas@ragnatech.se>
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <c12fd07a-b653-4269-1f3e-24d2a15df931@linaro.org>
Date:   Wed, 10 Mar 2021 14:23:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210211143102.350719-1-niklas.soderlund+renesas@ragnatech.se>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/02/2021 15:31, Niklas Söderlund wrote:
> Add missing bindings for Gen3 SoCs.
> 
> Signed-off-by: Niklas Söderlund <niklas.soderlund+renesas@ragnatech.se>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Appliedn thanks


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog
