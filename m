Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A1C6236D16D
	for <lists+devicetree@lfdr.de>; Wed, 28 Apr 2021 06:54:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229451AbhD1EzA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Apr 2021 00:55:00 -0400
Received: from mail.thorsis.com ([92.198.35.195]:52415 "EHLO mail.thorsis.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229437AbhD1EzA (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 28 Apr 2021 00:55:00 -0400
Received: from localhost (localhost [127.0.0.1])
        by mail.thorsis.com (Postfix) with ESMTP id EE7573E3A
        for <devicetree@vger.kernel.org>; Wed, 28 Apr 2021 06:54:14 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at mail.thorsis.com
Received: from mail.thorsis.com ([127.0.0.1])
        by localhost (mail.thorsis.com [127.0.0.1]) (amavisd-new, port 10024)
        with ESMTP id f_GxVomdRaHY for <devicetree@vger.kernel.org>;
        Wed, 28 Apr 2021 06:54:14 +0200 (CEST)
Received: by mail.thorsis.com (Postfix, from userid 109)
        id 48D2C3F0D; Wed, 28 Apr 2021 06:54:13 +0200 (CEST)
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,NO_RECEIVED,
        NO_RELAYS,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
        version=3.4.2
X-Spam-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
        *      [score: 0.0000]
        *  0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was
        *      blocked.  See
        *      http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
        *      for more information.
        *      [URIs: spinics.net]
        * -0.0 NO_RELAYS Informational: message was not relayed via SMTP
        * -0.0 NO_RECEIVED Informational: message has no Received headers
Date:   Wed, 28 Apr 2021 06:54:00 +0200
From:   Alexander Dahl <ada@thorsis.com>
To:     Rodolfo Giometti <giometti@enneenne.com>
Cc:     "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>
Subject: Re: RFC v2 GPIO lines
Message-ID: <YIjqaOrl4JEa+XmN@ada-deb-carambola.ifak-system.com>
Mail-Followup-To: Rodolfo Giometti <giometti@enneenne.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>
References: <24ea6492-a39c-fd0f-abf4-dbb65f8d703e@enneenne.com>
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <24ea6492-a39c-fd0f-abf4-dbb65f8d703e@enneenne.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Rodolfo,

I might have had a similar problem, so if you don't mind me entering
the discussion …

Am Tue, Apr 27, 2021 at 05:30:34PM +0200 schrieb Rodolfo Giometti:
> at the moment if a developer wishes to use a GPIO as output or input with a well
> defined name from userspace via the sysfs interface he/she can use,
> respectively, the gpio-leds or gpio-uinput devices. However, IMHO, this is not
> the best nor a proper way to do it, that's why I'm here to propose this really
> simple interface named GPIO_LINE.

What's the reason to use the sysfs interface instead of libgpiod and
the modern character device based interface?

> That's why I wrote the attached patch (for kernel 5.6) which it's just a
> proposal, and the purpose of this message is to collect feedback about this
> solution. Of course I'll be happy to port it for latest kernel release and
> complete it with all requested documentation and needed modifications, but I'll
> do it only if this patch has some changes to be accepted by GPIO subsystem's
> maintainers. :)
> 
> Note: This patch has been already discussed on linux-gpio@vger.kernel.org
> mail-list (that's why RFC "v2") and, as suggested by Linus Walleij, the
> discussion has been moved here to see what you think about this proposal. You
> can see the discussion here: https://www.spinics.net/lists/linux-gpio/msg50482.html

Then, I think you should still Cc the linux-gpio list.

> For the moment here is how it works:
> 
> 1) The patch is activated by the configuration entry CONFIG_GPIO_LINE.
> 
> 2) In the device-tree the developer defines all board's GPIO lines with their
> names and mode of functioning:
> 
>         gpio_lines {
>                 compatible = "gpio-line";
> 
>                 iso_out2 {
>                         gpios = <&gpiosb 2 GPIO_ACTIVE_HIGH>;
>                         output-low;
>                 };
> 
>                 flag_ftdi {
>                         gpios = <&gpionb 12 GPIO_ACTIVE_HIGH>;
>                         input;
>                         line-name = "ftdi";
>                 };
>         };
> 
> 
> Property "line-name" is optional and it can be used in case the GPIO line's name
> should be different from the node's name. While to define the line type
> developers can use the keywords "input", "output-low", "output-high" and "as-is"
> in order to set the line as input, output (default low or high) or just using
> the line in its current configuration.

