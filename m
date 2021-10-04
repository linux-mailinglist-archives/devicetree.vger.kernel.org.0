Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1A21F420666
	for <lists+devicetree@lfdr.de>; Mon,  4 Oct 2021 09:05:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229588AbhJDHHX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Oct 2021 03:07:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59518 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229478AbhJDHHW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Oct 2021 03:07:22 -0400
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 77BBFC0613EC
        for <devicetree@vger.kernel.org>; Mon,  4 Oct 2021 00:05:34 -0700 (PDT)
Received: by mail-pj1-x102c.google.com with SMTP id qe4-20020a17090b4f8400b0019f663cfcd1so7555373pjb.1
        for <devicetree@vger.kernel.org>; Mon, 04 Oct 2021 00:05:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=RPoe9yQ/p8JX2xrTYhiPsh6nCIk1jjrxqKzdQqWJyog=;
        b=Ka8y1AQQmTEFx8/r768QmfjGxG53lXA8UbkO6mDVZsaX+DQI8NaaDAcF3mBu9G9Xyd
         HUE6S7nv1P+pTi2De6WqhQC1deOIQ0Ke7YEYeLR5tuKrC1A05ShCiDTNwoLZxoOHW7Qx
         bLehQMyfGNeG/PjVcgu1gqrCRf40HaVU6o9scklcvA0BTypLghbyv8B43pyb5mChkEAb
         VEzNnd2+e72sLNEonol5rLBSnumCUUFEGUNO971Qi0B2/2tqyqMQuAZnSTlOkLLe1CiB
         WP04FkeCobT53WYfu4kl2vy9e9Wvbkyst6XAjIzAZb0kkWMLzU86rtsCf2FeqQqCZina
         efew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=RPoe9yQ/p8JX2xrTYhiPsh6nCIk1jjrxqKzdQqWJyog=;
        b=zagdGVJodmC4mSvXdLBRvj3mze3HBbSc3bFLJRDmN2NJdYHGkxHFBY0/F+DYb8AUI3
         DSCOWWbdgMYxKTAvC+bp7wzVHzPcZ9W+N/Sxv90tBQo8GUAsRyAqVyic0BrYzhlaerj7
         n3f21HonZEv0lIWII7wPVbLhw3vGaLrP5hIPERJR1TRibOjseSKNgXJkHF0C/cvr0sp5
         KYpP9YlmmEfFCl/H98XLI8nwM7wdFuUtvW1/QyH8oZgW52lHnmlNixpYx2BH3TnHPRQI
         QrFQxMSFCpj+AP0nhaQvKPIaaBZqF7CYLYCWZ3MlEG9IDS5pTBxlPLW1HHArcJHSuS56
         +kQA==
X-Gm-Message-State: AOAM530re26vlrkzqxeQhlQtkknlYpOuNXb2n8RcX1tbRd2aLrjgK/Eg
        iIvy2L1JCLLKpcAtLG4yLSw9oQ==
X-Google-Smtp-Source: ABdhPJyA+/zycYXtCrPiIKuHwWlHal7yChVygfvWDZI2GL/gExSMeDtDqVqRw5UZIxqD9vYgxtfCug==
X-Received: by 2002:a17:90b:4b49:: with SMTP id mi9mr36027415pjb.79.1633331133955;
        Mon, 04 Oct 2021 00:05:33 -0700 (PDT)
Received: from localhost ([122.171.247.18])
        by smtp.gmail.com with ESMTPSA id y15sm6631075pfa.64.2021.10.04.00.05.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Oct 2021 00:05:33 -0700 (PDT)
Date:   Mon, 4 Oct 2021 12:35:31 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc:     rafael@kernel.org, robh+dt@kernel.org, bjorn.andersson@linaro.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>,
        Rob Herring <robh@kernel.org>
Subject: Re: [PATCH] dt-bindings: cpufreq: cpufreq-qcom-hw: Convert to YAML
 bindings
Message-ID: <20211004070531.sexvnqmnkoe4j6a2@vireshk-i7>
References: <20211004044317.34809-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211004044317.34809-1-manivannan.sadhasivam@linaro.org>
User-Agent: NeoMutt/20180716-391-311a52
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04-10-21, 10:13, Manivannan Sadhasivam wrote:
> Convert Qualcomm cpufreq devicetree binding to YAML.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>
> Reviewed-by: Rob Herring <robh@kernel.org>

I am not sure if Rob ever gave this.

> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Why double signed off ?

-- 
viresh
