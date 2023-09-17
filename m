Return-Path: <devicetree+bounces-834-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EB4A7A34E6
	for <lists+devicetree@lfdr.de>; Sun, 17 Sep 2023 11:26:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 651B11C2090A
	for <lists+devicetree@lfdr.de>; Sun, 17 Sep 2023 09:26:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A4931FDB;
	Sun, 17 Sep 2023 09:26:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E141FBF
	for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 09:26:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4BF0DC433BA;
	Sun, 17 Sep 2023 09:26:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694942795;
	bh=pJlCzsUnwF2cW+YWdNwqAx/UXdr0/ydXlB08SV6FJT8=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=X6i/+3Q6o8wsqYsV0HJMYCWpwQypxUh1C0lpM4wIjofpVnLYXYde9yqkNY3XL45e3
	 VHL8q162RLSM+zxbgVL4b2uo+mQw2cpDUCkIx9la6ozWHx3jqP74qWgAuUeg8Q8iSy
	 RhHTuSxvQGpVxb8ghAenUxDVCbCYBGvUSX1RK/dWnKNW5tmH3Bs82mkhxPfFwBlEIQ
	 ky0TXuYAGQ+q+GGIMeG2Evm5JLw9XcTbUAjgvwYM3g9fMkvO8eToUYQa1C+oNrneTs
	 nAg/aXfrrjPC1DNpWZoy9Ov8cDWdxNobCThQ80abCbBqCdBVpFp64FvgJ0b//4wzeB
	 5Bkaoh44aeBow==
Date: Sun, 17 Sep 2023 10:26:15 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Matti Vaittinen <mazziesaccount@gmail.com>
Cc: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>, Lars-Peter Clausen
 <lars@metafoo.de>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Angel Iglesias <ang.iglesiasg@gmail.com>, Andy Shevchenko
 <andriy.shevchenko@linux.intel.com>, Andreas Klinger <ak@it-klinger.de>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/3] iio: pressure: Support ROHM BU1390
Message-ID: <20230917102615.618dd01a@jic23-huawei>
In-Reply-To: <b8817140-508e-5c94-e37b-8727cf1abe4a@gmail.com>
References: <cover.1694001462.git.mazziesaccount@gmail.com>
	<08f7085ba1af2fae21c942f6c20a94c237df53ba.1694001462.git.mazziesaccount@gmail.com>
	<20230910142225.5863a850@jic23-huawei>
	<b8817140-508e-5c94-e37b-8727cf1abe4a@gmail.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Thu, 14 Sep 2023 14:47:44 +0300
Matti Vaittinen <mazziesaccount@gmail.com> wrote:

> On 9/10/23 16:22, Jonathan Cameron wrote:
> > On Wed, 6 Sep 2023 15:37:48 +0300
> > Matti Vaittinen <mazziesaccount@gmail.com> wrote:
> >   
> >> Support for the ROHM BM1390 pressure sensor. The BM1390GLV-Z can measure
> >> pressures ranging from 300 hPa to 1300 hPa with configurable measurement
> >> averaging and internal FIFO. The sensor does also provide temperature
> >> measurements.
> >>
> >> Sensor does also contain IIR filter implemented in HW. The data-sheet
> >> says the IIR filter can be configured to be "weak", "middle" or
> >> "strong". Some RMS noise figures are provided in data sheet but no
> >> accurate maths for the filter configurations is provided. Hence, the IIR
> >> filter configuration is not supported by this driver and the filter is
> >> configured to the "middle" setting (at least not for now).  
> 
> >> +
> >> +static irqreturn_t bm1390_irq_thread_handler(int irq, void *private)
> >> +{
> >> +	struct iio_dev *idev = private;
> >> +	struct bm1390_data *data = iio_priv(idev);
> >> +	int ret = IRQ_NONE;
> >> +
> >> +	mutex_lock(&data->mutex);
> >> +
> >> +	if (data->trigger_enabled) {
> >> +		iio_trigger_poll_nested(data->trig);
> >> +		ret = IRQ_HANDLED;
> >> +	}
> >> +
> >> +	if (data->state == BM1390_STATE_FIFO) {  
> > 
> > Can this and trigger_enabled be true?  
> 
> Thanks for asking this question. Intention was that these are mutually 
> exclusive. However, I think that the check
> if (iio_device_get_current_mode(idev) == INDIO_BUFFER_TRIGGERED)
> in bm1390_buffer_postenable(), before calling the bm1390_fifo_enable() 
> is not 100% race free.
> 
> I, however, like the idea of having this check in the buffer-enable 
> function - I think it makes the design much more obvious. What I will do 
> is adding another check for:
> 	if (data->trigger_enable) {
> 		ret = -EBUSY;
> 		goto unlock_out;
> 	}
> 
> inside the bm1390_fifo_enable() to the section which holds the mutex.

You could make the exclusive nature obvious in the thread_handler by using an
else if () above. 

> 
> 
> Yours,
> 	-- Matti
> 
> 
> 


