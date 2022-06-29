Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B4400560CCC
	for <lists+devicetree@lfdr.de>; Thu, 30 Jun 2022 00:58:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231344AbiF2W5S (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Jun 2022 18:57:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36122 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231324AbiF2W4C (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Jun 2022 18:56:02 -0400
Received: from mail-yb1-xb2b.google.com (mail-yb1-xb2b.google.com [IPv6:2607:f8b0:4864:20::b2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B52A640904
        for <devicetree@vger.kernel.org>; Wed, 29 Jun 2022 15:55:23 -0700 (PDT)
Received: by mail-yb1-xb2b.google.com with SMTP id g4so19054724ybg.9
        for <devicetree@vger.kernel.org>; Wed, 29 Jun 2022 15:55:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=y5ZTGoJWK8uoT//Ot+7y7C0qNgpOLHB415dUDB/bM2E=;
        b=V3LS6TmSOlPaVFdCJ0BuXUrJbm9ByWprG9K7HC9tmT10nT8kfB2ueJ5fw4gRIIgxsi
         hjQth58XT0ZxT0rxLmC8XnJOOZcs0sOOmkAhVhQjxsBBiXzh28ez6t7aGFLuC4jmRjdN
         rqWdKH92Zyx+IbHkg8Og4+2IlarHko6eURmHQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=y5ZTGoJWK8uoT//Ot+7y7C0qNgpOLHB415dUDB/bM2E=;
        b=QAlb1/chjCag3NMGxAb/UBex+HRUZ2Fmm2wCWB3nJK8kGz8O94KdRiM9uul2OqmIQ7
         iqsD0U8456Wk6GGXyT7xVP1jDLnGaJliC0cChxuag/d/t7bscf5gSIlDxhCv4Oa2xKqs
         ZhH0xMZK5TfTkbuh9KYo0sqR9Hy28+n8HM333XKq7NN8E/z9RXVYu7oXW3xDo9nkkG0o
         1hlckExRB0/5jD9W5PzU/YMYaXztkOolvJXXeZ6pM9kFiNZh1bhixCK3kmdKS3jyzI/7
         xPQnfsR7uC8ZdckydtJ/yciSdnSMjSiHu9gAER2vzkrbA+1JDDc+bP55asPdz+dD+OIT
         qCpg==
X-Gm-Message-State: AJIora+WwklHcvGAgw8QX0tAdIifPIYGgurlvvJRLOlXvmMuEaLxMw9r
        UPfE0T2xV8NhxzTQj/rvkNYKn1X0n592ahqTq2USeg==
X-Google-Smtp-Source: AGRyM1vYoOdLWULQbH68SDkQmn0KXQiOTLkNIVGkUaz44XEXYq1Av98xn5aI+4eBZ+6aEtA9QjkYgcCPn8rqByb70u4=
X-Received: by 2002:a25:bcc:0:b0:66c:b80a:2d5 with SMTP id 195-20020a250bcc000000b0066cb80a02d5mr6437342ybl.196.1656543322872;
 Wed, 29 Jun 2022 15:55:22 -0700 (PDT)
MIME-Version: 1.0
References: <20220622173605.1168416-1-pmalani@chromium.org>
 <20220622173605.1168416-2-pmalani@chromium.org> <20220627210407.GA2905757-robh@kernel.org>
 <CACeCKackdbDZrk5fk7qyMwSdTdzyTS=m1vHPFnQOj672W=2nOA@mail.gmail.com>
 <20220628182336.GA711518-robh@kernel.org> <CAEXTbpex9nxP-nyPWvSBchAW4j3C4MZfVHTb=5X0iSLY1bSAKg@mail.gmail.com>
 <CAEXTbpf_jxK-R5aA81FCbpAH4bChA2B9+8qExZUbA7Y+Ort=Gg@mail.gmail.com>
 <CAL_Jsq+C04RXLtm6Ac85Ru3EGwJbqV_UD3_dDWVrKvFSvdm7Ng@mail.gmail.com> <CAE-0n53ers881LOTCEmKDDxJQt+5vvXJSURs=o6TcOiR5m_EAw@mail.gmail.com>
In-Reply-To: <CAE-0n53ers881LOTCEmKDDxJQt+5vvXJSURs=o6TcOiR5m_EAw@mail.gmail.com>
From:   Prashant Malani <pmalani@chromium.org>
Date:   Wed, 29 Jun 2022 15:55:10 -0700
Message-ID: <CACeCKacJnnk4_dXEX7XiboOWrYpfAcE=ukP63agVAYUxWR9Vbg@mail.gmail.com>
Subject: Re: [PATCH v5 1/9] dt-bindings: usb: Add Type-C switch binding
To:     Stephen Boyd <swboyd@chromium.org>
Cc:     Pin-yen Lin <treapking@chromium.org>,
        Rob Herring <robh@kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Linux USB List <linux-usb@vger.kernel.org>,
        Benson Leung <bleung@chromium.org>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        =?UTF-8?B?TsOtY29sYXMgRiAuIFIgLiBBIC4gUHJhZG8=?= 
        <nfraprado@collabora.com>, Allen Chen <allen.chen@ite.com.tw>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        =?UTF-8?B?Sm9zw6kgRXhww7NzaXRv?= <jose.exposito89@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Maxime Ripard <maxime@cerno.tech>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Robert Foss <robert.foss@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Xin Ji <xji@analogixsemi.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jun 29, 2022 at 2:58 PM Stephen Boyd <swboyd@chromium.org> wrote:
>
> > What device controls the switching in this case? Again, block diagrams
> > please if you want advice on what the binding should look like.
>
> My understanding is there are 4 DP lanes on it6505 and two lanes are
> connected to one usb-c-connector and the other two lanes are connected
> to a different usb-c-connector. The IT6505 driver will send DP out on
> the associated two DP lanes depending on which usb-c-connector has DP
> pins assigned by the typec manager.
>
>                                                      +-------+
>                                                      |       |
>           +--------+                            /----+ usb-c |
>           | IT6505 |                           / /---+       |
>           |        +------------ lane 0 ------/ /    |       |
>           |        +------------ lane 1 -------/     +-------+
>  DPI -----+        |
>           |        |                                 +-------+
>           |        |                                 |       |
>           |        +------------ lane 2 -------------+ usb-c |
>           |        +------------ lane 3 -------------+       |
>           |        |                                 |       |
>           +--------+                                 +-------+
>
> The bridge is a mux that steers DP to one or the other usb-c-connector
> based on what the typec manager decides.
>
> I would expect this to be described with the existing port binding in
> the it6505 node. The binding would need to be extended to describe the
> output side.
>
>         bridge@5c {
>             compatible = "ite,it6505";

We'll need a top level "mode-switch" property here.
>             ...
>
>             ports {
>                 #address-cells = <1>;
>                 #size-cells = <0>;
>
>                 port@0 {
>                     reg = <0>;
>                     it6505_in: endpoint {
>                         remote-endpoint = <&dpi_out>;
>                     };
>                 };
>
>                 port@1 {
>                     #address-cells = <1>;
>                     #size-cells = <0>;
>                     reg = <1>;
>
>                     it6505_out_lanes_01: endpoint@0 {
>                         reg = <0>
>                         data-lanes = <0 1>;
>                         remote-endpoint = <&typec0>;
>                     };
>
>                     it6505_out_lanes_23: endpoint@1 {
>                         reg = <1>
>                         data-lanes = <2 3>;
>                         remote-endpoint = <&typec1>;
>                     };
>                 };
>             };
>         };
>
>         usb-c-connector {
>             compatible = "usb-c-connector";
>             ....
>             ports {
>                 #address-cells = <1>;
>                 #size-cells = <0>;
>
>                 port@1 {
>                     reg = <1>;
>                     typec0: endpoint {
>                         remote-endpoint = <&it6505_out_lanes_01>;
>                     };
>                 };
>             };
>         };

We can adopt this binding, but from what I gathered in this thread, that
shouldn't be done, because IT6505 isn't meant to be aware of Type-C
connections at all.

>
> I don't see the benefit to making a genericish binding for typec
> switches, even if the hardware has typec awareness like anx7625. It
> looks like the graph binding can already handle what we need. By putting
> it in the top-level ports node we have one way to describe the
> input/output of the device instead of describing it in the top-level in
> the display connector case and the child typec switch node in the usb c
> connector case.

Ack, I'll drop the generic binding for future revisions.

>
> I think the difficulty comes from the combinatorial explosion of
> possible configurations. As evidenced here, hardware engineers can take
> a DP bridge and use it as a DP mux as long as the bridge has lane
> control. Or they can take a device like anx7625 and ignore the USB
> aspect and use the internal crosspoint switch as a DP mux. The anx7625
> part could be a MIPI-to-DP display bridge plus mux that is connected to
> two dp-connectors, in which case typec isn't even involved, but we could
> mux between two dp connectors.

Each containing a single DP lane, right?
I think that will not be a valid configuration, since there is only 1 HPD
pin (so it's assuming both DP lanes go to the same DP sink).

But yes, your larger point is valid: h/w engineers can repurpose these
bridges in ways the datasheet doesn't originally anticipate.

>
> Also, the typec framework would like to simply walk the graph from the
> usb-c-connector looking for nodes that have 'mode-switch' or
> 'orientation-switch' properties and treat those devices as the typec
> switches for the connector. This means that we have to add these typec
> properties like 'mode-switch' to something like the IT6505 bridge
> binding, which is a little awkward. I wonder if those properties aren't
> really required. Would it be sufficient if the framework could walk the
> graph and look for registered typec switches in the kernel that have a
> matching of_node?

My interpretation of the current mode-switch search code [1] is that
a top level property of "mode-switch" is required.

[1] https://elixir.bootlin.com/linux/v5.19-rc4/source/drivers/usb/typec/mux.c#L347
