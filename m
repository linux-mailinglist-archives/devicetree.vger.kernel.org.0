Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 08BBF3FD4B9
	for <lists+devicetree@lfdr.de>; Wed,  1 Sep 2021 09:46:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242680AbhIAHqa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Sep 2021 03:46:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47788 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242670AbhIAHqa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Sep 2021 03:46:30 -0400
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 067E7C061764
        for <devicetree@vger.kernel.org>; Wed,  1 Sep 2021 00:45:33 -0700 (PDT)
Received: by mail-lj1-x235.google.com with SMTP id d16so3342593ljq.4
        for <devicetree@vger.kernel.org>; Wed, 01 Sep 2021 00:45:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=q+9RrBOFccn/9D7dBw/s/N0F8fFjNEgzNdn47lNPKrc=;
        b=FKGJ3lWjzpvPGrtNxGT6G4VFJebQWyPpzvgam71kjInaYHyM+py0intKGBcklxB7Vm
         /PTCu08pJZ2S6Wxa3O+4VodfNcqZUJOeW0cevxWMQ6XApIral13HoA/XcCOx/PmftkNz
         Dpfy1DwplXXXh7C7Pa0d2NXosXMLIdDLzFzNf/EAztshxGVhZhuP3lq6j6+rmZ6fCj8R
         WiCq7DFnQCjXMrLH4eKXz0iUBVsS6JFiC70Qe4iztSo0bSOGoQCc3BaXjSk5K2640HSX
         1g5OXSR7PV5TaQS8g96BNve15DmKWCyq8MgsmkLIHrXT8/OcuXveOpp8i5BJMxV5nNjC
         QT2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=q+9RrBOFccn/9D7dBw/s/N0F8fFjNEgzNdn47lNPKrc=;
        b=E3NyTUU7QgQO7REkqY+U5sD9aZSm8nDOUcAY0gtwPCj1pa8w00JWkzcwZBvaeIb+S7
         dIzNlC8NEqvX/IIkgjZ5WQ50GWEi00IZ4rvL7qLiSeF8hiXaql2hiDsAHD03Kjy/k8et
         4ECZ5WMKbqm3ccy8tcYXuhojS2uKMlXYKBCW9fd7rTI/m5l1u2XO+bwvqi++1QvGmaK6
         bwRA3NJCCsrsM7ijHsp66VKnIqH0u0kegkSJlniZXbwaTh/4xpc4AJgtJmt362laFrOi
         vt02vk06f4gDk4VEaRDlwa4DdS6cQzOnFsnnl3F2rwC7WJw+lW8LBE2qq7KY6EgxMLOE
         PZtg==
X-Gm-Message-State: AOAM532cIJcElo4nWUcUdJHqML5DYcr3Wz6Tk3ok/R3DpdXFTRcWiHxQ
        PhwMvRPTL15+CS9N9p2JRKA/NPComE69MGNS3XvgaQ==
X-Google-Smtp-Source: ABdhPJxclcj+aMJ6MNFoNcu9bJdIMP2/U1kbfuHJKJjzvx9GeTMHGzCfuZs48naGEM7uonJ5YaFTlZ7rmURn0C3jcI0=
X-Received: by 2002:a05:651c:158f:: with SMTP id h15mr28634380ljq.249.1630482331278;
 Wed, 01 Sep 2021 00:45:31 -0700 (PDT)
MIME-Version: 1.0
References: <20210831102125.624661-1-ulf.hansson@linaro.org> <CAGETcx868QWj0jMJ+U-eL62jT-LO_LTOw5EcwEKptfFOVa=A5A@mail.gmail.com>
In-Reply-To: <CAGETcx868QWj0jMJ+U-eL62jT-LO_LTOw5EcwEKptfFOVa=A5A@mail.gmail.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Wed, 1 Sep 2021 09:44:54 +0200
Message-ID: <CAPDyKFopTW=ZoB9FYJ-ozRZTnJDTT_gFtz0XDiU-weYb1Q9bkQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] of: property: fw_devlink: Rename 'node_not_dev' to 'optional_con_dev'
To:     Saravana Kannan <saravanak@google.com>
Cc:     Rob Herring <robh@kernel.org>, DTML <devicetree@vger.kernel.org>,
        "Rafael J . Wysocki" <rjw@rjwysocki.net>,
        Stephen Boyd <sboyd@kernel.org>,
        Dmitry Osipenko <digetx@gmail.com>,
        Linux PM <linux-pm@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 31 Aug 2021 at 19:31, Saravana Kannan <saravanak@google.com> wrote:
