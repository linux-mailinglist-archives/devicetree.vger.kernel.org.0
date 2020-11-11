Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EC55B2AE779
	for <lists+devicetree@lfdr.de>; Wed, 11 Nov 2020 05:37:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725870AbgKKEhI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Nov 2020 23:37:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51886 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725895AbgKKEhH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Nov 2020 23:37:07 -0500
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com [IPv6:2607:f8b0:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 25817C0613D6
        for <devicetree@vger.kernel.org>; Tue, 10 Nov 2020 20:37:07 -0800 (PST)
Received: by mail-ot1-x344.google.com with SMTP id a15so996711otf.5
        for <devicetree@vger.kernel.org>; Tue, 10 Nov 2020 20:37:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=wtRRfw0GGRgIk6DDEU0mXolpp59u7naaEBZyd5qGF2U=;
        b=xlTOkurB5YeEXxXJYwdzWWnWGVdRKFL+/QSqpRjK7kqPhjPRjtAdgOuOy7y0ajwdbY
         q2pr8/fk7xycu/XtHoSYrXEwhaqH+VxSeRVmDpcVws/pU5YWRHVuUOomnOFtopHO8XAi
         crw9vKedvw7QXx7NqtN12QnjtxoVu/n7yv6oPg6R6Fr1vuEJNwdRLu4M5dE2rTyrwt91
         uN0eAHLJb/HaSHheYhpZ3wP5WEx9Xh1o3yt7HoqYBtHKB9pIUJzP/BEdw7pWqi/5nbuc
         njil6Z6itA/BjYomU2YMYtcQlZorvkU2BvOeldM0Ru5KkZggzn97iOKTMx3Y5A8wZbCy
         BUaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=wtRRfw0GGRgIk6DDEU0mXolpp59u7naaEBZyd5qGF2U=;
        b=H42bk19AcXe++vOGCbu1sibyP3KSwecnV9Bv7WHB8ukJIRFZcnLnZBIlAMU8ni2vb2
         XX1z72busphZYQFKYM+7X62rq7MaarGa5vvbqp7R2yP71B02OyzZ6y2VHtq/DGT1joWh
         7d7tbDV/bnZ81kRcl2HGev2uAcTpKm2c7BphURnNRRWpM4ICobTZbYBKd21R4zVpZTiR
         uoeYie0oIYifRjPDz8VLv/KKa2kDjW4Q3x18Ivks7BW/G2hWSZplTgl5bJ2HYy9cbylu
         Ocy2HanLI58Yc8YtVm6FH2X4zFGpGchqwQf+6kbpWrHP0eacQXhpKzyp4vLM6qw/8bW6
         uwSw==
X-Gm-Message-State: AOAM532jhWDu75zT5pIau1/vrBZ0HXIYKEwdQkEz78tpLpwrq3nuL96m
        rEUaGrRFKuD7a7+Hgv8nwxYFrFhEqnhKvg==
X-Google-Smtp-Source: ABdhPJwiAIhYvzEwIJux++i3YzohINChUujNLTtyHYZqqNmnQb6ngqeDoBJonNmEpksoYLzQCmJSEw==
X-Received: by 2002:a9d:17c5:: with SMTP id j63mr17519584otj.9.1605069426410;
        Tue, 10 Nov 2020 20:37:06 -0800 (PST)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id e63sm4819oib.48.2020.11.10.20.37.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Nov 2020 20:37:05 -0800 (PST)
Date:   Tue, 10 Nov 2020 22:37:03 -0600
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Georgi Djakov <georgi.djakov@linaro.org>
Cc:     linux-pm@vger.kernel.org, mdtipton@codeaurora.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        akashast@codeaurora.org
Subject: Re: [PATCH 2/3] interconnect: qcom: sdm845: Add the missing nodes
 for QUP
Message-ID: <20201111043703.GA173948@builder.lan>
References: <20201105135211.7160-1-georgi.djakov@linaro.org>
 <20201105135211.7160-2-georgi.djakov@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201105135211.7160-2-georgi.djakov@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu 05 Nov 07:52 CST 2020, Georgi Djakov wrote:

> The QUP nodes are currently defined just as entries in the topology,
> but they are not referenced by any of the NoCs. Let's fix this and
> "attach" them to their NoCs, so that the QUP drivers are able to use
> them as path endpoints and scale their bandwidth.
> 
> This is based on the information from the downstream msm-4.9 kernel.
> 
> Signed-off-by: Georgi Djakov <georgi.djakov@linaro.org>

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>


Georgi, would you mind if I take the series through my tree, to avoid
conflicts in sdm845.dtsi?

Regards,
Bjorn

> ---
>  drivers/interconnect/qcom/sdm845.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/interconnect/qcom/sdm845.c b/drivers/interconnect/qcom/sdm845.c
> index 5304aea3b058..366870150cbd 100644
> --- a/drivers/interconnect/qcom/sdm845.c
> +++ b/drivers/interconnect/qcom/sdm845.c
> @@ -177,6 +177,7 @@ DEFINE_QBCM(bcm_sn15, "SN15", false, &qnm_memnoc);
>  
>  static struct qcom_icc_bcm *aggre1_noc_bcms[] = {
>  	&bcm_sn9,
> +	&bcm_qup0,
>  };
>  
>  static struct qcom_icc_node *aggre1_noc_nodes[] = {
> @@ -190,6 +191,7 @@ static struct qcom_icc_node *aggre1_noc_nodes[] = {
>  	[SLAVE_A1NOC_SNOC] = &qns_a1noc_snoc,
>  	[SLAVE_SERVICE_A1NOC] = &srvc_aggre1_noc,
>  	[SLAVE_ANOC_PCIE_A1NOC_SNOC] = &qns_pcie_a1noc_snoc,
> +	[MASTER_QUP_1] = &qhm_qup1,
>  };
>  
>  static const struct qcom_icc_desc sdm845_aggre1_noc = {
> @@ -218,6 +220,7 @@ static struct qcom_icc_node *aggre2_noc_nodes[] = {
>  	[SLAVE_A2NOC_SNOC] = &qns_a2noc_snoc,
>  	[SLAVE_ANOC_PCIE_SNOC] = &qns_pcie_snoc,
>  	[SLAVE_SERVICE_A2NOC] = &srvc_aggre2_noc,
> +	[MASTER_QUP_2] = &qhm_qup2,
>  };
>  
>  static const struct qcom_icc_desc sdm845_aggre2_noc = {
