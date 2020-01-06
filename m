Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 28707131877
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2020 20:16:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726759AbgAFTPy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Jan 2020 14:15:54 -0500
Received: from mail-pf1-f195.google.com ([209.85.210.195]:34961 "EHLO
        mail-pf1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726742AbgAFTPx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Jan 2020 14:15:53 -0500
Received: by mail-pf1-f195.google.com with SMTP id i23so21961430pfo.2
        for <devicetree@vger.kernel.org>; Mon, 06 Jan 2020 11:15:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ebYvaopqdPQE4iTnO1QzF+XjovTSGvUJKDf1PFA/Ysc=;
        b=Pm7zqWzCezSNB83fb8CFkcOFMzH9M9mVXfza3NE3Afqi0/3y5dQQmFsVZCldUllf8A
         4WN0ip3LDbI7gPMFIbe30Ur6dUWDgkLjCYAscilpgsGJ/E9KcoLmUVbcFn3G993zDsJP
         e4zonurP3cAPpwUgnuDER6YeaO9btWzuZOVv+oZYzMPXaPykI/xqm/rycO8S6lPPWlyt
         wA4C2IjQSfvyC5SZ2YqaiSf3OrVCN2BBW9TDKH6gEUKME27aSBv6rjFkVFcWA5hYtErn
         m5wSxj7J3z6CP9BJnyzPcI/XwrCJ3Hm+T+mNT57BfS6jSEoWs3IEO8BGMhXDDphqaeXC
         ZQ2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ebYvaopqdPQE4iTnO1QzF+XjovTSGvUJKDf1PFA/Ysc=;
        b=cM7dSQQngIMAvB+cjO/q7WFvlUsFa1QCOozI4OnBYIeUXAH7lgEMrdScEeOcNO3Rcx
         sR+Ud6aLHXu/UMdCMirL/C28QPFrg1EAhR+8MtH3NAOh2NH1Hb1nlPih0S99T36r1keg
         CtGMTfWqg+1HOo0QiZKovmiR5aEMTRFYqHwftOeL/OizHB0eVDm3cgiqVf1FHiV52u+f
         k2Z+3FjnJnTrpYc7rZ40OsW6aFWXgfxv0ySmAuxzwqRzvR4JWZHfqpjTVfxOqxrXg3Vf
         5TXZUQv2zRS0tvAG8G4n6wO0Y4tauPQ7+Wp0j2MODpn0uzOHWsD/x937Bh5NF97Z7vlo
         dwug==
X-Gm-Message-State: APjAAAWmjwYIkeWHyRjarIImMRWdA7jPyLj4HKNKix1EQj29tSLC3rci
        ZFYwE/4H/QaRxkhwGtVxLN3ZFg==
X-Google-Smtp-Source: APXvYqyTrMUuggjcjCVjWZThwMhUiBXsZlVSJjWQLamuL2PeE7k0ysia04/f3gpOxFjmjbjAKfnkBg==
X-Received: by 2002:a63:fe50:: with SMTP id x16mr93985603pgj.31.1578338153208;
        Mon, 06 Jan 2020 11:15:53 -0800 (PST)
Received: from builder (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id k9sm25088975pjo.19.2020.01.06.11.15.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jan 2020 11:15:52 -0800 (PST)
Date:   Mon, 6 Jan 2020 11:15:50 -0800
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Rajeshwari <rkambl@codeaurora.org>
Cc:     Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Amit Kucheria <amit.kucheria@linaro.org>,
        Zhang Rui <rui.zhang@intel.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        sanm@codeaurora.org, sivaa@codeaurora.org, manaf@codeaurora.org
Subject: Re: [PATCH v2 2/2] dt-bindings: thermal: tsens: Add configuration in
 yaml
Message-ID: <20200106191550.GW3755841@builder>
References: <1578317369-16045-1-git-send-email-rkambl@codeaurora.org>
 <1578317369-16045-3-git-send-email-rkambl@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1578317369-16045-3-git-send-email-rkambl@codeaurora.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon 06 Jan 05:29 PST 2020, Rajeshwari wrote:

> Added configuration in dt-bindings for SC7180.
> 

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

> Signed-off-by: Rajeshwari <rkambl@codeaurora.org>
> ---
>  Documentation/devicetree/bindings/thermal/qcom-tsens.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml b/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
> index eef13b9..c0ed030 100644
> --- a/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
> +++ b/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
> @@ -38,6 +38,7 @@ properties:
>            - enum:
>                - qcom,msm8996-tsens
>                - qcom,msm8998-tsens
> +              - qcom,sc7180-tsens
>                - qcom,sdm845-tsens
>            - const: qcom,tsens-v2
>  
> -- 
> QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member 
> of Code Aurora Forum, hosted by The Linux Foundation
> 
