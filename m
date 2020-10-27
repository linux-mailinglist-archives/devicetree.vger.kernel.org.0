Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5629B29C526
	for <lists+devicetree@lfdr.de>; Tue, 27 Oct 2020 19:08:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1824268AbgJ0SFj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Oct 2020 14:05:39 -0400
Received: from mickerik.phytec.de ([195.145.39.210]:47758 "EHLO
        mickerik.phytec.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1757292AbgJ0ORn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Oct 2020 10:17:43 -0400
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
        q=dns/txt; i=@phytec.de; t=1603808261; x=1606400261;
        h=From:Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=aIYAvcJhXPUTWDuXYb59oyyCiWFFxBEKDxOFfzOVfr0=;
        b=SJXcYRvQWVk7CrZQUWhNHF7UYHq4LvJ+jK7SbsWLoHEG9eSh2uatnIqJPS3vXRNS
        oBCSLWEvN88tpsQ4esW2sO3qiwGI+Lf2sfMcVm5o0guUnZrXLI/ycaoNSc+1/9MC
        NXlQ4to1qUgl7fu9EiJx7fNQyjsHiNjNR1Fln4x8NY8=;
X-AuditID: c39127d2-253ff70000001c25-64-5f982c054d16
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
        by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 51.D2.07205.50C289F5; Tue, 27 Oct 2020 15:17:41 +0100 (CET)
Received: from [172.16.23.108] ([172.16.23.108])
          by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
          with ESMTP id 2020102715174135-677588 ;
          Tue, 27 Oct 2020 15:17:41 +0100 
Subject: Re: [PATCH 1/6] ARM: dts: imx6ul: segin: Fix stmpe touchscreen
 subnode name
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
References: <20200922092313.151293-1-s.riedmueller@phytec.de>
From:   =?UTF-8?Q?Stefan_Riedm=c3=bcller?= <s.riedmueller@phytec.de>
Message-ID: <96387712-d5b6-f040-6286-c928acce576b@phytec.de>
Date:   Tue, 27 Oct 2020 15:17:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200922092313.151293-1-s.riedmueller@phytec.de>
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 27.10.2020 15:17:41,
        Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 27.10.2020 15:17:41,
        Serialize complete at 27.10.2020 15:17:41
X-TNEFEvaluated: 1
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrKLMWRmVeSWpSXmKPExsWyRoCBS5dVZ0a8wfE30hbzj5xjtXh41d9i
        0+NrrBb/9+xgt/i7fROLxYst4g5sHjtn3WX32LSqk81j85J6j/6/Bh6fN8kFsEZx2aSk5mSW
        pRbp2yVwZTT9ecVY8J+t4sDx/SwNjJdZuxg5OSQETCR+Nf1iB7GFBLYySuzfpdDFyAVkn2GU
        mDX/BhNIQlggTOL3nGNgtoiAssSpjX3sIEXMAusYJXZ+3soI0W0rsfbKFDYQm03ASWLx+Q4w
        m1fARuL+nT1ADRwcLAKqElc7Y0FMUYFIiZ07LCEqBCVOznzCAmJzCthJLDs/kRFkvIRAI5PE
        inlboA4Vkji9+CwziM0sIC+x/e0cKNtMYt7mh1C2uMStJ/OZJjAKzUIydxaSlllIWmYhaVnA
        yLKKUSg3Mzk7tSgzW68go7IkNVkvJXUTIzAqDk9Uv7SDsW+OxyFGJg7GQ4wSHMxKIrxzZKbG
        C/GmJFZWpRblxxeV5qQWH2KU5mBREufdwFsSJiSQnliSmp2aWpBaBJNl4uCUamBce13pyZ6T
        gZGT38nvW7bWVYund5+NwTGZgGn6VzZX6z58k/ZK+1zqar/9549YanVMSDi0QvvflGTDNJnp
        rbzijcl+mTuDJmgnLuqvuGh06LuYX2LV2a2F580Yvu9Y0nElsG3vb8P3zP0bzjy8OO+hrMt5
        O2fRR8tSVFKLlyvaPgg/s0Cs6BiTEktxRqKhFnNRcSIAA+5+gngCAAA=
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

just a gentle ping for this series.

Stefan

On 22.09.20 11:23, Stefan Riedmueller wrote:
> The touchscreen subnode name needs to be stmpe_touchscreen as mentioned
> in the dt-bindings.
> 
> Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
> ---
>   arch/arm/boot/dts/imx6ul-phytec-segin.dtsi | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/imx6ul-phytec-segin.dtsi b/arch/arm/boot/dts/imx6ul-phytec-segin.dtsi
> index f1412df89173..2a3801e349b6 100644
> --- a/arch/arm/boot/dts/imx6ul-phytec-segin.dtsi
> +++ b/arch/arm/boot/dts/imx6ul-phytec-segin.dtsi
> @@ -139,7 +139,7 @@ stmpe: touchscreen@44 {
>   		pinctrl-0 = <&pinctrl_stmpe>;
>   		status = "disabled";
>   
> -		touchscreen {
> +		stmpe_touchscreen {
>   			compatible = "st,stmpe-ts";
>   			st,sample-time = <4>;
>   			st,mod-12b = <1>;
> 
