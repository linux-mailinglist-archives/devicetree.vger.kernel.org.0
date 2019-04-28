Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 033E4BC94
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2019 00:15:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726435AbfD1WPM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 28 Apr 2019 18:15:12 -0400
Received: from p3plsmtpa08-08.prod.phx3.secureserver.net ([173.201.193.109]:43652
        "EHLO p3plsmtpa08-08.prod.phx3.secureserver.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726495AbfD1WPM (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sun, 28 Apr 2019 18:15:12 -0400
Received: from labundy.com ([136.49.227.119])
        by :SMTPAUTH: with ESMTPSA
        id Ks4kheNuhHHCuKs4lha7oL; Sun, 28 Apr 2019 15:15:11 -0700
Date:   Sun, 28 Apr 2019 17:15:10 -0500
From:   Jeff LaBundy <jeff@labundy.com>
To:     Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc:     devicetree@vger.kernel.org, linux-input@vger.kernel.org,
        rydberg@bitmath.org, robh+dt@kernel.org, mark.rutland@arm.com
Subject: Re: [PATCH v8 2/2] input: touchscreen: Add support for Azoteq
 IQS550/572/525
Message-ID: <20190428221510.GA10081@labundy.com>
References: <1554613272-10757-1-git-send-email-jeff@labundy.com>
 <1554613272-10757-2-git-send-email-jeff@labundy.com>
 <20190428173136.GA44908@dtor-ws>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190428173136.GA44908@dtor-ws>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CMAE-Envelope: MS4wfMSxffOk0WwUg1RBZeM+ckutOX8ozBlsJp0rBNvKB0AdGcu+elrcMf3B63k9oRVbyKNpp4pBSeBtWjSouRu9W77wF+NqbKjTc1dAd0axd/ZOxsHlcYVZ
 KQkN3N+DbewB3VYq2RukKd/bVdFtG5GUsldM1XFOSKrKw3bm8xSgwi+Z7sGOeBZbyZfr/uNcw8Up4WoWPj35YqoFlsHa0m9l74PGLHcffL1lfGZ0Acpz33e/
 7dUj+oSd5guqloUFDejXhTz/YE1RngYhgfH3L+CGuhMkB1bMss6ZtXbo+P9R9XaURtCLYMVHl3fme5wfuTxTcaofI6kEMpfs8POwmL/8BLp1HI9XYQxV+rWm
 lhHwfOxN
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Dmitry,

Many thanks for your kind review. Agreed on all counts and a minor v9 will
follow shortly. Responses below.

On Sun, Apr 28, 2019 at 10:31:36AM -0700, Dmitry Torokhov wrote:
> Hi Jeff,
> 
> On Sun, Apr 07, 2019 at 12:01:12AM -0500, Jeff LaBundy wrote:
> > +static void iqs5xx_reset(struct i2c_client *client)
> > +{
> > +	struct iqs5xx_private *iqs5xx = i2c_get_clientdata(client);
> > +
> > +	gpiod_set_value_cansleep(iqs5xx->reset_gpio, 0);
> > +	usleep_range(200, 300);
> > +
> > +	gpiod_set_value_cansleep(iqs5xx->reset_gpio, 1);
> 
> I believe we need to switch these statements around:
> 
> 	gpiod_set_value_cansleep(iqs5xx->reset_gpio, 1);
> 	usleep_range(200, 300);
> 	gpiod_set_value_cansleep(iqs5xx->reset_gpio, 0);
> 
> so that you activate reset line, wait, and then release it. GPIOD deals
> with logical signals, with 1 being active and 0 beig inactive. If reset
> line is active low (it typically us) then it shoudl be described as such
> in DTS and then gpiod API will take care of converting "1" logical
> active to "0" actual value being output.

D'oh! Great catch; looks like I was getting away with this because my dts
was swapped too. I'll fix this here as well as the bindings doc too.

> > +
> > +static irqreturn_t iqs5xx_irq(int irq, void *data)
> > +{
> > +	struct iqs5xx_private *iqs5xx = (struct iqs5xx_private *)data;
> > +	struct iqs5xx_touch_data *touch_data;
> > +	struct i2c_client *client = iqs5xx->client;
> > +	struct input_dev *input = iqs5xx->input;
> > +	int error, i;
> > +	u8 buf[sizeof(*touch_data) * IQS5XX_NUM_CONTACTS];
> 
> Given that iqs5xx_touch_data is packed, can't we do
> 
> 	struct iqs5xx_touch_data touch_data[IQS5XX_NUM_CONTACTS];
> 
> instead?

Absolutely; I've fixed this and updated the previous references to 'buf'
accordingly (much simpler now).

> No need to resubmit if you agree, I can make changes on my side before
> applying.

Thanks for the offer, but since I need to fix the reset polarity in the
bindings doc as well, I'll resubmit so that you don't have to go to any
trouble on account of my silly errors.

> I also noticed that you are overusing ARRAY_SIZE(): in several cases you
> used it instead of sizeof() for supplying size of a buffer to transfer
> functions. While the result will not change, from logical POW you are
> not interested in number of elements in an array there, you want the
> total size of data structure that just happens to be an array.

Thanks for spotting that; there was an instance of that in iqs5xx_irq which
has been taken care of as part of the above fix.

I still use ARRAY_SIZE in calls to i2c_transfer; that's because we need to
pass the number of i2c_msg elements and not the size of a buffer. However,
there were two instances where the msg.len member and associated memcpy or
memcmp should have used sizeof.

I'll make another pass through it then update the change list accordingly.

> Thanks.
> 
> -- 
> Dmitry

Thanks,
Jeff L.
