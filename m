Return-Path: <devicetree+bounces-610-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C611E7A21E7
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 17:05:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CAC091C20D5C
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 15:05:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02BA210959;
	Fri, 15 Sep 2023 15:05:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9441230CF0
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 15:05:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A668EC433CA;
	Fri, 15 Sep 2023 15:05:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694790352;
	bh=HTR0jnRq7Qok2GBZIdglCxy34OjHIAkdXarc7/JXfQQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GKmJvd6jL5PxazkTqlOPvFB6fgldVOUnGXxbFUr04cSxCmFPH5GpvF++pTgucnCpP
	 jl6LYtMflhK/860BedJQYoaBhwn66cSl+4JI0A87Lcv15+OpRf395MJ6dt3Hza0iEe
	 I2qekF3WCEAsu4sDY1eyoDRoQaLq0nrA1+37c121d/qiaw72tD5lO839W/hgilSWI1
	 3kvGBDYAqvBndv1iH+ummMArHJ0ScNqrpiRLJcMUINwQNZrUS9iMC1zhTjbn8RqAa5
	 JYFVkc5wPpn1H1fo+OCOhKPlO2k0bSUR97YEek0AgPw7cJl8Z2VPjlyU8Q2jo/cng0
	 A7wkuJcZtkJBA==
Received: (nullmailer pid 3732603 invoked by uid 1000);
	Fri, 15 Sep 2023 15:05:49 -0000
Date: Fri, 15 Sep 2023 10:05:49 -0500
From: Rob Herring <robh@kernel.org>
To: Wang Chen <unicornxw@gmail.com>
Cc: linux-riscv@lists.infradead.org, conor@kernel.org, aou@eecs.berkeley.edu, krzysztof.kozlowski+dt@linaro.org, palmer@dabbelt.com, paul.walmsley@sifive.com, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, jszhang@kernel.org, guoren@kernel.org, chao.wei@sophgo.com, xiaoguang.xing@sophgo.com, Inochi Amaoto <inochiama@outlook.com>
Subject: Re: [PATCH 06/12] dt-bindings: timer: Add Sophgo sg2042 clint
Message-ID: <20230915150549.GA3731700-robh@kernel.org>
References: <20230915072415.118100-1-wangchen20@iscas.ac.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230915072415.118100-1-wangchen20@iscas.ac.cn>

On Fri, Sep 15, 2023 at 03:24:15PM +0800, Wang Chen wrote:
> From: Inochi Amaoto <inochiama@outlook.com>
> 
> The timer and ipi(mswi) of sg2042 are on different addresses. With the
> same compatible string, this will cause a mismatch when is processed by
> SBI.
> 
> Add two new compatible string formatted like `C9xx-clint-xxx` to identify
> the timer and ipi device separately, and do not allow c900-clint as the
> fallback to avoid conflict.
> 
> Signed-off-by: Inochi Amaoto <inochiama@outlook.com>

Missing your S-o-b as any patch you send should have yours (last).

> ---
>  .../bindings/timer/sifive,clint.yaml          | 26 +++++++++++++++++++
>  1 file changed, 26 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/timer/sifive,clint.yaml b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
> index a0185e15a42f..2a86b80c3f1e 100644
> --- a/Documentation/devicetree/bindings/timer/sifive,clint.yaml
> +++ b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
> @@ -39,6 +39,14 @@ properties:
>                - allwinner,sun20i-d1-clint
>                - thead,th1520-clint
>            - const: thead,c900-clint
> +      - items:
> +          - enum:
> +              - sophgo,sg2042-clint-mtimer
> +          - const: thead,c900-clint-mtimer
> +      - items:
> +          - enum:
> +              - sophgo,sg2042-clint-mswi
> +          - const: thead,c900-clint-mswi
>        - items:
>            - const: sifive,clint0
>            - const: riscv,clint0
> @@ -74,4 +82,22 @@ examples:
>                              <&cpu4intc 3>, <&cpu4intc 7>;
>         reg = <0x2000000 0x10000>;
>      };
> +  - |
> +    clint-mtimer@ac010000 {
> +      compatible = "sophgo,sg2042-clint-mtimer", "thead,c900-clint-mtimer";
> +      interrupts-extended = <&cpu1intc 7>,
> +                            <&cpu2intc 7>,
> +                            <&cpu3intc 7>,
> +                            <&cpu4intc 7>;
> +      reg = <0xac010000 0x00007ff8>;
> +    };
> +  - |
> +    clint-mswi@94000000 {
> +      compatible = "sophgo,sg2042-clint-mswi", "thead,c900-clint-mswi";
> +      interrupts-extended = <&cpu1intc 3>,
> +                            <&cpu2intc 3>,
> +                            <&cpu3intc 3>,
> +                            <&cpu4intc 3>;
> +      reg = <0x94000000 0x00004000>;
> +    };
>  ...
> -- 
> 2.25.1
> 

