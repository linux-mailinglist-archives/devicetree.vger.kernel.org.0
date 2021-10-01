Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0B1C941EF5C
	for <lists+devicetree@lfdr.de>; Fri,  1 Oct 2021 16:21:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1354313AbhJAOXa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Oct 2021 10:23:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52084 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1353728AbhJAOX3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Oct 2021 10:23:29 -0400
Received: from mail-ot1-x335.google.com (mail-ot1-x335.google.com [IPv6:2607:f8b0:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AA170C06177C
        for <devicetree@vger.kernel.org>; Fri,  1 Oct 2021 07:21:45 -0700 (PDT)
Received: by mail-ot1-x335.google.com with SMTP id h9-20020a9d2f09000000b005453f95356cso11649669otb.11
        for <devicetree@vger.kernel.org>; Fri, 01 Oct 2021 07:21:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=RyljskWxEIj64E0/JKXsfCLMykqvOmjKdzQgJe75r2U=;
        b=yQsH27dcsAfYNORAm1R6gUODOKo31/SdiCD/fT+dVfWd+sVz8HZDJoZm5NQGe7i2gY
         7VEmSxQvd9JqFOs6Sn+Gt587qhhhHXJgHdsnpLDEbFzTzQwax/SmF0sU6pqbi2d3I7dS
         n9G1hzvK13Lv75ThsNaRlHLZre2/xOk7NZ5Lpo5LCwXo28H8jIcMbg403AN5MlIWY5L4
         Eo6QERZ8uyrjeBiBgTzKrP1frovpqd7Dr/33FhGzU9EYPh8vxoEIlmCHQSy731S6ljf4
         0fjJ4tWuuuuRBYwiHYg5MP6mP2vPNqlWeIc/vqCcXkBwh11vH+YUvWjDRzbZfIdtdLXN
         tZSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=RyljskWxEIj64E0/JKXsfCLMykqvOmjKdzQgJe75r2U=;
        b=aNCHCZebuPSe4O8095MexG9ut1z5zxQCsW7CySq0V8pL85eW1kjbU/QJfOjgEJ5IKk
         RGbn6xKZH3+uXrhuU9Hk/tajjqJO9rPbcOgV0mkjJOU9Fv0YjGRITLiofak9LpTS9ZKZ
         msSBILuSosYhO5ypQ3T4UueP5pdQZV5tfaqkH1z0uTzdfRb6kRv2fa95vx0usaZarZWq
         fB0kWyGLq8VVxW3KGN/iUW6pap/59q3X0ZP37COZ/02yhx14D6+PlriLsntJs3hW2bwP
         QoRqnlswDOc+dm9TlZqAMQvnn1g16lhrzaL/VXwdMxP4ysuR5/VeMnLHbaNTvMmHQlo/
         IIog==
X-Gm-Message-State: AOAM533N7uoE28cq4TYf5mifAnSkRVJN2ZgNNbmaxHsuD5En7xnXT4e8
        Jk0Yv8qz212kUfw7dYU1IuYXig==
X-Google-Smtp-Source: ABdhPJx4IXNLQp5mpOgHA767G+AngUBs0pCRIIbB0v5aaUOGgR/hVSObk7E9KZiGC2CkqwZ9AfFg3A==
X-Received: by 2002:a9d:5f9b:: with SMTP id g27mr11101284oti.217.1633098104962;
        Fri, 01 Oct 2021 07:21:44 -0700 (PDT)
Received: from ripper ([2600:1700:a0:3dc8:205:1bff:fec0:b9b3])
        by smtp.gmail.com with ESMTPSA id i24sm1176746oie.42.2021.10.01.07.21.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Oct 2021 07:21:44 -0700 (PDT)
Date:   Fri, 1 Oct 2021 07:23:32 -0700
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc:     Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Chris Lew <clew@codeaurora.org>,
        Deepak Kumar Singh <deesin@codeaurora.org>
Subject: Re: [PATCH v2 3/4] soc: qcom: smem: Support reserved-memory
 description
Message-ID: <YVcZ5FsM2u+3uoK4@ripper>
References: <20210930182111.57353-1-bjorn.andersson@linaro.org>
 <20210930182111.57353-4-bjorn.andersson@linaro.org>
 <9a4ef69d-df15-0fbc-3735-6d7c861855ac@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9a4ef69d-df15-0fbc-3735-6d7c861855ac@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri 01 Oct 00:08 PDT 2021, Vladimir Zapolskiy wrote:
> On 9/30/21 9:21 PM, Bjorn Andersson wrote:
[..]
> > diff --git a/drivers/soc/qcom/smem.c b/drivers/soc/qcom/smem.c
[..]
> > @@ -895,12 +892,14 @@ static int qcom_smem_map_memory(struct qcom_smem *smem, struct device *dev,
> >   static int qcom_smem_probe(struct platform_device *pdev)
> >   {
> >   	struct smem_header *header;
> > +	struct reserved_mem *rmem;
> >   	struct qcom_smem *smem;
> >   	size_t array_size;
> >   	int num_regions;
> >   	int hwlock_id;
> >   	u32 version;
> >   	int ret;
> > +	int i;
> 
> Just a nitpicking, the index can be unsigned.
> 

It's compared against the "num_regions", which is also signed. So I
think it should be signed.

[..]
> > +	for (i = 0; i < num_regions; i++) {

Thanks for the review!

Regards,
Bjorn
