Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5FE444C4098
	for <lists+devicetree@lfdr.de>; Fri, 25 Feb 2022 09:50:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238672AbiBYIvZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Feb 2022 03:51:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46032 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238668AbiBYIvT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Feb 2022 03:51:19 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D0418177D3F
        for <devicetree@vger.kernel.org>; Fri, 25 Feb 2022 00:50:47 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id j22so3295720wrb.13
        for <devicetree@vger.kernel.org>; Fri, 25 Feb 2022 00:50:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=2lY0u101NHS25Bf+AKocoC39f6jffQDgfR3fIOyGjaY=;
        b=AJKHAIyhHp6byvwy326NsexS9RNvHva1Av0IbC50Z3iUtHpLoXnvTqjuPRNt+QMBy/
         KH7dzirF7F3oqNuWrJpCl69YpUCX9SQCiiD2eadAwM79yZjbRKa80GrFfW7H6YnjmqJp
         6/mEyAt5ZWP7CPW/BQtC9reb7y/SVp16bMyagyi+gdLAWuaZorbKixLAPhYIfchAf2vC
         OcUkJP6XCtJjb/9XcvQrN983AY5IxwXnjfyzD6+nbcAkVv9k9XzCm+54IKaPZq6lSE/r
         bFSc85h1aqharaM5P+OZewku8YPgyxVi0pMLe2K2iEY4ZSCw3H41/WLMSd0tyM2gwIV3
         bjmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=2lY0u101NHS25Bf+AKocoC39f6jffQDgfR3fIOyGjaY=;
        b=4LblzavlvCPRbMMMT+RC2lhX7mLrFl4Ptb2F5V2DkPDn92VZoMMq+3IPL2y618YuIu
         AAPZfa8+3fcImG8NcQPXI4W8GWsL1m3bVFkjSTFx5/z2GvZcnu2Fsy06YiOWegCRpRmP
         pyEf4bsB6/RAnw6TSxFSNlN1Y3owV+peyPQo0syCKk7C54bI9aK1HJSi4cL8mX4uBHeX
         4T2i/vesM+Vgqj5M+IbPRCozsnJTv6q/zkJjHShXeO403PC+nzH/ZhpyQck3oDkuRLQm
         Ua+4Sy0FsiDsuxfgg70rrTyF9l7xzjM9WpkwKK5qYRC3c7bb84Hu1JEvYC8I7k58gLR4
         N+OA==
X-Gm-Message-State: AOAM531r99eDjdvdU6d/84ffsL0kD2NucWXAt5bpfaVjJ4r9NGMK5/Lr
        CaaPt8gWqyu40nZZk6UCNxlj/w==
X-Google-Smtp-Source: ABdhPJzWxKKXs6S9kjR+IcoPWT5GbPi8hkQ7b9MEqzM5x3768oUmrDaOGaEFmYije36BYlfgmRUFPQ==
X-Received: by 2002:adf:9f0f:0:b0:1ed:c016:dfe5 with SMTP id l15-20020adf9f0f000000b001edc016dfe5mr5060673wrf.675.1645779046292;
        Fri, 25 Feb 2022 00:50:46 -0800 (PST)
Received: from google.com (cpc155339-bagu17-2-0-cust87.1-3.cable.virginm.net. [86.27.177.88])
        by smtp.gmail.com with ESMTPSA id m18-20020a5d56d2000000b001edc00dbeeasm1565980wrw.69.2022.02.25.00.50.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Feb 2022 00:50:45 -0800 (PST)
Date:   Fri, 25 Feb 2022 08:50:43 +0000
From:   Lee Jones <lee.jones@linaro.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Caleb Connolly <caleb.connolly@linaro.org>,
        Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>, linux-iio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        sumit.semwal@linaro.org, amit.pundir@linaro.org,
        john.stultz@linaro.org, kernel test robot <lkp@intel.com>,
        Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH v8 2/9] mfd: qcom-spmi-pmic: expose the PMIC revid
 information to clients
Message-ID: <YhiYY/sXMvQ4VCZd@google.com>
References: <20220221220743.541704-1-caleb.connolly@linaro.org>
 <20220221220743.541704-3-caleb.connolly@linaro.org>
 <Yhft4zNcbD3ojN6i@builder.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Yhft4zNcbD3ojN6i@builder.lan>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 24 Feb 2022, Bjorn Andersson wrote:

> On Mon 21 Feb 16:07 CST 2022, Caleb Connolly wrote:
> 
> > Some PMIC functions such as the RRADC need to be aware of the PMIC
> > chip revision information to implement errata or otherwise adjust
> > behaviour, export the PMIC information to enable this.
> > 
> > This is specifically required to enable the RRADC to adjust
> > coefficients based on which chip fab the PMIC was produced in,
> > this can vary per unique device and therefore has to be read at
> > runtime.
> > 
> > [bugs in previous revision]
> > Reported-by: kernel test robot <lkp@intel.com>
> > Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> 
> This says is that "kernel test robot" and Dan reported that something
> needed to be fixed and this patch is the fix for this.
> 
> So even though their emails asks for you to give them credit like this
> you can't do it for new patches.

Right, or else you'd have to give credit to anyone who provided you
with a review.  This could potentially grow to quite a long list.

-- 
Lee Jones [李琼斯]
Principal Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