IIRC the led subsystem deprecated using the node name as label, this
is only a fallback for backwards compatibility nowadays.

> 3) At boot the added GPIO lines are shown:
> 
> [    2.880687] line iso_out2: GPIO448 added as output-low
> [    2.910249] line ftdi: GPIO488 added as input
> 
> 4) Then users will find a new class with entries, one for each new line as
> reported below:
> 
> # ls /sys/class/line/
> ftdi      iso_out2
> 
> 5) By using the attribute "state" the users can get or set the line status
> 
> # cat /sys/class/line/iso_out2/state
> 0
> # echo 1 > /sys/class/line/iso_out2/state
> # cat /sys/class/line/iso_out2/state
> 1
> 
> 6) Developers can monitor the GPIO lines via debugfs as for kernel modules:
> 
> # cat /sys/kernel/debug/gpio
> gpiochip1: GPIOs 446-475, parent: platform/d0018800.pinctrl, GPIO2:
>  gpio-446 (                    |usb3-vbus           ) out hi
>  gpio-447 (                    |usb2-vbus           ) out hi
>  gpio-448 (                    |iso_out2            ) out hi
> 
> gpiochip0: GPIOs 476-511, parent: platform/d0013800.pinctrl, GPIO1:
>  gpio-488 (                    |ftdi                ) in  hi
> 
> The End. :)

Defining line names for GPIOs is already somewhat possible. We talked
about this few weeks ago, when I tried to set line names for a SAMA5D2
based board:
https://lore.kernel.org/linux-gpio/946021874.11132.1615900079722@seven.thorsis.com/

Greets
Alex

