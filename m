Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C9BDD68166D
	for <lists+devicetree@lfdr.de>; Mon, 30 Jan 2023 17:31:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237479AbjA3QbE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Jan 2023 11:31:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34900 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236977AbjA3Qax (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 Jan 2023 11:30:53 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7471A3F29A
        for <devicetree@vger.kernel.org>; Mon, 30 Jan 2023 08:30:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1675096200;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=0gbchshCiCUzHhxwy/9PZo7zji5Ew4s8Bgxl9mssz+M=;
        b=Nyhn782rAtUn/XvDxgF5TWcLY0Diw7x7KIsR5G5UAiu1XCB7eiD0qJNTCb518mHBJypl+U
        Z0gJWWqKGEJaIc7VNM57bVW7N+FO70gAMLVwQ18a4YWLY+wkoqPkOhQf+6Bc9zhzTKKzZP
        x7WLQlKomTiEGsDycTu+MI7ckzGu/VQ=
Received: from mail-yb1-f200.google.com (mail-yb1-f200.google.com
 [209.85.219.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-212-gfTM-cNjNXSAlZR5pcsIJA-1; Mon, 30 Jan 2023 11:29:52 -0500
X-MC-Unique: gfTM-cNjNXSAlZR5pcsIJA-1
Received: by mail-yb1-f200.google.com with SMTP id z17-20020a256651000000b007907852ca4dso13455090ybm.16
        for <devicetree@vger.kernel.org>; Mon, 30 Jan 2023 08:29:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0gbchshCiCUzHhxwy/9PZo7zji5Ew4s8Bgxl9mssz+M=;
        b=t9lKFL7mdvRIGdCafl7JNQxW6S5gJZQOJFOBf/wCPp9s3nLUTTzcigX3Dq2e9FARxy
         ZQ8u2WmOnbA0GQXdWvcXgmAfD0n8Oylm1C9FmfzHaHk3BxnR0LuTHcls3FTbNCLgdlMy
         b2izUAYquX6q8zMhEscJwLYDPwRG/ANXzJ/5GZ4htq4y243sTtLUgESGJZwBZVBW09nB
         lv+J1HEPmKS3f2saginjhXJAqvQ+K8zxCD4EMxOJP+sol42vtY3db2lZHOfKlKtwx48z
         hsPrmrtGzmIv/8SvLM3AQOXHPAdK3B0jKKEgh8KqqaWZ1l0Bjlgssx+B3IE8s2jX9K3r
         d+Fw==
X-Gm-Message-State: AO0yUKX81lel6LWF6GjhMJtBLlza+9SbplOXmGe//+wpoJFfwcyXiJ99
        0Ly1QfKVI3WRict3JXBlIUCqrMxoGvlapcdI/mKyRESFmUvl+XP3UW2ymm6zAjsRhyBDKbf994K
        UjjhHubDjhUEKW+uSPa0/IRDAraWqYc8R20ngEg==
X-Received: by 2002:a81:dce:0:b0:508:a938:b992 with SMTP id 197-20020a810dce000000b00508a938b992mr1953488ywn.184.1675096191267;
        Mon, 30 Jan 2023 08:29:51 -0800 (PST)
X-Google-Smtp-Source: AK7set+R1cpa/mCT5wgq4Y3Z4w/Eqv9bCMmDb9SvKeaOCu6uht5aw0RRaKYPgJEKI++SFeqG6OF1TDshgEzAYyo7uS0=
X-Received: by 2002:a81:dce:0:b0:508:a938:b992 with SMTP id
 197-20020a810dce000000b00508a938b992mr1953482ywn.184.1675096191035; Mon, 30
 Jan 2023 08:29:51 -0800 (PST)
MIME-Version: 1.0
References: <20230128202622.12676-1-kaehndan@gmail.com>
In-Reply-To: <20230128202622.12676-1-kaehndan@gmail.com>
From:   Benjamin Tissoires <benjamin.tissoires@redhat.com>
Date:   Mon, 30 Jan 2023 17:29:40 +0100
Message-ID: <CAO-hwJKeG-mpHCvOyQhu5Yh0daLZxq7d8bVfwmi6W0VUQWmwHQ@mail.gmail.com>
Subject: Re: [PATCH 0/4] DeviceTree Support for USB-HID Devices and CP2112
To:     Danny Kaehn <kaehndan@gmail.com>
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        jikos@kernel.org, devicetree@vger.kernel.org,
        linux-input@vger.kernel.org, ethan.twardy@plexus.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Danny,

On Sat, Jan 28, 2023 at 9:26 PM Danny Kaehn <kaehndan@gmail.com> wrote:
>
> This patchset allows USB-HID devices to have DeviceTree bindings through sharing
> the USB of_node with the HID driver, and adds such a binding and driver
> implementation for the CP2112 USB to SMBus Bridge (which necessitated the
> USB-HID change). This change allows a CP2112 permanently attached in hardware to
> be described in DT and interoperate with other drivers, and exposed the threaded
> interrupt bug fixed in patch 0003.

That series is very interesting. I always wondered how I could declare
an I2C device attached to the CP2112 over USB. Ideally if you can make
this compatible with ACPI SSDT, that would be even better :) (one can
always dream).

>
> Plese correct if the assumption made that there is a 1:1 correlation between
> a USB device and its HID device is not always true. If so, patch 0002 would
> then need to be reworked.

I am not sure I understand patch 2 completely, but if your assumption
is that each struct usb_interface can have at most one hid device, it
seems that it is the case. However, nothing prevents another hid
driver to add one more hid device on top of that USB dev. For
instance, hid-logitech-dj does that: when it enumerates the devices
connected to the wireless receiver, it creates matching HID devices
with the parent being the current HID dev.

AFAICT, we already have DT enumeration for i2c-hid devices, so
probably your solution is correct. Though the DT enumeration in
i2c-hid-of.c relies on .of_match_table, which seems a little bit more
integrated than this series (but I don't know enough of DT
unfortunately).

So I personally won't push against that series, but I'd still like to
have a rough idea on what is missing in patch 2 if we consider that
your assumption might not always be the case.

Maybe (just random brain fart) we could have a separate usbhid-of.c in
the usbhid subdir that builds up the same OF matching that
i2c-hid-of.c is doing?

Cheers,
Benjamin

>
>
> Danny Kaehn (4):
>   dt-bindings: hid: Add CP2112 HID USB to SMBus Bridge
>   Share USB device devicetree node with child HID device
>   Fix CP2112 driver not registering GPIO IRQ chip as threaded
>   CP2112 Devicetree Support
>
>  .../bindings/hid/silabs,cp2112.yaml           | 82 +++++++++++++++++++
>  drivers/hid/hid-cp2112.c                      | 10 +++
>  drivers/hid/usbhid/hid-core.c                 |  2 +
>  3 files changed, 94 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/hid/silabs,cp2112.yaml
>
> --
> 2.25.1
>

