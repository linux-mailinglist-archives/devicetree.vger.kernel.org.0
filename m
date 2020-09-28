Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A682727B868
	for <lists+devicetree@lfdr.de>; Tue, 29 Sep 2020 01:43:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726961AbgI1Xnn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Sep 2020 19:43:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41218 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726379AbgI1Xnm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Sep 2020 19:43:42 -0400
Received: from mail-vk1-xa42.google.com (mail-vk1-xa42.google.com [IPv6:2607:f8b0:4864:20::a42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 71DAFC0613DD
        for <devicetree@vger.kernel.org>; Mon, 28 Sep 2020 15:13:41 -0700 (PDT)
Received: by mail-vk1-xa42.google.com with SMTP id e5so1958922vkm.2
        for <devicetree@vger.kernel.org>; Mon, 28 Sep 2020 15:13:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=m8BYx0WkoWgdHVH2dPVlZsYwU7RwXyK6H4QoTRAqX6c=;
        b=TSmFxQCggv2HBOhytrDlGhImhekd6aLI0sbFHWM4gaZ7w70MENTGQer0SSKJHDwy/d
         KY5kZ5LVy0ZiLckrZ9i3mENPAVAayYpYUzSfJt4ti0sQhySay3VPyd68nSxUtevR0TLS
         sf8vs50LVtxk9CkoXLDOoxbcYzL50yRaveDLg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=m8BYx0WkoWgdHVH2dPVlZsYwU7RwXyK6H4QoTRAqX6c=;
        b=IGhk0XWcjylw+9QO6We1lIjfyANJ+h3TiRH51FGdfPmbfNVr6HOI3FQ5BbhemEqVb2
         LksXt2cCzNDkq2vDBnI9o4ZjtG1GVJbMbh9z7r5KTIg9oLVpqVWgu0jbXPV6xaSn1xKt
         468gj9hBMDIT3S4gH0uOurc4QrFoIVzeVKjJgvy4brdkv/IUsnzixrC1yBrEjOXFOAhh
         gUlSR10MrrR3HgztuDGbMzLjOqvuJm9csUzG9jwvO7sZNv39kkKSCfQNhztFnHfXm2Vb
         OWPHDJQBHZqEzEzNATJADILxd5khRzIoqtDlpxJXRI9NNkbmJK2VlpF2JP41kW9I5kuL
         9fWg==
X-Gm-Message-State: AOAM531BeyqmsOpIMYaI4DW1XdOpVrOSNO6i0wHSdWQAOgjuf/6JOiqY
        9vTuWIX/X4RObmKkB7NjA0qxMpomY6NrCw==
X-Google-Smtp-Source: ABdhPJwpiPiIe/5NXyqhr3bSrGWp05ZcndfSvcjpLUKral4lM824SDlbtmytV0JjYdh0gbo//EnvxQ==
X-Received: by 2002:a1f:9913:: with SMTP id b19mr1094269vke.4.1601331219426;
        Mon, 28 Sep 2020 15:13:39 -0700 (PDT)
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com. [209.85.217.45])
        by smtp.gmail.com with ESMTPSA id a195sm1277174vka.42.2020.09.28.15.13.38
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Sep 2020 15:13:38 -0700 (PDT)
Received: by mail-vs1-f45.google.com with SMTP id a16so1736534vsp.12
        for <devicetree@vger.kernel.org>; Mon, 28 Sep 2020 15:13:38 -0700 (PDT)
X-Received: by 2002:a67:ec9a:: with SMTP id h26mr1297894vsp.34.1601331217905;
 Mon, 28 Sep 2020 15:13:37 -0700 (PDT)
MIME-Version: 1.0
References: <20200928101326.v4.1.I248292623d3d0f6a4f0c5bc58478ca3c0062b49a@changeid>
In-Reply-To: <20200928101326.v4.1.I248292623d3d0f6a4f0c5bc58478ca3c0062b49a@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 28 Sep 2020 15:13:26 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XWphkhFmEk6dzGn7h2mY5xBHY554rOfn+bSi5Nci27gA@mail.gmail.com>
Message-ID: <CAD=FV=XWphkhFmEk6dzGn7h2mY5xBHY554rOfn+bSi5Nci27gA@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] dt-bindings: usb: Add binding for discrete onboard
 USB hubs
To:     Matthias Kaehlcke <mka@chromium.org>
Cc:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        LKML <linux-kernel@vger.kernel.org>, linux-usb@vger.kernel.org,
        Bastien Nocera <hadess@hadess.net>,
        Stephen Boyd <swboyd@chromium.org>,
        Alan Stern <stern@rowland.harvard.edu>,
        Ravi Chandra Sadineni <ravisadineni@chromium.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Peter Chen <peter.chen@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, Sep 28, 2020 at 10:14 AM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> +examples:
> +  - |
> +    usb_hub: usb-hub {
> +        compatible = "realtek,rts5411", "onboard-usb-hub";
> +        vdd-supply = <&pp3300_hub>;
> +    };
> +
> +    usb_controller {

Super nitty nit: prefer dashes for node names.


> +        dr_mode = "host";
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        /* 2.0 hub on port 1 */
> +        hub@1 {
> +            compatible = "usbbda,5411";

Presumably we need something in the bindings for "usbbda,5411" ?


> +            reg = <1>;
> +            hub = <&usb_hub>;
> +        };
> +
> +        /* 3.0 hub on port 2 */
> +        hub@2 {
> +            compatible = "usbbda,411";

Presumably we need something in the bindings for "usbbda,411" ?


-Doug
