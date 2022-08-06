Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1DC6C58B5FF
	for <lists+devicetree@lfdr.de>; Sat,  6 Aug 2022 16:15:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230349AbiHFOPs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 6 Aug 2022 10:15:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39572 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229983AbiHFOPs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 6 Aug 2022 10:15:48 -0400
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com [IPv6:2607:f8b0:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EABCD65B9
        for <devicetree@vger.kernel.org>; Sat,  6 Aug 2022 07:15:46 -0700 (PDT)
Received: by mail-pg1-x52a.google.com with SMTP id 13so4894785pgc.8
        for <devicetree@vger.kernel.org>; Sat, 06 Aug 2022 07:15:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=AdmoEx+WmT67i1BIIL03YLuO83QgajHTg/kt7epiFgg=;
        b=VrZJ2jGiKcVNK94TZNAGg/tkmL38wNQtqKf1THHLxvabAuue0RgYwgLjqMlPwYJPwr
         deDcuS/h4N+T+kUZ1zX+bKB6wUO8FseklOntC5piKZ2TBQXA+rDUSkYQyJamrMZ4szC4
         keWYVLrynR5M35re6QSxMrHFCuncmrp+JoLVjK2k2SlTzRYqJIcchVo36wfjSnctADoa
         xXLnAGuLJhUVz/NhozC9XK+6Sziz3RJNO+6pYDcF657f5KRrEJqe5hKTQOf/q3sInf4L
         AQ9TNGqMj0SVJBi/kJN4Q0FY4CvxGad5RLpwYq1a9DhRtI7QM/E3yk58J1ji5u9WyHP5
         KSLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=AdmoEx+WmT67i1BIIL03YLuO83QgajHTg/kt7epiFgg=;
        b=HfTnt0xINmNyEiiOSD4a464L/ZrEqaBd0iuiPceA9n9YzGuR8NYdZQyl9M11etP69j
         zHzjE5i4TvnC4s6uuuYZFnA4mOWU6JtC8s0C/KNn+JYdl0ZV/HqYRlvHAFJvNTCGbQCM
         t1qPir0G0GFPs/R1ga7slo99OwqEkW/fSya1QwG+l9pib45uXxcErkAyqDJgTtCgMJYS
         Khrr/2TV0cnrIGg+j7JCywXyNvD0oh/F+jfYLtBTDmcUvnLr4U3FEKTlDINIiFxrBkPF
         oDYtnO1sKTd3RyRL4VzV/kLcsRypxGokyiyg8dLWPhukQUaDkA5TA/Twx2BkbE7dFKB7
         IJZg==
X-Gm-Message-State: ACgBeo2P1wIH9lb+W2PgVodlJGm8kPtMFmqTIG6yWBVWoqzkTbJi+qh7
        T9qe4Z8njF2NCFpZ7NLEw2xn
X-Google-Smtp-Source: AA6agR53FZGAkMJLYJQ36JfX/HuotRuqldhgQsqY+teYfZJBmLRHMgEFBpkrxL9w0zZ1OKME5h++eQ==
X-Received: by 2002:a63:560e:0:b0:41c:590a:62ed with SMTP id k14-20020a63560e000000b0041c590a62edmr9686308pgb.250.1659795346368;
        Sat, 06 Aug 2022 07:15:46 -0700 (PDT)
Received: from thinkpad ([117.202.188.20])
        by smtp.gmail.com with ESMTPSA id z10-20020a6553ca000000b0041c1965dd96sm3207803pgr.27.2022.08.06.07.15.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 06 Aug 2022 07:15:45 -0700 (PDT)
Date:   Sat, 6 Aug 2022 19:45:36 +0530
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     Johan Hovold <johan+linaro@kernel.org>
Cc:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Felipe Balbi <balbi@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krishna Kurapati <quic_kriskura@quicinc.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Doug Anderson <dianders@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Pavankumar Kondeti <quic_pkondeti@quicinc.com>,
        quic_ppratap@quicinc.com, quic_vpulyala@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Randy Dunlap <rdunlap@infradead.org>
Subject: Re: [PATCH v2 3/9] usb: dwc3: qcom: fix gadget-only builds
Message-ID: <20220806141536.GD14384@thinkpad>
References: <20220804151001.23612-1-johan+linaro@kernel.org>
 <20220804151001.23612-4-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220804151001.23612-4-johan+linaro@kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Aug 04, 2022 at 05:09:55PM +0200, Johan Hovold wrote:
> A recent change added a dependency to the USB host stack and broke
> gadget-only builds of the driver.
> 
> Fixes: 6895ea55c385 ("usb: dwc3: qcom: Configure wakeup interrupts during suspend")
> Reported-by: Randy Dunlap <rdunlap@infradead.org>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> --`-
> 
> Changes in v2
>  - new patch
> 
>  drivers/usb/dwc3/dwc3-qcom.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/usb/dwc3/dwc3-qcom.c b/drivers/usb/dwc3/dwc3-qcom.c
> index be2e3dd36440..e9364141661b 100644
> --- a/drivers/usb/dwc3/dwc3-qcom.c
> +++ b/drivers/usb/dwc3/dwc3-qcom.c
> @@ -310,8 +310,11 @@ static enum usb_device_speed dwc3_qcom_read_usb2_speed(struct dwc3_qcom *qcom)
>  	 * currently supports only 1 port per controller. So
>  	 * this is sufficient.
>  	 */
> +#ifdef CONFIG_USB
>  	udev = usb_hub_find_child(hcd->self.root_hub, 1);
> -
> +#else
> +	udev = NULL;
> +#endif

Perhaps the check should be moved to the caller instead? This function still
references "usb_hcd" struct and I don't think that's intended for gadget only
mode.

Thanks,
Mani

>  	if (!udev)
>  		return USB_SPEED_UNKNOWN;
>  
> -- 
> 2.35.1
> 

-- 
மணிவண்ணன் சதாசிவம்
