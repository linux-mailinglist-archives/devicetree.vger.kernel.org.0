Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B94ED2DFA1A
	for <lists+devicetree@lfdr.de>; Mon, 21 Dec 2020 09:48:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726083AbgLUIrp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Dec 2020 03:47:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47196 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726115AbgLUIrp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Dec 2020 03:47:45 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 04E6CC061282
        for <devicetree@vger.kernel.org>; Mon, 21 Dec 2020 00:47:05 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id c133so9117150wme.4
        for <devicetree@vger.kernel.org>; Mon, 21 Dec 2020 00:47:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=vEiG9o1XZnpiz7GRm7rXRo+AfsTHnmoRY9rDDX1MSxA=;
        b=njDcRpmrv+L0wTxyMHLtLJrYmoa53R8FxjtrmDaPKml2JrdNDzEjOlxj0lxhMdw5AE
         QaSu2CVkM8paaOrouGhbJladQMuyc9wqcc/0efxSVcP9eT8gJoX47syXtriM0ZK6uU9z
         7BNt8pDFEJWuio1NaFnUuAAUfkNHV3sIM8eT49aeTh/NxrclBdQNJhMOahdy7OEfmH70
         084ws3FAIk0PRLT8VgqaSo443sTBkCQjZeJK6GTykYYpl/RFJTiIR0CnZPqcEQfWHez3
         y6/hfNqnQMiBWR8LiEEYyixGppNg5bBoe8CfLiklHJb5lZpn3oi98j12q8k+83HGIa6C
         9Wug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=vEiG9o1XZnpiz7GRm7rXRo+AfsTHnmoRY9rDDX1MSxA=;
        b=MZiIjsbC4vzFkFpLlCnIBf3P2J3AUzIfD8lSQG8xftqXrW9f1Gebbl3UMvSBYfX4D1
         4IoKaNNvUbnjrSzkCqKYUZAyBS967r7NDO23cnJTpL0AxRaIPn+xo+Hy35AmCZnVkKo7
         3vgWoMdpCnfQzMs571gmNmby+2nghWkukIHDBPwsDYfJr1XkD4KsHWZ9AlzoROJWOyzV
         2i/gXQ8AhdSERZCAVjiEMcSSvu3jtwcsp35xdqDTGGjXqn7J0uGTd5To2E+vsRNwvkee
         fny4SdNdzNGtqw5fqHjN1OOLJ47oRD1vFIqFjBaB8Z0tSmLlkOJZM8YQa/zmVLHN9fVN
         YLJw==
X-Gm-Message-State: AOAM533sBMyX209H2bIjSyHnP7HoxaRbyVXFvWDg/7tHB2NoBroSuTem
        lcWb9NaNdRAvoc9suLS9UQlyMQ==
X-Google-Smtp-Source: ABdhPJwpxiNJahLqGxL+eIpu0qbSqMQ9Dv2RMiksFauJ4viV1almpOeGx9Iu9IjpI9Z2fXxNrn36dQ==
X-Received: by 2002:a1c:dd07:: with SMTP id u7mr15698107wmg.51.1608540423740;
        Mon, 21 Dec 2020 00:47:03 -0800 (PST)
Received: from dell ([91.110.221.144])
        by smtp.gmail.com with ESMTPSA id b10sm22793097wmj.5.2020.12.21.00.47.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Dec 2020 00:47:02 -0800 (PST)
Date:   Mon, 21 Dec 2020 08:47:01 +0000
From:   Lee Jones <lee.jones@linaro.org>
To:     Kiran Gunda <kgunda@codeaurora.org>
Cc:     robh@kernel.org, swboyd@chromium.org,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH V4 2/2] mfd: qcom-spmi-pmic: Add support for pm6150 and
 pm6150l
Message-ID: <20201221084701.GB4825@dell>
References: <1608279292-24760-1-git-send-email-kgunda@codeaurora.org>
 <1608279292-24760-3-git-send-email-kgunda@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1608279292-24760-3-git-send-email-kgunda@codeaurora.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 18 Dec 2020, Kiran Gunda wrote:

> Add the compatibles and PMIC ids for pm6150 and pm6150l PMICs
> found on SC7180 based platforms.
> 
> Signed-off-by: Kiran Gunda <kgunda@codeaurora.org>
> ---
>  Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml | 2 ++
>  drivers/mfd/qcom-spmi-pmic.c                              | 4 ++++
>  2 files changed, 6 insertions(+)

I can't apply this until the file has been converted.

In the mean time:

For my own reference (apply this as-is to your sign-off block):

  Acked-for-MFD-by: Lee Jones <lee.jones@linaro.org>

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
