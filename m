Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B727C751715
	for <lists+devicetree@lfdr.de>; Thu, 13 Jul 2023 06:01:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233775AbjGMEBx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jul 2023 00:01:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55086 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233757AbjGMEBt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Jul 2023 00:01:49 -0400
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com [IPv6:2607:f8b0:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 21E232115
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 21:01:46 -0700 (PDT)
Received: by mail-pg1-x529.google.com with SMTP id 41be03b00d2f7-55779047021so214316a12.3
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 21:01:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689220905; x=1691812905;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=abCHUQktP5MJunGBbFxiEtMxCTOfDURCs+9p52JRh/8=;
        b=HjK9iHX7wfTwt0WHdtpjWucYj2hidccMYbEbfsz2HaytzyZOvXzt78mua0lgl5IlIa
         4n8pR0Ervv3ZNPQW0aiaotNEgrc8G9P7ubFkK2w6+uaoh03we3rfB9S9ynz9zWoOuOEz
         lHkjkcidb1S9n5aecE1dD3vQEn9ynCHjjzLt0qGaEmQIz7BNLbOBxS0+eHcqJmGfAjN+
         4x7A3nxiUvKyReshFuNjqmmRv5Pt09QZeyl8M7Jk6c4UzSh5ofl0w0VS8yDOH9hcFT0g
         qHkL9jM9Syo7TkgngMA20/WvY1YNhHhCK6Px0eOGJ6rLaX45fFjBLShWD0A8YzBmFN+x
         uHLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689220905; x=1691812905;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=abCHUQktP5MJunGBbFxiEtMxCTOfDURCs+9p52JRh/8=;
        b=bphJ7uaUx+KDVG1N/aSkPRyVSyAfYp4L2ktNGwZi+n11rohU0+5QddJ8lUvjqz9B1S
         xqQ4ubNIgQ/6DZkAL7/8kjTVEZ6CTeBnAAVE5XIw6P6MOxzLH//Dwuv92lZYK89x5COH
         2T+zJCy+5KfqowTrpMV4YSVisGPXFpvGfVmZ7CiFsJ2ExXJTY2V+vs1cFjYHnus6RapL
         92vg1yz0hZTPW5HcsMvMxtSFJchp74byr3fSGamSkb/cqhKleEK5yNu/XHLeGZJfij/U
         bDG3eupvrsgr/Z7jmHmC3b2AJrgeT1aeoTFctkUVko6pdky/LXW4t6T0S0JMt74S96T+
         C2gg==
X-Gm-Message-State: ABy/qLbHJVC3HU6eVuNBMaS/jUwMJRYsluivHMI4D63pP6vX5NG2Sk91
        VIOl4tYUwxOYvF+Cv0CKG70fhw==
X-Google-Smtp-Source: APBJJlFilkt4vdM3RaaiQYzF3nbBwT8MsRIDTapNiyPOosqYEeusiwuW4IQKRXYE04xw400mySQ6pg==
X-Received: by 2002:a17:902:c40c:b0:1b9:f7dc:b4f6 with SMTP id k12-20020a170902c40c00b001b9f7dcb4f6mr395931plk.44.1689220905312;
        Wed, 12 Jul 2023 21:01:45 -0700 (PDT)
Received: from localhost ([122.172.87.195])
        by smtp.gmail.com with ESMTPSA id c15-20020a170902cb0f00b001ae469ca0c0sm4771592ply.245.2023.07.12.21.01.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jul 2023 21:01:44 -0700 (PDT)
Date:   Thu, 13 Jul 2023 09:31:42 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc:     vireshk@kernel.org, nm@ti.com, sboyd@kernel.org,
        myungjoo.ham@samsung.com, kyungmin.park@samsung.com,
        cw00.choi@samsung.com, andersson@kernel.org,
        konrad.dybcio@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        quic_asutoshd@quicinc.com, quic_cang@quicinc.com,
        quic_nitirawa@quicinc.com, quic_narepall@quicinc.com,
        quic_bhaskarv@quicinc.com, quic_richardp@quicinc.com,
        quic_nguyenb@quicinc.com, quic_ziqichen@quicinc.com,
        bmasney@redhat.com, krzysztof.kozlowski@linaro.org
Subject: Re: [PATCH 10/14] scsi: ufs: core: Add OPP support for scaling
 clocks and regulators
Message-ID: <20230713040142.3nsrzezvi2hsp52e@vireshk-i7>
References: <20230712103213.101770-1-manivannan.sadhasivam@linaro.org>
 <20230712103213.101770-11-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230712103213.101770-11-manivannan.sadhasivam@linaro.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12-07-23, 16:02, Manivannan Sadhasivam wrote:
> +static int ufshcd_opp_set_rate(struct ufs_hba *hba, unsigned long freq)
> +{
> +	struct dev_pm_opp *opp;
> +
> +	opp = dev_pm_opp_find_freq_floor_indexed(hba->dev,
> +						 &freq, 0);
> +	if (IS_ERR(opp))
> +		return PTR_ERR(opp);
> +
> +	dev_pm_opp_put(opp);

You can't free the OPP while you are still using it :)

> +
> +	return dev_pm_opp_set_opp(hba->dev, opp);
> +}

-- 
viresh
