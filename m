Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 16B9417B602
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2020 06:09:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725873AbgCFFJg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 Mar 2020 00:09:36 -0500
Received: from mail-ed1-f65.google.com ([209.85.208.65]:36834 "EHLO
        mail-ed1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725855AbgCFFJg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 Mar 2020 00:09:36 -0500
Received: by mail-ed1-f65.google.com with SMTP id a13so1017770edh.3
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2020 21:09:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=xZYcAFCRfiU8IC1aEhbNImLFdWHB/dWx7Z2x+6oYnQY=;
        b=QwI8X4XSRWCyhG4KAwGwxYslryd/7Jc4pgc6bamB+7k/Wg3ZYJCzb5KdHJdF4I3K1+
         kghCM7SFCM5/MDeXraAdl8Ej+GVbTeNbR+1T3A5ZxMW3rm+81WZUS6HokDOZ/GX2K1B4
         7DrtusQNmqqju0VVUgOIBzEHV4gdJV0G9MbsI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=xZYcAFCRfiU8IC1aEhbNImLFdWHB/dWx7Z2x+6oYnQY=;
        b=pYAehli5jF0zeo1A3NMXAkDnaxu7YpLVOQnOTCU274tfZ3aRYpGw9dtWFyAb+b1uxT
         yZmxRnRCJ5Vdo1bPzLQ5wYkVbGnEnETpaO4D5c0EZjjKtcE4TzDHTY+FSr18KTJSsB0O
         b2lvFcbGkGDmjCq8tGawHh35x9pAv+qoMXqlW7uVouzuq72qyihYZZKraIdc5ZjkHBCO
         /vL8wx8IRFSshWE+lqKCz8ho3j3L+xQYpzck/XgcizoSjylppKhkXDB+Evg0wJ5F+yyR
         3eOW4bJl3gOOym3aVMxa/SlSgjR9Kf73vXVODwW2hrQG/dWgrG0JLZ7NBqjqcef/JYMF
         4B8g==
X-Gm-Message-State: ANhLgQ0hw2tn3UsbbobbUWqVZLnJrJMB4oqJ3KQCOgst7/b1WuqbH4CD
        nlYn4Bzz22RfargCOisLqUz2iDDj0LsqLg==
X-Google-Smtp-Source: ADFU+vvRpBv0NgLqMv7z/TtYKb8vJGmfYlrosnpUQlG8L41Moe8pdJltioZ+r/CleUEXqLW5l3hjvQ==
X-Received: by 2002:a17:907:447d:: with SMTP id oo21mr1298514ejb.64.1583471372589;
        Thu, 05 Mar 2020 21:09:32 -0800 (PST)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com. [209.85.128.43])
        by smtp.gmail.com with ESMTPSA id v21sm445840eda.44.2020.03.05.21.09.30
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Mar 2020 21:09:31 -0800 (PST)
Received: by mail-wm1-f43.google.com with SMTP id i9so919797wml.4
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2020 21:09:30 -0800 (PST)
X-Received: by 2002:a1c:6a13:: with SMTP id f19mr1793277wmc.134.1583471370159;
 Thu, 05 Mar 2020 21:09:30 -0800 (PST)
MIME-Version: 1.0
References: <20200306034946.11223-1-bibby.hsieh@mediatek.com> <20200306034946.11223-3-bibby.hsieh@mediatek.com>
In-Reply-To: <20200306034946.11223-3-bibby.hsieh@mediatek.com>
From:   Tomasz Figa <tfiga@chromium.org>
Date:   Fri, 6 Mar 2020 14:09:18 +0900
X-Gmail-Original-Message-ID: <CAAFQd5DTVt=3khWjYxwA5V43wN8JcuS4nc5a6nYvBr7diXu_2Q@mail.gmail.com>
Message-ID: <CAAFQd5DTVt=3khWjYxwA5V43wN8JcuS4nc5a6nYvBr7diXu_2Q@mail.gmail.com>
Subject: Re: [PATCH v12 2/2] i2c: core: support bus regulator controlling in adapter
To:     Bibby Hsieh <bibby.hsieh@mediatek.com>
Cc:     Wolfram Sang <wsa@the-dreams.de>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        linux-i2c <linux-i2c@vger.kernel.org>,
        Nicolas Boichat <drinkcat@chromium.org>,
        srv_heupstream <srv_heupstream@mediatek.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-devicetree <devicetree@vger.kernel.org>,
        "Rafael J . Wysocki" <rafael.j.wysocki@intel.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Bibby,

On Fri, Mar 6, 2020 at 12:49 PM Bibby Hsieh <bibby.hsieh@mediatek.com> wrote:
>
> Although in the most platforms, the bus power of i2c
> are alway on, some platforms disable the i2c bus power
> in order to meet low power request.
>
> We get and enable bulk regulator in i2c adapter device.
>
> Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
> ---
>  drivers/i2c/i2c-core-base.c | 81 +++++++++++++++++++++++++++++++++++++
>  include/linux/i2c.h         |  2 +
>  2 files changed, 83 insertions(+)
>

Thanks for the patch. Unfortunately there are still some issues left.
Please check my comments inline.

