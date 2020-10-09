Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 30B842889AC
	for <lists+devicetree@lfdr.de>; Fri,  9 Oct 2020 15:23:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388291AbgJINXh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Oct 2020 09:23:37 -0400
Received: from mail.kernel.org ([198.145.29.99]:33582 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1729935AbgJINXg (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 9 Oct 2020 09:23:36 -0400
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 0E59A222BA
        for <devicetree@vger.kernel.org>; Fri,  9 Oct 2020 13:23:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1602249816;
        bh=BJ4ArbfGE3EokdoUX4QCkAYrvzosIdnQOI6oSkddPjI=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=KOshIkXEs2u9p0F5FWA1Q+9igF9tEBW80eNRrnZGx8w+1s3TlZut3eWEYF/JICHRm
         6ztVcrjEly/A/RfVVMflWUUf4h4EnAVjz3891P09YUMCbP6I5sXxhVTuOvyVaLhnKX
         lsfmQQP/lKhHs6hKnGX4Rrv/fCc+aS6gLnqEcocw=
Received: by mail-ot1-f54.google.com with SMTP id i12so8984841ota.5
        for <devicetree@vger.kernel.org>; Fri, 09 Oct 2020 06:23:36 -0700 (PDT)
X-Gm-Message-State: AOAM531wxRT0RXEDMnztQLwXd0QNqsHa2OhHfhiUXgHYPLC9bO54rmU6
        z4QoU1DR9As34Ppyv9HyY9rxyGZYY0wJ7dXPUQ==
X-Google-Smtp-Source: ABdhPJxWH/qIwxKp4DOpjOIfsd3AMueMT5LumqQjxRw0TzGJ3sWVM1KGiT/iyFKjY60xD4qDRhRc0NsY4rodXZB/Q7o=
X-Received: by 2002:a9d:5e14:: with SMTP id d20mr281855oti.107.1602249815183;
 Fri, 09 Oct 2020 06:23:35 -0700 (PDT)
MIME-Version: 1.0
References: <20201008102825.3812-1-ricardo.canuelo@collabora.com>
 <20201008102825.3812-3-ricardo.canuelo@collabora.com> <20201008183241.GA2395464@bogus>
 <20201009052829.a4jvxi5tqhljovki@rcn-XPS-13-9360>
In-Reply-To: <20201009052829.a4jvxi5tqhljovki@rcn-XPS-13-9360>
From:   Rob Herring <robh@kernel.org>
Date:   Fri, 9 Oct 2020 08:23:24 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKCuajndKPXNKJZ2DGkoTrB2-EDMH6pKHN3ipduso9SzQ@mail.gmail.com>
Message-ID: <CAL_JsqKCuajndKPXNKJZ2DGkoTrB2-EDMH6pKHN3ipduso9SzQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] dt-bindings: input: convert cros-ec-keyb to json-schema
To:     =?UTF-8?Q?Ricardo_Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
Cc:     Collabora Kernel ML <kernel@collabora.com>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>,
        Simon Glass <sjg@chromium.org>,
        Doug Anderson <dianders@chromium.org>,
        devicetree@vger.kernel.org,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Oct 9, 2020 at 12:28 AM Ricardo Ca=C3=B1uelo
<ricardo.canuelo@collabora.com> wrote:
>
> Hi Rob,
>
> Thanks for reviewing the patch
>
> On jue 08-10-2020 13:32:41, Rob Herring wrote:
> > These already have a type and description, don't repeat it here.
> >
> > If no other constraints, then just 'linux,keymap: true'. Or you can use
> > unevaluatedProperties instead of additionalProperties. The former will
> > take the $ref to matrix-keymap.yaml into account.
>
> That's what I did in v1, using input/imx-keypad.yaml as an example along
> with the comment in example-schema.yaml about unevaluatedProperties, but
> then I also saw you mention in other threads that support for
> unevaluatedProperties is not implemented yet and that documenting the
> additional properties/nodes is preferred (that's what I understood, at
> least):
>
>     https://lore.kernel.org/dri-devel/CAL_JsqKPXJxsHPS34_TCf9bwgKxZNSV4mv=
QR-WKRnknQVtGGxQ@mail.gmail.com/
>
> Was it right in v1 then?

Yes. There is some value in explicitly listing the properties here if
only a subset of them are valid for this binding, but that's not the
case here.


Rob
