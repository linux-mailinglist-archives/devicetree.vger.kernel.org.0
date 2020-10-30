Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 76CB32A0352
	for <lists+devicetree@lfdr.de>; Fri, 30 Oct 2020 11:53:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726078AbgJ3Kw6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Oct 2020 06:52:58 -0400
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124]:29733 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726343AbgJ3Kwx (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 30 Oct 2020 06:52:53 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1604055144;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=/tnpVHIMYpFd1srPSH8uONR7RCWAfqrebxJ6st1yKpM=;
        b=OEQ197jyT4EgqoOfr5EoLlmSKaW0Q4BZvpd6n0XyBi29AuB6/m7/KpjFjmqXWxg5g6VPGf
        B4T9uI3tttFaCPvXUeUFdyD59/gGM90voXT7Q7lTmohj0qzGApQD4Is1zsssDPStz3YaW0
        3ohj5UWZs9Q1qpp3Fn7jv3SI4PLiHSI=
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com
 [209.85.215.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-554-x1SDGfqOOXGZwRftKHxhzw-1; Fri, 30 Oct 2020 06:52:19 -0400
X-MC-Unique: x1SDGfqOOXGZwRftKHxhzw-1
Received: by mail-pg1-f199.google.com with SMTP id 19so4335896pgq.18
        for <devicetree@vger.kernel.org>; Fri, 30 Oct 2020 03:52:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/tnpVHIMYpFd1srPSH8uONR7RCWAfqrebxJ6st1yKpM=;
        b=oG/2/Mj62sa3ullEEBRtPi7Gbxbx/4cO70BckowbLeeAoo8ARnRcPQysG/VAGrvcMX
         h/HcqOEFLwXDHtz+AQPDEgaw7DTQy2PhM3NLLCGfMPXfn5ov470c5bwsmmNn3/rO724R
         RS19cun0KFw/FJbF+5/kdztPYZ1qoT73JTPGe1JIk3YhxVcNlboukEm/pQ6ZYvzaFzlo
         LTGODuKVnR8YnZu/1/ysHVkGj2xpiyHoLD5B5ePL1C+FU8XB8vDDl/WjjUim/YXNuvlx
         YfYc+X4XYoS5fC9ToMLF2+/ZtKYivN/F0C0/tHMwT3QrBBfQn4Rd4TIalsqn+itUERX3
         0gSw==
X-Gm-Message-State: AOAM533eP0FE1s5DLV2a5rEoewPx1CGgtSd2mYPuUTpyzUlXTs74w7pu
        bx23YBiRfIu5cOjADLmG1MJRrcan0GAMI1AqjVSSgrWNPe1cKn64mrg64quc0541JS5rQBJKRx4
        dTWTsxfPy8RXE2EubOgsKeYARM/am4RAZEg5vvw==
X-Received: by 2002:a17:90a:d795:: with SMTP id z21mr2084266pju.56.1604055138430;
        Fri, 30 Oct 2020 03:52:18 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwqfUY5TSSruhXVNF2Ob/Fv4sN9KGKR2ZqJAnxCFvwVKptzWk1DP09awzgBvZZwKt4ADZ5ClPghjTDQUQhfv2o=
X-Received: by 2002:a17:90a:d795:: with SMTP id z21mr2084242pju.56.1604055138246;
 Fri, 30 Oct 2020 03:52:18 -0700 (PDT)
MIME-Version: 1.0
References: <20201023162220.v2.1.I45b53fe84e2215946f900f5b28bab1aa9d029ac7@changeid>
 <20201023162220.v2.2.Ibb28033c81d87fcc13a6ba28c6ea7ac154d65f93@changeid>
In-Reply-To: <20201023162220.v2.2.Ibb28033c81d87fcc13a6ba28c6ea7ac154d65f93@changeid>
From:   Benjamin Tissoires <benjamin.tissoires@redhat.com>
Date:   Fri, 30 Oct 2020 11:52:07 +0100
Message-ID: <CAO-hwJ+PbcsGNojeJd89TCv-1GQ0fEqcezZ8pw6qA7jjvGo5-g@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] dt-bindings: HID: i2c-hid: Introduce bindings for
 the Goodix GT7375P
To:     Douglas Anderson <dianders@chromium.org>
Cc:     Jiri Kosina <jkosina@suse.cz>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        andrea@borgia.bo.it, Kai Heng Feng <kai.heng.feng@canonical.com>,
        "open list:HID CORE LAYER" <linux-input@vger.kernel.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Hans De Goede <hdegoede@redhat.com>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Doug,

On Sat, Oct 24, 2020 at 1:23 AM Douglas Anderson <dianders@chromium.org> wrote:
>
> This adds new bindings for the Goodix GT7375P touchscreen.  While this
> touchscreen works with generic "i2c-over-hid", the current advice is
> to give it its own compatible string.  The cleanest way to do this is
> to give it its own bindings.
>
> Among other things, this has the advantage that we can list the two
> possible i2c addresses for this device, which gives extra checking.
>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
>
> Changes in v2:
> - ("dt-bindings: HID: i2c-hid: Introduce bindings for the Goodix GT7375P") new in v2.
>
>  .../bindings/input/goodix,gt7375p.yaml        | 64 +++++++++++++++++++
>  1 file changed, 64 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/input/goodix,gt7375p.yaml
>
> diff --git a/Documentation/devicetree/bindings/input/goodix,gt7375p.yaml b/Documentation/devicetree/bindings/input/goodix,gt7375p.yaml
> new file mode 100644
> index 000000000000..b5008f89e26c
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/input/goodix,gt7375p.yaml
> @@ -0,0 +1,64 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/input/goodix,gt7375p.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Goodix GT7375P touchscreen
> +
> +maintainers:
> +  - Benjamin Tissoires <benjamin.tissoires@redhat.com>

Given my answer in patch 1, I am not very happy being added as a
maintainer here.

Cheers,
Benjamin


> +  - Douglas Anderson <dianders@chromium.org>
> +
> +description:
> +  Supports the Goodix GT7375P touchscreen.
> +
> +properties:
> +  compatible:
> +    items:
> +      - const: goodix,gt7375p
> +
> +  reg:
> +    enum:
> +      - 0x5d
> +      - 0x14
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  reset-gpios:
> +    true
> +
> +  vdd-supply:
> +    description: The 3.3V supply to the touchscreen.
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - reset-gpios
> +  - vdd-supply
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/qcom,rpmh.h>
> +    #include <dt-bindings/gpio/gpio.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +
> +    i2c {
> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +
> +      ap_ts: touchscreen@5d {
> +        compatible = "hid-over-i2c";
> +        reg = <0x5d>;
> +
> +        interrupt-parent = <&tlmm>;
> +        interrupts = <9 IRQ_TYPE_LEVEL_LOW>;
> +
> +        reset-gpios = <&tlmm 8 GPIO_ACTIVE_LOW>;
> +        vdd-supply = <&pp3300_ts>;
> +      };
> +    };
> --
> 2.29.0.rc1.297.gfa9743e501-goog
>