>
> On Tue, Aug 31, 2021 at 3:21 AM Ulf Hansson <ulf.hansson@linaro.org> wrote:
> >
> > In the struct supplier_bindings the member 'node_not_dev' is described as
> > "The consumer node containing the property is never a device.", but that
> > doesn't match the behaviour of the code in of_link_property().
> >
> > To make the behaviour consistent with the description, let's rename the
> > member to "optional_con_dev" and clarify the corresponding comment.
> >
> > Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> > ---
> >  drivers/of/property.c | 9 +++++----
> >  1 file changed, 5 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/of/property.c b/drivers/of/property.c
> > index 6c028632f425..2babb1807228 100644
> > --- a/drivers/of/property.c
> > +++ b/drivers/of/property.c
> > @@ -1249,7 +1249,8 @@ static struct device_node *parse_##fname(struct device_node *np,       \
> >   * @parse_prop.index: For properties holding a list of phandles, this is the
> >   *                   index into the list
> >   * @optional: Describes whether a supplier is mandatory or not
> > - * @node_not_dev: The consumer node containing the property is never a device.
> > + * @optional_con_dev: The consumer node containing the property may not be a
> > + *                   device, then try finding one from an ancestor node.
>
> Nak. This flag is not about "may not be". This is explicitly for
> "never a device". It has to do with stuff like remote-endpoint which
> is never listed under the root node of the device node. Your
> documentation change is changing the meaning of the flag.

Okay, fair enough.

Although, as stated in the commit message this isn't the way code
behaves. Shouldn't we at least make the behaviour consistent with the
description of the 'node_not_dev' flag?

Along the lines of the below patch then?

From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 1 Sep 2021 09:28:03 +0200
Subject: [PATCH] of: property: fw_devlink: Fixup behaviour when 'node_not_dev'
 is set

In the struct supplier_bindings the member 'node_not_dev' is described as
"The consumer node containing the property is never a device.", but that is
inconsistent with the behaviour of the code in of_link_property(), as it
calls of_get_compat_node() that starts parsing for a compatible property,
starting from the node it gets passed to it.

Make the behaviour consistent with the description of the 'node_not_dev'
flag, by passing the parent node to of_get_compat_node() instead.

Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---
 drivers/of/property.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/of/property.c b/drivers/of/property.c
index 6c028632f425..16ee017884b8 100644
--- a/drivers/of/property.c
+++ b/drivers/of/property.c
@@ -1075,6 +1075,17 @@ static struct device_node
*of_get_compat_node(struct device_node *np)
        return np;
 }

+static struct device_node *of_get_compat_node_parent(struct device_node *np)
+{
+       struct device_node *parent, *node;
+
+       parent = of_get_parent(np);
+       node = of_get_compat_node(parent);
+       of_node_put(parent);
+
+       return node;
+}
+
 /**
  * of_link_to_phandle - Add fwnode link to supplier from supplier phandle
  * @con_np: consumer device tree node
@@ -1416,7 +1427,7 @@ static int of_link_property(struct device_node
*con_np, const char *prop_name)
                        struct device_node *con_dev_np;

                        con_dev_np = s->node_not_dev
-                                       ? of_get_compat_node(con_np)
+                                       ? of_get_compat_node_parent(con_np)
                                        : of_node_get(con_np);
                        matched = true;
                        i++;
-- 
2.25.1

[...]

Kind regards
Uffe
