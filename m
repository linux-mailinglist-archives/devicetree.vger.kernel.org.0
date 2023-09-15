Return-Path: <devicetree+bounces-609-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 560F37A21E4
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 17:04:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 10D34280F4E
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 15:04:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F005B1094D;
	Fri, 15 Sep 2023 15:04:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EBD030CF0
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 15:04:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B063CC433C7;
	Fri, 15 Sep 2023 15:04:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694790276;
	bh=tVYfV/FQ4TuHJ0bVqoaP+aOcfUDlOtABzOf5hv1Hfg4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EweW9D8o+n+9qE2ej+Iyg7KegRJ6h600oZdgnpuS3nogKT+8Ut0LB0udvbKp6URtf
	 VgVYssOyUxBbRyhE71kNoUVm6UCDS/603L0nJ9DEy2bIlm+V3nG9OmsujAHEBvlRhC
	 Ea+BlYnS9B33UbSfpwh4/Msl3vJldpvv2Di+FlIGh4Ry7ts6CzrVTuaoy4B8wYt0vd
	 ug0tcUtN9OHnPNf3gThuKKmRkQtGyqSc7gi71J0rxrh0ibcjtv/+SteUsAzh7JT2k6
	 /u8hetHcSXSHqusB854BDIpUb+uuMsm/oh17XBRGdGbijdHV8T4MCv2PBn7qDFVeOo
	 rcA/SQTj3ug+w==
Received: (nullmailer pid 3731047 invoked by uid 1000);
	Fri, 15 Sep 2023 15:04:33 -0000
Date: Fri, 15 Sep 2023 10:04:33 -0500
From: Rob Herring <robh@kernel.org>
To: Wang Chen <unicornxw@gmail.com>
Cc: linux-riscv@lists.infradead.org, conor@kernel.org, aou@eecs.berkeley.edu, krzysztof.kozlowski+dt@linaro.org, palmer@dabbelt.com, paul.walmsley@sifive.com, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, jszhang@kernel.org, guoren@kernel.org, chao.wei@sophgo.com, xiaoguang.xing@sophgo.com, Wang Chen <wangchen20@iscas.ac.cn>
Subject: Re: [PATCH 05/12] dt-bindings: interrupt-controller: Add SOPHGO's
 SG2042 PLIC
Message-ID: <20230915150433.GA3730052-robh@kernel.org>
References: <20230915072358.118045-1-wangchen20@iscas.ac.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230915072358.118045-1-wangchen20@iscas.ac.cn>

On Fri, Sep 15, 2023 at 03:23:58PM +0800, Wang Chen wrote:
> Add compatible string for SOPHGO SG2042 plic.
> 
> Signed-off-by: Wang Chen <wangchen20@iscas.ac.cn>
> Signed-off-by: Xiaoguang Xing <xiaoguang.xing@sophgo.com>

Same problem with authorship and S-o-b order here.

> ---
>  .../bindings/interrupt-controller/sifive,plic-1.0.0.yaml         | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml b/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
> index dc1f28e55266..3abb1f68ea62 100644
> --- a/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
> +++ b/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
> @@ -66,6 +66,7 @@ properties:
>            - enum:
>                - allwinner,sun20i-d1-plic
>                - thead,th1520-plic
> +              - sophgo,sg2042-plic
>            - const: thead,c900-plic
>        - items:
>            - const: sifive,plic-1.0.0
> -- 
> 2.25.1
> 

