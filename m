Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2891644DE84
	for <lists+devicetree@lfdr.de>; Fri, 12 Nov 2021 00:31:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233119AbhKKXef (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 Nov 2021 18:34:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38162 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231918AbhKKXef (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 Nov 2021 18:34:35 -0500
Received: from mail-il1-x12d.google.com (mail-il1-x12d.google.com [IPv6:2607:f8b0:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 61909C061766
        for <devicetree@vger.kernel.org>; Thu, 11 Nov 2021 15:31:45 -0800 (PST)
Received: by mail-il1-x12d.google.com with SMTP id j28so7401495ila.1
        for <devicetree@vger.kernel.org>; Thu, 11 Nov 2021 15:31:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=9aLq0PhD402I4TZOTEbvca8d2S/fvUMwn7IMEjaaEPs=;
        b=UCh5ZLo7252mqorLWmtIFPUyb/4K3qA60xQ+6VKYF/CbvKryMfF5w9DBQ00p1bGyJE
         kwuGpuycdQSTbz1XVNYvkpXL0tYZZqz8M2uef9Rx0AXOKwnrON9qwkVn2/iEi7YQsKFZ
         2TprmE2TVjS86ZX1ybuFYcrBXCcmmRUh1d5Ko=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=9aLq0PhD402I4TZOTEbvca8d2S/fvUMwn7IMEjaaEPs=;
        b=0Lu0iWzpIviwXFEZLCVC1b+pRlSA7HYB9TmF3hGir9+6q3JLDW3NCYdpQbpGHOPSnh
         q7yJr69CH/RZg22im/bVnlKBJQMq07ZtqIDL+lm4EAPMUhClPyEwW4AewvJ8+ice1C+o
         vVK5uC9BF3kjLDxkpllU004Qt7Di0MmL3dL6xiKs2dGH/eY/yIe+SRDv9cHm6f1owJWb
         q8J8k3Y7tRecklrNFmKdJ/ojwoSAVYaeBT5+Ocyy+x8YYTYai1u/0y8c8Fkn4sk4A80Z
         /5eJZdCUhAzPVDlAOSVa1AfvZcRm7Bo0W2NsNCDx+KOq6EVA7ewCmCHmrjyA8/YCZJEF
         zzRg==
X-Gm-Message-State: AOAM533yeKsYxpkMs96JIMUDe1Li+K6IapuNMe7dNDG8BTfMbdQmhImn
        X3k8Y2M+9CUbjQxvE2ZtM84Tkata9AVkqg==
X-Google-Smtp-Source: ABdhPJz8aU2tegRah7aRoYbIT7HUI0QWMPvYUZPG7d4gbnX9ox1KoRxKbqy6ryo6KNEzeh949b2VYA==
X-Received: by 2002:a92:d341:: with SMTP id a1mr6471054ilh.59.1636673504586;
        Thu, 11 Nov 2021 15:31:44 -0800 (PST)
Received: from mail-il1-f171.google.com (mail-il1-f171.google.com. [209.85.166.171])
        by smtp.gmail.com with ESMTPSA id r3sm2645547ila.42.2021.11.11.15.31.43
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Nov 2021 15:31:43 -0800 (PST)
Received: by mail-il1-f171.google.com with SMTP id j28so7401451ila.1
        for <devicetree@vger.kernel.org>; Thu, 11 Nov 2021 15:31:43 -0800 (PST)
X-Received: by 2002:a05:6e02:144e:: with SMTP id p14mr6583681ilo.180.1636673503074;
 Thu, 11 Nov 2021 15:31:43 -0800 (PST)
MIME-Version: 1.0
References: <20210813195228.2003500-1-mka@chromium.org> <20210813125146.v16.1.I7c9a1f1d6ced41dd8310e8a03da666a32364e790@changeid>
In-Reply-To: <20210813125146.v16.1.I7c9a1f1d6ced41dd8310e8a03da666a32364e790@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 11 Nov 2021 15:31:31 -0800
X-Gmail-Original-Message-ID: <CAD=FV=U2OuZFrqzVfrbLOUM4nHXwr1uYAYZ9XYWMr-Q95gb_EA@mail.gmail.com>
Message-ID: <CAD=FV=U2OuZFrqzVfrbLOUM4nHXwr1uYAYZ9XYWMr-Q95gb_EA@mail.gmail.com>
Subject: Re: [PATCH v16 1/7] usb: misc: Add onboard_usb_hub driver
To:     Matthias Kaehlcke <mka@chromium.org>
Cc:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Alan Stern <stern@rowland.harvard.edu>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Mathias Nyman <mathias.nyman@intel.com>,
        Felipe Balbi <balbi@kernel.org>, devicetree@vger.kernel.org,
        Peter Chen <peter.chen@kernel.org>,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        Bastien Nocera <hadess@hadess.net>,
        Ravi Chandra Sadineni <ravisadineni@chromium.org>,
        Michal Simek <michal.simek@xilinx.com>,
        Roger Quadros <rogerq@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Al Cooper <alcooperx@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, Aug 13, 2021 at 12:52 PM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> +++ b/Documentation/ABI/testing/sysfs-bus-platform-onboard-usb-hub
> @@ -0,0 +1,8 @@
> +What:          /sys/bus/platform/devices/<dev>/always_powered_in_suspend
> +Date:          March 2021
> +KernelVersion: 5.13

I dunno how stuff like this is usually managed, but March 2021 and
5.13 is no longer correct.


> +ONBOARD USB HUB DRIVER
> +M:     Matthias Kaehlcke <mka@chromium.org>
> +L:     linux-usb@vger.kernel.org
> +S:     Maintained
> +F:     Documentation/devicetree/bindings/usb/onboard_usb_hub.yaml

I'm confused. Where is this .yaml file? It doesn't look landed and it
doesn't look to be in your series. I guess this should be updated to:

F: Documentation/devicetree/bindings/usb/realtek,rts5411.yaml

Also: should this have:

F: Documentation/ABI/testing/sysfs-bus-platform-onboard-usb-hub


> +struct udev_node {
> +       struct usb_device *udev;
> +       struct list_head list;
> +};

nit: 'udev' has a whole different connotation to me. Maybe just go
with `usbdev_node` ?


> +static int __maybe_unused onboard_hub_suspend(struct device *dev)
> +{
> +       struct onboard_hub *hub = dev_get_drvdata(dev);
> +       struct udev_node *node;
> +       bool power_off;
> +       int rc = 0;
> +
> +       if (hub->always_powered_in_suspend)
> +               return 0;
> +
> +       power_off = true;
> +
> +       mutex_lock(&hub->lock);
> +
> +       list_for_each_entry(node, &hub->udev_list, list) {
> +               if (!device_may_wakeup(node->udev->bus->controller))
> +                       continue;
> +
> +               if (usb_wakeup_enabled_descendants(node->udev)) {
> +                       power_off = false;
> +                       break;
> +               }
> +       }
> +
> +       mutex_unlock(&hub->lock);
> +
> +       if (power_off)
> +               rc = onboard_hub_power_off(hub);
> +
> +       return rc;

optional nit: get rid of "rc" and write the above as:

if (power_off)
  return onboard_hub_power_off(hub);

return 0;


> +static int __maybe_unused onboard_hub_resume(struct device *dev)
> +{
> +       struct onboard_hub *hub = dev_get_drvdata(dev);
> +       int rc = 0;
> +
> +       if (!hub->is_powered_on)
> +               rc = onboard_hub_power_on(hub);
> +
> +       return rc;

optional nit: get rid of "rc" and write the above as:

if (!hub->is_powered_on)
  return onboard_hub_power_on(hub);

return 0;


> +static void onboard_hub_remove_usbdev(struct onboard_hub *hub, struct usb_device *udev)
> +{
> +       struct udev_node *node;
> +       char link_name[64];
> +
> +       snprintf(link_name, sizeof(link_name), "usb_dev.%s", dev_name(&udev->dev));
> +       sysfs_remove_link(&hub->dev->kobj, link_name);

I would be at least moderately worried about the duplicate snprintf
between here and the add function. Any way that could be a helper?


> +static struct onboard_hub *_find_onboard_hub(struct device *dev)
> +{
> +       struct platform_device *pdev;
> +       struct device_node *np;
> +       phandle ph;
> +
> +       pdev = of_find_device_by_node(dev->of_node);
> +       if (!pdev) {
> +               if (of_property_read_u32(dev->of_node, "companion-hub", &ph)) {
> +                       dev_err(dev, "failed to read 'companion-hub' property\n");
> +                       return ERR_PTR(-EINVAL);
> +               }
> +
> +               np = of_find_node_by_phandle(ph);
> +               if (!np) {
> +                       dev_err(dev, "failed to find device node for companion hub\n");
> +                       return ERR_PTR(-EINVAL);
> +               }

Aren't the above two calls equivalent to this?

npc = of_parse_phandle(dev->of_node, "companion-hub", 0)


> +
> +               pdev = of_find_device_by_node(np);
> +               of_node_put(np);
> +
> +               if (!pdev)
> +                       return ERR_PTR(-EPROBE_DEFER);

Shouldn't you also defer if the dev_get_drvdata() returns NULL? What
if you're racing the probe of the platform device?


> +       }
> +
> +       put_device(&pdev->dev);
> +
> +       return dev_get_drvdata(&pdev->dev);

It feels like it would be safer to call dev_get_drvdata() before
putting the device? ...and actually, are you sure you should even be
putting the device? Maybe we should wait to put it until
onboard_hub_usbdev_disconnect()


> +static struct usb_device_driver onboard_hub_usbdev_driver = {
> +
> +       .name = "onboard-usb-hub",

Remove the extra blank line at the start of the structure?


> +void onboard_hub_create_pdevs(struct usb_device *parent_hub, struct list_head *pdev_list)
> +{
> +       int i;
> +       phandle ph;
> +       struct device_node *np, *npc;
> +       struct platform_device *pdev;
> +       struct pdev_list_entry *pdle;

Should the `INIT_LIST_HEAD(pdev_list);` go here? Is there any reason
why we need to push this into the caller?


> +       for (i = 1; i <= parent_hub->maxchild; i++) {
> +               np = usb_of_get_device_node(parent_hub, i);
> +               if (!np)
> +                       continue;
> +
> +               if (!of_is_onboard_usb_hub(np))
> +                       goto node_put;
> +
> +               if (of_property_read_u32(np, "companion-hub", &ph))
> +                       goto node_put;
> +
> +               npc = of_find_node_by_phandle(ph);
> +               if (!npc)
> +                       goto node_put;

Aren't the above two calls equivalent to this?

npc = of_parse_phandle(np, "companion-hub", 0)

I'm also curious why a companion-hub is a _required_ property.
Couldn't you support USB 2.0 hubs better by just allowing
companion-hub to be optional? I guess that could be a future
improvement, but it also seems trivial to support from the start.


> +               pdev = of_find_device_by_node(npc);
> +               of_node_put(npc);
> +
> +               if (pdev) {
> +                       /* the companion hub already has a platform device, nothing to do here */
> +                       put_device(&pdev->dev);
> +                       goto node_put;
> +               }
> +
> +               pdev = of_platform_device_create(np, NULL, &parent_hub->dev);
> +               if (pdev) {
> +                       pdle = kzalloc(sizeof(*pdle), GFP_KERNEL);

Maybe devm_kzalloc(&pdev->dev, GFP_KERNEL) ? Then you can get rid of
the free in the destroy function?


> +                       if (!pdle)
> +                               goto node_put;

If your memory allocation fails here, don't you need to
of_platform_device_destroy() ?


> +                       INIT_LIST_HEAD(&pdle->node);

I don't believe that the INIT_LIST_HEAD() does anything useful here.
&pdle->node is not a list head--it's a list element. Adding it to the
end of the existing list will fully initialize its ->next and ->prev
pointers but won't look at what they were.


> +                       pdle->pdev = pdev;
> +                       list_add(&pdle->node, pdev_list);
> +               } else {
> +                       dev_err(&parent_hub->dev,
> +                               "failed to create platform device for onboard hub '%s'\n",
> +                               of_node_full_name(np));

Use "%pOF" instead of open-coding.


> +void onboard_hub_destroy_pdevs(struct list_head *pdev_list)
> +{
> +       struct pdev_list_entry *pdle, *tmp;
> +
> +       list_for_each_entry_safe(pdle, tmp, pdev_list, node) {
> +               of_platform_device_destroy(&pdle->pdev->dev, NULL);
> +               kfree(pdle);

It feels like you should be removing the node from the list too,
right? Otherwise if you unbind / bind the USB driver you'll still have
garbage in your list the 2nd time?
