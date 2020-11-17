Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C14772B71AC
	for <lists+devicetree@lfdr.de>; Tue, 17 Nov 2020 23:38:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728411AbgKQWhq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Nov 2020 17:37:46 -0500
Received: from mail.kernel.org ([198.145.29.99]:40994 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728044AbgKQWhq (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 17 Nov 2020 17:37:46 -0500
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 629B12463B
        for <devicetree@vger.kernel.org>; Tue, 17 Nov 2020 22:37:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1605652665;
        bh=/qLq+cMo48jQIDjSZj4KxKcEC755zqt8wk04d18Aaw4=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=zoI91+Iat05PS64BcIKkVcj8hKrWgcN8QqaVqbVRY8Egprk5h6MXsy5ul/uaB1c3r
         a1dN8dvOtH6jKCMg5HEcS3Iu6ASjqhMqp1D29DUUsSHzFgl1A0LYoq7G3q5CkaXDVd
         8b75tsKw++LFAZHaGV7wl0IaJh2MeXxfSySynIEY=
Received: by mail-ot1-f48.google.com with SMTP id n11so21142840ota.2
        for <devicetree@vger.kernel.org>; Tue, 17 Nov 2020 14:37:45 -0800 (PST)
X-Gm-Message-State: AOAM531bY5STSC+5fyumWn2UnqKe5REt0X869/+DWtiZZBbBMsSX4+uw
        5HnoZmjA6BmPtvTtU5SOYc5ThqJGAjie/v0phg==
X-Google-Smtp-Source: ABdhPJwbivA8ARTNwWarhPIBav+yTVu3bH35FwlUSmuCTR2S6nTDgwHPSbv/j2hlWlFalXqjvh1IQs2ZN/UxVpRT/jw=
X-Received: by 2002:a9d:5e14:: with SMTP id d20mr4367695oti.107.1605652664605;
 Tue, 17 Nov 2020 14:37:44 -0800 (PST)
MIME-Version: 1.0
References: <20201117200522.4000817-1-robh@kernel.org>
In-Reply-To: <20201117200522.4000817-1-robh@kernel.org>
From:   Rob Herring <robh@kernel.org>
Date:   Tue, 17 Nov 2020 16:37:33 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLENMjeNYsg0JSCBvsgZOqiz2ivKX7jP9kVE_AV5in3dw@mail.gmail.com>
Message-ID: <CAL_JsqLENMjeNYsg0JSCBvsgZOqiz2ivKX7jP9kVE_AV5in3dw@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: display: Use OF graph schema
To:     Thierry Reding <thierry.reding@gmail.com>,
        Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
Cc:     devicetree@vger.kernel.org, Sam Ravnborg <sam@ravnborg.org>,
        Maxime Ripard <mripard@kernel.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Nov 17, 2020 at 2:05 PM Rob Herring <robh@kernel.org> wrote:
>
> Now that we have a graph schema, rework the display related schemas to use
> it. Mostly this is adding a reference to graph.yaml and dropping duplicate
> parts from schemas.
>
> In panel-common.yaml, 'ports' is dropped. Any binding using 'ports'
> should be one with more than 1 port node, and the binding must define
> what each port is.
>
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
> Cc: Maxime Ripard <mripard@kernel.org>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
> v2:
>  - Drop 'type: object' where we have a $ref
>  - Drop any common properties like 'reg', '#address-cells', "#size-cells',
>    'remote-endpoint'

I think this isn't going to work in regards to unevaluatedProperties.
Consider this example:

parent:
  $ref: schema.yaml#/parent  # containing properties of 'child'
  properties:
    child:
      unevaluatedProperties: false

The problem is at the 'child' instance level when
'unevaluatedProperties' is evaluated, it can't see the parent schema
with the $ref. So any property in schema.yaml won't be taken into
account. Instead, we have to do something like this:

parent:
  $ref: schema.yaml#/parent
  properties:
    child:
      $ref: schema.yaml#/child
      unevaluatedProperties: false

So we're going to need a $ref for every ports, port, and endpoint
node. Or just allow extra properties.

Rob
