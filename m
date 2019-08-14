Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1F5BA8DC48
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2019 19:50:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728219AbfHNRub (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Aug 2019 13:50:31 -0400
Received: from mail-pg1-f193.google.com ([209.85.215.193]:41029 "EHLO
        mail-pg1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728841AbfHNRua (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Aug 2019 13:50:30 -0400
Received: by mail-pg1-f193.google.com with SMTP id x15so43109126pgg.8
        for <devicetree@vger.kernel.org>; Wed, 14 Aug 2019 10:50:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=nUsVR6lWkK8D+bl3sEyhgxQA+2S1H8pmiICLTa+fmlg=;
        b=xq7REaPK7/+Xr9c6lpbhZg9wbqCJIYOfBfadey4k1GG0+tik4uwsNMd7WcZgmkLtw/
         GIOPjNR8lkAdorpI1CU5ZaPo5Fiaht4fezl2xa2JHwdrCK1MqFDc10r2NOdS2R3htZZQ
         02B0dRtVBqWTsZlFEcDP5xJb9l1g2pu0c5AdrcIrxZx2IslCjSqu++hri+HjE5Hb4qc9
         Y5a6izbadvmjCwmjjqSVHSFEix+wrsIU/bSF5C3NVCIXfrwGhiU0fulX5xZjnlJY17xy
         a71g2BaaLnWCL6E4Gm6avjgxOdM/pykEBEYIfsYV4KKHCYebhKrheA/Yq9DRR+FBCKV7
         HM7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=nUsVR6lWkK8D+bl3sEyhgxQA+2S1H8pmiICLTa+fmlg=;
        b=QkJKnBin6/1t65Pv8w9jg9BDy8D24vUWXYqP94iuv4kqPyfHFJPKQpPVjKEG9dZqjC
         MkvNbkm6ixQzxvByGReQojYgSoD+W/EpgIzD2QYmCPwGa1PqNSzXSvSGIqg+TnCZDCW/
         uu76EXbGTYvTY087PKZK/KUzbMcb1yrQzOHJ8rifyAjKJa24gMncbZObSkEWYizAsa9K
         Am7gEj0rkPH+2Mt3img/3VXfBoPdDhay87UDjNnxEwSUELl38UnmHsKUSYv5yB2Okx2B
         t6H2PKoc+U7jyvelJmLHDS8FzXc0WqZ6FoSRRpLs2ygJxfcqN2Ud2/NckxcjXalsqGZr
         fd6g==
X-Gm-Message-State: APjAAAWSUD+ff7jwYrozENooIEsm+DaU09N/UoriXXHTaf5QV5RepHPR
        zNP9t52wJkjtLjScWOi8UdQLeAKG8Dc=
X-Google-Smtp-Source: APXvYqxouE+yysMKjuTjnYQJSlYzLLD0MDoD7PNbG/KIijDZ8VUbFUVfQ5G8q7fpTAn0sDGCRX/ucQ==
X-Received: by 2002:a17:90a:9604:: with SMTP id v4mr875936pjo.66.1565805029771;
        Wed, 14 Aug 2019 10:50:29 -0700 (PDT)
Received: from minitux (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id q7sm453537pff.2.2019.08.14.10.50.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Aug 2019 10:50:29 -0700 (PDT)
Date:   Wed, 14 Aug 2019 10:50:26 -0700
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Vinod Koul <vkoul@kernel.org>
Cc:     Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org,
        sibis@codeaurora.org, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Stephen Boyd <sboyd@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 01/22] arm64: dts: qcom: sm8150: add base dts file
Message-ID: <20190814175026.GF6167@minitux>
References: <20190814125012.8700-1-vkoul@kernel.org>
 <20190814125012.8700-2-vkoul@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190814125012.8700-2-vkoul@kernel.org>
User-Agent: Mutt/1.12.0 (2019-05-25)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed 14 Aug 05:49 PDT 2019, Vinod Koul wrote:
> diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
[..]
> +	soc: soc@0 {
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		ranges = <0 0 0 0xffffffff>;

I'm expecting that we'll run into the same problems as we saw on 845
when bringing in the smmu nodes, so please make the cells 2 - and ranges
should likely be the same 36 bits.

Regards,
Bjorn
