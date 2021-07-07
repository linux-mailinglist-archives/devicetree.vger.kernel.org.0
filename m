Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EB7A63BE005
	for <lists+devicetree@lfdr.de>; Wed,  7 Jul 2021 02:04:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229910AbhGGAGo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Jul 2021 20:06:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46552 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229834AbhGGAGo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Jul 2021 20:06:44 -0400
Received: from mail-oi1-x233.google.com (mail-oi1-x233.google.com [IPv6:2607:f8b0:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0DBFDC06175F
        for <devicetree@vger.kernel.org>; Tue,  6 Jul 2021 17:04:05 -0700 (PDT)
Received: by mail-oi1-x233.google.com with SMTP id m3so1314183oig.10
        for <devicetree@vger.kernel.org>; Tue, 06 Jul 2021 17:04:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=1QTMHZDG9z+9+a8d5/AfP7uPs1EiMiVpp8sGhsHTNoY=;
        b=m1pcqVwB/6zxB35/St9BKzT/p8IRKleGxIAPt6tceii537fbNK0DndNrcKAK0HqHge
         /UbpBwExHiQ4Ly+Nma++Dc4agFiIw8s13awncdLFTf9ZSQs3Ilh+HDL0N4e1syHN9g+A
         TBqbojRFBqNNmYYgtx/UEiOtTev36GG6ytX/ZuehLMOybuD3XyO7KPbfDaKOHxvWGcYF
         YnZFMe3lgb6Dq+nAP1dfXhdSUC1eQxHQ0j0wBFbFiupxfSlJL6ftRCv6jvVk7i0IofbV
         nJ8ioftdZenOZTE0odKmBIJsvH0JJhts5j+o/wz43Inbrwu57pT6n/+oroP7BYJKcnjY
         QD3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=1QTMHZDG9z+9+a8d5/AfP7uPs1EiMiVpp8sGhsHTNoY=;
        b=kR2OOkV44pZHRDUKPKZbvxoJC7jqQpuZcSkqbDgnEcWEQu6nRiZtVUCNllSrJ13k9F
         8txsrRFrygingFYVCIcEiX2Uj69qYMt8C0hFbJ+sNFjnP9SZokEjCEL6T9heokqrEAjA
         6MKBgT/iJYFs6KcT7+EonbUU2iiRHgkgX2rJCp24YP0AvQbg88Pv4bxhbmdmDf/ojijr
         J2ghOrm1hMBjmcvAKOJ7u4L4QJZ01y4aWHcTx7mXVG67Q45veiQt/Oo9g7/arDNITQqV
         BOhoK04M0j58qzErpq0+gIaE8imHWxv1YwVP1Kt3jJcgzr98C7FBkZ92XMgVe0sAoUhY
         pWrg==
X-Gm-Message-State: AOAM530XghqPDQVmLgEQYyV6Z9wCPaGviilXfit8ZoO91taQFYFqV0q/
        z340S8jTYPGSGjFIiyBA1ukxyg==
X-Google-Smtp-Source: ABdhPJz5BCFxlQfyRd5TUhJNKqRc1UObZwT13vLp0PKy1hkPOwACX8uJmd6kqFepUGFgm5pYH7UQWg==
X-Received: by 2002:aca:b906:: with SMTP id j6mr2635239oif.40.1625616244024;
        Tue, 06 Jul 2021 17:04:04 -0700 (PDT)
Received: from yoga (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id v203sm3809295oib.37.2021.07.06.17.04.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jul 2021 17:04:03 -0700 (PDT)
Date:   Tue, 6 Jul 2021 19:04:01 -0500
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc:     vkoul@kernel.org, kishon@ti.com, agross@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        robh+dt@kernel.org, jonathan@marek.ca,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] arm64: dts: qcom: sm8250: fix usb2 qmp phy node
Message-ID: <YOTvcWnHFkbMHg6K@yoga>
References: <20210706230702.299047-1-bryan.odonoghue@linaro.org>
 <20210706230702.299047-2-bryan.odonoghue@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210706230702.299047-2-bryan.odonoghue@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue 06 Jul 18:07 CDT 2021, Bryan O'Donoghue wrote:

> From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> 
> Use 'lanes' as SuperSpeed lanes device node instead of just 'lane' to
> fix issues with TypeC support.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Fixes: be0624b99042 ("arm64: dts: qcom: sm8250: Add USB and PHY device nodes")
> Cc: robh+dt@kernel.org
> Cc: devicetree@vger.kernel.org
> Tested-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8250.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
> index 4c0de12aaba6..270d7ff59ec1 100644
> --- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
> @@ -2123,7 +2123,7 @@ usb_2_qmpphy: phy@88eb000 {
>  				 <&gcc GCC_USB3_PHY_SEC_BCR>;
>  			reset-names = "phy", "common";
>  
> -			usb_2_ssphy: lane@88eb200 {
> +			usb_2_ssphy: lanes@88eb200 {

The uni-phy binding says that this should be named "^phy@[0-9a-f]+$"

So while Dmitry is right about the logic in the driver, it would be nice
if you would spin this patch to make us pass the dt-binding check -
which can be sent independently from the driver patch.

Regards,
Bjorn

>  				reg = <0 0x088eb200 0 0x200>,
>  				      <0 0x088eb400 0 0x200>,
>  				      <0 0x088eb800 0 0x800>;
> -- 
> 2.30.1
> 
