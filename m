Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0E214269D89
	for <lists+devicetree@lfdr.de>; Tue, 15 Sep 2020 06:42:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726171AbgIOEmD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Sep 2020 00:42:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56548 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726156AbgIOEl7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Sep 2020 00:41:59 -0400
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com [IPv6:2607:f8b0:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DF424C06178A
        for <devicetree@vger.kernel.org>; Mon, 14 Sep 2020 21:41:58 -0700 (PDT)
Received: by mail-ot1-x343.google.com with SMTP id e23so2006088otk.7
        for <devicetree@vger.kernel.org>; Mon, 14 Sep 2020 21:41:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=I/ZnzMpFblwaWryRS21SJ/GyazzhCSsArSdcbBdV5LQ=;
        b=ToH3Ovt7Gu16Tk3FQija82rEvQjY97itvmMTSLJvj2ztm8dAoWTTAeQgvY4s2GPy8k
         3czF78ECJQ4Yb1DPXtMOOYwZchibDTSdlyDtvrRQiGYjtEs1mfbnXOaEm6O81YrY3tz9
         Ch2tso6Wt+mHTsPcmc8D/Gd+Qdf+2+sh6voSL/Y8vfnevbHb737qHzeBKul0lE/X9DVN
         U1vToegbxuDVL4xMNZeDzjR4uENEwFa1JaO59bITPBZx62vKbhrmC5OTBv6xx44fsCFs
         d+gjm5eBuF2erL+0H3ko5zIlLzdBcw22leurTGk+55scHWvrolRzqXgANPg2gHsTE+YW
         InZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=I/ZnzMpFblwaWryRS21SJ/GyazzhCSsArSdcbBdV5LQ=;
        b=czUNrVj067uHt6/7o54L8wDc2pptrM56Qred4xJpRg3fEHkaL+8qUs7st/zEN4g1Cm
         NETqribBqSRWIXdBtW1x1wQcqrnN6Uds56rmzYKHA2ZqpGM6kD3GiGoFBIkMV2urMSl1
         lddbFTD/J2WsxIA7lbeBb2/sWOt4bmizjMJTO8sooJGjcQ8jnCf+1eWB1lIuEr9EXPfl
         jgEo0d5Gw6NiTuJef3gcplZOh98XFtiMobFgfBuGzo72/0CJpg7/1mlQ4vvss2BdA1J5
         /2ma7VQjORn8PFYnmbqwqfA3xjWVlgABH5McDgO1WU/+oJsigmSwmrE/DIpxtRUN1MBG
         Nv0A==
X-Gm-Message-State: AOAM532yYOEJWKZXbeRqXDFc0q2jli7OszEJzVO8sCvBWB0jmagTE/1a
        n1+15PUb/NbyPMkSajtivNOg5Q==
X-Google-Smtp-Source: ABdhPJwsjtbia2zRcFgxcthB6iDRW9n/DpQMSzL87iGZhXFNS7DLpTSgAV4OiMmIDfzMCuhg3ZKQyQ==
X-Received: by 2002:a05:6830:1653:: with SMTP id h19mr10617054otr.147.1600144917697;
        Mon, 14 Sep 2020 21:41:57 -0700 (PDT)
Received: from yoga ([2605:6000:e5cb:c100:8898:14ff:fe6d:34e])
        by smtp.gmail.com with ESMTPSA id i23sm5843654oos.17.2020.09.14.21.41.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Sep 2020 21:41:56 -0700 (PDT)
Date:   Mon, 14 Sep 2020 23:41:54 -0500
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     "Bao D. Nguyen" <nguyenb@codeaurora.org>
Cc:     cang@codeaurora.org, asutoshd@codeaurora.org,
        martin.petersen@oracle.com, linux-scsi@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Avri Altman <Avri.Altman@wdc.com>,
        Vinod Koul <vkoul@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v1 1/2] scsi: dt-bindings: ufs: Add vcc-voltage-level for
 UFS
Message-ID: <20200915044154.GB670377@yoga>
References: <cover.1598939393.git.nguyenb@codeaurora.org>
 <0a9d395dc38433501f9652a9236856d0ac840b77.1598939393.git.nguyenb@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0a9d395dc38433501f9652a9236856d0ac840b77.1598939393.git.nguyenb@codeaurora.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue 01 Sep 01:00 CDT 2020, Bao D. Nguyen wrote:

> UFS's specifications supports a range of Vcc operating
> voltage levels. Add documentation for the UFS's Vcc voltage
> levels setting.
> 
> Signed-off-by: Can Guo <cang@codeaurora.org>
> Signed-off-by: Asutosh Das <asutoshd@codeaurora.org>
> Signed-off-by: Bao D. Nguyen <nguyenb@codeaurora.org>
> ---
>  Documentation/devicetree/bindings/ufs/ufshcd-pltfrm.txt | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/ufs/ufshcd-pltfrm.txt b/Documentation/devicetree/bindings/ufs/ufshcd-pltfrm.txt
> index 415ccdd..7257b32 100644
> --- a/Documentation/devicetree/bindings/ufs/ufshcd-pltfrm.txt
> +++ b/Documentation/devicetree/bindings/ufs/ufshcd-pltfrm.txt
> @@ -23,6 +23,8 @@ Optional properties:
>                            with "phys" attribute, provides phandle to UFS PHY node
>  - vdd-hba-supply        : phandle to UFS host controller supply regulator node
>  - vcc-supply            : phandle to VCC supply regulator node
> +- vcc-voltage-level     : specifies voltage levels for VCC supply.
> +                          Should be specified in pairs (min, max), units uV.

What exactly are these pairs representing?

Is this supposed to be 3 pairs of (min,max) for vcc, vcc and vccq2 to be
passed into a regulator_set_voltage() for each regulator?

Or are these some sort of "operating points" for the vcc-supply?

Regards,
Bjorn

>  - vccq-supply           : phandle to VCCQ supply regulator node
>  - vccq2-supply          : phandle to VCCQ2 supply regulator node
>  - vcc-supply-1p8        : For embedded UFS devices, valid VCC range is 1.7-1.95V
> -- 
> The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
> a Linux Foundation Collaborative Project
> 