> diff --git a/drivers/i2c/i2c-core-base.c b/drivers/i2c/i2c-core-base.c
> index cefad0881942..4a1cee8389b4 100644
> --- a/drivers/i2c/i2c-core-base.c
> +++ b/drivers/i2c/i2c-core-base.c
> @@ -313,6 +313,7 @@ static int i2c_smbus_host_notify_to_irq(const struct i2c_client *client)
>  static int i2c_device_probe(struct device *dev)
>  {
>         struct i2c_client       *client = i2c_verify_client(dev);
> +       struct i2c_adapter      *adap = client->adapter;
>         struct i2c_driver       *driver;
>         int status;
>
> @@ -378,6 +379,12 @@ static int i2c_device_probe(struct device *dev)
>
>         dev_dbg(dev, "probe\n");
>
> +       status = regulator_enable(adap->bus_regulator);
> +       if (status != 0) {

I'd make the check < 0, as the API doesn't specify the non-negative
values explicitly.

> +               dev_err(&adap->dev, "Failed to enable power regulator\n");
> +               goto err_clear_wakeup_irq;
> +       }
> +
>         status = of_clk_set_defaults(dev->of_node, false);
>         if (status < 0)
>                 goto err_clear_wakeup_irq;
> @@ -414,6 +421,7 @@ static int i2c_device_probe(struct device *dev)
>  static int i2c_device_remove(struct device *dev)
>  {
>         struct i2c_client       *client = i2c_verify_client(dev);
> +       struct i2c_adapter      *adap = client->adapter;
>         struct i2c_driver       *driver;
>         int status = 0;
>
> @@ -427,6 +435,8 @@ static int i2c_device_remove(struct device *dev)
>         }
>
>         dev_pm_domain_detach(&client->dev, true);
> +       if (!pm_runtime_status_suspended(&client->dev))
> +               regulator_disable(adap->bus_regulator);
>
>         dev_pm_clear_wake_irq(&client->dev);
>         device_init_wakeup(&client->dev, false);
> @@ -438,6 +448,71 @@ static int i2c_device_remove(struct device *dev)
>         return status;
>  }
>
> +#ifdef CONFIG_PM_SLEEP
> +static int i2c_resume_early(struct device *dev)
> +{
> +       struct i2c_client *client = i2c_verify_client(dev);
> +       struct i2c_adapter *adap = client->adapter;
> +       int err;
> +
> +       if (pm_runtime_status_suspended(&client->dev)) {
> +               err = regulator_enable(adap->bus_regulator);
> +               if (err)
> +                       return err;
> +       }
> +
> +       return pm_generic_resume_early(&client->dev);
> +}
> +
> +static int i2c_suspend_late(struct device *dev)
> +{
> +       struct i2c_client *client = i2c_verify_client(dev);
> +       struct i2c_adapter *adap = client->adapter;
> +       int err;
> +
> +       if (!pm_runtime_status_suspended(&client->dev)) {
> +               err = regulator_disable(adap->bus_regulator);
> +               if (err)
> +                       return err;
> +       }
> +
> +       return pm_generic_suspend_late(&client->dev);

Let's think a bit more about the order of operations above. It could
end up with following sequence:

- regulator_disable()
- pm_generic_suspend_late()
  - some_i2c_device_suspend_late()
    - i2c_transfer() - ERROR because the bus regulator is disabled

We can only disable the regulator once the i2c client driver finished
its callback and suspended fully, which should guarantee no further
I2C accesses.

> +}
> +#endif
> +
> +#ifdef CONFIG_PM
> +static int i2c_runtime_resume(struct device *dev)
> +{
> +       struct i2c_client *client = i2c_verify_client(dev);
> +       struct i2c_adapter *adap = client->adapter;
> +       int err;
> +
> +       err = regulator_enable(adap->bus_regulator);
> +       if (err)
> +               return err;
> +
> +       return pm_generic_runtime_resume(&client->dev);
> +}
> +
> +static int i2c_runtime_suspend(struct device *dev)
> +{
> +       struct i2c_client *client = i2c_verify_client(dev);
> +       struct i2c_adapter *adap = client->adapter;
> +       int err;
> +
> +       err = pm_generic_runtime_suspend(&client->dev);
> +       if (err)
> +               return err;
> +
> +       return regulator_disable(adap->bus_regulator);
> +}
> +#endif
> +
> +static const struct dev_pm_ops i2c_device_pm = {
> +       SET_SYSTEM_SLEEP_PM_OPS(i2c_suspend_late, i2c_resume_early)

We wanted to set the late/early ops, but this macro sets the regular
suspend/resume ops. SET_LATE_SYSTEM_SLEEP_PM_OPS should be used
instead.

> +       SET_RUNTIME_PM_OPS(i2c_runtime_suspend, i2c_runtime_resume, NULL)
> +};
> +
>  static void i2c_device_shutdown(struct device *dev)
>  {
>         struct i2c_client *client = i2c_verify_client(dev);
> @@ -495,6 +570,7 @@ struct bus_type i2c_bus_type = {
>         .probe          = i2c_device_probe,
>         .remove         = i2c_device_remove,
>         .shutdown       = i2c_device_shutdown,
> +       .pm             = &i2c_device_pm,
>  };
>  EXPORT_SYMBOL_GPL(i2c_bus_type);
>
> @@ -1334,6 +1410,11 @@ static int i2c_register_adapter(struct i2c_adapter *adap)
>                 goto out_reg;
>
>         dev_dbg(&adap->dev, "adapter [%s] registered\n", adap->name);
> +       adap->bus_regulator = devm_regulator_get(&adap->dev, "bus");
> +       if (IS_ERR(adap->bus_regulator)) {
> +               res = PTR_ERR(adap->bus_regulator);
> +               goto out_reg;
> +       }

Wouldn't it be better to move this code before the dev_dbg() call? It
could be confusing if the debug log says "registered" and then the
devm_regulator_get() fails.

Best regards,
Tomasz
