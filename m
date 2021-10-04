Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C9DE642149F
	for <lists+devicetree@lfdr.de>; Mon,  4 Oct 2021 19:00:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237932AbhJDRBu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Oct 2021 13:01:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57566 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237885AbhJDRBt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Oct 2021 13:01:49 -0400
Received: from mail-oi1-x229.google.com (mail-oi1-x229.google.com [IPv6:2607:f8b0:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 60EC8C061746
        for <devicetree@vger.kernel.org>; Mon,  4 Oct 2021 10:00:00 -0700 (PDT)
Received: by mail-oi1-x229.google.com with SMTP id x124so22425350oix.9
        for <devicetree@vger.kernel.org>; Mon, 04 Oct 2021 10:00:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=7Y7UKyDUSlyu4qLC51VzZsmeKuAHQdoo+Z/ZqGaBMFw=;
        b=oO1VuPdig2CLMSXNrQBPM7QO3+6o3wlG4oM2+yIYZfjpwVJcNp/E2WawAhMW/yBvOT
         9SAiVd7DiLeQFxHE/9z969qLlQzbUB1TC/swVGMQREbMd4OyjokBonwHh7wkDz+Efckf
         UfxgvOv//QmNayqMfxBdryYT1fwPAl3jMX4rirB4arfMnWu7x2eYW7ULUukfYbwiFl5G
         bfUBErsRrL3JacJnN7HEYjI1Hal1RnkO6f0PnhTwBVnA3Og/ve1NKWpnqPG1QB+w6JAg
         ca/3E9InTbaFYs8K3iYG0S7M+l6UkKE+B7v24NDIkBXkEOVqWS7RxfxIJx3m9YCh0bZL
         tLFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=7Y7UKyDUSlyu4qLC51VzZsmeKuAHQdoo+Z/ZqGaBMFw=;
        b=f1HdWIZepEYFSP69yivdNB/tQvjur9xH5mV+yKQCvP63WFQjfecVS0Hkk5e5XItYZP
         WmQ+9XKE5yDNRcdxcs5eZp9fwuUtWIstvjoZFNW94k9uFgwm27ZUXaTBxUXBA4pPJmqF
         IwyxsUiByt0CNwukaw5MWJzhKDDfYIc6HHcoXULIB4aYs18NNfE9qYhWMFAM0LtirUwR
         SPz30J8vZQEt8eBLcDa/tGvOjKbEaLTNUB8pMlS4rSKwi2+aOkS5VvZ6qfDsAv9bgYDk
         zzc/RxbyT72BrSaXGHDH1c6nj8rDEzCJeHuja5SZ0jV72yYFi2bfNCIzGFdgXAWBIq4M
         fFCg==
X-Gm-Message-State: AOAM532ux7YLMcP/PUprt5tNepxaNJiWfFxe0mEucteAg/tef7R9eQWL
        phJOEHONz/lzOVpDmOh/o2pUcw==
X-Google-Smtp-Source: ABdhPJwMoWUHK/oGTnKvYFBisPxqvxGwNWZZz8vS1lRvZAq36UAH34jf2aQVIB0Fam308/PrXdzJhg==
X-Received: by 2002:aca:f257:: with SMTP id q84mr13416671oih.52.1633366799740;
        Mon, 04 Oct 2021 09:59:59 -0700 (PDT)
Received: from ripper ([2600:1700:a0:3dc8:205:1bff:fec0:b9b3])
        by smtp.gmail.com with ESMTPSA id y12sm2913239otu.11.2021.10.04.09.59.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Oct 2021 09:59:59 -0700 (PDT)
Date:   Mon, 4 Oct 2021 10:01:43 -0700
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc:     Viresh Kumar <viresh.kumar@linaro.org>, rafael@kernel.org,
        robh+dt@kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>,
        Rob Herring <robh@kernel.org>
Subject: Re: [PATCH] dt-bindings: cpufreq: cpufreq-qcom-hw: Convert to YAML
 bindings
Message-ID: <YVszd2UMw9F5LqWC@ripper>
References: <20211004044317.34809-1-manivannan.sadhasivam@linaro.org>
 <20211004070531.sexvnqmnkoe4j6a2@vireshk-i7>
 <20211004072222.GE16442@workstation>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211004072222.GE16442@workstation>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon 04 Oct 00:22 PDT 2021, Manivannan Sadhasivam wrote:

> On Mon, Oct 04, 2021 at 12:35:31PM +0530, Viresh Kumar wrote:
> > On 04-10-21, 10:13, Manivannan Sadhasivam wrote:
> > > Convert Qualcomm cpufreq devicetree binding to YAML.
> > > 
> > > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > > Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>
> > > Reviewed-by: Rob Herring <robh@kernel.org>
> > 
> > I am not sure if Rob ever gave this.
> > 
> 
> I'm not fooling you :)
> https://patchwork.kernel.org/project/linux-pm/patch/20210701105730.322718-5-angelogioacchino.delregno@somainline.org/#24312445
> 
> > > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > 
> > Why double signed off ?
> > 
> 
> Ah, it came while I applied the patch from Angelo's series. If you want
> I can send a new version removing one or you can do that while applying.
> 

If you wrote the patch, then Angelo handled it, then you handled it
again the double S-o-b captures that nicely.

Looking it from the other angle, if you remove the first S-o-b, then you
forgot to signed it off when you authored the original patch and if you
skip the last S-o-b then you didn't adequately sign off the final
result.

Regards,
Bjorn

> Let me know.
> 
> Thanks,
> Mani
> 
> > -- 
> > viresh