> From 0989c7e422cceb0a079e44cd20f29402e0894a79 Mon Sep 17 00:00:00 2001
> From: Rodolfo Giometti <giometti@enneenne.com>
> Date: Mon, 26 Apr 2021 14:06:49 +0200
> Subject: [PATCH] drivers gpio: add GPIO line support
> 
> Signed-off-by: Rodolfo Giometti <giometti@enneenne.com>
> ---
>  drivers/gpio/Kconfig        |  10 ++
>  drivers/gpio/Makefile       |   1 +
>  drivers/gpio/gpiolib-line.c | 251 ++++++++++++++++++++++++++++++++++++
>  3 files changed, 262 insertions(+)
>  create mode 100644 drivers/gpio/gpiolib-line.c
> 
> diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
> index e3607ec4c2e8..d9d8bc508b78 100644
> --- a/drivers/gpio/Kconfig
> +++ b/drivers/gpio/Kconfig
> @@ -95,6 +95,16 @@ config GPIO_CDEV_V1
>  
>  	  If unsure, say Y.
>  
> +config GPIO_LINE
> +	bool "/sys/class/line/... (GPIO lines interface)"
> +	depends on SYSFS
> +	help
> +	  Say Y here to add a sysfs interface to manage system's GPIO lines.
> +
> +	  Instead of the GPIO_SYSFS support, by using this support, you'll be
> +	  able to use GPIOs from userspace as stated in the device-tree
> +	  for well defined pourposes and by using proper names.
> +
>  config GPIO_GENERIC
>  	depends on HAS_IOMEM # Only for IOMEM drivers
>  	tristate
> diff --git a/drivers/gpio/Makefile b/drivers/gpio/Makefile
> index c58a90a3c3b1..d459ecd5ca18 100644
> --- a/drivers/gpio/Makefile
> +++ b/drivers/gpio/Makefile
> @@ -9,6 +9,7 @@ obj-$(CONFIG_GPIOLIB)		+= gpiolib-legacy.o
>  obj-$(CONFIG_OF_GPIO)		+= gpiolib-of.o
>  obj-$(CONFIG_GPIO_CDEV)		+= gpiolib-cdev.o
>  obj-$(CONFIG_GPIO_SYSFS)	+= gpiolib-sysfs.o
> +obj-$(CONFIG_GPIO_LINE)		+= gpiolib-line.o
>  obj-$(CONFIG_GPIO_ACPI)		+= gpiolib-acpi.o
>  
>  # Device drivers. Generally keep list sorted alphabetically
> diff --git a/drivers/gpio/gpiolib-line.c b/drivers/gpio/gpiolib-line.c
> new file mode 100644
> index 000000000000..b7dae8c0ace4
> --- /dev/null
> +++ b/drivers/gpio/gpiolib-line.c
> @@ -0,0 +1,251 @@
> +/*
> + * GPIOlib - userspace I/O line interface
> + *
> + *
> + * Copyright (C) 2020-2021   Rodolfo Giometti <giometti@enneenne.com>
> + *
> + *   This program is free software; you can redistribute it and/or modify
> + *   it under the terms of the GNU General Public License as published by
> + *   the Free Software Foundation; either version 2 of the License, or
> + *   (at your option) any later version.
> + *
> + *   This program is distributed in the hope that it will be useful,
> + *   but WITHOUT ANY WARRANTY; without even the implied warranty of
> + *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + *   GNU General Public License for more details.
> + *
> + *   You should have received a copy of the GNU General Public License
> + *   along with this program; if not, write to the Free Software
> + *   Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
> + */
> +
> +#include <linux/kernel.h>
> +#include <linux/init.h>
> +#include <linux/device.h>
> +#include <linux/idr.h>
> +#include <linux/kdev_t.h>
> +#include <linux/mutex.h>
> +#include <linux/platform_device.h>
> +#include <linux/property.h>
> +#include <linux/gpio.h>
> +#include <linux/gpio/consumer.h>
> +
> +#define GPIO_LINE_MAX_SOURCES       128      /* should be enough... */
> +
> +/*
> + * Local variables
> + */
> +
> +static dev_t gpio_line_devt;
> +static struct class *gpio_line_class;
> +
> +static DEFINE_MUTEX(gpio_line_idr_lock);
> +static DEFINE_IDR(gpio_line_idr);
> +
> +struct gpio_line_device {
> +	struct gpio_desc *gpiod;
> +	const char *name;
> +	unsigned int id;
> +	struct device *dev;
> +};
> +
> +/*
> + * sysfs methods
> + */
> +
> +static ssize_t state_store(struct device *dev,
> +				struct device_attribute *attr,
> +				const char *buf, size_t count)
> +{
> +	struct gpio_line_device *gpio_line = dev_get_drvdata(dev);
> +	int status, ret;
> +
> +	ret = sscanf(buf, "%d", &status);
> +	if (ret != 1 && status != 0 && status != 1)
> +		return -EINVAL;
> +
> +	gpiod_set_value_cansleep(gpio_line->gpiod, status);
> +
> +	return count;
> +}
> +
> +static ssize_t state_show(struct device *dev,
> +				struct device_attribute *attr, char *buf)
> +{
> +	struct gpio_line_device *gpio_line = dev_get_drvdata(dev);
> +	int status = gpiod_get_value_cansleep(gpio_line->gpiod);
> +
> +	return sprintf(buf, "%d\n", status);
> +}
> +static DEVICE_ATTR_RW(state);
> +
> +/*
> + * Class attributes
> + */
> +
> +static struct attribute *gpio_line_attrs[] = {
> +	&dev_attr_state.attr,
> +	NULL,
> +};
> +
> +static const struct attribute_group gpio_line_group = {
> +	.attrs = gpio_line_attrs,
> +};
> +
> +static const struct attribute_group *gpio_line_groups[] = {
> +	&gpio_line_group,
> +	NULL,
> +};
> +
> +/*
> + * Driver stuff
> + */
> +
> +static struct gpio_line_device *gpio_line_create_entry(const char *name,
> +				struct gpio_desc *gpiod,
> +				struct device *parent)
> +{
> +	struct gpio_line_device *gpio_line;
> +	dev_t devt;
> +	int ret;
> +
> +	/* First allocate a new gpio_line device */
> +	gpio_line = kmalloc(sizeof(struct gpio_line_device), GFP_KERNEL);
> +	if (!gpio_line)
> +		return ERR_PTR(-ENOMEM);
> +
> +	mutex_lock(&gpio_line_idr_lock);
> +	/*
> +	 * Get new ID for the new gpio_line source.  After idr_alloc() calling
> +	 * the new source will be freely available into the kernel.
> +	 */
> +	ret = idr_alloc(&gpio_line_idr, gpio_line, 0,
> +			GPIO_LINE_MAX_SOURCES, GFP_KERNEL);
> +	if (ret < 0) {
> +		if (ret == -ENOSPC) {
> +			pr_err("%s: too many GPIO lines in the system\n",
> +			       name);
> +			ret = -EBUSY;
> +		}
> +		goto error_device_create;
> +	}
> +	gpio_line->id = ret;
> +	mutex_unlock(&gpio_line_idr_lock);
> +
> +	/* Create the device and init the device's data */
> +	devt = MKDEV(MAJOR(gpio_line_devt), gpio_line->id);
> +	gpio_line->dev = device_create(gpio_line_class, parent, devt, gpio_line,
> +				   "%s", name);
> +	if (IS_ERR(gpio_line->dev)) {
> +		dev_err(gpio_line->dev, "unable to create device %s\n", name);
> +		ret = PTR_ERR(gpio_line->dev);
> +		goto error_idr_remove;
> +	}
> +	dev_set_drvdata(gpio_line->dev, gpio_line);
> +
> +	/* Init the gpio_line data */
> +	gpio_line->gpiod = gpiod;
> +	gpio_line->name = name;
> +
> +	return gpio_line;
> +
> +error_idr_remove:
> +	mutex_lock(&gpio_line_idr_lock);
> +	idr_remove(&gpio_line_idr, gpio_line->id);
> +
> +error_device_create:
> +	mutex_unlock(&gpio_line_idr_lock);
> +	kfree(gpio_line);
> +
> +	return ERR_PTR(ret);
> +}
> +
> +static int gpio_line_gpio_probe(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +	struct fwnode_handle *child;
> +	struct gpio_line_device *gpio_line;
> +	int ret;
> +
> +	device_for_each_child_node(dev, child) {
> +		struct device_node *np = to_of_node(child);
> +		const char *name;
> +		enum gpiod_flags flags;
> +		struct gpio_desc *gpiod;
> +
> +		ret = fwnode_property_read_string(child, "line-name", &name);
> +		if (ret && IS_ENABLED(CONFIG_OF) && np)
> +			name = np->name;
> +		if (!name) {
> +			dev_err(dev,
> +				"name property not defined or invalid!\n");
> +			goto skip;
> +		}
> +
> +		flags = GPIOD_ASIS;
> +		if (of_property_read_bool(np, "input"))
> +			flags = GPIOD_IN;
> +		else if (of_property_read_bool(np, "output-low"))
> +			flags = GPIOD_OUT_LOW;
> +		else if (of_property_read_bool(np, "output-high"))
> +			flags = GPIOD_OUT_HIGH;
> +		gpiod = devm_fwnode_get_gpiod_from_child(dev, NULL, child,
> +							 flags, name);
> +		if (IS_ERR(gpiod)) {
> +			dev_err(dev, "gpios property not defined!\n");
> +			goto skip;
> +		}
> +
> +		gpio_line = gpio_line_create_entry(name, gpiod, dev);
> +		if (IS_ERR(gpio_line))
> +			goto skip;
> +
> +		/* Success, go to the next child */
> +		dev_info(gpio_line->dev, "GPIO%d added as %s\n",
> +			desc_to_gpio(gpiod),
> +			flags == GPIOD_ASIS ? "as-is" :
> +			  flags == GPIOD_OUT_HIGH ? "output-high" :
> +			    flags == GPIOD_OUT_LOW ? "output-low" :
> +			      flags == GPIOD_IN ? "input" : "unknow!");
> +		continue;
> +
> +skip:		/* Error, skip the child */
> +		fwnode_handle_put(child);
> +		dev_err(dev, "failed to register GPIO lines interface\n");
> +	}
> +
> +	return 0;
> +}
> +
> +static const struct of_device_id of_gpio_gpio_line_match[] = {
> +	{ .compatible = "gpio-line", },
> +	{ /* sentinel */ }
> +};
> +
> +static struct platform_driver gpio_line_gpio_driver = {
> +	.driver	 = {
> +		.name   = "gpio-line",
> +		.of_match_table = of_gpio_gpio_line_match,
> +	},
> +};
> +
> +builtin_platform_driver_probe(gpio_line_gpio_driver, gpio_line_gpio_probe);
> +
> +/*
> + * Module stuff
> + */
> +
> +static int __init gpiolib_line_init(void)
> +{
> +	/* Create the new class */
> +	gpio_line_class = class_create(THIS_MODULE, "line");
> +	if (!gpio_line_class) {
> +		printk(KERN_ERR "gpio_line: failed to create class\n");
> +		return -ENOMEM;
> +	}
> +	gpio_line_class->dev_groups = gpio_line_groups;
> +
> +	return 0;
> +}
> +
> +postcore_initcall(gpiolib_line_init);
> -- 
> 2.25.1
> 

