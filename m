Return-Path: <devicetree+bounces-260-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E99207A08C8
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 17:15:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A56391F241B0
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 15:15:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C165828E2B;
	Thu, 14 Sep 2023 14:59:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 935B4262A3
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 14:59:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 739DBC433C8;
	Thu, 14 Sep 2023 14:59:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694703577;
	bh=aJiBLrVkFJvxFmDtfGVyXy25NhgD2/H7bZQp+6GV5Ko=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=J1RDcJHeFcasRT0frX/jbBqGjIQufBXPX3ZwCgJ3s8SA4bL0Rkpye99j6PHNHrClz
	 Jg3e5v3f6XlKRmIgP0aZEhwMxKFJtYKYozJ99h25TOw1Iny88VyhAWH0v+BmOiDYE1
	 BNVOSJdHmL+rCIQmGWa8V3Db93FQ9lsBC6/n6HkejeY2SmmkeZFYQmm6JJDs3uy1zU
	 Iz1k1c/cTiXPzJlDYntX6xUpWjvpWpGfnUCLm6EUhIZ/+S7Z2YU1xt1TrfXITXZiVY
	 8w595bnHDoDOVdSaC45/xTkTJ0SO1q2Z11VtnwvGxMkFzB2uN0fULtNLQ8X6Lwsjj2
	 gwcyh4tgdJdQA==
Received: (nullmailer pid 1283942 invoked by uid 1000);
	Thu, 14 Sep 2023 14:59:35 -0000
Date: Thu, 14 Sep 2023 09:59:35 -0500
From: Rob Herring <robh@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: sakari.ailus@iki.fi, mchehab@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, linux-media@vger.kernel.org, devicetree@vger.kernel.org, Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH v4] media: dt-bindings: Add OV5642
Message-ID: <20230914145935.GA1276539-robh@kernel.org>
References: <20230913192811.1946423-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230913192811.1946423-1-festevam@gmail.com>

On Wed, Sep 13, 2023 at 04:28:11PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> As explained in the description text from trivial-devices.yaml:
> 
> "This is a list of trivial I2C and SPI devices that have simple device tree
> bindings, consisting only of a compatible field, an address and possibly an
> interrupt line."
> 
> A camera device does not fall into this category as it needs other
> properties such as regulators, reset and powerdown GPIOs, clocks,
> media endpoint.
> 
> Remove the OV5642 entry from trivial-devices.yaml and add its own
> ovti,ov5642.yaml.

Many of these Omnivision sensors have the same supplies and same GPIO 
connections, so why can't they share the binding? There are some 
differences I've seen that boil down to just what the driver decided to 
require or not, but that shouldn't really vary. See commit 44ade291b77c 
("media: dt-bindings: Merge OV5695 into OV5693 binding") for example.

In any case, the binding looks fine and any merging can be done after.

Reviewed-by: Rob Herring <robh@kernel.org>

> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
> Changes since v3:
> - Make propeties conditional on parallel verus MIPI CSI-2. (Sakari)
> - Remove clock-names as there is a single clock.
> - Pass bus-type.
> 
>  .../bindings/media/i2c/ovti,ov5642.yaml       | 141 ++++++++++++++++++
>  .../devicetree/bindings/trivial-devices.yaml  |   2 -
>  2 files changed, 141 insertions(+), 2 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/media/i2c/ovti,ov5642.yaml

