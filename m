Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4722636A253
	for <lists+devicetree@lfdr.de>; Sat, 24 Apr 2021 19:21:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232539AbhDXRVz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 24 Apr 2021 13:21:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52262 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230230AbhDXRVy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 24 Apr 2021 13:21:54 -0400
X-Greylist: delayed 188 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sat, 24 Apr 2021 10:21:15 PDT
Received: from haggis.mythic-beasts.com (haggis.mythic-beasts.com [IPv6:2a00:1098:0:86:1000:0:2:1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 178FFC061574
        for <devicetree@vger.kernel.org>; Sat, 24 Apr 2021 10:21:13 -0700 (PDT)
Received: from [81.101.6.87] (port=48800 helo=jic23-huawei)
        by haggis.mythic-beasts.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92.3)
        (envelope-from <jic23@jic23.retrosnub.co.uk>)
        id 1laLut-0002ze-Qz; Sat, 24 Apr 2021 18:18:04 +0100
Date:   Sat, 24 Apr 2021 18:18:42 +0100
From:   Jonathan Cameron <jic23@jic23.retrosnub.co.uk>
To:     linux-iio@vger.kernel.org, Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org,
        Jonathan Cameron <Jonathan.Cameron@huawei.com>
Subject: Re: [PATCH 0/6] dt-bindings: Add some missing IIO related binding
 docs.
Message-ID: <20210424181813.7adda334@jic23-huawei>
In-Reply-To: <20210401174112.320497-1-jic23@kernel.org>
References: <20210401174112.320497-1-jic23@kernel.org>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-BlackCat-Spam-Score: 4
X-Spam-Status: No, score=0.4
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu,  1 Apr 2021 18:41:06 +0100
Jonathan Cameron <jic23@kernel.org> wrote:

> From: Jonathan Cameron <Jonathan.Cameron@huawei.com>
> 
> First of what will probably be one of several sets to slowly but surely
> add yaml binding docs for all the defacto bindings hiding in IIO
> drivers.  Ultimate I'd like to clear the backlog of these and so go
> forward with full documenation, but there may be some cases we just decide
> are too complex to bother.  The fsl,mma955x parts are ignored (for now) on
> that basis (I think we have all the other accelerometers covered now)
> 
> Some of these date back to board file days and some were added by people
> only interested in ACPI, but all can be instantiated from dt-bindings.
> A few may simply have slipped through the net during review.
> 
> Testing done with hacked up qemu when anything was non trivial.

Series applied with typo fix in patch 1 description that Rob pointed out.

Thanks,

Jonathan

> 
> Jonathan Cameron (6):
>   dt-bindings:iio:accel:adis16201 and adis16209 bindings
>   dt-bindings:iio:accel:bosch,bma220 device tree binding documentation
>   dt-bindings:iio:accel:fsl,mma7455 binding doc
>   dt-bindings:trivial-devices: Add memsic,mxc4005/mxc6255/mxc6655
>     entries
>   dt-bindings:trivial-devices: Add sensortek,stk8312 and
>     sensortek,s8ba50
>   dt-bindings:iio:adc:adi,ad7298 document bindings
> 
>  .../bindings/iio/accel/adi,adis16201.yaml     | 55 +++++++++++++
>  .../bindings/iio/accel/bosch,bma220.yaml      | 50 +++++++++++
>  .../bindings/iio/accel/fsl,mma7455.yaml       | 82 +++++++++++++++++++
>  .../bindings/iio/adc/adi,ad7298.yaml          | 48 +++++++++++
>  .../devicetree/bindings/trivial-devices.yaml  | 10 +++
>  5 files changed, 245 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/iio/accel/adi,adis16201.yaml
>  create mode 100644 Documentation/devicetree/bindings/iio/accel/bosch,bma220.yaml
>  create mode 100644 Documentation/devicetree/bindings/iio/accel/fsl,mma7455.yaml
>  create mode 100644 Documentation/devicetree/bindings/iio/adc/adi,ad7298.yaml
> 

