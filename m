Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B9C952C6921
	for <lists+devicetree@lfdr.de>; Fri, 27 Nov 2020 17:08:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731245AbgK0QHs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Nov 2020 11:07:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48484 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727281AbgK0QHr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Nov 2020 11:07:47 -0500
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com [IPv6:2607:f8b0:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3CA36C0613D4
        for <devicetree@vger.kernel.org>; Fri, 27 Nov 2020 08:07:46 -0800 (PST)
Received: by mail-pf1-x442.google.com with SMTP id x24so4960415pfn.6
        for <devicetree@vger.kernel.org>; Fri, 27 Nov 2020 08:07:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=/RcIVEuZ0p0WXSlrm2oNGx9qDjqKX3QYfckT5rBSIOs=;
        b=QNhAsdjQfW0KnU29XcaYjBqNQD7/LBvrP6G/blr6Qum/iP/cs8YKh5kJ7W6b9LeO0R
         m/i+NUMnkmwa1KA1r07Oa0HbdpGTJv5s/fu30OyQ1gImUaSME73cMFbcQijxB1xBPgNA
         Uuoul4A0OB6btQscWXF8uj6HS4eTrODZZAbGf8hk4nsG7XYSoiHTWJM7dAe4r4Ggo/tV
         +KasgRHH2wy3u8osfn3UbcBD7l+m7nzsQENzagy7A93IOIsczzOVTPlwtFz/Lux3JyrZ
         U2wr6jZQiQ2vXOMoUc4SQIzR+hPqL68EmN5xOEZKD7mGUEmslqObDrnsd2/wuan7vZQW
         xrFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=/RcIVEuZ0p0WXSlrm2oNGx9qDjqKX3QYfckT5rBSIOs=;
        b=R/F832S10We2MtQVd8U4oCEHyGFWdidPJqdF6zh/YwfH5rzZq8Ht0UK+QzgeJtJmK4
         borhk1I99qgwZLz4DWFYf9NDcBYySqtdsCqjGRAnFlk7HGJ4L42wqYfL6WPKBlFR5rQ6
         ZWHJApboQxDDlW04QDZhlxWc+0/jY5WQpCTrWVcKBbwXzGqmQZ2P8kwHgkGPVDYfIrNe
         JBFVDjDRA+21QOl/N6wdd2wr2lYbdF3/VITID5QAEQJPQVx7tzPST/xc6hKSAQUGx30l
         uw2CwX8Klp8txeaBA8G/JAwmxY+ZkywlgZzGt7BMeRo3+WFjB5vxVNOKXerEMrBpKwuN
         s7aw==
X-Gm-Message-State: AOAM530VZwUEM1GUua+lqy8MwcNlelVE7hLftlx6VNVKOHlhsJTzBN1L
        TxEoqwVcg9h5C6aLi5zESxgU
X-Google-Smtp-Source: ABdhPJz+grLPox/xZsQ2YxHHafZ0p4ZdV8tNFaBfcsdA7Pz8u/xzijM9oxayAczogS3H7R6lsEukjg==
X-Received: by 2002:a17:90a:4816:: with SMTP id a22mr10945398pjh.228.1606493265732;
        Fri, 27 Nov 2020 08:07:45 -0800 (PST)
Received: from thinkpad ([2409:4072:88d:6f0d:1941:b53e:6208:a8c9])
        by smtp.gmail.com with ESMTPSA id r68sm8260574pfr.113.2020.11.27.08.07.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Nov 2020 08:07:44 -0800 (PST)
Date:   Fri, 27 Nov 2020 21:37:37 +0530
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Cc:     agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 3/3] soc: qcom: llcc-qcom: Add support for SM8250 SoC
Message-ID: <20201127160737.GB3096@thinkpad>
References: <20201127121127.158082-1-manivannan.sadhasivam@linaro.org>
 <20201127121127.158082-4-manivannan.sadhasivam@linaro.org>
 <9b7ed6f800980361dc216275fcf63b26@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9b7ed6f800980361dc216275fcf63b26@codeaurora.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Sai,

On Fri, Nov 27, 2020 at 07:09:09PM +0530, Sai Prakash Ranjan wrote:
> Hi Mani,
> 
> On 2020-11-27 17:41, Manivannan Sadhasivam wrote:
> > SM8250 SoC uses LLCC IP version 2. In this version, the WRSC_EN register
> > needs to be written to enable the Write Sub Cache for each SCID. Hence,
> > use a dedicated "write_scid_en" member with predefined values and write
> > them for SoCs enabling the "llcc_v2" flag.
> > 
> > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > ---
> >  drivers/soc/qcom/llcc-qcom.c       | 40 ++++++++++++++++++++++++++++++
> >  include/linux/soc/qcom/llcc-qcom.h |  1 +
> >  2 files changed, 41 insertions(+)
> > 
> > diff --git a/drivers/soc/qcom/llcc-qcom.c b/drivers/soc/qcom/llcc-qcom.c
> > index 16b421608e9c..3ec4cdffa852 100644
> > --- a/drivers/soc/qcom/llcc-qcom.c
> > +++ b/drivers/soc/qcom/llcc-qcom.c
> > @@ -47,6 +47,7 @@
> > 
> >  #define LLCC_TRP_SCID_DIS_CAP_ALLOC   0x21f00
> >  #define LLCC_TRP_PCB_ACT              0x21f04
> > +#define LLCC_TRP_WRSC_EN              0x21f20
> > 
> >  #define BANK_OFFSET_STRIDE	      0x80000
> > 
> > @@ -73,6 +74,7 @@
> >   *               then the ways assigned to this client are not flushed
> > on power
> >   *               collapse.
> >   * @activate_on_init: Activate the slice immediately after it is
> > programmed
> > + * @write_scid_en: Bit enables write cache support for a given scid.
> >   */
> >  struct llcc_slice_config {
> >  	u32 usecase_id;
> > @@ -87,12 +89,14 @@ struct llcc_slice_config {
> >  	bool dis_cap_alloc;
> >  	bool retain_on_pc;
> >  	bool activate_on_init;
> > +	bool write_scid_en;
> >  };
> > 
> >  struct qcom_llcc_config {
> >  	const struct llcc_slice_config *sct_data;
> >  	int size;
> >  	bool need_llcc_cfg;
> > +	bool llcc_v2;
> >  };
> 
> We can extract the version from HW info register and so
> would not have to maintain a flag for every new version
> of LLCC. I had a patch to do that which I have sent to you
> now, perhaps you can check if that works for you and take
> it with this series?
> 

Yeah sure. Will do.

Thanks,
Mani

> Thanks,
> Sai
> 
> -- 
> QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
> of Code Aurora Forum, hosted by The Linux Foundation
