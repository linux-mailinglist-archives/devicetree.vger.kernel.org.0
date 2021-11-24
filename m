Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B249E45C813
	for <lists+devicetree@lfdr.de>; Wed, 24 Nov 2021 15:55:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232280AbhKXO6Y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Nov 2021 09:58:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54102 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346637AbhKXO6J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Nov 2021 09:58:09 -0500
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ACCEBC061574
        for <devicetree@vger.kernel.org>; Wed, 24 Nov 2021 06:54:59 -0800 (PST)
Received: by mail-lj1-x235.google.com with SMTP id k2so6053512lji.4
        for <devicetree@vger.kernel.org>; Wed, 24 Nov 2021 06:54:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=km+HRCa5z0uci/4KhX6h6LEcQDBUlCgOoz3g9Xg5t8k=;
        b=dOCFo9RPivEWjVmkG4QLLeAK22dHFSXv+3xQd8DPTM/Gg7TfjvJX119AvpHntJp3pQ
         24tfMNyhLIssVKGB4vxzDdMaXxyg9ljYwLvDDJU2UeO/5X8oNpRxxqrFrasviw0OTsLX
         UAJou9WNA1wsljV8jXerimi9qesRdY4WVsLhyGYFrf7P74UevCA9Awy2WShRi0mpeVYT
         Vq2Ifu5yOijstAf8i0OVQ8DzzKxd8fKSvLdhagHtpf9Z9Fl+DRXiAHFthsh72dJ0Wjk3
         VzMGhz34Y+3ONeLoBgAnWigQrwS+T7a10J/ftyTsihDNsqjb+tYAV1/RqfjOL5S8g+Rd
         dFKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=km+HRCa5z0uci/4KhX6h6LEcQDBUlCgOoz3g9Xg5t8k=;
        b=HXbb63ZnbvAJJzAirgn7gc1D7+MvL5M7mVs82usTKJAw1GWoM5G4ZCPmblmDnjbiOl
         yfy43A54wFbUsZ8tew8mqIC8NMtGjR+ZGjF0XXAuCEMO1u523R3I7Ry2bBCkLK0NhOzZ
         DAkuvJNbMCPzMY093Lk5BQdhlM82maXB2Zfz3PuWvNuvyYo6lm4XdOnwnnMLTJEfVW7+
         3ulvsJiyGM/wodbmTZYm/CFcbsVcXQj0KqNsG2zWpEIJ0lSRnp9lKkg4T30OXW2VOwCH
         Uwq1wT2Emy6ppuydSfI2ZfAUkoSiztSLl/qnhgvERrjSv6c86GYcIRfyjNNjggbxJamN
         D31g==
X-Gm-Message-State: AOAM533Azf9fdGp+QJrOF/sb7gZx1fZ6FoSISJnztrG9/D8lX/b+cHLU
        ZAUyTTfT/ynucbX9CfafAIrwI6Dd/qGsBEMRz5Z90Q==
X-Google-Smtp-Source: ABdhPJxjH3eSh0Yux3Et8YG13JuZrGmPGu4JiUQxhMt2rtPMbHYMWUNckkwzT7dPSFtWpzCrFRSekTyY3n27glQLRas=
X-Received: by 2002:a2e:a22a:: with SMTP id i10mr16632870ljm.16.1637765697841;
 Wed, 24 Nov 2021 06:54:57 -0800 (PST)
MIME-Version: 1.0
References: <20211124125506.2971069-1-daniel.lezcano@linaro.org>
In-Reply-To: <20211124125506.2971069-1-daniel.lezcano@linaro.org>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Wed, 24 Nov 2021 15:54:21 +0100
Message-ID: <CAPDyKFpJHzAxGk=Y52VXcuVbAunwfMo2ErnwXMqnxzHPs6O30g@mail.gmail.com>
Subject: Re: [PATCH 1/5] dt-bindings: Powerzone new bindings
To:     Daniel Lezcano <daniel.lezcano@linaro.org>
Cc:     robh@kernel.org, arnd@linaro.org, heiko@sntech.de,
        rjw@rjwysocki.net, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        lukasz.luba@arm.com, Arnd Bergmann <arnd@arndb.de>,
        Rob Herring <robh+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 24 Nov 2021 at 13:55, Daniel Lezcano <daniel.lezcano@linaro.org> wrote:
>
> The proposed bindings are describing a set of powerzones.
>
> A power zone is the logical name for a component which is capable of
> power capping and where we can measure the power consumption.
>
> A power zone can aggregate several power zones in terms of power
> measurement and power limitations. That allows to apply power
> constraint to a group of components and let the system balance the
> allocated power in order to comply with the constraint.
>
> The ARM System Control and Management Interface (SCMI) can provide a
> power zone description.
>
> The powerzone semantic is also found on the Intel platform with the
> RAPL register.
>
> The Linux kernel powercap framework deals with the powerzones:
>
> https://www.kernel.org/doc/html/latest/power/powercap/powercap.html
>
> The powerzone can also represent a group of children powerzones, hence
> the description can result on a hierarchy. Such hierarchy already
> exists with the hardware or can be represented an computed from the
> kernel.
>
> The hierarchical description was initially proposed but not desired
> given there are other descriptions like the power domain proposing
> almost the same description.
>
> https://lore.kernel.org/all/CAL_JsqLuLcHj7525tTUmh7pLqe7T2j6UcznyhV7joS8ipyb_VQ@mail.gmail.com/
>
> The description gives the power constraint dependencies to apply on a
> specific group of logically or physically aggregated devices. They do
> not represent the physical location or the power domains of the SoC
> even if the description could be similar.
>
> Cc: Arnd Bergmann <arnd@arndb.de>
> Cc: Ulf Hansson <ulf.hansson@linaro.org>
> Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
> ---
>  .../devicetree/bindings/power/powerzones.yaml | 95 +++++++++++++++++++
>  1 file changed, 95 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/power/powerzones.yaml
>
> diff --git a/Documentation/devicetree/bindings/power/powerzones.yaml b/Documentation/devicetree/bindings/power/powerzones.yaml
> new file mode 100644
> index 000000000000..1ae3f82ae29c
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/power/powerzones.yaml
> @@ -0,0 +1,95 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/power/powerzones.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Power zones description
> +
> +maintainers:
> +  - Daniel Lezcano <daniel.lezcano@linaro.org>
> +
> +description: |+
> +
> +  A System on Chip contains a multitude of active components and each
> +  of them is a source of heat. Even if a temperature sensor is not
> +  present, a source of heat can be controlled by acting on the
> +  consumed power via different techniques.
> +
> +  A powerzone describes a component or a group of components where we
> +  can control the maximum power consumption. For instance, a group of
> +  CPUs via the performance domain, a LCD screen via the brightness,
> +  etc ...
> +
> +  Different components when they are used together can significantly
> +  increase the overall temperature, so the description needs to
> +  reflect this dependency in order to assign a power budget for a
> +  group of powerzones.
> +
> +  This description is done via a hierarchy and the DT reflects it. It
> +  does not represent the physical location or a topology, eg. on a
> +  big.Little system, the little CPUs may not be represented as they do
> +  not contribute significantly to the heat, however the GPU can be
> +  tied with the big CPUs as they usually have a connection for
> +  multimedia or game workloads.
> +
> +properties:
> +  $nodename:
> +    const: powerzones
> +

Do we really need a top-node like this? Can't that be left as a
platform/soc specific thing instead? Along the lines of how the last
example below looks like? Maybe we can have both options? I guess Rob
will tell us.

Moreover, maybe we should put some constraints on the names of
subnodes (provider nodes) with a "patternProperties". Something along
the lines of below.

patternProperties:
  "^(powerzone)([@-].*)?$":
    type: object
    description:
      Each node represents a powerzone.

> +  "#powerzone-cells":
> +    description:
> +      Number of cells in powerzone specifier. Typically 0 for nodes
> +      representing but it can be any number in the future to describe
> +      parameters of the powerzone.
> +
> +  powerzone:

Maybe "powerzones" instead of "powerzone". Unless we believe that we
never need to allow multiple parent-zones for a child-zone.

> +    description:
> +      A phandle to a parent powerzone. If no powerzone attribute is set, the
> +      described powerzone is the topmost in the hierarchy.
> +

We should probably state that the "#powerzone-cells"  are required. Like below:

required:
  - "#powerzone-cells"

Moreover, we probably need to allow additional properties? At least it
looks so from the last example below. Then:

additionalProperties: true

> +examples:
> +  - |
> +    powerzones {
> +
> +      SOC_PZ: soc {
> +      };

This looks odd to me.

Why do we need an empty node? If this is the topmost power-zone, it
should still have the #powerzone-cells specifier, I think.

> +
> +      PKG_PZ: pkg {

As I stated above, I would prefer some kind of common pattern of the
subnode names. Maybe "pkg-powerzone"?

> +        #powerzone-cells = <0>;
> +        powerzone = <&SOC_PZ>;
> +      };
> +
> +      BIG_PZ: big {
> +        #powerzone-cells = <0>;
> +        powerzone = <&PKG_PZ>;
> +      };
> +
> +      GPU_PZ: gpu {
> +        #powerzone-cells = <0>;
> +        powerzone = <&PKG_PZ>;
> +      };
> +
> +      MULTIMEDIA_PZ: multimedia {
> +        #powerzone-cells = <0>;
> +        powerzone = <&SOC_PZ>;
> +      };
> +    };
> +
> +  - |
> +    A57_0: big@0 {
> +      compatible = "arm,cortex-a57";
> +      reg = <0x0 0x0>;
> +      device_type = "cpu";
> +      #powerzone-cells = <0>;
> +      powerzone = <&BIG_PZ>;

Just to make sure I understand correctly. The big@0 node is a
powerzone provider too? Or did you mean to specify it as a consumer?

> +    };
> +
> +    A57_1: big@1 {
> +      compatible = "arm,cortex-a57";
> +      reg = <0x0 0x0>;
> +      device_type = "cpu";
> +      #powerzone-cells = <0>;
> +      powerzone = <&BIG_PZ>;
> +    };

Kind regards
Uffe
