Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 29E0B46C4E3
	for <lists+devicetree@lfdr.de>; Tue,  7 Dec 2021 21:50:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241234AbhLGUyK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Dec 2021 15:54:10 -0500
Received: from sin.source.kernel.org ([145.40.73.55]:60870 "EHLO
        sin.source.kernel.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241151AbhLGUyK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Dec 2021 15:54:10 -0500
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by sin.source.kernel.org (Postfix) with ESMTPS id 4C75DCE1E01
        for <devicetree@vger.kernel.org>; Tue,  7 Dec 2021 20:50:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 43344C341D0
        for <devicetree@vger.kernel.org>; Tue,  7 Dec 2021 20:50:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1638910236;
        bh=t4W7WLRFCMi7KuAoHHK1hKDwqBoqL/ftf57pfzZ6uXc=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=Um0UcNUhkhE0mZmztYFvKACDBuv3AciITMaqHzfLt9dRBJnYvg57dI1VKus42UWR0
         6EwNWc+i/LKflNdrX2ec5DGDXlXGYQ/TedKpIHJzW4uou3yYusy4UVh7blUq+/qKsC
         rROvoR9VozgtL3GAeJKvb9dkPpbROeTMedBfo3vJ9mQXmNaOUKewr6pp7uPHt7K3PN
         5T6jOf4sVqQp6Bbya2fSVedaonU+ZqVm0wn+52R+eqoH01T3zrOcnyuD3JagrcUinl
         aBsDw4yPv+oL5pFgOyMSIfu3lPtOlezC3h8U6dKieybpea5XnFp3cGo13h2yipIqt0
         LoJqI1YomYKrw==
Received: by mail-ed1-f54.google.com with SMTP id z5so925739edd.3
        for <devicetree@vger.kernel.org>; Tue, 07 Dec 2021 12:50:36 -0800 (PST)
X-Gm-Message-State: AOAM532QHMJh1ZiTV7k6BGd3gZbldwqaj2v/aJ4W5IE5c10H3r9AlbqH
        Ealet54BcISQR+sKAOySuuxrEgL+V6g4jPjAfw==
X-Google-Smtp-Source: ABdhPJyqCWEzXRI+0IE4o+5XcwEzWxwohTD5MUiMUIaaon/9Uk6EwLHcVMnOl+5ooQDfvdFe8DciNxJnxBMtnlLtoIg=
X-Received: by 2002:a17:906:bccc:: with SMTP id lw12mr2081418ejb.128.1638910234359;
 Tue, 07 Dec 2021 12:50:34 -0800 (PST)
MIME-Version: 1.0
References: <20211207054747.461029-1-jagan@amarulasolutions.com> <20211207054747.461029-2-jagan@amarulasolutions.com>
In-Reply-To: <20211207054747.461029-2-jagan@amarulasolutions.com>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Tue, 7 Dec 2021 14:50:22 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKj_ToLpoGR6XLgAu=+THit6jhdzAvxMiCCNmWg5zbQ0A@mail.gmail.com>
Message-ID: <CAL_JsqKj_ToLpoGR6XLgAu=+THit6jhdzAvxMiCCNmWg5zbQ0A@mail.gmail.com>
Subject: Re: [PATCH 1/2] of: Add helper to lookup non port child node
To:     Jagan Teki <jagan@amarulasolutions.com>
Cc:     Frank Rowand <frowand.list@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Robert Foss <robert.foss@linaro.org>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Andrzej Hajda <a.hajda@samsung.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-amarula@amarulasolutions.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Dec 6, 2021 at 11:49 PM Jagan Teki <jagan@amarulasolutions.com> wrote:
>
> Add of_get_non_port_child() helper that can be used to lookup
> non port child nodes.
>
> Some OF graphs don't require 'ports' to represent the next output
> instead, it simply adds a child node on a given parent node. This
> helper lookup that child node, however that child node is not a
> 'port' on given parent as 'port' based nodes are looked up via
> of_graph_get_remote_node().
>
> Example OF graph representation of DSI host, which doesn't
> have 'ports'.

This seems pretty specific to DSI and also can't handle there being
more than 1 non-port node. That's allowed for DSI too, but I don't
think I've ever seen a case. Anyways, I'd just move this to DRM rather
than common DT code. One comment on the implementation that will
shrink it.

>
> dsi {
>         #address-cells = <1>;
>         #size-cells = <0>;
>
>         port {
>                 dsi_in_tcon0: endpoint {
>                         remote-endpoint = <tcon0_out_dsi>;
>         };
>
>         panel@0 {
>                 reg = <0>;
>         };
> };
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
>  drivers/of/base.c  | 29 +++++++++++++++++++++++++++++
>  include/linux/of.h |  6 ++++++
>  2 files changed, 35 insertions(+)
>
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index 61de453b885c..31bbf885b0f8 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -854,6 +854,35 @@ struct device_node *of_get_compatible_child(const struct device_node *parent,
>  }
>  EXPORT_SYMBOL(of_get_compatible_child);
>
> +/**
> + * of_get_non_port_child - Find the non port child node for a given parent
> + * @node:      parent node
> + *
> + * This function looks for child node which is not port child for given parent.
> + *
> + * Return: A node pointer if found, with refcount incremented, use
> + * of_node_put() on it when done.
> + * Returns NULL if node is not found.
> + */
> +struct device_node *of_get_non_port_child(const struct device_node *parent)
> +{
> +       struct device_node *child;
> +
> +       for_each_child_of_node(parent, child) {

for_each_available_child_of_node

> +               if (of_node_name_eq(child, "port"))
> +                       continue;
> +
> +               if (!of_device_is_available(child)) {
> +                       of_node_put(child);
> +                       continue;
> +               }
> +               break;
> +       }
> +
> +       return child;
> +}
> +EXPORT_SYMBOL(of_get_non_port_child);
> +
>  /**
>   * of_get_child_by_name - Find the child node by name for a given parent
>   * @node:      parent node
> diff --git a/include/linux/of.h b/include/linux/of.h
> index ff143a027abc..3e699becef82 100644
> --- a/include/linux/of.h
> +++ b/include/linux/of.h
> @@ -290,6 +290,7 @@ extern struct device_node *of_get_next_child(const struct device_node *node,
>  extern struct device_node *of_get_next_available_child(
>         const struct device_node *node, struct device_node *prev);
>
> +extern struct device_node *of_get_non_port_child(const struct device_node *parent);
>  extern struct device_node *of_get_compatible_child(const struct device_node *parent,
>                                         const char *compatible);
>  extern struct device_node *of_get_child_by_name(const struct device_node *node,
> @@ -678,6 +679,11 @@ static inline bool of_have_populated_dt(void)
>         return false;
>  }
>
> +static inline struct device_node *of_get_non_port_child(const struct device_node *parent)
> +{
> +       return NULL;
> +}
> +
>  static inline struct device_node *of_get_compatible_child(const struct device_node *parent,
>                                         const char *compatible)
>  {
> --
> 2.25.1
>
