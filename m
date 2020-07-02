Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0ED35211C75
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2020 09:14:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726789AbgGBHOH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Jul 2020 03:14:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36342 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726092AbgGBHOG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Jul 2020 03:14:06 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2B5AC08C5C1
        for <devicetree@vger.kernel.org>; Thu,  2 Jul 2020 00:14:05 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id z13so26827486wrw.5
        for <devicetree@vger.kernel.org>; Thu, 02 Jul 2020 00:14:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=o3u4LNhkJvyuHomAjDNCPqfO0iOI8WQ8Jc/N74gTZGE=;
        b=Bh3F4Uz6YB/0oYpUDIgJJC26ObFmRQmCjUjz6QKfjTaHwZDtwvglp+SC3/lQmchtyx
         Ugxzw+/Tu0aIpDjxxQGAFhIu2QXkvEgZo2eyES3kOcTdLjQ1iVg9a6ud9wONt2t+pEp6
         UrP27DG1Wd/GaTShP0jJgUj0YKloJbkUGEO01JVOHfE6zZb4FT5uYBvek4DDbYMwXzOw
         EG9wp9faC33NPccfRsuRKZHs7PwnFbxTwbgIOSSe2RfaVkqwFMODRq/K+TrItjJLu5o4
         YCfE53/YeCPZelKwxN3NlLfFEmRcA24sIlCQ+O0cauFOPcpzLq91xkUKjsNjsUCi/7ZF
         71+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=o3u4LNhkJvyuHomAjDNCPqfO0iOI8WQ8Jc/N74gTZGE=;
        b=mws0dk0VXQVVS+qjV2Ya8CklvU7+aqnXm9QHbzCzTEGSnTeiDuQQMxadRcqcPkfq93
         HEEMGY1/dSxjCT0bsIX+UA6AYz3iH3OYH99dCuE7CwwnVxZp44qDb5x/7allOeC6UkIM
         PO1GvBbfE0kvwig9iVARiT3BfJZN6j+LVhGtHqtVlGSAumx3UxSys3faxTQYqO6FEgB1
         cYqlE/022ZNdYoY0kRZmM0ajmj5Y8XPUvlW1vcaT4i/j2MTtyv1NYU0NjezKZHxdmz3v
         NpcKV+UTtYD17Di6JG1ic52Ney6x1YtqgLp4uQM/oy+uPDiJmjGavbc0fXH/0kGRB7aJ
         bmNA==
X-Gm-Message-State: AOAM533cqVpBOvVTs7vo8/DwRgBX/0nqOZKvwuTdBUNDVi6Uo4QkQzyG
        6UGaCiLlX2SOqEbiGLloBSrMJA==
X-Google-Smtp-Source: ABdhPJyhSbGW5S3al7dh0ndzsIo6zEVlOOXxDH0ER4Uy/aPfzgwtUwutAHOtsWcSaMkhJYjFmfBFqQ==
X-Received: by 2002:adf:c3c7:: with SMTP id d7mr29132402wrg.51.1593674044679;
        Thu, 02 Jul 2020 00:14:04 -0700 (PDT)
Received: from dell ([2.27.35.144])
        by smtp.gmail.com with ESMTPSA id 104sm10289770wrl.25.2020.07.02.00.14.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jul 2020 00:14:04 -0700 (PDT)
Date:   Thu, 2 Jul 2020 08:14:02 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Michael Walle <michael@walle.cc>
Cc:     robh+dt@kernel.org, broonie@kernel.org, gregkh@linuxfoundation.org,
        andriy.shevchenko@linux.intel.com, devicetree@vger.kernel.org,
        linus.walleij@linaro.org, bgolaszewski@baylibre.com, arnd@arndb.de,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 1/1] mfd: Add I2C based System Configuaration (SYSCON)
 access
Message-ID: <20200702071402.GP1179328@dell>
References: <20200622075145.1464020-1-lee.jones@linaro.org>
 <e436fd60bf0ebb6d72a76034d0fc35de@walle.cc>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <e436fd60bf0ebb6d72a76034d0fc35de@walle.cc>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 30 Jun 2020, Michael Walle wrote:

> Hi Lee,
> 
> I'm just trying to use this for my sl28 driver. Some remarks, see below.
> 
> Am 2020-06-22 09:51, schrieb Lee Jones:
> > The existing SYSCON implementation only supports MMIO (memory mapped)
> > accesses, facilitated by Regmap.  This extends support for registers
> > held behind I2C busses.
> > 
> > Signed-off-by: Lee Jones <lee.jones@linaro.org>
> > ---
> > Changelog:
> > 
> > v3 => v4
> >   - Add ability to provide a non-default Regmap configuration
> > 
> > v2 => v3
> >   - Change 'is CONFIG' present check to include loadable modules
> >     - s/#ifdef CONFIG_MFD_SYSCON_I2C/#if
> > IS_ENABLED(CONFIG_MFD_SYSCON_I2C)/
> > 
> > v1 => v2
> >   - Remove legacy references to OF
> >   - Allow building as a module (fixes h8300 0-day issue)
> > 
> > drivers/mfd/Kconfig            |   7 +++
> >  drivers/mfd/Makefile           |   1 +
> >  drivers/mfd/syscon-i2c.c       | 104 +++++++++++++++++++++++++++++++++
> >  include/linux/mfd/syscon-i2c.h |  36 ++++++++++++
> >  4 files changed, 148 insertions(+)
> >  create mode 100644 drivers/mfd/syscon-i2c.c
> >  create mode 100644 include/linux/mfd/syscon-i2c.h
> > 
> 
> [..]
> 
> > +static struct regmap *syscon_i2c_get_regmap(struct i2c_client *client,
> > +					    struct regmap_config *regmap_config)
> > +{
> > +	struct device *dev = &client->dev;
> > +	struct syscon *entry, *syscon = NULL;
> > +
> > +	spin_lock(&syscon_i2c_list_slock);
> > +
> > +	list_for_each_entry(entry, &syscon_i2c_list, list)
> > +		if (entry->dev == dev) {
> > +			syscon = entry;
> > +			break;
> > +		}
> > +
> > +	spin_unlock(&syscon_i2c_list_slock);
> > +
> > +	if (!syscon)
> > +		syscon = syscon_i2c_register(client, regmap_config);
> > +
> > +	if (IS_ERR(syscon))
> > +		return ERR_CAST(syscon);
> > +
> > +	return syscon->regmap;
> > +}
> > +
> > +struct regmap *syscon_i2c_to_regmap_config(struct i2c_client *client,
> > +					   struct regmap_config *regmap_config)
> > +{
> > +	return syscon_i2c_get_regmap(client, regmap_config);
> > +}
> > +EXPORT_SYMBOL_GPL(syscon_i2c_to_regmap_config);
> > +
> > +struct regmap *syscon_i2c_to_regmap(struct i2c_client *client)
> > +{
> > +	return syscon_i2c_get_regmap(client, &syscon_i2c_regmap_config);
> > +}
> > +EXPORT_SYMBOL_GPL(syscon_i2c_to_regmap);
> 
> What do you think about
> 
> struct regmap *syscon_i2c_to_regmap(struct device *dev)
> {
> 	struct i2c_client *client = i2c_verify_client(dev);
> 
> 	if (!client)
> 		return ERR_PTR(-EINVAL);
> 
> 	return syscon_i2c_get_regmap(client, &syscon_i2c_regmap_config);
> }
> 
> Or even move it to syscon_i2c_get_regmap().
> 
> This way, (a) a driver doesn't have to use "#include <linux/i2c.h>" just
> to call to_i2c_client() (or i2c_verify_client()) and (b) you won't do it
> all over again in all sub drivers.

What is your use-case?  This is set-up for based I2C drivers to call
into.  'client' is given to them as their .probe() arg.

> So you could just do a
>   regmap = syscon_i2c_to_regmap(pdev->dev.parent);
> 
> I've also noticed that the mmio syscon uses device_node as parameter. What
> was the reason to divert from that? Just curious.

This is a helper for I2C clients.  There aren't any OF helpers in here
(yet).  If you think they would be helpful we can add them.  How do
you see them being used?

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
