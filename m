Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3504858B72C
	for <lists+devicetree@lfdr.de>; Sat,  6 Aug 2022 18:59:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233878AbiHFQ6Z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 6 Aug 2022 12:58:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39898 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233786AbiHFQ6W (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 6 Aug 2022 12:58:22 -0400
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8BCB1DED5
        for <devicetree@vger.kernel.org>; Sat,  6 Aug 2022 09:58:21 -0700 (PDT)
Received: by mail-pj1-x102b.google.com with SMTP id t22so5362407pjy.1
        for <devicetree@vger.kernel.org>; Sat, 06 Aug 2022 09:58:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=NzKRGCeBw0HtZvKt86J1N8xa2Nei5fwynFuykQCdLQY=;
        b=DHTC+sGNoi7LqLQozrWuyyfRQqoSg03P1aHoLXkI8tWwYUaCyUgW5/k2EI6xCutxYy
         nhk42CqaJrjb5fkFSkoU7ogO7gVIbrHwWSHidtTBi6Vq7M5OUi41obYCAslWtPEaUrSB
         vExCW5o+a24cPgRwh2uoTfP0h7HaxHDpJLj17B8YERKDyNxwQrJvCqnPBiTozyrioFgU
         cIgQIxqXLFpvlcE0M31nPVAZnXTrZabYtaDZOrBnT6OumxZUfDpd29ithvLQuAh5FJST
         4mm4OouSP2LN3+xKhebKwkVLvlKyJay1shHXzMhZdKD/s852mGtaiSs80pkWCfp8tkr1
         VNlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=NzKRGCeBw0HtZvKt86J1N8xa2Nei5fwynFuykQCdLQY=;
        b=m8xRXYwDipYzCQXlk1kTAV+12zzo+XJltoCmyQcunrVNySNmH0/iT+xnhnCzTBpD0w
         g7kGuohMqpW0ikJlBSjHu1ugnFztMLcO51L1XIBNpcy1rYKj6yeS3UuoQClQoSvshhrn
         m4270oYWb0k63LEWbYJYQVannPLx68zhx6/FZ5y+JGm5HISl6Jyje9IFdGVhZGqPf3PR
         Gb5+KBha2hkCHWQg/0hFkErph9uH3WKV9/RpTyJwysimrOXMAeRthBSxcCu7KgxMQA/J
         SrhiZxMA1vWWNvEbmg07ljzQI6YNa9X1q1FRAE3dgIuUF/fSyBEhXzqQlBdd0vBEO1IF
         3bGg==
X-Gm-Message-State: ACgBeo0gkwJX9K5qcdAt8FyBt8NIbOmlPfiuEXeFgkpDri/L6PmDk90q
        C8B4Xn6yiWzv46Wnk4+Iaijq
X-Google-Smtp-Source: AA6agR6O44L9sEXXxNs0RX4ePvxszqiwayW4yVSDY2VVIsklhuLkNbxXEeRTDxElsUym3WXDsmfZSg==
X-Received: by 2002:a17:902:d509:b0:16f:1e1:2063 with SMTP id b9-20020a170902d50900b0016f01e12063mr11576561plg.131.1659805101181;
        Sat, 06 Aug 2022 09:58:21 -0700 (PDT)
Received: from thinkpad ([117.202.188.20])
        by smtp.gmail.com with ESMTPSA id f1-20020a170902f38100b0016c1b178628sm5093820ple.269.2022.08.06.09.58.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 06 Aug 2022 09:58:20 -0700 (PDT)
Date:   Sat, 6 Aug 2022 22:28:15 +0530
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     Johan Hovold <johan+linaro@kernel.org>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 6/7] arm64: dts: qcom: sc8280xp-lenovo-thinkpad-x13s:
 mark HID wakeup sources
Message-ID: <20220806165815.GS14384@thinkpad>
References: <20220805092317.4985-1-johan+linaro@kernel.org>
 <20220805092317.4985-7-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220805092317.4985-7-johan+linaro@kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Aug 05, 2022 at 11:23:16AM +0200, Johan Hovold wrote:
> The touchpad and keyboard can wake the system from suspend so declare
> them as wakeup sources.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Thanks,
Mani

> ---
>  arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
> index 76ba2d5fa17e..1ca72f6ba55a 100644
> --- a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
> +++ b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
> @@ -221,6 +221,8 @@ touchpad@2c {
>  
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&tpad_default>;
> +
> +		wakeup-source;
>  	};
>  
>  	keyboard@68 {
> @@ -233,6 +235,8 @@ keyboard@68 {
>  
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&kybd_default>;
> +
> +		wakeup-source;
>  	};
>  };
>  
> -- 
> 2.35.1
> 

-- 
மணிவண்ணன் சதாசிவம்
