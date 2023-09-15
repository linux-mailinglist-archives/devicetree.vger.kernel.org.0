Return-Path: <devicetree+bounces-608-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C89C57A21B8
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 17:03:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4E3E21C20DA1
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 15:03:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49D8510940;
	Fri, 15 Sep 2023 15:03:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDC0C30CE0
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 15:03:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CFAC4C433C8;
	Fri, 15 Sep 2023 15:03:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694790215;
	bh=UtY3Y7r9znKWxNJDaZ5ltW/b+hC2P2B8V/VhuUu8pkc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ne/aH+FqERho8uP8TYtT4xl5rClVk1+AgqInqI+Ngw9OWuKsmalkSvAGsGsxXanSl
	 PCQBMZwKUde2FomJm48t9Ez3yWTDkTmPiYFc+h5vAVraAPNj3OAUIraTovluJKwjkg
	 HW3SP1ed4Mruwi1rL2mZbGJD0PnM+pQ08LJf2csDZ3SlHK/a7G15lvkO69a/4acByr
	 t/w/S6eknf7CjRaD5I0aB9bnU0QLlfBjS7Oeu84QQ86ng9BawZKApuv2+R8ELgg1G8
	 YIJ9AJdSuGgLJEXQj/tEpz7Z/dJbo2uwho5Ywf5VbCCywZU71eZi+qWR4RUTtYpXGK
	 HPvytPLGspJOQ==
Received: (nullmailer pid 3729895 invoked by uid 1000);
	Fri, 15 Sep 2023 15:03:32 -0000
Date: Fri, 15 Sep 2023 10:03:32 -0500
From: Rob Herring <robh@kernel.org>
To: Conor Dooley <conor@kernel.org>
Cc: Wang Chen <unicornxw@gmail.com>, linux-riscv@lists.infradead.org, aou@eecs.berkeley.edu, krzysztof.kozlowski+dt@linaro.org, palmer@dabbelt.com, paul.walmsley@sifive.com, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, jszhang@kernel.org, guoren@kernel.org, chao.wei@sophgo.com, xiaoguang.xing@sophgo.com, Wang Chen <wangchen20@iscas.ac.cn>
Subject: Re: [PATCH 04/12] dt-bindings: riscv: Add T-HEAD C920 compatibles
Message-ID: <20230915150332.GA3719864-robh@kernel.org>
References: <20230915072333.117991-1-wangchen20@iscas.ac.cn>
 <20230915-muster-viability-93d7d4ec2b49@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230915-muster-viability-93d7d4ec2b49@spud>

On Fri, Sep 15, 2023 at 03:11:43PM +0100, Conor Dooley wrote:
> On Fri, Sep 15, 2023 at 03:23:33PM +0800, Wang Chen wrote:
> > The C920 is RISC-V CPU cores from T-HEAD Semiconductor.
> > Notably, the C920 core is used in the SOPHGO SG2042 SoC.
> > 
> > Signed-off-by: Wang Chen <wangchen20@iscas.ac.cn>
> > Signed-off-by: Xiaoguang Xing <xiaoguang.xing@sophgo.com>
> 
> I figure this is missing a From: or Co-developed-by line.

From: (author) as 2 authors for 1 line change is questionable.

The sender's email should be the last S-o-b. So like this:

From: Xiaoguang Xing <xiaoguang.xing@sophgo.com>

...

Signed-off-by: Xiaoguang Xing <xiaoguang.xing@sophgo.com>
Signed-off-by: Wang Chen <wangchen20@iscas.ac.cn>


> 
> > ---
> >  Documentation/devicetree/bindings/riscv/cpus.yaml | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
> > index 38c0b5213736..185a0191bad6 100644
> > --- a/Documentation/devicetree/bindings/riscv/cpus.yaml
> > +++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
> > @@ -47,6 +47,7 @@ properties:
> >                - sifive,u74-mc
> >                - thead,c906
> >                - thead,c910
> > +              - thead,c920
> >            - const: riscv
> >        - items:
> >            - enum:
> > -- 
> > 2.25.1
> > 



