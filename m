Return-Path: <devicetree+bounces-1149-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EE05B7A50F1
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 19:27:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DBB071C20B28
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 17:27:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4823262A9;
	Mon, 18 Sep 2023 17:27:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F00323759
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 17:27:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A95EC433C8;
	Mon, 18 Sep 2023 17:27:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695058042;
	bh=vblYavse5REeHZTur9wUxZXCUJeSaDa6nOcObQCi4Yo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LwDPdc2iMP6JEC0GiN+vf1KuT/TpP5/WY3Ik+9UZGzatkyVXvdIhmHZh41pf1uC7D
	 2aLDIqtm/G4qL9/KBtAYyxZnKkLqxDsUj0c8lPR9Om/L/0q0sNyAANSeh7z9+Emwnk
	 MWuCDfGqiVWQTdjqu0B5XLRqfWZ++rvbQzR7pJ3npz77wQacsWDLd17IR3JAhxhP1L
	 s8OL/gVEgx8FPtyccL5ei+bwQVVFZKCkTdkfq6MCxGKTbGM195soKtWuyCUzhT92Gb
	 LdIdpufyHxqBXpeuA2ZqGVljFoVlErtL6vLbJ2TBIcUY9nU8DutHxfjDfr2hpgV6uc
	 yjhx0bsiV0NdQ==
Received: (nullmailer pid 1413154 invoked by uid 1000);
	Mon, 18 Sep 2023 17:27:20 -0000
Date: Mon, 18 Sep 2023 12:27:20 -0500
From: Rob Herring <robh@kernel.org>
To: Lee Jones <lee@kernel.org>
Cc: linux-kernel@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH] dt-bindings: mfd: armltd: Move Arm board syscon's to
 separate schema
Message-ID: <20230918172720.GA1411360-robh@kernel.org>
References: <20230915201520.4179115-1-robh@kernel.org>
 <169481377499.149218.2656119781038291714.robh@kernel.org>
 <20230918143639.GP13143@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230918143639.GP13143@google.com>

On Mon, Sep 18, 2023 at 03:36:39PM +0100, Lee Jones wrote:
> On Fri, 15 Sep 2023, Rob Herring wrote:
> 
> > 
> > On Fri, 15 Sep 2023 15:15:05 -0500, Rob Herring wrote:
> > > The Arm Ltd board bindings are a bit unusual in that they define child
> > > nodes for various syscon's. The schemas are also incomplete as they lack
> > > constraints on having additional properties and some properties are
> > > missing. As the bindings for the different platforms only vary by
> > > compatibles, combine them into a single schema doc.
> > > 
> > > Add the "arm,im-pd1-syscon" compatible which was not documented. Add
> > > "ranges", "#address-cells", and "#size-cells properties which were
> > > missing.
> > > 
> > > Signed-off-by: Rob Herring <robh@kernel.org>
> > > ---
> > >  .../bindings/arm/arm,integrator.yaml          | 39 -----------
> > >  .../devicetree/bindings/arm/arm,realview.yaml | 37 ----------
> > >  .../bindings/arm/arm,versatile.yaml           | 40 +++--------
> > >  .../mfd/arm,dev-platforms-syscon.yaml         | 67 +++++++++++++++++++
> > >  4 files changed, 75 insertions(+), 108 deletions(-)
> > >  create mode 100644 Documentation/devicetree/bindings/mfd/arm,dev-platforms-syscon.yaml
> > > 
> > 
> > My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> > on your patch (DT_CHECKER_FLAGS is new in v5.13):
> 
> Errr ... I'm a little torn.
> 
> Do I trust the maintainer or his bot? :)

New version fixing the example coming...

Rob

