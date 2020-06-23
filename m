Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5325D204AD3
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2020 09:18:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731006AbgFWHRy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Jun 2020 03:17:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43890 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731505AbgFWHRx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Jun 2020 03:17:53 -0400
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com [IPv6:2607:f8b0:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 147D0C061797
        for <devicetree@vger.kernel.org>; Tue, 23 Jun 2020 00:17:52 -0700 (PDT)
Received: by mail-ot1-x342.google.com with SMTP id e5so15547403ote.11
        for <devicetree@vger.kernel.org>; Tue, 23 Jun 2020 00:17:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=OrQkyvC22e1MwYWC4yiJoh4JThum+qbMQLILKSvLEQo=;
        b=RShs6dv7sFJ452LX+nOtFOcGZusftsuBQMDT8SzDKmgtVEJts9p2PoLcI+A8LIbvEX
         vQBxpR0ooCDzmoXbFw6HlwU7lgGudcAjrrQe5PhR0yDUc7OuEb+rUIa+0tjQbAQBLibM
         fDIrAfL02eLpmnYqcsE9vkqs/Qq2jYweRTP17/7HMOhsZkH2HHobrQyr0pt+Sq6Gi697
         40Rli9mSMsWDSnSZAizj8DZkhuwYPJ5A1k9vjER/qUpuYSTy2trHVu6q5Ad50lJ6voGS
         TR/rnQQu5FopflXbMBbO4Q2tohc85ETIOnqGPVlb2M4k7vU6T4LOF1MK6aqYpNxk8o1e
         665w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=OrQkyvC22e1MwYWC4yiJoh4JThum+qbMQLILKSvLEQo=;
        b=G4BGcfM2OWRORHkg3V0S96aNoRYcbWqpE7E7gm5p4Q3DRlMrfYw3rV8XWZ/fJ4BbRm
         VK9hYJFuEBXfpDKHW1XWUIe8miL8+xjRx66gQh3I2mNghDyPTBJ94xfosiFL3ZZTPf0B
         6QT46c02ejPr9a9cdnwGRkOvXjmJCLgCtog//ATwmhlJ4y832mGrTV2ktIXesnzsJi0/
         aTewybehkIcnFTIEoIE6DpMXK5c7p00asUEjkW3pTHWPTYcT5kZqqJC65v5/ofB7Bdnr
         9hD1khXzHFW21+JrqvG5JjHLYAa5XTp420CB638QjcN52hHU4l4MCkp0EAMv96NnSw59
         d09g==
X-Gm-Message-State: AOAM531jCUvMT402Qjq9X22sH4LJOU97ychv8+smXIusFdEiL3XOd5n2
        qdAavK+W40aTQPAMRUpnuYWQ/w==
X-Google-Smtp-Source: ABdhPJwp+BnWQ4Ps7xLiLjdxtbq87IaPZN18D99VL8cgp/knyF5k0izryN9gIZCA62v1cv85sXBA5w==
X-Received: by 2002:a05:6830:130b:: with SMTP id p11mr17321671otq.293.1592896671350;
        Tue, 23 Jun 2020 00:17:51 -0700 (PDT)
Received: from builder.lan (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id q10sm3877909otl.40.2020.06.23.00.17.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jun 2020 00:17:50 -0700 (PDT)
Date:   Tue, 23 Jun 2020 00:15:06 -0700
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Vincent Knecht <vincent.knecht@mailoo.org>
Cc:     sboyd@kernel.org, konradybcio@gmail.com,
        Andy Gross <agross@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 3/4] drivers: soc: Add MSM8936 SMD RPM compatible
Message-ID: <20200623071506.GW128451@builder.lan>
References: <20200613072745.1249003-1-vincent.knecht@mailoo.org>
 <20200613072745.1249003-4-vincent.knecht@mailoo.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200613072745.1249003-4-vincent.knecht@mailoo.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat 13 Jun 00:27 PDT 2020, Vincent Knecht wrote:

> From: Konrad Dybcio <konradybcio@gmail.com>
> 
> Signed-off-by: Konrad Dybcio <konradybcio@gmail.com>
> Signed-off-by: Vincent Knecht <vincent.knecht@mailoo.org>

Patch 3 and 4 applied.

Thanks,
Bjorn

> ---
>  drivers/soc/qcom/smd-rpm.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/soc/qcom/smd-rpm.c b/drivers/soc/qcom/smd-rpm.c
> index 005dd30c58fa..8f290c67cb47 100644
> --- a/drivers/soc/qcom/smd-rpm.c
> +++ b/drivers/soc/qcom/smd-rpm.c
> @@ -231,6 +231,7 @@ static void qcom_smd_rpm_remove(struct rpmsg_device *rpdev)
>  static const struct of_device_id qcom_smd_rpm_of_match[] = {
>  	{ .compatible = "qcom,rpm-apq8084" },
>  	{ .compatible = "qcom,rpm-msm8916" },
> +	{ .compatible = "qcom,rpm-msm8936" },
>  	{ .compatible = "qcom,rpm-msm8974" },
>  	{ .compatible = "qcom,rpm-msm8976" },
>  	{ .compatible = "qcom,rpm-msm8996" },
> -- 
> 2.25.4
> 
> 
